package com.bookverseApp.bookverse.user;


import com.bookverseApp.bookverse.book.Book;
import com.bookverseApp.bookverse.exceptions.ReviewNotFoundException;
import com.bookverseApp.bookverse.exceptions.UserNotAuthenticatedException;
import com.bookverseApp.bookverse.exceptions.UserNotFoundException;
import com.bookverseApp.bookverse.jpa.BookRepository;
import com.bookverseApp.bookverse.jpa.LibraryRepository;
import com.bookverseApp.bookverse.jpa.ReviewRepository;
import com.bookverseApp.bookverse.jpa.UserRepository;
import com.bookverseApp.bookverse.library.Library;
import com.bookverseApp.bookverse.review.Review;
import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import java.net.URI;
import java.util.List;
import java.util.Optional;

@RestController
public class UserResource {

    private final UserRepository userRepository;
    private final ReviewRepository reviewRepository;
    private final LibraryRepository libraryRepository;
    private final BookRepository bookRepository;

    private final PasswordEncoder passwordEncoder;


    public UserResource(UserRepository userRepository, ReviewRepository reviewRepository, PasswordEncoder passwordEncoder, LibraryRepository libraryRepository, BookRepository bookRepository) {
        this.userRepository = userRepository;
        this.reviewRepository = reviewRepository;
        this.passwordEncoder = passwordEncoder;
        this.libraryRepository = libraryRepository;
        this.bookRepository = bookRepository;
    }

    @GetMapping("/users")
    public List<User> retrieveAllUsers() {
        return userRepository.findAll();
    }

    @GetMapping("/users/{login}")
    public User retrieveUser(@PathVariable String login, HttpSession session) {
        if (session.getAttribute("user") == null) {
            throw new UserNotAuthenticatedException("User not authenticated");
        }
        Optional<User> user = userRepository.findById(login);
        if (user.isEmpty())
            throw new UserNotFoundException("login:" + login);
        return user.get();
    }

    @DeleteMapping("/deleteUsers/{login}")
    public void deleteUser(@PathVariable String login) {
        userRepository.deleteById(login);
    }

    @PostMapping("/signup")
    public ResponseEntity<User> createUser(@Valid @RequestBody User user, HttpSession session) {
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        User savedUser = userRepository.save(user);
        URI location = ServletUriComponentsBuilder
                .fromCurrentRequest()
                .path("/{login}")
                .buildAndExpand(savedUser.getLogin())
                .toUri();
        session.setAttribute("user", savedUser);
        return ResponseEntity.created(location).build();
    }

    @PostMapping("/login")
    public ResponseEntity<User> loginUser(@Valid @RequestBody User requestUser, HttpSession session) {
        Optional<User> user = userRepository.findById(requestUser.getLogin());
        if (user.isEmpty())
            throw new UserNotFoundException("login:" + requestUser.getLogin());
        if (!passwordEncoder.matches(requestUser.getPassword(), user.get().getPassword()))
            throw new UserNotFoundException("login:" + requestUser.getLogin());
        ///Save user in session
        session.setAttribute("user", user.get());
        return ResponseEntity.ok().build();
    }

    @GetMapping("/users/{login}/reviews/{id}")
    public Review retrieveReviewForUser(@PathVariable String login, @PathVariable Integer id) {
        Optional<Review> review = reviewRepository.findById(id);
        if (review.isEmpty())
            throw new ReviewNotFoundException("Review not found id:" + id);
        if (!review.get().getUser().getLogin().equals(login))
            throw new ReviewNotFoundException("Review not found id:" + id);
        return review.get();
    }
    @GetMapping("/users/library")
    public List<Library> retrieveLibrary(HttpSession session) {
//        Make sure user is authenticated
//        if (session.getAttribute("user") == null) {
//            throw new UserNotAuthenticatedException("User not authenticated");
//        }
//        User user = (User) session.getAttribute("user");
          return libraryRepository.findByUserLogin("johnson");
    }
    @PostMapping("/users/library/readingStop/{finishPage}")
    public ResponseEntity<Object> readingStart(@PathVariable Integer finishPage, @RequestParam String bookTitle, HttpSession session) {
//        Make sure user is authenticated
//        if (session.getAttribute("user") == null) {
//            throw new UserNotAuthenticatedException("User not authenticated");
//        }
//        User user = (User) session.getAttribute("user");
        Optional<User> user = userRepository.findByLogin("johnson");
        Optional<Library> saveLibrary = libraryRepository.findByUserLoginAndBookTitle(user.get().getLogin(), bookTitle);
        if (saveLibrary.isEmpty()) {
                System.out.println(bookTitle);
                Optional<Book> book = bookRepository.findByTitle(bookTitle);
                Library newLibrary = new Library(user.get(), book.get(), finishPage);
                libraryRepository.save(newLibrary);
        }else {
            saveLibrary.get().setNumberOfPagesRead(finishPage);
            libraryRepository.save(saveLibrary.get());
        }
        URI location = ServletUriComponentsBuilder
                .fromPath("/users/library")
                .path("/{login}")
//                .buildAndExpand(((User) session.getAttribute("user")).getLogin())
                .buildAndExpand("johnson")
                .toUri();
        return ResponseEntity.status(302).location(location).build();
    }
}
