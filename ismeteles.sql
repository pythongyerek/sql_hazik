-- 1. feladat
SELECT product_name, list_price FROM products 
WHERE list_price > 25 AND discontinued = 0 AND category <> 'Seafood'
ORDER BY list_price DESC;

-- 2. feladat
SELECT first_name, last_name, job_title FROM employees
ORDER BY job_title DESC, last_name DESC;

-- 3. feladat
-- a)
SELECT product_name, MIN(list_price) FROM `products`;

-- b)
SELECT product_name, MAX(list_price) FROM `products`;

-- c)
SELECT product_name, AVG(list_price) FROM `products`;

-- d)
SELECT product_name, SUM(list_price) FROM `products`;

--4. feladat

SELECT ship_country_region, COUNT(*) AS rendelesek_szama 
FROM orders 
GROUP BY ship_country_region;

-- 5. feladat

SELECT category, AVG(list_price) FROM products
GROUP BY category
HAVING AVG(list_price) > 40;

-- 6. feladat

SELECT first_name, last_name, city 
FROM customers 
UNION 
SELECT first_name, last_name, city 
FROM employees;

-- 7. feladat

DROP DATABASE IF EXISTS mozi;
CREATE DATABASE mozi;
USE mozi;

CREATE TABLE termek (
    terem_id INT AUTO_INCREMENT PRIMARY KEY,
    ferohely INT DEFAULT 50
);

CREATE TABLE vetitesek (
    vetites_id INT AUTO_INCREMENT PRIMARY KEY,
    film_cim VARCHAR(80),
    terem_id INT,
    FOREIGN KEY (terem_id) REFERENCES termek(terem_id)
);