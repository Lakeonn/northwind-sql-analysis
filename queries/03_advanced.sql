-- 11. Find customers who placed at least 2 orders within the last year.
SELECT 
	customer_id, 
	COUNT(*) AS number_of_orders
FROM orders
WHERE EXTRACT(YEAR FROM (order_date)) = (SELECT MAX(EXTRACT(YEAR FROM (order_date))) FROM orders)
GROUP BY customer_id
HAVING COUNT(*) > 2;


-- 12. Calculate month over month revenue growth.
WITH monthly_revenue AS (
    SELECT
        EXTRACT(YEAR FROM o.order_date) AS year,
        EXTRACT(MONTH FROM o.order_date) AS month,
        SUM((od.unit_price * od.quantity) - ((od.unit_price * od.quantity) * od.discount)) AS revenue
    FROM orders o
    JOIN order_details od ON o.order_id = od.order_id
    GROUP BY year, month
)
SELECT *,
    LAG(revenue) OVER (ORDER BY year, month) AS prev_month_revenue,
    ROUND(
    CAST((revenue - LAG(revenue) OVER (ORDER BY year, month)) /
    LAG(revenue) OVER (ORDER BY year, month) * 100 AS NUMERIC)
, 2) AS growth_pct
FROM monthly_revenue
ORDER BY year, month;

-- 13. Rank employees by total sales revenue using a window function.
WITH cte1 AS (
SELECT 
	order_id, 
	SUM((unit_price * quantity) - ((unit_price * quantity) * discount)) AS total_revenue
FROM order_details
GROUP BY order_id)

SELECT 
	o.employee_id, 
	SUM(cte1.total_revenue) AS ee_sales, 
	RANK() OVER(ORDER BY SUM(cte1.total_revenue) DESC)
FROM orders o 
LEFT JOIN cte1
	ON o.order_id = cte1.order_id
GROUP BY o.employee_id
;

-- 14. Find the top selling product per category 
--     (one product per category, highest revenue).
WITH cte AS (
SELECT 
	product_id, 
	category_id
FROM products
), 

cte2 AS (
SELECT 
	product_id, 
	SUM((unit_price * quantity) - ((unit_price * quantity) * discount)) AS total_revenue
FROM order_details od
GROUP BY product_id
), 

cte3 AS (
SELECT 
	cte.product_id, 
	cte.category_id, 
	cte2.total_revenue, 
	RANK() OVER(PARTITION BY category_id ORDER BY cte2.total_revenue DESC) AS rank
FROM cte
LEFT JOIN cte2
	ON cte.product_id = cte2.product_id 
)

SELECT 
	*
FROM cte3
WHERE rank = 1
;