package com.bookverseApp.bookverse.jpa;

import com.bookverseApp.bookverse.user.Review;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ReviewRepository extends JpaRepository<Review, Integer>{

}
