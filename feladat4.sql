1. feladat
SELECT ship_state_province FROM orders UNION SELECT state_province FROM customers;

2. feladat
SELECT category, COUNT(*) FROM products GROUP BY category;

3. feladat
SELECT ship_city, COUNT(*) FROM orders GROUP BY ship_city;

4. feladat
SELECT city, COUNT(*) FROM customers GROUP BY city HAVING COUNT(*) >= 1;