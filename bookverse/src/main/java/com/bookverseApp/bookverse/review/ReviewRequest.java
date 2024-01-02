package com.bookverseApp.bookverse.review;

public class ReviewRequest {
    private String bookName;
    private String review;

    public ReviewRequest(String bookName, String review) {
        super();
        this.bookName = bookName;
        this.review = review;
    }

    public ReviewRequest() {
        super();
    }

    public String getBookName() {
        return bookName;
    }

    public void setBookName(String bookName) {
        this.bookName = bookName;
    }

    public String getReview() {
        return review;
    }

    public void setReview(String review) {
        this.review = review;
    }
}
