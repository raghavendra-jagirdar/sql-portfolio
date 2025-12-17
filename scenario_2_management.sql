-- ============================================
-- Scenario 2: Management Reporting
-- ============================================

-- Latest 5 orders
SELECT order_id, customer_id, order_date
FROM orders
ORDER BY order_date DESC
LIMIT 5;

-- Total number of orders per customer
SELECT customer_id, COUNT(order_id) AS total_orders
FROM orders
GROUP BY customer_id;

-- Orders placed within a specific date range
SELECT order_id, customer_id, order_date
FROM orders
WHERE order_date BETWEEN '2025-01-10' AND '2025-01-20';

-- Customers who placed more than 1 order
SELECT customer_id, COUNT(order_id) AS total_orders
FROM orders
GROUP BY customer_id
HAVING COUNT(order_id) > 1;

-- Top 2 customers by number of orders
SELECT customer_id, COUNT(order_id) AS total_orders
FROM orders
GROUP BY customer_id
ORDER BY total_orders DESC
LIMIT 2;

-- Customers with most orders in the last 30 days
SELECT customer_id, COUNT(order_id) AS total_orders
FROM orders
WHERE order_date >= CURDATE() - INTERVAL 30 DAY
GROUP BY customer_id
ORDER BY total_orders DESC
LIMIT 3;
