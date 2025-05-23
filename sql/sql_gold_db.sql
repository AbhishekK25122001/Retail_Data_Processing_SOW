-- Create gold_db database if not exists
CREATE DATABASE IF NOT EXISTS gold_db;
USE gold_db;

-- Create the sales_gold table
CREATE TABLE IF NOT EXISTS sales_gold (
    category VARCHAR(255),
    total_sales_value FLOAT,
    total_quantity INT,
    avg_price FLOAT,
    store_name VARCHAR(255),
    location VARCHAR(255),
    report_date DATE
);

-- Clear existing data (if any)
TRUNCATE TABLE sales_gold;

-- Inserting aggregated data from silver layer tables

-- 1. Sales Aggregation by Product Category
INSERT INTO gold_db.sales_gold (category, total_sales_value, total_quantity, avg_price, store_name, location, report_date)
SELECT 
    s.category,
    SUM(s.total_sales_value) AS total_sales_value,
    SUM(s.quantity) AS total_quantity,
    AVG(s.price) AS avg_price,
    s.store_name,
    s.location,
    CURRENT_DATE() AS report_date
FROM 
    silver_db.sales_silver s
GROUP BY 
    s.category, s.store_name, s.location;
