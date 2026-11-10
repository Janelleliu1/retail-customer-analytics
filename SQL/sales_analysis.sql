
-- ==================================================
-- Retail Analytics | Olist E-commerce Dataset
-- Sales Performance & Customer Behavior Analysis
-- ==================================================

USE retail_analytics;

-- 1. Data Validation
SELECT
    COUNT(*) AS total_rows,
    COUNT(DISTINCT order_id) AS total_orders,
    COUNT(DISTINCT customer_unique_id) AS total_customers
FROM sales_cleaned_v2;


-- 2. Sales Performance KPIs
SELECT
    ROUND(SUM(price), 2) AS product_revenue,
    COUNT(DISTINCT order_id) AS delivered_orders,
    ROUND(
        SUM(price) / COUNT(DISTINCT order_id),
        2
    ) AS average_order_value
FROM sales_cleaned_v2;


-- 3. Monthly Sales Trends
SELECT
    purchase_month,
    ROUND(SUM(price), 2) AS revenue,
    COUNT(DISTINCT order_id) AS orders,
    ROUND(
        SUM(price) / COUNT(DISTINCT order_id),
        2
    ) AS aov
FROM sales_cleaned_v2
GROUP BY purchase_month
ORDER BY purchase_month;


-- 4. Customer Repeat Purchase Analysis
WITH customer_orders AS (
    SELECT
        customer_unique_id,
        COUNT(DISTINCT order_id) AS total_orders
    FROM sales_cleaned_v2
    GROUP BY customer_unique_id
)
SELECT
    COUNT(*) AS total_customers,
    SUM(CASE WHEN total_orders > 1 THEN 1 ELSE 0 END)
        AS repeat_customers,
    ROUND(
        100.0 * SUM(CASE WHEN total_orders > 1 THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS repeat_purchase_rate
FROM customer_orders;


-- 5. Top 10 Products by Revenue
SELECT
    product_id,
    COUNT(*) AS units_sold,
    COUNT(DISTINCT order_id) AS order_count,
    ROUND(SUM(price), 2) AS product_revenue,
    ROUND(AVG(price), 2) AS avg_unit_price
FROM sales_cleaned_v2
GROUP BY product_id
ORDER BY product_revenue DESC
LIMIT 10;
