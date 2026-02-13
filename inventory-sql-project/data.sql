INSERT INTO products (product_name, category, price, reorder_level) VALUES
('Mobile Phone', 'Electronics', 45000, 20),
('Laptop', 'Electronics', 75000, 10),
('Headphones', 'Accessories', 3000, 50),
('Smart Watch', 'Wearables', 8000, 30),
('Tablet', 'Electronics', 42000, 15);

INSERT INTO inventory (product_id, stock_quantity) VALUES
(1, 18),
(2, 8),
(3, 120),
(4, 25),
(5, 10);

INSERT INTO sales (product_id, quantity_sold, sale_date) VALUES
(1, 5, '2025-01-05'),
(1, 3, '2025-01-10'),
(2, 2, '2025-01-08'),
(3, 20, '2025-01-12'),
(4, 6, '2025-01-15'),
(5, 4, '2025-01-18');
