package com.bookverseApp.bookverse.user;


import com.bookverseApp.bookverse.jpa.ReviewRepository;
import com.bookverseApp.bookverse.jpa.UserRepository;
import jakarta.validation.Valid;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import java.net.URI;
import java.util.List;
import java.util.Optional;

@RestController
public class UserResource {

    private final UserRepository userRepository;
    private final ReviewRepository reviewRepository;

    public UserResource(UserRepository userRepository, ReviewRepository reviewRepository) {
        this.userRepository = userRepository;
        this.reviewRepository = reviewRepository;
    }

    @GetMapping("/users")
    public List<User> retrieveAllUsers() {
        return userRepository.findAll();
    }

    @GetMapping("/users/{login}")
    public User retrieveUser(@PathVariable String login) {
        Optional<User> user = userRepository.findById(login);
        if (user.isEmpty())
            throw new UserNotFoundException("login:" + login);
        return user.get();
    }

    @DeleteMapping("/users/{login}")
    public void deleteUser(@PathVariable String login) {
        userRepository.deleteById(login);
    }

    @PostMapping("/users")
    public ResponseEntity<User> createUser(@Valid @RequestBody User user) {
        User savedUser = userRepository.save(user);
        URI location = ServletUriComponentsBuilder
                .fromCurrentRequest()
                .path("/{login}")
                .buildAndExpand(savedUser.getLogin())
                .toUri();
        return ResponseEntity.created(location).build();
    }

    @GetMapping("/users/{login}/reviews")
    public List<Review> retrieveReviewsForAllUsers(@PathVariable String login) {
        Optional<User> user = userRepository.findById(login);
        if (user.isEmpty())
            throw new UserNotFoundException("login:" + login);
        return user.get().getReviews();
    }

    @PostMapping("/users/{login}/reviews")
    public ResponseEntity<Object> createReviewForUser(@PathVariable String login, @Valid @RequestBody Review review) {
        Optional<User> user = userRepository.findById(login);
        if (user.isEmpty())
            throw new UserNotFoundException("login:" + login);
        review.setUser(user.get());
        Review savedReview = reviewRepository.save(review);
        URI location = ServletUriComponentsBuilder
                .fromCurrentRequest()
                .path("/{id}")
                .buildAndExpand(savedReview.getId())
                .toUri();
        return ResponseEntity.created(location).build();
    }

    @GetMapping("/users/{login}/reviews/{id}")
    public Review retrieveReviewsForUser(@PathVariable String login, @PathVariable Integer id) {
        Optional<Review> review = reviewRepository.findById(id);
        if (review.isEmpty())
            throw new ReviewNotFoundException("Review not found id:" + id);
        if (!review.get().getUser().getLogin().equals(login))
            throw new ReviewNotFoundException("Review not found id:" + id);
        return review.get();
    }

}
