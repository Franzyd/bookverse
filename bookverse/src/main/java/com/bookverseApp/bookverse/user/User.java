package com.bookverseApp.bookverse.user;


import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.validation.constraints.Pattern;
import jakarta.validation.constraints.Size;

import java.util.List;

@Entity(name = "users")
public class User {

    @Size(min = 2, message = "Login should have at least 2 characters")
    @Pattern(regexp = "^[a-zA-Z0-9._]*$", message = "Login should only contain letters, numbers, dots, and underscores")
    @Id
    private String login;
    @OneToMany(mappedBy = "user")
    @JsonIgnore
    private List<Review> reviews;

    public User(String login) {
        super();
        this.login = login;
    }

    public User() {
        super();
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public List<Review> getReviews() {
        return reviews;
    }

    public void setReviews(List<Review> reviews) {
        this.reviews = reviews;
    }

    @Override
    public String toString() {
        return "User{" +
                "login='" + login + '\'' +
                '}';
    }
}
