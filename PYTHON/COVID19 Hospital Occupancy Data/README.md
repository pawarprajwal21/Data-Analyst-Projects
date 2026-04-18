# 🏥 COVID19 Hospital Occupancy Analysis 🚀

## 📌 Project Overview

This project analyzes real-world **COVID19 hospital occupancy data** using **Python, Pandas, NumPy, and Matplotlib**.
The goal is to understand hospital load trends, country-wise occupancy levels, peak periods, and data insights.

---

## 🎯 Objectives

✅ Clean raw JSON dataset
✅ Perform exploratory data analysis (EDA)
✅ Find top countries with highest occupancy
✅ Detect peak occupancy dates
✅ Visualize trends using charts
✅ Generate business insights from healthcare data

---

## 🛠️ Tools & Technologies Used

🐍 Python
📊 Pandas
🔢 NumPy
📈 Matplotlib
📓 Jupyter Notebook

---

## 📂 Dataset Information

The dataset contains hospital occupancy records with the following columns:

* 🌍 country
* 📌 indicator
* 📅 date
* 📆 year_week
* 🔢 value
* 🏢 source
* 🔗 url

---

## 🧹 Data Cleaning Steps

✔ Removed unnecessary columns (`url`)
✔ Converted `date` column into datetime format
✔ Converted `value` column to numeric type
✔ Removed missing values
✔ Filtered only **Daily hospital occupancy** records
✔ Removed duplicate rows

---

## 📊 Analysis Performed

### 🌍 Country-wise Analysis

* Top 10 countries by total hospital occupancy
* Average occupancy by country

### 📈 Trend Analysis

* Daily occupancy trends
* Monthly occupancy patterns

### 🔥 Peak Analysis

* Highest occupancy record
* Peak country and date identification

### 🔢 NumPy Statistics

* Mean occupancy
* Median occupancy
* Standard deviation
* Maximum value
* Minimum value

---

## 📉 Visualizations

📌 Bar Chart – Top 10 Countries
📌 Line Chart – Occupancy Trend Over Time
📌 Histogram – Data Distribution
📌 Boxplot – Outlier Detection

---

## 💡 Key Insights

✔ Some countries experienced multiple hospital load waves
✔ Peak occupancy aligned with COVID surges
✔ Occupancy levels varied significantly by country
✔ Several outliers indicate extreme pressure periods

---

## 📁 Project Structure

```bash
COVID19-Hospital-Occupancy-Analysis/
│── data/
│── notebook/
│── README.md
```

---

## 🚀 How to Run Project

```bash
pip install pandas numpy matplotlib
jupyter notebook
```

Open notebook file and run all cells.

---

## 👨‍💻 Author

**Prajwal Pawar** 🚀

---

## ⭐ If you like this project

Give it a ⭐ on GitHub!

