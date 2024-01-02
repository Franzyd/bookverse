package com.bookverseApp.bookverse;

import com.bookverseApp.bookverse.jpa.ReviewRepository;
import com.bookverseApp.bookverse.review.Review;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.Collections;
import java.util.List;

@Controller
public class IndexResource {

    private final ReviewRepository reviewRepository;
    public IndexResource(ReviewRepository reviewRepository) {
        this.reviewRepository = reviewRepository;
    }

    @GetMapping("/")
    public String index(Model model) {
        List<Review> reviews = reviewRepository.findAll().subList(0,20);
        Collections.shuffle(reviews);
        model.addAttribute("reviews", reviews);
        return "index";
    }
}
