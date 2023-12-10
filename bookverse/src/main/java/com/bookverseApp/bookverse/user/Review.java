package com.bookverseApp.bookverse.user;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;

@Entity
public class Review {
    @Id
    @GeneratedValue
    private Integer id;
    private String book;
    private String review;
    @ManyToOne(fetch = FetchType.LAZY)
    @JsonIgnore
    private User user;

    public Review(Integer id, String book, String review) {
        super();
        this.id = id;
        this.book = book;
        this.review = review;
    }

    public Review() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public String getBook() {
        return book;
    }

    public String getReview() {
        return review;
    }

    public void setId(Integer login) {
        this.id = login;
    }

    public void setBook(String book) {
        this.book = book;
    }

    public void setReview(String review) {
        this.review = review;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @Override
    public String toString() {
        return "{" +
                "login='" + id + '\'' +
                ", book='" + book + '\'' +
                ", review='" + review + '\'' +
                '}';
    }
}
