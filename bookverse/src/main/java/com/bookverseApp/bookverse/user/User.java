package com.bookverseApp.bookverse.user;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.Pattern;
import jakarta.validation.constraints.Size;

import java.util.List;

@Entity(name = "users")
public class User {

    @Size(min = 2, message = "Login should have at least 2 characters")
    @Pattern(regexp = "^[a-zA-Z0-9._]*$", message = "Login should only contain letters, numbers, dots, and underscores")
    @Id
    private String login;

    @Size(min = 2, message = "Name should have at least 2 characters")
    @Pattern(regexp = "^[a-zA-Z]+$", message = "Name should contain only letters")
    private String name;

    @Size(min = 2, message = "Last name should have at least 2 characters")
    @Pattern(regexp = "^[a-zA-Z]+$", message = "Last name should contain only letters")
    private String lastName;

    @Email(message = "Invalid email format")
    private String email;

    @Size(min = 8, message = "Password should have at least 8 characters")
    @Pattern(regexp = "^(?=.*[a-zA-Z])(?=.*[0-9]).*$", message = "Password should contain at least one letter and one digit")
    private String password;

    @OneToMany(mappedBy = "user")
    @JsonIgnore
    private List<Review> reviews;

    public User(String login, String name, String lastName, String email, String password) {
        super();
        this.login = login;
        this.name = name;
        this.lastName = lastName;
        this.email = email;
        this.password = password;
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

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "User{" +
                "login='" + login + '\'' +
                ", name='" + name + '\'' +
                ", lastName='" + lastName + '\'' +
                ", email='" + email + '\'' +
                ", password='" + password + '\'' +
                ", reviews=" + reviews +
                '}';
    }
}
