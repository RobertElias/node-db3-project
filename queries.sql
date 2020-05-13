-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT ProductName, CategoryName FROM Product
JOIN Category 
ON Product.CategoryId = Category.Id;
-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT [Order].Id, Shipper.CompanyName 
FROM [Order]
JOIN Shipper
ON [Order].ShipVia = Shipper.Id
WHERE OrderDate <= '2012-08-09'
-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
SELECT ProductName, Quantity from OrderDetail 
JOIN Product
ON OrderDetail.ProductId = Product.Id
WHERE OrderId='10251'
ORDER BY ProductName
-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT DISTINCT OrderId, CompanyName, LastName
FROM [Order] AS O
JOIN OrderDetail As OD
ON O.Id = OD.OrderId
JOIN Customer AS C
ON O.CustomerId = C.Id
JOIN Employee AS E
ON O.EmployeeId = E.Id;

-- Stretch Displays CategoryName and a new column called Count that 

--shows how many products are in each category. Shows 8 records.
SELECT CategoryName, count(*)
FROM categories AS c
JOIN products AS p ON c.categoryId = p.categoryId
GROUP BY CategoryName;


--Display OrderID and a column called ItemCount that shows the total number of products placed on the order. Shows 196 records.