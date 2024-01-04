package com.bookverseApp.bookverse;

import com.bookverseApp.bookverse.book.Book;
import com.bookverseApp.bookverse.jpa.BookRepository;
import com.bookverseApp.bookverse.jpa.LibraryRepository;
import com.bookverseApp.bookverse.jpa.ReviewRepository;
import com.bookverseApp.bookverse.library.Library;
import com.bookverseApp.bookverse.review.Review;
import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.Collections;
import java.util.List;

@Controller
public class IndexResource {

    private final ReviewRepository reviewRepository;
    private final BookRepository bookRepository;
    private final LibraryRepository libraryRepository;
    public IndexResource(ReviewRepository reviewRepository, BookRepository bookRepository, LibraryRepository libraryRepository) {
        this.reviewRepository = reviewRepository;
        this.bookRepository = bookRepository;
        this.libraryRepository = libraryRepository;
    }

    @GetMapping("/")
    public String index(Model model, HttpSession session) {
        List<Review> reviews = reviewRepository.findAll();
        Collections.shuffle(reviews);
        reviews = reviews.subList(0, 20);
        model.addAttribute("reviews", reviews);
        if(session.getAttribute("user") != null){
            List<Library> library = libraryRepository.findByUserLogin(session.getAttribute("user").toString());
            List<Library> result = null;
            for (Library book: library) {
                if(book.getBook().getReadingProgress(book.getNumberOfPagesRead()) != 100){
                    result.add(book);
                    library.remove(book);
                }
            }
            result.addAll(library);
            result = result.subList(0, 3);
            model.addAttribute("library", result);
        }else{
            List<Book> books = bookRepository.findAll();
            Collections.shuffle(books);
            books = books.subList(0, 3);
            model.addAttribute("books", books);
        }
        return "index";
    }
}
