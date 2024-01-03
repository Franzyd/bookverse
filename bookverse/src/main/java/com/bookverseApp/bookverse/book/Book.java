package com.bookverseApp.bookverse.book;

import com.bookverseApp.bookverse.jpa.BookRepository;
import com.fasterxml.jackson.annotation.JsonProperty;
import jakarta.persistence.*;

@Entity(name = "books")
public class Book {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "books_seq")
    @SequenceGenerator(name = "books_seq", sequenceName = "books_seq", allocationSize = 1)
    @JsonProperty(access = JsonProperty.Access.READ_ONLY)
    private Integer id;
    private String author;
    private String title;
    private String genre;
    private String description;
    private String coverPath;
    private Integer pagesAmount;

    public Book() {
        super();
    }

    public Book(Integer id, String author, String title, String genre, String description, String coverPath, Integer pagesAmount) {
        this.author = author;
        this.title = title;
        this.genre = genre;
        this.description = description;
        this.coverPath = coverPath;
        this.pagesAmount = pagesAmount;
    }

    public Book(String author, String title, String genre, String description, String coverPath) {
        this.author = author;
        this.title = title;
        this.genre = genre;
        this.description = description;
        this.coverPath = coverPath;
    }

    public Book(String author, String title, String genre, String description, Integer pagesAmount) {
        this.author = author;
        this.title = title;
        this.genre = genre;
        this.description = description;
        this.pagesAmount = pagesAmount;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Integer getPagesAmount() {
        return pagesAmount;
    }

    public void setPagesAmount(Integer pagesAmount) {
        this.pagesAmount = pagesAmount;
    }

    public String getCoverPath() {
        return coverPath;
    }

    public void setCoverPath(String coverPath) {
        this.coverPath = coverPath;
    }

    public Integer getReadingProgress(Integer numberOfPagesRead){
        return (int) Math.floor((numberOfPagesRead.doubleValue() / pagesAmount) * 100);
    }

}
