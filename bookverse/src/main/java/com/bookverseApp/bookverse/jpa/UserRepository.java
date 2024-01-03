package com.bookverseApp.bookverse.jpa;

import com.bookverseApp.bookverse.user.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface UserRepository extends JpaRepository<User, String>{
    Optional<User> findByLogin(String login);
}
