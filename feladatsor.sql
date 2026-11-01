-- 1. feladat

SELECT product_name, list_price FROM products
WHERE list_price < 60 AND discontinued = 0 AND category != 'Beverages'
ORDER BY list_price DESC;

-- 2. feladat

SELECT first_name, last_name, job_title FROM employees
ORDER BY last_name ASC, first_name DESC;

-- 3. feladat
-- a)
SELECT product_name, list_price
FROM products
ORDER BY list_price ASC
LIMIT 1;
-- b)
SELECT product_name, list_price
FROM products
ORDER BY list_price DESC
LIMIT 1;
-- c)
SELECT AVG(list_price)
FROM products;
-- d)
SELECT SUM(list_price)
FROM products;

-- 4. feladat

SELECT ship_country, COUNT(*)
FROM orders
GROUP BY ship_country
ORDER BY COUNT(*) DESC; 
-- LEKÉRDEZÉS NEM MŰKÖDIK MIVEL NINCS ship_country OSZLOP!!4!

-- 5. feladat

SELECT category, AVG(list_price)
FROM products
GROUP BY category
HAVING AVG(list_price) > 35;

-- 6. feladat

SELECT first_name, last_name, city
FROM customers
UNION
SELECT first_name, last_name, city
FROM employees;

-- 7. feladat

DROP DATABASE IF EXISTS etterem;
CREATE DATABASE etterem;

USE etterem;

CREATE TABLE etelek (
    etel_id INT AUTO_INCREMENT PRIMARY KEY,
    etel_nev VARCHAR(80) NOT NULL,
    ar INT DEFAULT 1500
);

CREATE TABLE rendelesek (
    rendeles_id INT AUTO_INCREMENT PRIMARY KEY,
    vendeg_nev VARCHAR(60),
    etel_id INT,
    FOREIGN KEY (etel_id) REFERENCES etelek(etel_id)
);