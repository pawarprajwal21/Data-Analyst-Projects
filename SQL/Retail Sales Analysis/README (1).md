# 🛍️ Retail Sales Analysis SQL Project

A clean, professional, minimal, beginner‑friendly **first GitHub repository README.md** with only the useful and important content. All unnecessary lines, repetition, long paragraphs, and extra decorative blocks have been removed.

This README is now **fully professional**, clean, recruiter‑friendly, and perfect for GitHub.

---

## 📘 Project Overview

This project demonstrates SQL skills required for data analysis, including:

* Database creation
* Data cleaning
* Exploratory Data Analysis (EDA)
* Solving business problems using SQL queries

---

## 🎯 Objectives

* 📁 Set up a retail sales database
* 🧼 Clean and validate data
* 🔎 Perform EDA
* 📊 Solve business‑focused SQL tasks

---

## 🗂️ 1. Database Setup

```sql
CREATE DATABASE Project1;
USE Project1;

CREATE TABLE Retail_sal (
    transactions_id INT,
    sale_date DATE,
    sale_time TIME,
    customer_id INT,
    gender VARCHAR(15),
    age INT,
    category VARCHAR(20),
    quantity INT,
    price_per_unit FLOAT,
    cogs FLOAT,
    total_sale FLOAT
);

SELECT * FROM Retail_sal;
```

---

## 🧼 2. Data Cleaning

### Check NULL values

```sql
SELECT *
FROM Retail_sal
WHERE transactions_id IS NULL
   OR sale_date IS NULL
   OR sale_time IS NULL
   OR customer_id IS NULL
   OR gender IS NULL
   OR age IS NULL
   OR category IS NULL
   OR quantity IS NULL
   OR price_per_unit IS NULL
   OR cogs IS NULL
   OR total_sale IS NULL;
```

### Remove NULL rows

```sql
DELETE FROM Retail_sal
WHERE transactions_id IS NULL
   OR sale_date IS NULL
   OR sale_time IS NULL
   OR customer_id IS NULL
   OR gender IS NULL
   OR age IS NULL
   OR category IS NULL
   OR quantity IS NULL
   OR price_per_unit IS NULL
   OR cogs IS NULL
   OR total_sale IS NULL;
```

---

## 🔎 3. Data Exploration (EDA)

```sql
SELECT COUNT(*) AS total_records FROM Retail_sal;
SELECT COUNT(DISTINCT customer_id) AS unique_customers FROM Retail_sal;
SELECT DISTINCT category FROM Retail_sal;
```

---

# 📊 4. Business SQL Queries

### 1️⃣ Sales made on **2022‑11‑05**

```sql
SELECT * FROM Retail_sal
WHERE sale_date = '2022-11-05';
```

### 2️⃣ Clothing category + quantity > 10 in Nov 2022

```sql
SELECT * FROM Retail_sal
WHERE category = 'Clothing'
  AND DATE_FORMAT(sale_date, '%Y-%m') = '2022-11'
  AND quantity > 10;
```

### 3️⃣ Total sales per category

```sql
SELECT category, SUM(total_sale) AS net_sale, COUNT(*) AS total_orders
FROM Retail_sal
GROUP BY category;
```

### 4️⃣ Average age for Beauty category

```sql
SELECT AVG(age) AS avg_age
FROM Retail_sal
WHERE category = 'Beauty';
```

### 5️⃣ Transactions above ₹1000

```sql
SELECT * FROM Retail_sal
WHERE total_sale > 1000;
```

### 6️⃣ Transactions by gender per category

```sql
SELECT category, gender, COUNT(*) AS total_transactions
FROM Retail_sal
GROUP BY category, gender;
```

### 7️⃣ Best‑selling month (highest average sale) per year

```sql
SELECT year, month, avg_sale
FROM (
    SELECT 
        YEAR(sale_date) AS year,
        MONTH(sale_date) AS month,
        AVG(total_sale) AS avg_sale,
        RANK() OVER (
            PARTITION BY YEAR(sale_date)
            ORDER BY AVG(total_sale) DESC
        ) AS rnk
    FROM Retail_sal
    GROUP BY YEAR(sale_date), MONTH(sale_date)
) t1
WHERE rnk = 1;
```

### 8️⃣ Top 5 customers by sales

```sql
SELECT customer_id, SUM(total_sale) AS total_sales
FROM Retail_sal
GROUP BY customer_id
ORDER BY total_sales DESC
LIMIT 5;
```

### 9️⃣ Unique customers per category

```sql
SELECT category, COUNT(DISTINCT customer_id) AS unique_customers
FROM Retail_sal
GROUP BY category;
```

### 🔟 Shift‑wise order count (Morning, Afternoon, Evening)

```sql
WITH hourly_sale AS (
    SELECT *,
        CASE
            WHEN HOUR(sale_time) < 12 THEN 'Morning'
            WHEN HOUR(sale_time) BETWEEN 12 AND 17 THEN 'Afternoon'
            ELSE 'Evening'
        END AS shift
    FROM Retail_sal
)
SELECT shift, COUNT(*) AS total_orders
FROM hourly_sale
GROUP BY shift;
```

---

## 🧠 Skills Used

* SQL (DDL, DML, Aggregations)
* Window Functions
* Data Cleaning
* EDA (Exploratory Data Analysis)
* Business Insights
* Time‑based analysis

---

## 📚 What I Learned

* Cleaning and validating retail data
* Using `RANK()` window function
* Calculating KPIs (sales, unique customers, avg sales)
* Creating shift‑based logic using CASE
* Writing professional SQL queries

---

## 🚀 Future Improvements

* Add Power BI or Tableau dashboards
* Add more complex SQL queries (CTE, JOINS)
* Automate reporting using Python
* Add dataset CSV for public usage
* Add stored procedures & triggers

---

## 📌 How to Use

1. Clone the repository
2. Run database setup SQL
3. Load dataset
4. Run analysis queries
5. Modify as needed

---

## 👨‍💻 Author – Prajwal Pawar

* Instagram: [https://www.instagram.com/prajwal_pawar21/](https://www.instagram.com/prajwal_pawar21/)
* LinkedIn: [https://www.linkedin.com/in/prajwal-pawar-5215b2245](https://www.linkedin.com/in/prajwal-pawar-5215b2245)
* Email:  [pawarprajwal957@gmail.com]
* Mobail_No:[8446135477]
---

End of Project
