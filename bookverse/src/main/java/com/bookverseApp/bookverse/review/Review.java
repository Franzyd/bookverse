package com.bookverseApp.bookverse.review;

import com.bookverseApp.bookverse.book.Book;
import com.bookverseApp.bookverse.user.User;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;
import jakarta.persistence.*;

import java.time.LocalDateTime;

@Entity(name = "reviews")
public class Review {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "reviews_seq")
    @SequenceGenerator(name = "reviews_seq", sequenceName = "reviews_seq", allocationSize = 1)
    @JsonProperty(access = JsonProperty.Access.READ_ONLY)
    private Integer id;
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "book_id")
    @JsonProperty(access = JsonProperty.Access.READ_ONLY)
    private Book book;
    @ManyToOne(fetch = FetchType.EAGER)
    @JsonIgnore
    private User user;
    @JsonProperty(access = JsonProperty.Access.READ_ONLY)
    private LocalDateTime date;
    private String review;
    @JsonProperty(access = JsonProperty.Access.READ_ONLY)
    private Integer likesAmount;
    @JsonProperty(access = JsonProperty.Access.READ_ONLY)
    private Integer commentsAmount;
    @JsonProperty(access = JsonProperty.Access.READ_ONLY)
    private Integer shareAmount;

    public Review(Book book, String review, User user) {
        super();
        this.book = book;
        this.review = review;
        this.user = user;
        this.date = LocalDateTime.now();
        this.likesAmount = 0;
        this.commentsAmount = 0;
        this.shareAmount = 0;
    }

    public Review() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public Book getBook() {
        return book;
    }

    public void setBook(Book book) {
        this.book = book;
    }

    public String getReview() {
        return review;
    }

    public void setId(Integer login) {
        this.id = login;
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

    public Integer getShareAmount() {
        return shareAmount;
    }

    public void setShareAmount(Integer saveAmount) {
        this.shareAmount = saveAmount;
    }

    @JsonProperty("userLogin")
    public String getUserLogin() {
        return user.getLogin();
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
                ", saveAmount=" + shareAmount +
                '}';
    }
}
