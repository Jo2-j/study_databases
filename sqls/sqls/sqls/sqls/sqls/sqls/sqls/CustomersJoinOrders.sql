-- - Table : Customers, Orders
-- - 조건 : CustomerName별로 주문 갯수 표시
-- - 연결 키는 각자 찾기


SELECT CustomerName, COUNT(OrderID)
FROM Customers
		INNER JOIN Orders
        ON Customers.CustomerID = Orders.CustomerID
GROUP BY CustomerName
;
