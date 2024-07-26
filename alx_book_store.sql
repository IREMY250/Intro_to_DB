CREATE DATABASE IF NOT EXISTS alx_book_store;
USE alx_book_store;
CREATE TABLE Authors (
     author_id INT (primary key),
     author_name VARCHAR(215) NOT NULL
     );
CREATE TABLE Books (
    book_id INT (Primary Key),
     title VARCHAR(130) NOT NULL,
     author_id INT,
     price DOUBLE NOT NULL,
     publication_date DATE
     FOREIGN KEY (author_id) REFERENCES Authors(author_id)
     );
CREATE TABLE Customers (
    customer_id(primary key),
     customer_name VARCHAR(215) NOT NULL,
     email VARCHAR (215) NOT NULL,
     address TEXT
     );
CREATE TABLE Orders (
    order_id (Primary Key),
     customer_id,
     order_date DATE
     FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
     );
CREATE TABLE Order_Details (
    orderdetail_id (Primary Key),
    order_id,
    book_id,
    quantity DOUBLE
     FOREIGN KEY (order_id) REFERENCES Orders(order_id),
     FOREIGN KEY (book_id) REFERENCES Books(book_id)
    );