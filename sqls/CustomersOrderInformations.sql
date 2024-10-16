-- - 제품명, 가격, 주문갯수, 고객명 표시


-- Products - ProductName
-- Products - Price
-- CustomerName
-- Products - COUNT(ProductName)


SELECT ProductName, Price, CustomerName, Quantity
FROM ((((Customers left join Orders
	ON Customers.CustomerID = Orders.CustomerID)
	left join OrderDetails
    ON Orders.OrderID = OrderDetails.OrderID))
        left join Products
        ON OrderDetails.ProductID = Products.ProductID)

;