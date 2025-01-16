# Joins - Exercises

## Exercises List
1. Orders with Customer Names and Countries
2. Order Details with Product Names and Prices
3. Orders with Shipper Information
4. Products by Category with Prices
5. Supplier and Product List with Quantities Available
6. Orders with Total Quantity and Total Price
7. Products Ordered by Customer Names
8. Shipped Orders with Shipper and Employee Names
9. Orders by Category with Total Quantities
10. Customers Who Ordered Specific Products
11. Suppliers for Products in Each Category
12. Orders Grouped by Employee with Total Sales
13. List of Products That Have Never Been Ordered
14. List All Orders Shipped by a Specific Shipper
15. Find Customers Who Have Placed Orders in a Specific Month
16. Products with Prices Higher Than the Average Price per Category
17. Orders Containing Products from Multiple Categories
18. Customers and Employees Linked by Orders
19. Suppliers That Provide Products Ordered by a Specific Customer

---

## Queries Description

### 1. Orders with Customer Names and Countries
Write a query to display the `OrderID`, `OrderDate`, `CustomerName`, and `Country` for all orders. Use the `Orders` and `Customers` tables to get the required information.

### 2. Order Details with Product Names and Prices
Write a query to display the `OrderID`, `ProductName`, `Price`, and `Quantity` for all products ordered. Use the `OrderDetails` and `Products` tables.

### 3. Orders with Shipper Information
Write a query to display the `OrderID`, `OrderDate`, and `ShipperName` for each order. Use the `Orders` and `Shippers` tables to connect the data.

### 4. Products by Category with Prices
Write a query to list all `ProductName`, `CategoryName`, and `Price`. Use the `Products` and `Categories` tables to fetch the category information for each product.

### 5. Supplier and Product List with Quantities Available
Write a query to list the `SupplierName`, `ProductName`, and `Price` of products available. Use the `Suppliers` and `Products` tables.

### 6. Orders with Total Quantity and Total Price
Write a query to display the `OrderID`, `CustomerName`, total `Quantity`, and the total price of all products in the order. Use the `Orders`, `OrderDetails`, and `Customers` tables. Group by `OrderID`.

### 7. Products Ordered by Customer Names
Write a query to display the `CustomerName`, `ProductName`, and `Quantity` for all orders. Use the `Orders`, `OrderDetails`, `Customers`, and `Products` tables.

### 8. Shipped Orders with Shipper and Employee Names
Write a query to display the `OrderID`, `OrderDate`, `ShipperName`, and the employee's `FirstName` and `LastName` who processed the shipping. Use the `Orders`, `Shippers`, and `Employees` tables.

### 9. Orders by Category with Total Quantities
Write a query to display the `OrderID`, `CategoryName`, and total `Quantity` of products ordered in each category. Use the `Orders`, `OrderDetails`, `Products`, and `Categories` tables. Group by `CategoryName`.

### 10. Customers Who Ordered Specific Products
Write a query to find all `CustomerName` and `OrderID` entries for a specific `ProductName`. Use the `Orders`, `OrderDetails`, `Products`, and `Customers` tables.

### 11. Suppliers for Products in Each Category
Write a query to display the `CategoryName`, `SupplierName`, and `ProductName`. Use the `Categories`, `Suppliers`, and `Products` tables.

### 12. Orders Grouped by Employee with Total Sales
Write a query to list the `FirstName` and `LastName` of employees and the total sales (sum of product prices) they managed. Use the `Orders`, `OrderDetails`, and `Employees` tables. Group by employee.

### 13. List of Products That Have Never Been Ordered
Write a query to find all `ProductName` entries that are not present in the `OrderDetails` table. Use the `Products` and `OrderDetails` tables.

### 14. List All Orders Shipped by a Specific Shipper
Write a query to display all `OrderID`, `OrderDate`, and `CustomerName` entries where the order was shipped by a specific `ShipperName`. Use the `Orders`, `Customers`, and `Shippers` tables.

### 15. Find Customers Who Have Placed Orders in a Specific Month
Write a query to list all `CustomerName` and `OrderID` entries where the `OrderDate` falls within a specific month. Use the `Orders` and `Customers` tables.

### 16. Products with Prices Higher Than the Average Price per Category
Write a query to display all `ProductName` and `Price` entries where the price is higher than the average price for that product's category. Use the `Products` and `Categories` tables.

### 17. Orders Containing Products from Multiple Categories
Write a query to find all `OrderID` entries that contain products from more than one category. Use the `Orders`, `OrderDetails`, `Products`, and `Categories` tables.

### 18. Customers and Employees Linked by Orders
Write a query to display the `CustomerName`, `EmployeeName` (both `FirstName` and `LastName`), and `OrderID` for all orders. Use the `Orders`, `Customers`, and `Employees` tables.

### 19. Suppliers That Provide Products Ordered by a Specific Customer
Write a query to find the `SupplierName` and `ProductName` for products ordered by a specific `CustomerName`. Use the `Orders`, `OrderDetails`, `Products`, `Customers`, and `Suppliers` tables.
