package com.bookverseApp.bookverse.book;

import com.bookverseApp.bookverse.exceptions.BookExistsException;
import com.bookverseApp.bookverse.exceptions.BookNotFoundException;
import com.bookverseApp.bookverse.exceptions.SomethingWentWrongException;
import com.bookverseApp.bookverse.jpa.BookRepository;
import org.springframework.core.env.Environment;
import org.springframework.http.ResponseEntity;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import java.io.InputStream;
import java.net.URI;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Objects;

@RestController
public class BookResource {
    private final BookRepository bookRepository;
    private final Environment environment;


    public BookResource(BookRepository bookRepository, Environment environment) {
        this.bookRepository = bookRepository;
        this.environment = environment;
    }

    @GetMapping("/books")
    public List<Book> retrieveAllBooks() {
        return bookRepository.findAll();
    }

    @GetMapping("/books/byGenre/{genre}")
    public List<Book> retrieveAllBooksByGenre(@PathVariable String genre) {
        List<Book> booksOfThisGenre = bookRepository.findByGenre(genre);
        if (booksOfThisGenre.isEmpty()) {
            throw new BookNotFoundException("No books found for genre: " + genre);
        }
        return booksOfThisGenre;
    }

    @PostMapping("/addBook")
    public ResponseEntity<Book> addBook(@RequestPart Book book, @RequestPart MultipartFile file) {

        if (bookRepository.existsByTitle(book.getTitle())) {
            throw new BookExistsException("Book with title: " + book.getTitle() + " already exists");
        }

        String uploadDir = environment.getProperty("upload.images.directory");

        if (uploadDir == null) {
            throw new SomethingWentWrongException("Could not get upload directory");
        }

        String originalFilename = StringUtils.cleanPath(Objects.requireNonNull(file.getOriginalFilename()));
        String fileExtension = StringUtils.getFilenameExtension(originalFilename);

        String fileName = generateUniqueFileName(fileExtension);

        Path uploadPath = Paths.get(uploadDir);

        try {
            Files.createDirectories(uploadPath);
        } catch (Exception e) {
            throw new SomethingWentWrongException("Could not create the directory where the uploaded files will be stored.");
        }

        try (InputStream inputStream = file.getInputStream()) {
            Path filePath = uploadPath.resolve(fileName);
            Files.copy(inputStream, filePath, StandardCopyOption.REPLACE_EXISTING);
            book.setCoverPath("/images/" + fileName);
        } catch (Exception e) {
            throw new SomethingWentWrongException("Could not save uploaded file: " + fileName);
        }

        Book savedBook = bookRepository.save(book);
        URI location = ServletUriComponentsBuilder
                .fromHttpUrl("http://localhost:8080/books")
                .path("/{bookId}")
                .buildAndExpand(savedBook.getId())
                .toUri();
        return ResponseEntity.created(location).build();
    }

    @GetMapping("/books/{id}")
    public Book retrieveBook(@PathVariable int id) {
        return bookRepository.findById(id)
                .orElseThrow(() -> new BookNotFoundException("Book with id: " + id + " not found"));
    }

    private String generateUniqueFileName(String fileExtension) {
        LocalDateTime currentTime = LocalDateTime.now();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyyMMddHHmmssSSS");
        String formattedDateTime = currentTime.format(formatter);
        return "file_" + formattedDateTime + "." + fileExtension;
    }
}
