package com.bookverseApp.bookverse.user;


import com.bookverseApp.bookverse.jpa.ReviewRepository;
import com.bookverseApp.bookverse.jpa.UserRepository;
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
    private final PasswordEncoder passwordEncoder;


    public UserResource(UserRepository userRepository, ReviewRepository reviewRepository, PasswordEncoder passwordEncoder) {
        this.userRepository = userRepository;
        this.reviewRepository = reviewRepository;
        this.passwordEncoder = passwordEncoder;
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

    @DeleteMapping("/deleteUsers/{login}")
    public void deleteUser(@PathVariable String login) {
        userRepository.deleteById(login);
    }
    @GetMapping("/users/{login}/reviews")
    public List<Review> retrieveReviewsForAllUsers(@PathVariable String login) {
        Optional<User> user = userRepository.findById(login);
        if (user.isEmpty())
            throw new UserNotFoundException("login:" + login);
        return user.get().getReviews();
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
