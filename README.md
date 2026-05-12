# Motor Vehicle Theft Analysis

## Project Overview
This project focuses on analyzing motor vehicle theft data using **Python, MySQL, and Power BI** to identify theft patterns, regional trends, and high-risk vehicle categories. The project includes data cleaning, exploratory data analysis, SQL-based business analysis, and an interactive dashboard for visualization.

The objective of this project is to transform raw theft data into meaningful insights that can support better decision-making and theft prevention strategies.

---

# Objectives
- Analyze the most and least stolen vehicle types
- Identify regions with the highest theft activity
- Find the most targeted vehicle brands and colors
- Study theft patterns by month and weekday
- Analyze the impact of vehicle age on theft
- Build an interactive Power BI dashboard

---

# Tools & Technologies Used
- Python
- Pandas
- NumPy
- Matplotlib
- Seaborn
- MySQL
- Power BI
- Jupyter Notebook

---

# Dataset Information
The project uses three datasets:

### 1. stolen_vehicles.csv
Contains vehicle theft records.

#### Important Columns
- vehicle_id
- vehicle_type
- make_id
- model_year
- vehicle_desc
- color
- date_stolen
- location_id

### 2. make_details.csv
Contains vehicle brand details.

#### Important Columns
- make_id
- make_name
- make_type

### 3. locations.csv
Contains regional information.

#### Important Columns
- location_id
- region
- country
- population
- density

---

# Data Cleaning & Preprocessing
Data cleaning was performed using Python.

## Steps Performed
- Imported datasets using Pandas
- Joining of dataset
- Checked missing values and data types
- Removed rows with excessive null values
- Filled missing values in:
  - `vehicle_type` using mode
  - `vehicle_desc` using `"unknown"`
- Dropped irrelevant columns
- Converted `date_stolen` to datetime format
- Created new columns:
  - month
  - year
  - week_day
  - vehicle_age
- Merged datasets for analysis
- Exported cleaned data to MySQL

---

# SQL Business Analysis
SQL queries were used to answer important business questions such as:

1. What vehicle types are stolen most frequently?
2. Which regions have the highest theft rates?
3. Which vehicle brands are most targeted?
4. What vehicle colors are most stolen?
5. Which months and weekdays have higher theft activity?
6. Does vehicle age affect theft frequency?

## SQL Concepts Used
- GROUP BY
- Aggregate Functions
- JOINS
- CTEs
- Window Functions
- Ranking Functions

---

# Dashboard in Power BI
An interactive Power BI dashboard was created to visualize theft trends and insights.

## Dashboard Features
- KPI Cards
- Vehicle Type Analysis
- Region-wise Theft Analysis
- Vehicle Brand Analysis
- Color Analysis
- Theft Trend Analysis
- Vehicle Age Analysis
- Interactive Filters & Slicers

---

# Key Insights
- Station Wagon is the most stolen vehicle type.
- Auckland recorded the highest vehicle theft rate.
- Toyota is the most stolen vehicle brand.
- Silver and White vehicles are stolen most frequently.
- Vehicle theft occurs more often on Mondays.
- Theft cases increased during early 2022.
- Standard vehicles are stolen significantly more than luxury vehicles.
- Newer vehicles are stolen more frequently compared to older vehicles.

---

# Installation & Setup

## Clone Repository
```bash
git clone https://github.com/your-username/Motor-Vehicle-Theft-Analysis.git
```

## Install Required Libraries
```bash
pip install -r requirements.txt
```

## Run Jupyter Notebook
```bash
jupyter notebook
```

---

# Conclusion
This project successfully analyzed motor vehicle theft data using Python, MySQL, and Power BI. The analysis identified important theft trends based on vehicle type, region, brand, color, vehicle age, and time patterns. The dashboard and SQL analysis transformed raw data into actionable insights that can support theft prevention and data-driven decision-making.

---
