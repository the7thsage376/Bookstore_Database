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

/*Customer table*/
CREATE TABLE customers (
id INT PRIMARY KEY auto_increment,
firstName varchar(50),
lastName varchar(50),
email varchar(50) unique,
address_id varchar(100),
FOREIGN KEY(address_id) REFERENCES address(id) 
);

/* Customer address*/
CREATE TABLE customer_address (
id varchar(100) PRIMARY KEY,
address_id varchar(100), 
customer_id int,
city varchar(50),
province varchar(50),
FOREIGN KEY(address_id) REFERENCES address(id), 
FOREIGN KEY(customer_id) REFERENCES customer(id) 
);

/* address status*/
CREATE TABLE address_status (
address_id varchar(100),
customer_id INT,
current_address varchar(50),
old_address varchar(50),
FOREIGN KEY(address_id) REFERENCES address(id), 
FOREIGN KEY(customer_id) REFERENCES customer(id) 
);

/* address*/
CREATE TABLE address (
id varchar(100) PRIMARY KEY,
city varchar(50),
country_id varchar(50),
province varchar(50),
address_status_id varchar(50),
customer_id int,
FOREIGN KEY(address_status_id) REFERENCES address_status(id), 
FOREIGN KEY(customer_id) REFERENCES customer(id), 
FOREIGN KEY(country_id) REFERENCES country(id)
);

/* country*/
CREATE TABLE country (
id varchar(50) PRIMARY KEY,
country varchar(50)
);

