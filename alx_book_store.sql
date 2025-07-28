CREATE DATABASE IF NOT EXISTS alx_book_store ;
USE alx_book_store;

CREATE TABLE Authors(
    author_id INT primary Key,
    author_name varchar(215)
);

CREATE TABLE Books(
    book_id INT primary Key,
    title varchar(130),
    author_id INT,
    price DOUBLE,
    publication_data DATE,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);


CREATE TABLE Customers(
    Customer_id INT primary KEY,
    Customer_name varchar(215),
    email varchar(215),
    address TEXT    
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Order_Details (
    orderdetailid INT PRIMARY KEY,
    order_id INT,
    book_id INT,
    quantity DOUBLE,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);