CREATE DATABASE IF NOT EXISTS alx_book_store;
USE alx_book_store;
CREATE TABLE Authors (
     author_id(primary key),
     author_name VARCHAR(215)
     );
CREATE TABLE Books (
    book_id (Primary Key),
     title VARCHAR(130),
     author_id,
     price DOUBLE,
     publication_date DATE
     );
CREATE TABLE Customers (
    customer_id(primary key),
     customer_name VARCHAR(215),
     email VARCHAR (215),
     address TEXT
     );
CREATE TABLE Orders (
    order_id (Primary Key),
     customer_id,order_date DATE);
CREATE TABLE Order_Details (
    orderdetail_id (Primary Key),
    order_id,book_id,
    quantity DOUBLE
    );