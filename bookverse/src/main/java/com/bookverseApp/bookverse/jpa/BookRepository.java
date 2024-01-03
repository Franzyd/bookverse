package com.bookverseApp.bookverse.jpa;

import com.bookverseApp.bookverse.book.Book;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

public interface BookRepository extends JpaRepository<Book, Integer>{

    Optional<Book> findByTitle(String bookName);

    List<Book> findByGenre(String genre);

    boolean existsByTitle(String title);
}
