package com.bookverseApp.bookverse.jpa;

import com.bookverseApp.bookverse.user.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, String>{

}
