-- Product stock report
SELECT 
    p.product_name,
    i.stock_quantity
FROM products p
JOIN inventory i
ON p.product_id = i.product_id;

-- Low stock alert
SELECT 
    p.product_name,
    i.stock_quantity,
    p.reorder_level
FROM products p
JOIN inventory i
ON p.product_id = i.product_id
WHERE i.stock_quantity < p.reorder_level;

-- Total quantity sold per product
SELECT 
    p.product_name,
    SUM(s.quantity_sold) AS total_sold
FROM products p
LEFT JOIN sales s
ON p.product_id = s.product_id
GROUP BY p.product_name;

-- Inventory value report
SELECT 
    p.product_name,
    p.price,
    i.stock_quantity,
    (p.price * i.stock_quantity) AS inventory_value
FROM products p
JOIN inventory i
ON p.product_id = i.product_id;

-- Sales history
SELECT 
    p.product_name,
    s.quantity_sold,
    s.sale_date
FROM products p
JOIN sales s
ON p.product_id = s.product_id;
