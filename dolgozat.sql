-- 1. feladat

SELECT product_name, list_price FROM products
WHERE list_price > 40 AND discontinued = 0 AND category <> "Condiments";

-- 2. feladat

SELECT first_name, last_name, job_title FROM employees
ORDER BY first_name ASC, last_name DESC;

-- 3. feladat
-- a)
SELECT product_name, list_price FROM products
ORDER BY list_price ASC
LIMIT 1;
-- b)
SELECT product_name, list_price FROM products
ORDER BY list_price DESC
LIMIT 1;
-- c)
SELECT product_name, AVG(list_price) FROM products;
-- d)
SELECT product_name, SUM(list_price) FROM products;

-- 4. feladat

SELECT ship_city, COUNT(*) FROM orders
GROUP BY ship_city;

-- 5. feladat

SELECT category, AVG(list_price) FROM products
WHERE list_price < 30
GROUP BY list_price
HAVING AVG(list_price);

-- 6. feladat

SELECT first_name, last_name, city FROM customers
UNION
SELECT first_name, last_name, city FROM employees;

-- 7. feladat

DROP DATABASE IF EXISTS szalloda;
CREATE DATABASE szalloda;
USE szalloda;

CREATE TABLE szobak(
	szoba_id INT PRIMARY KEY AUTO_INCREMENT,
    szobatipus TEXT NOT NULL,
    ferohely INT DEFAULT 2
);

CREATE TABLE foglalasok(
	foglalas_id INT PRIMARY KEY AUTO_INCREMENT,
    vendeg_nev VARCHAR(60),
    szoba_id INT
	CONSTRAINT szoba_foglalas FOREIGN KEY szoba_id REFERENCES szobak(szoba_id)
);
