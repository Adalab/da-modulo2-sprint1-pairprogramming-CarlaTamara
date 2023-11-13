CREATE SCHEMA `northwind`;
USE `northwind`;

SELECT employee_id, last_name, first_name
FROM employees;

SELECT product_name
FROM products
WHERE unit_price BETWEEN 0 AND 5;

SELECT product_name
FROM products
WHERE unit_price = NULL;

SELECT product_name, unit_price, product_id
FROM products
WHERE unit_price < 15 AND product_id >10; 

SELECT product_name, unit_price, product_id
FROM products
WHERE NOT unit_price < 15 AND product_id > 10;

SELECT ship_country, ship_region
FROM orders;

SELECT product_id, product_name, unit_price
FROM products
LIMIT 10;

SELECT product_id, product_name, unit_price
FROM products
ORDER BY product_id DESC
LIMIT 10;

SELECT DISTINCT order_id
FROM order_details;

SELECT unit_price * quantity AS ImporteTotal
FROM order_details
ORDER BY ImporteTotal DESC
LIMIT 3;

SELECT order_id, unit_price * quantity AS ImporteTotal
FROM order_details
LIMIT 10
OFFSET 5;

SELECT category_name AS NombreDeCategoria
FROM categories;


SELECT shipped_date,DATE_ADD(shipped_date, INTERVAL 5 DAY) AS FechaRetrasada
FROM orders
WHERE shipped_date IS NOT NULL;


SELECT unit_price
FROM products
WHERE unit_price BETWEEN 15 AND 50; 

SELECT unit_price, product_name
FROM products
WHERE unit_price IN (18, 19, 20);