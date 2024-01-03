package com.bookverseApp.bookverse.library;

import com.bookverseApp.bookverse.book.Book;
import com.bookverseApp.bookverse.user.User;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;
import jakarta.persistence.*;

@Entity(name = "library")
public class Library {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "library_seq")
    @SequenceGenerator(name = "library_seq", sequenceName = "library_seq", allocationSize = 1)
    @JsonProperty(access = JsonProperty.Access.READ_ONLY)
    private Integer id;
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "user_login")
    @JsonIgnore
    private User user;
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "book_id")
    @JsonProperty(access = JsonProperty.Access.READ_ONLY)
    private Book book;
    private Integer numberOfPagesRead;

    public Library(Integer id, User user, Book book, Integer numberOfPagesRead) {
        super();
        this.id = id;
        this.user = user;
        this.book = book;
        this.numberOfPagesRead = numberOfPagesRead;
    }
    public Library(User user, Book book, Integer numberOfPagesRead) {
        super();
        this.user = user;
        this.book = book;
        this.numberOfPagesRead = numberOfPagesRead;
    }

    public Library() {
        super();
    }
    @JsonProperty("readingProgress")
    public Integer getReadingProgress() {
        return book.getReadingProgress(numberOfPagesRead);
    }
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Book getBook() {
        return book;
    }

    public void setBook(Book book) {
        this.book = book;
    }

    public Integer getNumberOfPagesRead() {
        return numberOfPagesRead;
    }

    public void setNumberOfPagesRead(Integer numberOfPagesRead) {
        this.numberOfPagesRead = numberOfPagesRead;
    }
}
