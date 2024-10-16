-- - 제품명, 가격, 주문갯수, 고객명 표시


-- Products - ProductName
-- Products - Price
-- CustomerName
-- Products - COUNT(ProductName)


-- SELECT ProductName, Price, CustomerName, COUNT(ProductName 이 부분에서 틀렸음)
-- FROM ((((Customers AS C INNER JOIN Orders AS O
-- 	                    ON C.CustomerID = O.CustomerID)
-- 	                        INNER JOIN OrderDetails AS OD
--                                 ON O.OrderID = OD.OrderID))
--                                         INNER JOIN Products AS P
--                                                 ON OD.ProductID = P.ProductID)
-- GROUP BY Customers.CustomerName,Products.ProductName,Products.Price
-- ; 내code

-- SELECT Customers.CustomerName, Products.ProductName, Products.Price ,COUNT(Orders.OrderID)
-- FROM Customers
-- INNER JOIN Orders
-- 	ON Customers.CustomerID = Orders.CustomerID
-- INNER JOIN OrderDetails
-- 	ON Orders.OrderID = OrderDetails.OrderID
-- INNER JOIN Products 
-- 	ON OrderDetails.ProductID = Products.ProductID
-- GROUP BY Customers.CustomerName,Products.ProductName,Products.Price
-- ; 연지님code, 테이블.컬럼 < 다음과 같은 구조로 써야지 나중에 코드 오류에 대한 신경을 덜 쓰게 됨 