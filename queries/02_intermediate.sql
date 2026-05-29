-- 6. Find the top 5 best selling products by total revenue.
SELECT
	product_id, 
	SUM((unit_price * quantity) - ((unit_price * quantity) * discount)) AS total_revenue
FROM order_details
GROUP BY product_id
ORDER BY total_revenue DESC
LIMIT 5;

-- 7. Which employee has processed the most orders?
SELECT 
	CONCAT(e.first_name, ' ', e.last_name) AS full_name, 
	COUNT(o.order_id) number_of_orders
FROM orders o
LEFT JOIN employees e
	ON o.employee_id = e.employee_id
GROUP BY CONCAT(e.first_name, ' ', e.last_name)
ORDER BY number_of_orders DESC
LIMIT 1;

-- 8. Find the average order value per customer, 
--    only show customers with an average above $500.
SELECT 
	o.customer_id, 
	AVG((od.unit_price * od.quantity) - ((od.unit_price * od.quantity) * od.discount)) AS order_value
FROM orders o
LEFT JOIN order_details od
	ON o.order_id = od.order_id
GROUP BY o.customer_id
HAVING AVG((od.unit_price * od.quantity) - ((od.unit_price * od.quantity) * od.discount)) > 500;

-- 9. Find customers who have never placed an order.
SELECT 
	c.customer_id
FROM customers c
WHERE c.customer_id NOT IN (SELECT DISTINCT customer_id FROM orders);

SELECT c.customer_id
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;

-- 10. Which product category generates the most revenue?
WITH revenue_by_product AS (
    SELECT product_id,
    SUM((unit_price * quantity) - ((unit_price * quantity) * discount)) AS total_revenue
    FROM order_details
    GROUP BY product_id
),
revenue_by_category AS (
    SELECT p.category_id, SUM(r.total_revenue) AS total_revenue
    FROM products p
    LEFT JOIN revenue_by_product r ON p.product_id = r.product_id
    GROUP BY p.category_id
)
SELECT c.category_name, r.total_revenue
FROM categories c
LEFT JOIN revenue_by_category r ON c.category_id = r.category_id
ORDER BY total_revenue DESC
LIMIT 1;