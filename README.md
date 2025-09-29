# RegionBySales
Sales Analysis Dashboard using MySQL and Power BI. Provides insights into total sales by region, product category distribution, and sales quantities across countries from the Northwind database.

# 🌍 Region Sales Dashboard

This project focuses on **analyzing sales performance across countries and product categories** using the **Northwind database**.  
The insights are visualized through an interactive dashboard.

---

## 📂 Project Overview
- **Goal:** Understand how different countries contribute to overall sales and analyze product distribution.  
- **Database:** [Northwind Sample Database](https://github.com/microsoft/sql-server-samples/tree/master/samples/databases/northwind-pubs)  
- **SQL Script:** Creates a view (`country_sales`) that aggregates sales by country.  
- **Visualization:** Dashboard contains:
  - **Regions by Total Sales (Bar Chart)**  
  - **Total Quantity by Countries (Pie Chart)**  
  - **Number of Products in Each Category (Bar Chart)**  

---

## 🗄️ SQL View: `country_sales`

The SQL script used:

```sql
USE northwind;

CREATE VIEW country_sales AS 
SELECT  
    c.country, 
    SUM(o.quantity * o.unitPrice) AS total 
FROM customer c 
JOIN salesorder USING(custId) 
JOIN orderdetail o USING(orderId) 
GROUP BY c.country;

## Project Files  

- `SalesDashboard.sql` → MySQL query used for data extraction and preparation  
- `SalesDashboard.png` → Power BI dashboard screenshot (see preview below)  

## Dashboard Preview  
See `SalesDashboard.png` in this repository for the Power BI dashboard screenshot.

