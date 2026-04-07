# 🛒 Ecommerce Data Analysis

## 📌 Problem Statement
Analyze e-commerce sales data to identify customer purchasing behavior, product performance, and revenue trends to support business decisions.

## 📊 Dataset Description
The dataset contains transactional sales data for the years 2024–2025.

### Key Features:
- Order ID – Unique identifier for each order
- Order Date – Date of purchase
- Product Category – Type of product sold
- Product Name – Item purchased
- Sales – Revenue generated
- Quantity – Number of items sold
- Customer ID – Unique customer identifier
- Region/Location – Customer location

---

## 🧹 Data Preparation
The following data cleaning and preprocessing steps were performed:

- Removed duplicate records
- Handled missing/null values
- Converted date column into proper datetime format
- Extracted Month and Year from Order Date
- Standardized column names for consistency
- Aggregated data for analysis (category-wise, region-wise)

---



# 📌 1. Project Overview

This project focuses on analyzing e-commerce sales data to uncover:

- 📊 Sales performance trends  
- 👥 Customer purchasing behavior  
- 📦 Product performance  
- 🌍 Regional sales distribution  



# 📊 2. Dataset Description

The dataset contains transactional e-commerce data with the following fields:

| Column Name        | Description |
|-------------------|------------|
| Order_ID          | Unique order identifier |
| Order_Date        | Date of order |
| Customer_ID       | Unique customer identifier |
| Customer_Name     | Name of customer |
| Product_Category  | Category of product |
| Product_Name      | Product purchased |
| Sales             | Revenue generated |
| Quantity          | Number of units sold |
| Profit            | Profit earned |
| Payment_Mode      | Payment method |
| Region            | Customer region |
| City              | Customer city |

---


# ⚙️3. How to Run the Project

### Step 1 : Clone repository

git clone https://github.com/GauriPise/ecommerce-data-analysis.git

### Step 2: Install Required Libraries
pip install pandas matplotlib seaborn

### Step 3: Run notebook
run jupyter notebook

### Step 4: Open Notebook
Open the .ipynb file
Run all cells to view analysis and charts


---

# 🧹 4. Data Preparation & Transformations

## Step 1: Data Cleaning
- Removed null values  
- Removed duplicate records  
- Standardized column names  



## Step 2: Data Type Conversion
- Converted `Order_Date` to datetime  
- Ensured numeric columns (Sales, Profit, Quantity)  



## Step 3: Feature Engineering

### Extract Date Components
```python id="e1"
df['Year'] = df['Order_Date'].dt.year
df['Month'] = df['Order_Date'].dt.month
df['Day'] = df['Order_Date'].dt.day_name()
```
###  Extract Hour (if time available)
#### df['Hour'] = pd.to_datetime(df['Order_Date']).dt.hour
---
## Step 4: Create Day / Night Flag
df['Day_Night'] = df['Hour'].apply(lambda x: 'Day' if 6 <= x < 18 else 'Night')
## Step 5: Data Validation
- Checked negative values in profit
- Verified sales consistency

---

# 📐 5. DAX Measures (Power BI)
- ### Total Sales
Total Sales = SUM('Ecommerce'[Sales])
- ### Total Profit
Total Profit = SUM('Ecommerce'[Profit])
- ### Total Orders
Total Orders = COUNT('Ecommerce'[Order_ID])
- ### Profit Margin
Profit Margin = DIVIDE([Total Profit], [Total Sales])

---
# 📊 6. Key KPI Measures
- 💰 Total Sales
- 📈 Total Profit
- 📦 Total Orders
- 📉 Profit Margin
- 🛒 Average Order Value
---

# 📍 7. Location-Based Measures
- ### Sales by Region
Region Sales = SUM('Ecommerce'[Sales])
- ### Orders by City
City Orders = COUNT('Ecommerce'[Order_ID])



# 📊 8. Dashboard Pages & Visualizations
## 1️⃣ Sales Analysis

### KPIs:

- Total Sales
- Total Profit
- Total Orders
- Profit Margin

### Charts:

- Sales trend (Line chart)
- Category distribution (Donut chart)
## 2️⃣Customer Insights

### Charts:

- Payment mode distribution
- Sales by category (Bar chart)
- Monthly sales trend
## 3️⃣ Customer Analysis

### Charts:

- Top customers by revenue
- Repeat vs new customers
## 4️⃣ Region Analysis

### Charts:

- Sales by region
- City-level performance

---
# 🔍 9. Drill-Down & Interactivity
### Drill-Down:
- Year → Month → Day
- Region → City
### Filters:
- Date slicer
- Region slicer
- Category slicer
### Interactivity:
- Cross-filtering
- Dynamic visuals

---
# ⚡ 10. Performance Optimization
- Removed unused columns
- Optimized DAX calculations
- Limited visuals per page
- Used aggregated data

---

#  📈11. Outcome
- Identified top-performing product categories
- Analyzed monthly and yearly sales trends
- Discovered high-revenue regions
- Provided insights into customer purchasing behavior
- Highlighted key factors driving business growth

---

# 🔮12. Future Enhancements
- Add Power BI dashboard for interactive visualization
- Implement sales forecasting using machine learning
- Perform customer segmentation (RFM analysis)
- Build recommendation system for products
- Automate data pipeline for real-time analysis

---

# 🚀13. Conclusion
This project demonstrates how data analysis can uncover sales trends and support strategic business decisions.

---

# 14.Dashboard Images
### Sales Analysis
<img src="https://github.com/GauriPise/Ecommerce-data-analysis/blob/main/Screenshot 2026-03-20 183033.png" width="1000"> <br> 

--

### Customer Insights
<img src="https://github.com/GauriPise/Ecommerce-data-analysis/blob/main/Screenshot 2026-03-20 183121.png" width="1000"> <br> 

--

### Profit Analysis
<img src="https://github.com/GauriPise/Ecommerce-data-analysis/blob/main/Screenshot 2026-03-20 183142.png" width="1000"> <br> 
