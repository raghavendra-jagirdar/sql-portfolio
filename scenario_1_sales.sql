-- ============================================
-- Scenario 1: Sales & Product Analysis
-- ============================================

-- Total quantity sold per product
SELECT product_id, SUM(quantity) AS total_quantity_sold
FROM order_items
GROUP BY product_id;

-- Products that sold more than 3 units
SELECT product_id, SUM(quantity) AS total_quantity_sold
FROM order_items
GROUP BY product_id
HAVING SUM(quantity) > 3;

-- Top 3 products by quantity sold
SELECT product_id, SUM(quantity) AS total_quantity_sold
FROM order_items
GROUP BY product_id
ORDER BY total_quantity_sold DESC
LIMIT 3;

-- Maximum quantity sold in a single order per product
SELECT product_id, MAX(quantity) AS max_quantity_sold
FROM order_items
GROUP BY product_id;

-- Average quantity sold per product
SELECT product_id, AVG(quantity) AS avg_quantity_sold
FROM order_items
GROUP BY product_id;
