# Retail Sales & Customer Analytics

**Dataset:** Olist Brazilian E-Commerce (2016–2018)  
**Tools:** Python (Pandas), MySQL, Power BI

## Project Objective

Analyze historical e-commerce transactions to evaluate sales performance, customer purchasing behavior, and product-level revenue. Translate analytical findings into business recommendations using SQL, Python, and an interactive Power BI dashboard.

## Analysis Scope

The analysis focuses on delivered orders and product revenue excluding freight charges. Key metrics include total product revenue, delivered orders, average order value, and repeat purchase rate.

## Key Business Insights

### Insight 1 — Customer Repeat Purchasing

**Finding**

Only 3.0% of customers placed more than one delivered order during the observed period (2,801 out of 93,358 customers). This suggests an opportunity to investigate repeat purchasing behavior and potential customer retention initiatives.

**Business Recommendation**

Analyze purchase frequency by customer segment and product category, and evaluate targeted post-purchase campaigns to encourage repeat orders.

**Limitation**

The repeat purchase rate represents the proportion of customers with multiple delivered orders within the observed dataset. It is not a cohort-based customer retention rate.

### Insight 2 — Monthly Revenue Growth

**Finding**

Monthly product revenue increased substantially throughout 2017, reaching approximately R$987,765 in November 2017. Revenue remained relatively high during much of 2018, although monthly fluctuations were observed.

**Business Recommendation**

Investigate the factors driving revenue growth, including order volume, average order value, and seasonal demand. Compare monthly and year-over-year performance to identify potential growth opportunities and support sales planning.

**Limitation**

The dataset covers a limited historical period, with incomplete boundary months. Seasonal patterns should not be treated as confirmed without further analysis.

### Insight 3 — Top Products by Revenue

**Finding**

The highest-revenue product generated R$63,560 in product sales from 194 units sold. Product revenue rankings can differ from sales volume rankings, highlighting the importance of considering both units sold and average selling price.

**Business Recommendation**

Monitor top-selling products regularly to support inventory planning and promotional decisions. Compare revenue, units sold, and average selling price to distinguish high-volume products from high-value products.

**Limitation**

Product IDs do not provide descriptive product names or categories in the current analysis. Additional product information is needed to make more specific merchandising recommendations.