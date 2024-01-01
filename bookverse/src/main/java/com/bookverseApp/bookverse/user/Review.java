package com.bookverseApp.bookverse.user;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import jakarta.validation.constraints.Size;

import java.time.LocalDateTime;

@Entity
public class Review {
    @Id
    @GeneratedValue
    private Integer id;
    private String book;
    @ManyToOne(fetch = FetchType.LAZY)
    @JsonIgnore
    private User user;
    private LocalDateTime date;
    @Column(length = 10000)
    private String review;
    @Size(min = 0)
    private Integer likesAmount;
    @Size(min = 0)
    private Integer commentsAmount;
    @Size(min = 0)
    private Integer saveAmount;

//    public Review(Integer id, String book, String review) {
//        super();
//        this.id = id;
//        this.book = book;
//        this.review = review;
//    }


    public Review(Integer id, String book, String review) {
        super();
        this.id = id;
        this.book = book;
        this.date = LocalDateTime.now();
        this.review = review;
        this.likesAmount = 0;
        this.commentsAmount = 0;
        this.saveAmount = 0;
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

    public LocalDateTime getDate() {
        return date;
    }

    public void setDate(LocalDateTime date) {
        this.date = date;
    }

    public Integer getLikesAmount() {
        return likesAmount;
    }

    public void setLikesAmount(Integer likesAmount) {
        this.likesAmount = likesAmount;
    }

    public Integer getCommentsAmount() {
        return commentsAmount;
    }

    public void setCommentsAmount(Integer commentsAmount) {
        this.commentsAmount = commentsAmount;
    }

    public Integer getSaveAmount() {
        return saveAmount;
    }

    public void setSaveAmount(Integer saveAmount) {
        this.saveAmount = saveAmount;
    }

    @Override
    public String toString() {
        return "Review{" +
                "id=" + id +
                ", book='" + book + '\'' +
                ", user=" + user +
                ", date=" + date +
                ", review='" + review + '\'' +
                ", likesAmount=" + likesAmount +
                ", commentsAmount=" + commentsAmount +
                ", saveAmount=" + saveAmount +
                '}';
    }
}
