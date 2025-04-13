CREATE DATABASE Bookstoredb;

USE Bookstore;

CREATE TABLE books (
id VARCHAR(50) PRIMARY KEY,
title varchar(50) NOT NULL,
book_type varchar(50),
publisher_name varchar(50),
publish_date DATE,
book_language_id varchar(50)
);

CREATE TABLE authors (
id VARCHAR(50) PRIMARY KEY,
author_name varchar(50),
date_of_birth DATE
);


/*Book authors Table*/
CREATE TABLE book_authors (
authors_id varchar(50),
books_id varchar(50),
FOREIGN KEY(authors_id) REFERENCES authors(id),
FOREIGN KEY(books_id) REFERENCES books(id) 
);

/*Book languages*/
CREATE TABLE book_language (
id varchar(50) PRIMARY KEY AUTO_INCREMENT,
language varchar(50)
);

/*publisher table*/
CREATE TABLE publisher (
id varchar(50) PRIMARY KEY auto_increment,
publisher_name varchar(50)
);



