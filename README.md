# MaysPortfolio
A collection of end-to-end data analytics projects featuring Power BI dashboards (.pbix), SQL queries, Excel analyses, and business insights from real-world datasets and some I created by myself. 


A hands-on SQL project simulating the database of a small coffeehouse. The project covers the full workflow of building a relational database from scratch, intentionally seeding it with "dirty" real-world data, and then cleaning and restructuring it using core SQL techniques.

📋 Project Overview

The database (mae_coffeehouse) models the daily operations of a coffee shop across five tables:

Table	Description
mae_employee	Staff records — names, gender, birth dates, hire dates, and roles
mae_coffee	Menu of drinks with ingredients and calorie counts
mae_department	Departments and their managers
mae_inventory	Stock items grouped by category (beans, dairy, syrups, supplies, etc.)
maecoffeehouse_sales	200 sales transactions spanning January–April 2024
🧹 The Dirty Data Challenge

The dataset was deliberately seeded with common real-world data quality problems, including:

NULL values — missing ages, genders, quantities, customer names, and managers
Inconsistent casing — Barista vs BARISTA vs barista, Dairy vs dairy
Typos — Femle instead of Female, Iced Coffe instead of Iced Coffee
Trailing spaces — 'Caramel Frappe ', 'Catering '
Duplicate records — repeated product names and departments with different casing
Invalid values — age of 0, negative quantities (−5 stir sticks), negative prices, and unrealistic calorie counts (9,999)
🔧 Process & SQL Techniques Used
Database & schema creation — CREATE DATABASE, CREATE TABLE with primary keys, and bulk INSERT statements to populate all five tables.
Data cleaning & enrichment — used UPDATE statements (including CASE WHEN logic for conditional, multi-row updates) to fill in missing first names, standardize gender values, correct roles, and fix missing birth dates.
Schema refactoring — used ALTER TABLE to:
Drop redundant or unreliable columns (age, depat_manager)
Add a dept_id column to the employee table to link staff to departments
Add a manager_id foreign key on mae_department referencing mae_employee(emp_id)
Enforce data integrity with a NOT NULL constraint on first_name
Relational design — connected employees to departments so the schema supports joins (inner, outer, and self joins) for future analysis.
🎯 Skills Demonstrated
Database and table design with primary/foreign keys
Bulk data insertion
Data cleaning with conditional UPDATE ... CASE WHEN logic
Schema evolution with ALTER TABLE (add/drop/modify columns, constraints)
Identifying and handling real-world data quality issues
🚀 Next Steps
Standardize casing and trim whitespace across text columns
Deduplicate inventory and department records
Handle remaining NULLs and invalid values in the sales table
Write analytical queries using joins and aggregations (top customers, revenue by month, inventory alerts)
🛠️ Tools
MySQL / MySQL Workbench
