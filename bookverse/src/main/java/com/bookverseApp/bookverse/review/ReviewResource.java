package com.bookverseApp.bookverse.review;


import com.bookverseApp.bookverse.book.Book;
import com.bookverseApp.bookverse.exceptions.BookNotFoundException;
import com.bookverseApp.bookverse.exceptions.UserNotAuthenticatedException;
import com.bookverseApp.bookverse.jpa.BookRepository;
import com.bookverseApp.bookverse.jpa.ReviewRepository;
import com.bookverseApp.bookverse.jpa.UserRepository;
import com.bookverseApp.bookverse.user.User;
import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import java.net.URI;
import java.util.List;
import java.util.Optional;

@RestController
public class ReviewResource {

    private final UserRepository userRepository;
    private final ReviewRepository reviewRepository;
    private final BookRepository bookRepository;

    public ReviewResource(UserRepository userRepository, ReviewRepository reviewRepository, BookRepository bookRepository) {
        this.userRepository = userRepository;
        this.reviewRepository = reviewRepository;
        this.bookRepository = bookRepository;
    }

    @GetMapping("/reviews")
    public List<Review> retrieveAllReviews(HttpSession session) {
//        if (session.getAttribute("user") == null) {
//            throw new UserNotAuthenticatedException("User not authenticated");
//        }
        return reviewRepository.findAll();
    }

    @PostMapping("/addReview")
    public ResponseEntity<Object> createReviewForUser(@Valid @RequestBody ReviewRequest reviewRequest, HttpSession session) {
//        if (session.getAttribute("user") == null) {
//            throw new UserNotAuthenticatedException("User not authenticated");
//        }
        Optional<User> user = userRepository.findById("johnson");
        Optional<Book> book = bookRepository.findByTitle(reviewRequest.getBookName());
        if (book.isEmpty())
            throw new BookNotFoundException("Book not found name:" + reviewRequest.getBookName());
        Review savedReview = reviewRepository.save(new Review(book.get(), reviewRequest.getReview(), user.get()));
        //Must be:
        // Review savedReview = reviewRepository.save(new Review(book.get(), requestReview.getReview(), (User) session.getAttribute("user")));
        URI location = ServletUriComponentsBuilder
                .fromCurrentRequest()
                .path("/{id}")
                .buildAndExpand(savedReview.getId())
                .toUri();
        return ResponseEntity.created(location).build();
    }
}
