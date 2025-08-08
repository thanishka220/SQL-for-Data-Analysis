# E-Commerce Data Analysis with SQL

This project demonstrates how to analyze e-commerce transactional data using SQL. The analysis was performed on a dataset imported into a SQLite database using **DB Browser for SQLite**.

## 📁 Dataset

- **File**: `data.csv`  
- **Source**: [Download Dataset](https://www.kaggle.com/datasets/thedevastator/unlock-profits-ecommerce-sales-dataset)  
- **Imported Table**: `EcommerceData`  
- The dataset includes fields like:
  - `InvoiceNo`, `StockCode`, `Description`, `Quantity`
  - `InvoiceDate`, `UnitPrice`, `CustomerID`, `Country`

## 🎯 Objective

To extract business insights by executing SQL queries on e-commerce sales data — exploring sales performance, customer trends, and country-wise revenues.

## 🛠️ Tools Used

- **DB Browser for SQLite**
- **SQLite Database**: `ecommercedb.sqlite`

## 🔍 Key SQL Tasks Performed


1. **Total Orders by Country**  
   - Counted the number of transactions grouped by country.

2. **Revenue by Country**  
   - Calculated revenue using `UnitPrice * Quantity`, aggregated by country.

3. **Top 5 Products by Revenue**  
   - Identified top-selling products based on total sales.

4. **High Quantity Orders**  
   - Retrieved orders with quantities greater than 50.

5. **Countries with Above-Average Revenue**  
   - Used subqueries to find countries exceeding the average revenue.

6. **Created a View: CountryRevenue**  
   - Created a SQL view to store revenue per country for reuse.

7. **Self-Join on Invoice Number**  
   - Performed a self-join to analyze multi-product invoices.

## ✅ Outcome

This project displays the use of:
- SQL aggregate functions
- Filtering and conditional logic
- Subqueries and joins
- Reusable views

It showcases foundational SQL skills required for data analytics and reporting
