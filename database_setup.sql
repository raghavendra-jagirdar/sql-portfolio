-- ============================================
-- DATABASE SETUP
-- SQL Portfolio – Business Reporting Practice
-- ============================================

-- Drop database if it already exists
DROP DATABASE IF EXISTS learning_db;

-- Create database
CREATE DATABASE learning_db;
USE learning_db;

-- ============================================
-- CUSTOMERS TABLE
-- ============================================
CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    city VARCHAR(50),
    state VARCHAR(50)
);

INSERT INTO customers (first_name, last_name, city, state) VALUES
('Rahul', 'Kumar', 'Bengaluru', 'Karnataka'),
('Sneha', 'Patil', 'Mumbai', 'Maharashtra'),
('Arjun', 'Singh', 'Delhi', 'Delhi'),
('Priya', 'Nair', 'Chennai', 'Tamil Nadu');

-- ============================================
-- PRODUCTS TABLE
-- ============================================
CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    brand VARCHAR(50),
    price DECIMAL(10,2),
    stock INT
);

INSERT INTO products (product_name, category, brand, price, stock) VALUES
('Mobile Phone', 'Mobile', 'Samsung', 55000, 25),
('Laptop', 'Laptop', 'Dell', 75000, 15),
('Tablet', 'Tablet', 'Apple', 42000, 40),
('Smart Watch', 'Wearable', 'FitTime', 7000, 60),
('Camera', 'Electronics', 'Canon', 65000, 10);

-- ============================================
-- ORDERS TABLE
-- ============================================
CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO orders (customer_id, order_date) VALUES
(1, '2025-01-10'),
(2, '2025-01-12'),
(1, '2025-01-15'),
(3, '2025-01-18'),
(4, '2025-01-20');

-- ============================================
-- ORDER ITEMS TABLE
-- ============================================
CREATE TABLE order_items (
    order_item_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO order_items (order_id, product_id, quantity) VALUES
(1, 1, 2),
(1, 4, 1),
(2, 2, 1),
(3, 3, 2),
(4, 1, 1),
(5, 5, 3);
