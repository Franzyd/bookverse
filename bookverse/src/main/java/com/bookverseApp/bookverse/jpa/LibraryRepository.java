package com.bookverseApp.bookverse.jpa;

import com.bookverseApp.bookverse.library.Library;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

public interface LibraryRepository extends JpaRepository<Library, Integer>{

    List<Library> findByUserLogin(String userLogin);
    Optional<Library> findByUserLoginAndBookTitle(String userLogin, String title);
}
