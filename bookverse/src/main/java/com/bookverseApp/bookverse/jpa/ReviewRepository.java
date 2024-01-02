package com.bookverseApp.bookverse.jpa;

import com.bookverseApp.bookverse.review.Review;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ReviewRepository extends JpaRepository<Review, Integer>{

}
