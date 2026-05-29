# Northwind Analysis — Key Findings

A business-focused interpretation of query results from the Northwind database, covering revenue, products, employees, customers, and operational performance.

---

## 1. Revenue by Category

**Beverages is the clear revenue leader at $267,868** — significantly ahead of all other categories. This suggests the business is heavily dependent on a single category, which represents both an opportunity (double down on beverages) and a risk (vulnerability if demand shifts).

The top 3 revenue-generating products across all categories were:
| Product ID | Category | Revenue |
|---|---|---|
| 38 | Beverages | $141,397 |
| 29 | Meat/Poultry | $80,369 |
| 59 | Dairy Products | $71,156 |

Product 38 alone accounts for more than half of total Beverages revenue — a significant concentration risk within the top category.

---

## 2. Top 5 Products by Total Revenue

| Rank | Product ID | Revenue |
|---|---|---|
| 1 | 38 | $141,397 |
| 2 | 29 | $80,369 |
| 3 | 59 | $71,156 |
| 4 | 62 | $47,235 |
| 5 | 60 | $46,825 |

The top 2 products generate nearly double the revenue of products 4 and 5. A classic Pareto distribution — a small number of products drive the majority of revenue. The business should prioritize stock availability and supplier relationships for these products.

---

## 3. Employee Performance

**Margaret Peacock (Employee 4) leads all employees with $232,891 in total sales revenue** — 15% ahead of second-place Employee 3 at $202,813.

Full employee revenue ranking:
| Rank | Employee ID | Total Revenue |
|---|---|---|
| 1 | 4 | $232,891 |
| 2 | 3 | $202,813 |
| 3 | 1 | $192,108 |
| 4 | 2 | $166,538 |
| 5 | 8 | $126,862 |
| 6 | 7 | $124,568 |
| 7 | 9 | $77,308 |
| 8 | 6 | $73,913 |
| 9 | 5 | $68,792 |

There is a notable performance gap between the top 4 and bottom 3 employees. Employees 5, 6, and 9 generate roughly a third of what the top performers produce — worth investigating whether this is due to territory, tenure, or product specialisation.

Separately, **Margaret Peacock also processed the most orders at 156** — indicating she leads on both volume and revenue, making her the standout performer in the dataset.

---

## 4. Customer Order Behaviour

**Save-a-lot Markets leads all customers with 31 orders**, followed closely by Ernst Handel with 30. These two customers are significantly more active than the rest of the base and likely represent the company's most valuable accounts.

Top 5 customers by order volume:
| Customer | Orders |
|---|---|
| Save-a-lot Markets | 31 |
| Ernst Handel | 30 |
| QUICK-Stop | 28 |
| Hungry Owl All-Night Grocers | 19 |
| Berglunds snabbköp / Folko | 18/19 |

At the other end, **2 customers — PARIS (Paris spécialités) and FISSA (FISSA Fabrica Inter. Salchichas S.A.) — have placed zero orders**. These accounts are completely inactive and represent either churned customers or accounts that were created but never converted.

**50 customers placed at least 2 orders in the most recent year**, indicating strong repeat purchase behaviour across the majority of the active customer base.

---

## 5. Month-over-Month Revenue Trends

Revenue grew significantly from mid-1996 through early 1998, with clear seasonal patterns emerging across the data.

**Notable growth months:**
- October 1996: **+42%** — sharp Q4 spike
- January 1997: **+35%** — strong new year rebound
- December 1997: **+64%** — largest single month jump in the dataset
- January 1998: **+32%** — sustained momentum into 1998

**Notable decline months:**
- February 1997: **-37%** — sharp post-January pullback
- November 1997: **-35%** — unusual dip ahead of December surge
- June 1997: **-32%** — mid-year slowdown

**May 1998 shows an -85% drop to $18,334** — this is almost certainly due to incomplete data for that month rather than an actual business decline, as the preceding months showed strong and consistent growth ($94K → $99K → $104K → $123K).

The overall trend is strongly positive. Revenue roughly tripled from July 1996 ($27,862) to April 1998 ($123,799), suggesting healthy business growth over the period captured in this dataset.

---

## 6. Late Shipments

**37 orders were shipped after their required date** across the full dataset. 

Key observations:
- Late shipments appear consistently across all years — this is not an isolated incident
- The worst delays include orders 10726 (shipped 18 days late) and 10777 (shipped 23 days late)
- Late shipments appear to increase in frequency toward 1997–1998, which may correlate with the significant revenue growth in that period — higher order volume potentially straining fulfilment capacity

This is a meaningful operational finding. If this were a real business, it would warrant investigation into whether specific shipping carriers, regions, or product types are driving the delays.

---

## Summary

| Area | Key Finding |
|---|---|
| Revenue | Beverages dominates at $267,868 — 1 category, 1 product driving outsized share |
| Products | Top 2 products generate nearly 3x the revenue of products 4 and 5 |
| Employees | Margaret Peacock leads on both order volume (156) and revenue ($232,891) |
| Customers | Save-a-lot Markets is the most active customer at 31 orders; 2 customers have zero orders |
| Growth | Revenue tripled from mid-1996 to early 1998 with strong seasonal Q4 spikes |
| Operations | 37 late shipments recorded — frequency increases alongside revenue growth |
