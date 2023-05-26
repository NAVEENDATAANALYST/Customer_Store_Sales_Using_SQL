use sample;
CREATE TABLE `Categories` (
  `categoryID` int(11) NOT NULL,
  `categoryName` varchar(20) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL, 
  `condition` varchar(10) DEFAULT NULL);


INSERT INTO `Categories` (`categoryID`, `categoryName`, `description`,`condition`) VALUES
(1, 'Beverages', 'Soft drinks, Energy drinks, Club soda, Beers, and Wine','Excellent'),
(2, 'Condiments', 'BBQ sauce, Honey, Relishes, Mayonnaise, and Salsa','Excellent'),
(3, 'Dairy Products', 'Cheese, Butter, Milk, Yogurt and Egg','Excellent'),
(4, 'Cereals', 'Rice, Oats, Spaghetti, Pasta, and Cereal','Poor'),
(5, 'Meat', 'Bacon, Beef, Deli meat, Turkey, and Ham','Good'),
(6, 'Fruits', 'Apples, Avacaodos, Cherries, Kiwi, and Plums','Excellent'),
(7, 'Seafood', 'Salmon, tuna and fish','Good'),
(8,'Others','Baby items, Pet items, Shampoo, Soap, and Paper goods','Poor');



CREATE TABLE `customers` (
  `CustomerID` int(30) NOT NULL,
  `CustomerName` varchar(20) DEFAULT NULL,
  `City` varchar(15) DEFAULT NULL,
  `State` varchar(15) DEFAULT NULL,
  `Region` varchar(15) DEFAULT NULL,
  `Country` varchar(15) DEFAULT NULL);
  


INSERT INTO `customers` (`CustomerID`, `CustomerName`, `City`, `State`, `Country`, `Region`) VALUES
(1, 'Sophia Anderson', 'Los Angeles', 'California', 'United_states','South'),
(2, 'Alexander Chang', 'Toronto', 'Ontario', 'Canada','West'),
(3, 'Emma Smith', 'London', 'England', 'United_kingdom','North-east'),
(4, 'Lucas Rodriguez', 'Buenos Aires', 'Buenos Aires', 'United_states','west'),
(5, 'Isabella Kim', 'Seoul', 'Seoul', 'South_korea','West'),
(6, 'Benjamin Patel', 'Mumbai', 'Maharashtra', 'India','South-east'),
(7, 'Olivia Müller', 'Munich', 'Bavaria', 'Germany','South-west'),
(8, 'Liam Dupont', 'Paris', 'Île-de-France', 'France','East'),
(9, 'Ava Silva', 'São Paulo', 'São Paulo', 'Brazil','West'),
(10, 'Noah Gonzalez', 'Mexico City', 'Mexico', 'Mexico','South'),
(11, 'Ethan Lee', 'New York City', 'New York', 'United_states','South'),
(12, 'Mia Johnson', 'Sydney', 'New South Wales', 'Australia','West'),
(13, 'Jacob Nguyen', 'Ho Chi City', 'Ho Chi City', 'Vietnam','North'),
(14, 'Sophie Kowalski', 'Warsaw', 'Masovian ', 'Poland','South'),
(15, 'Michael Hernandez', 'Barcelona', 'Catalonia', 'Spain','West'),
(16, 'Emily Kim', 'Vancouver', 'Columbia', 'Canada','North-East'),
(17, 'Daniel Rossi', 'Milan', 'Lombardy', 'Italy','South'),
(18, 'Amelia Chen', 'Beijing', 'Beijing', 'China','East'),
(19, 'Matthew Schmidt', 'Berlin', 'Berlin', 'Germany','West'),
(20, 'Avery Lefebvre', 'Montreal', 'Quebec', 'Canada','North-west'),
(21, 'Charlotte Dubois', 'Marseille', 'Provence', 'France','South-east'),
(22, 'Sebastian Costa', 'Cordoba', 'Cordoba', 'Argentina','South-west'),
(23, 'Olivia Jensen', 'Copenhagen', 'Capital Region', 'Denmark','North'),
(24, 'James', 'Dublin', 'Dublin', 'Ireland','North-east'),
(25, 'Harper Sato', 'Tokyo', 'Tokyo', 'Japan','North-west'),
(26, 'Logan Dubois', 'Brussels', 'Brussels', 'Belgium','South-east'),
(27, 'Grace Murphy', 'Houston', 'Texas', 'United_states','South-west'),
(28, 'Henry Santos', 'Rio de Janeiro', 'Rio de Janeiro', 'Brazil','South'),
(29, 'Victoria Li', 'Shanghai', 'Shanghai', 'China','South'),
(30, 'Naveen Kumar', 'Guntur', 'Andhra Pradesh', 'India','South-west');




CREATE TABLE `employees` (
  `EmployeeID` int(15) NOT NULL,
  `Last_Name` varchar(30) DEFAULT NULL,
  `First_Name` varchar(30) DEFAULT NULL,
  `Birthday` date DEFAULT NULL,
  `Join_date` date DEFAULT NULL,
  `Salary` int(15) NOT NULL);
  


INSERT INTO `employees` (`EmployeeID`, `Last_Name`, `First_Name`, `Birthday`, `Join_date`, `Salary`) VALUES 
(101, 'Sophia', 'Anderson', '1990-05-12', '2018-03-25', 50000),
(102, 'Alexander', 'Chang', '1985-09-18', '2017-06-10', 5500),
(103, 'Emma', 'Smith', '1992-02-28', '2019-01-15', 4800),
(104, 'Lucas', 'Rodriguez', '1988-11-03', '2016-09-02', 52000),
(105, 'Isabella', 'Kim', '1991-07-08', '2018-08-20', 100000),
(106, 'Benjamin', 'Patel', '1993-12-15', '2019-05-05', 53000),
(107, 'Olivia', 'Müller', '1987-06-21', '2017-03-12', 48000),
(108, 'Liam', 'Dupont', '1990-09-30', '2018-02-18', 50000),
(109, 'Ava', 'Silva', '1994-04-25', '2020-01-10', 5000),
(110, 'Noah', 'Gonzalez', '1989-03-16', '2017-09-28', 2000),
(111, 'Ethan', 'Lee', '1991-10-20', '2018-11-05', 53000),
(112, 'Mia', 'Johnson', '1986-08-14', '2016-07-01', 5100),
(113, 'Jacob', 'Nguyen', '1993-04-09', '2019-03-18', 48000),
(114, 'Sophie', 'Kowalski', '1988-12-23', '2017-08-10', 55000),
(115, 'Michael', 'Hernandez', '1992-06-05', '2018-05-22', 50000);





CREATE TABLE `orders` (
  `OrderID` int(11) NOT NULL,
  `CustomerID` int(11) DEFAULT NULL,
  `EmployeeID` int(11) DEFAULT NULL,
  `OrderDate` date DEFAULT NULL,
  `ShipmentID` int(11) DEFAULT NULL
);


INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `ShipmentID`) VALUES
(1001, 2, 101, '2023-05-01', 301),
(1002, 20, 102, '2023-05-02', 302),
(1003, 3, 103, '2023-05-03', 303),
(1004, 24, 104, '2023-05-04', 304),
(1005, 2, 105, '2023-05-05', 305),
(1006, 6, 106, '2023-05-06', 306),
(1007, 7, 107, '2023-05-07', 307),
(1008, 23, 108, '2023-05-08', 308),
(1009, 11, 109, '2023-05-09', 309),
(1010, 1, 110, '2023-05-10', 310),
(1011, 1, 111, '2023-05-11', 311),
(1012, 12, 112, '2023-05-12', 312),
(1013, 13, 113, '2023-05-13', 313),
(1014, 4, 114, '2023-05-14', 314),
(1015, 5, 115, '2023-05-15', 315),
(1016, 16, 101, '2023-05-16', 316),
(1017, 27, 102, '2023-05-17', 317),
(1018, 28, 103, '2023-05-18', 318),
(1019, 9, 104, '2023-05-19', 319),
(1020, 30, 105, '2023-05-20', 320),
(1021, 11, 106, '2023-05-21', 321),
(1022, 22, 107, '2023-05-22', 322),
(1023, 3, 108, '2023-05-23', 323),
(1024, 7, 109, '2023-05-24', 324),
(1025, 28, 110, '2023-05-25', 325),
(1026, 18, 111, '2023-05-26', 326),
(1027, 19, 112, '2023-05-27', 327),
(1028, 12, 113, '2023-05-28', 328),
(1029, 13, 114, '2023-05-29', 329),
(1030, 28, 115, '2023-05-30', 330);




CREATE TABLE `order_details` (
  `OrderDetailID` int(11) NOT NULL,
  `OrderID` int(11) DEFAULT NULL,
  `ProductID` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL
);

INSERT INTO `order_details` (`OrderDetailID`, `OrderID`, `ProductID`, `Quantity`) VALUES
(2001, 1001, 301, 5),
(2002, 1002, 302, 3),
(2003, 1003, 303, 2),
(2004, 1004, 304, 4),
(2005, 1005, 305, 1),
(2006, 1006, 306, 2),
(2007, 1007, 307, 3),
(2008, 1008, 308, 2),
(2009, 1009, 309, 5),
(2010, 1010, 310, 3),
(2011, 1011, 311, 4),
(2012, 1012, 312, 2),
(2013, 1013, 313, 1),
(2014, 1014, 314, 3),
(2015, 1015, 315, 2),
(2016, 1016, 316, 4),
(2017, 1017, 317, 2),
(2018, 1018, 318, 3),
(2019, 1019, 319, 1),
(2020, 1020, 320, 2),
(2021, 1021, 321, 3),
(2022, 1022, 322, 5),
(2023, 1023, 323, 4),
(2024, 1024, 324, 2),
(2025, 1025, 325, 3),
(2026, 1026, 326, 1),
(2027, 1027, 327, 2),
(2028, 1028, 328, 4),
(2029, 1029, 329, 3),
(2030, 1030, 330, 2),
(2031, 1001, 331, 2),
(2032, 1002, 332, 4),
(2033, 1003, 333, 3),
(2034, 1004, 334, 2),
(2035, 1005, 335, 5),
(2036, 1006, 336, 3),
(2037, 1007, 337, 2),
(2038, 1008, 338, 4),
(2039, 1009, 339, 1),
(2040, 1010, 340, 3),
(2041, 1011, 341, 2),
(2042, 1012, 342, 4),
(2043, 1013, 343, 2),
(2044, 1014, 344, 3),
(2045, 1015, 345, 5),
(2046, 1016, 346, 1),
(2047, 1017, 347, 3),
(2048, 1018, 348, 2),
(2049, 1019, 349, 4),
(2050, 1020, 350, 2),
(2051, 1021, 351, 3),
(2052, 1022, 352, 1),
(2053, 1023, 353, 2),
(2054, 1024, 354, 4),
(2055, 1025, 355, 3),
(2056, 1026, 356, 5),
(2057, 1027, 357, 2),
(2058, 1028, 358, 3),
(2059, 1029, 359, 1),
(2060, 1030, 360, 4);





CREATE TABLE `products` (
  `ProductID` int(11) NOT NULL,
  `ProductName` varchar(30) DEFAULT NULL,
  `SupplierID` int(11) DEFAULT NULL,
  `CategoryID` int(11) DEFAULT NULL,
  `Unit` varchar(30) DEFAULT NULL,
  `Price` double DEFAULT NULL
);

INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `Unit`, `Price`) VALUES
(301, 'Widget A', 401, 501, '10 pieces', 10.99),
(302, 'Gadget B', 402, 502, '1 piece', 19.99),
(303, 'Tool C', 403, 503, '1 piece', 15.99),
(304, 'Device D', 404, 504, '1 piece', 49.99),
(305, 'Accessory E', 405, 505, '1 piece', 5.99),
(306, 'Widget F', 406, 506, '10 pieces', 12.99),
(307, 'Gadget G', 407, 507, '1 piece', 22.99),
(308, 'Tool H', 408, 508, '1 piece', 17.99),
(309, 'Device I', 409, 509, '1 piece', 59.99),
(310, 'Accessory J', 410, 510, '1 piece', 7.99),
(311, 'Widget K', 411, 511, '10 pieces', 14.99),
(312, 'Gadget L', 412, 512, '1 piece', 24.99),
(313, 'Tool M', 413, 513, '1 piece', 19.99),
(314, 'Device N', 414, 514, '1 piece', 69.99),
(315, 'Accessory O', 415, 515, '1 piece', 9.99),
(316, 'Widget P', 416, 516, '10 pieces', 16.99),
(317, 'Gadget Q', 417, 517, '1 piece', 29.99),
(318, 'Tool R', 418, 518, '1 piece', 21.99),
(319, 'Device S', 419, 519, '1 piece', 79.99),
(320, 'Accessory T', 420, 520, '1 piece', 12.99),
(321, 'Widget U', 421, 521, '10 pieces', 18.99),
(322, 'Gadget V', 422, 522, '1 piece', 34.99),
(323, 'Tool W', 423, 523, '1 piece', 25.99),
(324, 'Device X', 424, 524, '1 piece', 89.99),
(325, 'Accessory Y', 425, 525, '1 piece', 14.99),
(326, 'Widget Z', 426, 526, '10 pieces', 21.99),
(327, 'Gadget AA', 427, 527, '1 piece', 39.99),
(328, 'Tool BB', 428, 528, '1 piece', 27.99),
(329, 'Device CC', 429, 529, '1 piece', 99.99),
(330, 'Accessory DD', 430, 530, '1 piece', 16.99);





CREATE TABLE `shippers` (
  `ShipperID` int(11) NOT NULL,
  `ShipperName` varchar(25) DEFAULT NULL,
  `Mobile_number` varchar(20) DEFAULT NULL
);



INSERT INTO `shippers` (`ShipperID`, `ShipperName`, `Mobile_number`) VALUES
(401, 'ABC Shipping', '+1 123-456-7890'),
(402, 'XYZ Logistics', '+1 234-567-8901'),
(403, 'Global Express', '+1 345-678-9012'),
(404, 'Swift Shipping', '+1 456-789-0123'),
(405, 'FastTrack Logistics', '+1 567-890-1234'),
(406, 'Speedy Shipments', '+1 678-901-2345'),
(407, 'Quick Dispatch', '+1 789-012-3456'),
(408, 'Rapid Carriers', '+1 890-123-4567'),
(409, 'Eagle Transportation', '+1 901-234-5678'),
(410, 'Falcon Freight', '+1 012-345-6789');




CREATE TABLE `suppliers` (
  `SupplierID` int(11) NOT NULL,
  `SupplierName` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `Country` varchar(255) DEFAULT NULL,
  `Mobile_number` varchar(255) DEFAULT NULL
);


INSERT INTO `suppliers` (`SupplierID`, `SupplierName`, `City`, `Country`, `Mobile_number`) VALUES
(501, 'Supplier A', 'City A', 'Country A', '+1 123-456-7890'),
(502, 'Supplier B', 'City B', 'Country B', '+1 234-567-8901'),
(503, 'Supplier C', 'City C', 'Country C', '+1 345-678-9012'),
(504, 'Supplier D', 'City D', 'Country D', '+1 456-789-0123'),
(505, 'Supplier E', 'City E', 'Country E', '+1 567-890-1234'),
(506, 'Supplier F', 'City F', 'Country F', '+1 678-901-2345'),
(507, 'Supplier G', 'City G', 'Country G', '+1 789-012-3456'),
(508, 'Supplier H', 'City H', 'Country H', '+1 890-123-4567'),
(509, 'Supplier I', 'City I', 'Country I', '+1 901-234-5678'),
(510, 'Supplier J', 'City J', 'Country J', '+1 012-345-6789'),
(511, 'Supplier K', 'City K', 'Country K', '+1 123-456-7890'),
(512, 'Supplier L', 'City L', 'Country L', '+1 234-567-8901'),
(513, 'Supplier M', 'City M', 'Country M', '+1 345-678-9012'),
(514, 'Supplier N', 'City N', 'Country N', '+1 456-789-0123'),
(515, 'Supplier O', 'City O', 'Country O', '+1 567-890-1234'),
(516, 'Supplier P', 'City P', 'Country P', '+1 678-901-2345'),
(517, 'Supplier Q', 'City Q', 'Country Q', '+1 789-012-3456'),
(518, 'Supplier R', 'City R', 'Country R', '+1 890-123-4567'),
(519, 'Supplier S', 'City S', 'Country S', '+1 901-234-5678'),
(520, 'Supplier T', 'City T', 'Country T', '+1 012-345-6789'),
(521, 'Supplier U', 'City U', 'Country U', '+1 123-456-7890'),
(522, 'Supplier V', 'City V', 'Country V', '+1 234-567-8901'),
(523, 'Supplier W', 'City W', 'Country W', '+1 345-678-9012'),
(524, 'Supplier X', 'City X', 'Country X', '+1 456-789-0123'),
(525, 'Supplier Y', 'City Y', 'Country Y', '+1 567-890-1234'),
(526, 'Supplier Z', 'City Z', 'Country Z', '+1 678-901-2345'),
(527, 'Supplier AA', 'City AA', 'Country AA', '+1 789-012-3456'),
(528, 'Supplier BB', 'City BB', 'Country BB', '+1 890-123-4567'),
(529, 'Supplier CC', 'City CC', 'Country CC', '+1 901-234-5678'),
(530, 'Supplier DD', 'City DD', 'Country DD', '+1 012-345-6789');





ALTER TABLE `categories` ADD PRIMARY KEY (`CategoryID`);
ALTER TABLE `customers` ADD PRIMARY KEY (`CustomerID`);
ALTER TABLE `employees` ADD PRIMARY KEY (`EmployeeID`);

ALTER TABLE `orders` ADD PRIMARY KEY (`OrderID`),
  ADD KEY `CustomerID` (`CustomerID`),
  ADD KEY `EmployeeID` (`EmployeeID`),
  ADD KEY `ShipmentID` (`ShipmentID`);
  
  
ALTER TABLE `order_details` ADD PRIMARY KEY (`OrderDetailID`),
  ADD KEY `OrderID` (`OrderID`),
  ADD KEY `ProductID` (`ProductID`);
  
  
ALTER TABLE `products` ADD PRIMARY KEY (`ProductID`),
  ADD KEY `CategoryID` (`CategoryID`),
  ADD KEY `SupplierID` (`SupplierID`);
  

ALTER TABLE `shippers` ADD PRIMARY KEY (`ShipperID`);
ALTER TABLE `suppliers` ADD PRIMARY KEY (`SupplierID`);


select * from categories;
select * from customers;
select * from employees;
select * from order_details;
select * from orders;
select * from products;
select * from shippers;
select * from suppliers;

#1.
SELECT CONCAT(First_Name, ' ', Last_Name) AS FullName,salary FROM Employees;


#2.
SELECT ProductID, SUM(Quantity) AS TotalQuantity FROM Order_details GROUP BY ProductID;


#3.
SELECT * FROM Orders WHERE CustomerID IN (SELECT CustomerID FROM Customers WHERE Country = 'United_states');


#4.
SELECT CustomerID, COUNT(OrderID) AS OrderCount FROM Orders GROUP BY CustomerID;


#5.
SELECT * FROM Employees WHERE Birthday < '1999-01-01' AND Salary > '40000';


#6.
SELECT products.ProductID, round(SUM(order_details.Quantity * products.Price)) AS TotalSales FROM Order_details inner join products on order_details.productID=products.productID 
GROUP BY ProductID ;


#7.
SELECT CustomerName FROM Customers WHERE CustomerID IN (SELECT CustomerID FROM Orders GROUP BY CustomerID HAVING COUNT(OrderID) >= 2);


#8.
SELECT Orders.OrderID, Customers.CustomerName, CONCAT(Employees.First_Name, ' ', Employees.Last_Name) AS FullName FROM Orders
JOIN Customers ON Orders.CustomerID = Customers.CustomerID
JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID;


#9.
SELECT c.CustomerID, c.CustomerName FROM customers c LEFT JOIN orders o ON c.CustomerID = o.CustomerID
WHERE o.CustomerID IS NULL;


#10.
SELECT p.ProductID, p.ProductName, od.OrderID FROM products p LEFT JOIN order_details od ON p.ProductID = od.ProductID
WHERE od.OrderID IS NULL;


#11.
SELECT c.CustomerID, c.CustomerName, p.ProductName FROM customers c JOIN orders o ON o.CustomerID = c.CustomerID
JOIN order_details od ON od.OrderID = o.OrderID
JOIN products p ON p.ProductID = od.ProductID
ORDER BY c.CustomerID, p.ProductName ASC;


#12.
SELECT ProductID,ProductName,Price FROM products ORDER BY Price DESC LIMIT 5;


#13.
SELECT ProductName FROM products WHERE Price IN (SELECT MIN(Price) FROM products);


#14.
SELECT c.CustomerID, c.CustomerName, round(SUM(od.Quantity * p.Price)) AS TotalSpending FROM orders o
JOIN customers c ON o.CustomerID = c.CustomerID
JOIN order_details od ON o.OrderID = od.OrderID
JOIN products p ON p.ProductID = od.ProductID
GROUP BY c.CustomerID ORDER BY 3 DESC LIMIT 1;


#15.
SELECT T1.ProductID, T1.ProductName, T1.CategoryID, T1.Price FROM Products T1
JOIN (SELECT CategoryID, MAX(Price) AS MaxPrice FROM Products 
GROUP BY CategoryID) T2 ON T1.CategoryID = T2.CategoryID AND T1.Price = T2.MaxPrice;
