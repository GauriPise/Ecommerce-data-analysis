SELECT * FROM ecommerce.ecommerce_sales_data_2024_2025;
show tables;
select * from ecommerce;

## Region wise count of orders
select Region,count('Order ID') as order_id_count from ecommerce group by region order by order_id_count desc;

SELECT 
COUNT(`Order ID`) AS total_orders,
SUM(Sales) AS total_sales,
SUM(Profit) AS total_profit,
SUM(Quantity) AS total_quantity
FROM ecommerce;

## Total Sales, Profit and Orders (Overall revenue and profit of the business.)
select count('Order ID') as total_orders,round(sum(Sales),2)as total_sales,round(sum(Profit),2) as total_profit,round(sum(Quantity),2) as total_quantity from ecommerce;

## Sales by Category (product category generates highest revenue.)
select Category,sum(sales) as total_sales,sum(profit) as total_profit from ecommerce group by Category order by total_sales desc;

## Sales by Region  (region contributes most sales.)
select Region,sum(sales)as total_sales ,sum(profit) as total_profit from ecommerce group by  Region order by  total_sales desc;

## Top 10 Products by Sales  (Best selling products.)
select `Product Name`,sum(sales) as total_sales from ecommerce group by  `Product Name` order by total_sales desc limit 10;

## Top 10 Cities by Sales (Cities generating highest revenue.)
select City,sum(sales) as total_sales from ecommerce group by  City order by total_sales desc limit 10;

## Payment Mode Distribution  (Most used payment method.)
select `Payment Mode`,count(*) as total_orders from ecommerce group by `Payment Mode` order by total_orders desc ;

## Monthly Sales Trend (high sales months.) 
select month(`Order Date`) as order_month, round(sum(sales),2) as total_sales  from ecommerce group by order_month order by order_month ;

## Profit by Sub-Category  (Which sub-category generates most profit.)
select `Sub-Category`,sum(Profit) as total_profit from ecommerce group by  `Sub-Category` order by total_profit desc;

## Average Discount by Category (Which category gives highest discounts.)
select Category,round(avg(Discount),2) as avg_discount from ecommerce group by  Category order by avg_discount desc;

## Customer with Highest Purchase (Identify top customers.)
select `Customer Name`,sum(sales) as total_spent from ecommerce group by `Customer Name` order by total_spent desc limit 5;

## Yearly revenue trend (Identify which year has highest revenue)
select year(`Order Date`) as order_year, round(sum(sales),2) as total_sales from ecommerce group by order_year order by order_year asc;

## Profit Margin by Category (Which category is most profitable.)
select  Category, sum(Profit) as total_profit,sum(sales) as total_Sales,(sum(profit)/sum(sales))*100 as total_margin from ecommerce
group by Category order by total_margin desc;


## Top 5 Most Profitable Products  (Products generating highest profit.)
select `Product Name`,sum(profit) as total_profit from ecommerce group by `Product Name` order by total_profit desc limit 5;

## Region with Highest Average Sales (Region where orders have highest value.)
select Region,round(avg(sales),2) as avg_sales from ecommerce group by region order by avg_sales desc ; 

## Category Wise Quantity Sold
select Category,sum(Quantity) as quantity_Sold from ecommerce group by Category order by quantity_sold desc; 

## top 10 cities with highest profit (cities contributing highest profit)
select city,round(sum(profit),2) as total_profit from ecommerce group by city order by total_profit desc limit 10; 

## Payment Mode Revenue  (Which payment method generates most sales.)
select `Payment Mode` , round(sum(sales),2) as total_revenue from ecommerce group by `Payment Mode` order by total_revenue desc;

## Average Discount by Sub-Category  (Products with highest discount.) 
select `Sub-Category`,avg(Discount) as avg_discount from ecommerce group by `Sub-Category` order by avg_discount desc;

## Most Ordered Products ( Most frequently purchased products.)
select `Product Name`,count(Quantity) as total_orders from ecommerce group by `Product Name` order by total_orders desc;

## High Discount Orders  (Identify heavily discounted orders.)
select `Order ID`,`Customer Name`,`Product Name`,Discount,Sales from ecommerce where Discount > 0.3;

## Profit Loss Orders
select `Order ID`,`Product Name`,Profit from ecommerce where Profit < 0;

## Average Order Value (Average spending per order.)
select round(avg(sales),2) as avg_order_value from ecommerce;


