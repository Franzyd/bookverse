-- noinspection SqlNoDataSourceInspectionForFile

DROP
  TABLE IF EXISTS review;
DROP
  TABLE IF EXISTS users;
DROP
  TABLE IF EXISTS books;
DROP
 SEQUENCE IF EXISTS books_seq;
DROP
 SEQUENCE IF EXISTS reviews_seq;
DROP
    SEQUENCE IF EXISTS library_seq;

CREATE SEQUENCE IF NOT EXISTS books_seq START WITH 22 INCREMENT BY 1;
CREATE SEQUENCE IF NOT EXISTS reviews_seq START WITH 22 INCREMENT BY 1;
CREATE SEQUENCE IF NOT EXISTS library_seq START WITH 22 INCREMENT BY 1;

CREATE TABLE books (
  id integer not null,
  title varchar(255),
  author varchar(255),
  description varchar(12000),
  genre varchar(255),
  cover_path varchar(255),
  pages_amount integer not null,
  primary key (id)
);

CREATE TABLE library (
    id integer not null,
    user_login varchar(255),
    book_id integer,
    number_of_pages_read integer,
    primary key (id)
);

CREATE TABLE reviews (
  id integer not null,
  user_login varchar(255),
  book_id integer,
  review varchar(10000),
  comments_amount integer,
  likes_amount integer,
  share_amount integer,
  date timestamp(6),
  primary key (id)
);
CREATE TABLE users (
  login varchar(255) not null,
  name varchar(255),
  last_name varchar(255),
  email varchar(255),
  password varchar(255),
  primary key (login)
);