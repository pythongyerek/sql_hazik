1.
SELECT SupplierName, Country FROM Suppliers WHERE Country IN ('USA', 'UK');

2.
SELECT SupplierName, City FROM Suppliers WHERE Country IN ('USA') AND City IN ('Boston', 'New Orleans');

3.
SELECT SupplierName, Country FROM Suppliers WHERE Country NOT IN ('Japan', 'Canada');

4.
SELECT ProductName, Price FROM Products ORDER BY price ASC;

5.
SELECT ProductName, Price FROM Products ORDER BY price DESC;

6.
SELECT ProductName FROM Products ORDER BY ProductName ASC, Unit DESC;