-- ============================================
-- Scenario 3: Inventory & Business Insights
-- ============================================

-- Products with low stock (restocking alert)
SELECT product_name, category, stock
FROM products
WHERE stock < 30;

-- High-priced products for management review
SELECT product_name, category, price
FROM products
WHERE price > 50000
ORDER BY price DESC;

-- Products excluding Mobile category with sufficient stock
SELECT product_name, category, stock
FROM products
WHERE category != 'Mobile'
  AND stock > 20;

-- Review pricing for selected categories
SELECT product_name, category, price
FROM products
WHERE category IN ('Mobile', 'Laptop', 'Tablet')
ORDER BY price DESC;

-- Mid-range priced products for promotions
SELECT product_name, category, price
FROM products
WHERE price BETWEEN 5000 AND 20000
ORDER BY price ASC;

-- Inventory summary metrics
SELECT
    COUNT(stock) AS total_products,
    MIN(price) AS min_price,
    MAX(price) AS max_price,
    AVG(price) AS avg_price
FROM products;

-- Products with strong sales performance
SELECT product_id, SUM(quantity) AS total_quantity_sold
FROM order_items
GROUP BY product_id
HAVING SUM(quantity) > 3;

-- Top 3 best-selling products
SELECT product_id, SUM(quantity) AS total_quantity_sold
FROM order_items
GROUP BY product_id
ORDER BY total_quantity_sold DESC
LIMIT 3;
