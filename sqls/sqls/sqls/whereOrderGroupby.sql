SELECT EmployeeID, COUNT(OrderID) AS Q
FROM Orders
WHERE EmployeeID = 7 OR EmployeeID = 9
GROUP BY EmployeeID
;



SELECT ORDERS_TB.EmployeeID, COUNT(ORDERS_TB.EmployeeID) AS CNT
FROM (SELECT *
	FROM Orders
	WHERE EmployeeID = 7 OR EmployeeID = 9
	) AS ORDERS_TB 
GROUP BY ORDERS_TB.EmployeeID

;

-- A.B =  A 테이블안에 B 컬럼