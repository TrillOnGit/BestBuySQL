-- find all products
SELECT * FROM products p;
-- find all products that cost $1400
-- find all products that cost $11.99 or $13.99
SELECT * FROM products p 
WHERE Price = 1400
OR Price = 11.99 
OR Price = 13.99;
-- find all products that do NOT cost 11.99 - using NOT
SELECT * FROM products p 
WHERE NOT Price = 11.99;
-- find all products and sort them by price from greatest to least
SELECT * FROM products p 
ORDER BY Price DESC;
-- find all employees who don't have a middle initial
SELECT * FROM employees e 
WHERE MiddleInitial IS NULL;

-- find distinct product prices
SELECT DISTINCT Price
FROM products p;

-- find all employees whose first name starts with the letter ‘j’
SELECT FirstName  FROM employees e
WHERE FirstName LIKE "J%";

-- find all Macbooks
SELECT * FROM products p 
WHERE Name LIKE "MacBook";

-- find all products that are on sale
SELECT Name, Price FROM products p 
WHERE OnSale = true;

-- find the average price of all products
SELECT AVG(Price) AS AveragePrice FROM products; 

-- find all Geek Squad employees who don't have a middle initial
SELECT * FROM employees e 
WHERE Title = "Geek Squad"
AND 
WHERE MiddleInitial IS NULL;

-- find all products from the products table whose stock level is in the range -- of 500 to 1200. Order by Price from least to greatest. Hint: Use the between keyword
SELECT * FROM products p  
WHERE StockLevel BETWEEN 500 AND 1200
ORDER BY Price;
