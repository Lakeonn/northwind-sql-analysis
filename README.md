# northwind-sql-analysis
# Northwind SQL Analysis
A structured SQL analysis project using the classic Northwind database, covering customer behaviour, employee performance, product revenue, and month-over-month sales trends.

---

## Dataset
**Northwind Database** — a fictional company selling food and beverage products across multiple countries. The dataset includes customers, orders, employees, products, and categories tables.

- Source: [GitHub — pthom/northwind_psql](https://github.com/pthom/northwind_psql)
- Database: PostgreSQL
- Tool: pgAdmin

---

## Project Structure
```
northwind-sql-analysis/
│
├── README.md
├── data/
│   └── northwind.sql
├── queries/
│   ├── 01_beginner.sql
│   ├── 02_intermediate.sql
│   └── 03_advanced.sql
└── insights/
    └── findings.md
```

---

## Questions Answered

### Beginner
1. Find all customers from Germany
2. List all products that are out of stock
3. Find the total number of orders placed by each customer
4. List employees and their job titles ordered alphabetically by last name
5. Find all orders that were shipped late

### Intermediate
6. Find the top 5 best selling products by total revenue
7. Which employee has processed the most orders?
8. Find the average order value per customer (above $500 only)
9. Find customers who have never placed an order
10. Which product category generates the most revenue?

### Advanced
11. Find customers who placed at least 2 orders within the last year
12. Calculate month-over-month revenue growth
13. Rank employees by total sales revenue using a window function
14. Find the top selling product per category using window functions

---

## Key Insights

### Revenue
- **Beverages was the highest revenue category** at **$267,868** — the clear market leader across all 8 product categories
- **Top selling product per category highlights:**

| Category ID | Product ID | Revenue |
|---|---|---|
| 1 (Beverages) | 38 | $141,397 |
| 4 | 59 | $71,156 |
| 6 | 29 | $80,369 |
| 3 | 62 | $47,235 |

### Employee Performance
- **Margaret Peacock processed the most orders at 156** — the top performer across all employees

### Customer Behaviour
- **Only 2 customers never placed an order** (PARIS, FISSA) out of the entire customer base — indicating strong overall customer engagement

### Month-over-Month Revenue Trends
- Revenue showed **strong overall growth from mid-1996 through early 1998**
- Notable spikes: **+42% in October 1996**, **+64% in December 1997**, **+32% in January 1998**
- Sharpest declines: **-37% in February 1997**, **-35% in November 1997**
- **April–May 1998 shows an -85% drop** — likely due to incomplete data for that period rather than an actual decline
- The general trend shows the business scaling significantly year-over-year

---

## Skills Demonstrated
- `SELECT`, `WHERE`, `GROUP BY`, `HAVING`, `ORDER BY`
- `JOIN` (LEFT JOIN, INNER JOIN)
- Aggregate functions (`SUM`, `COUNT`, `AVG`)
- Subqueries and correlated subqueries
- Common Table Expressions (CTEs)
- Window functions (`RANK`, `LAG`, `PARTITION BY`)
- Date functions (`EXTRACT`) 
- Type casting (`::NUMERIC`)

---

## Tools Used
- **PostgreSQL** — database engine
- **pgAdmin** — query tool and database management
- **Git & GitHub** — version control and portfolio hosting
