package com.bookverseApp.bookverse.jpa;

import com.bookverseApp.bookverse.book.Book;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface BoookRepository extends JpaRepository<Book, Integer>{

    Optional<Book> findByTitle(String bookName);
}
