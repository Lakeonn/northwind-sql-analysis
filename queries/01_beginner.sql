-- 1. Find all customers from Germany.
SELECT 
	*
FROM customers
WHERE country = 'Germany';

-- 2. List all products that are out of stock.
SELECT
	product_id, 
	product_name
FROM products
WHERE units_in_stock = 0;

-- 3. Find the total number of orders placed by each customer.
SELECT 
	c.customer_id, 
	c.company_name, 
	COUNT(o.order_id) AS number_of_orders
FROM customers c
LEFT JOIN orders o
	ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.company_name;

-- 4. List employees and their job titles ordered alphabetically by last name.
SELECT 
	first_name, 
	last_name, 
	CONCAT(first_name, ' ', last_name) AS full_name, 
	title
FROM employees
ORDER BY last_name ASC;

-- 5. Find all orders that were shipped late (ShippedDate > RequiredDate).
SELECT 
	order_id, 
	shipped_date, 
	required_date
FROM orders
WHERE shipped_date > required_date;