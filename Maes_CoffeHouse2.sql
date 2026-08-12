 DROP DATABASE IF EXISTS `mae_coffehouse`;
CREATE DATABASE `mae_coffeehouse`;
USE `mae_coffeehouse`;



CREATE TABLE mae_employee (
  emp_id INT NOT NULL,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  age INT,
  gender VARCHAR(10),
  birth_date DATE,
  employment_date DATE,
  occupation_role VARCHAR(50),
  PRIMARY KEY (emp_id)
);

CREATE TABLE mae_coffee (
  coffee_id INT NOT NULL,
  coffee_name VARCHAR(50),
  coffee_content VARCHAR(50),
 coffee_calories INT,
  PRIMARY KEY (coffee_id)
);

CREATE TABLE mae_department (
  dept_id INT NOT NULL,
  dept_name VARCHAR(50),
  dept_manager VARCHAR(50),
  PRIMARY KEY (dept_id)
);



CREATE TABLE mae_inventory (
  product_id INT NOT NULL,
  product_name VARCHAR(50),
  product_category VARCHAR(50),
  quantity INT,
  PRIMARY KEY (product_id)
);

CREATE TABLE maecoffeehouse_sales (
  sales_id INT NOT NULL,
  customer_name VARCHAR(50),
  sales_date DATE,
  quantity INT,
  price INT,
  PRIMARY KEY (sales_id)
);

INSERT INTO mae_employee (emp_id, last_name , age , gender , birth_date , employment_date , occupation_role)
VALUES ();

INSERT INTO  mae_coffee (coffee_id, coffee_name, coffee_content, coffee_calories)
VALUES ();

INSERT INTO  mae_department (dept_id, dept_name, depat_manager)
VALUES ();

INSERT INTO  mae_inventory (product_id, product_name, product_category, quantity)
VALUES ();
