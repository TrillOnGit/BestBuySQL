/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */
 
SELECT p.Name, c.Name FROM products p 
JOIN categories c ON p.CategoryID = c.CategoryID;

/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
 
SELECT p.Name, p.Price, r.Rating FROM products p
JOIN reviews r ON p.ProductID = r.ProductID;

/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */

SELECT SUM(s.Quantity), e.EmployeeID, e.FirstName  FROM employees e 
JOIN sales s ON s.EmployeeID = e.EmployeeID
GROUP BY e.EmployeeID
ORDER BY SUM(s.Quantity) DESC;

/* joins: find the name of the department, and the name of the category for Appliances and Games */

SELECT c.Name, d.Name FROM categories c 
JOIN departments d ON d.DepartmentID = c.DepartmentID 
JOIN products p ON p.CategoryID = c.CategoryID 
WHERE c.Name = "Games" OR c.Name = 'Appliances';

/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */

SELECT p.Name, SUM(s.Quantity), SUM(s.PricePerUnit) FROM products p 
JOIN sales s ON p.ProductID = s.ProductID 
WHERE p.Name LIKE "Eagles: Hotel%"
GROUP BY p.Name;

/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */

SELECT p.Name, r.Reviewer, r.Rating, r.Comment FROM products p 
JOIN reviews r ON r.ProductID = p.ProductID 
WHERE p.Name = "Visio TV"
ORDER BY r.Rating ASC 
LIMIT 1;

-- ------------------------------------------ Extra - May be difficult
/* Your goal is to write a query that serves as an employee sales report.
This query should return:
-  the employeeID
-  the employee's first and last name
-  the name of each product
-  and how many of that product they sold */

SELECT e.EmployeeID, e.FirstName, e.LastName, p.Name, s.Quantity FROM employees e 
JOIN sales s ON e.EmployeeID = s.EmployeeID 
JOIN products p ON s.ProductID = p.ProductID 
ORDER BY e.EmployeeID;

