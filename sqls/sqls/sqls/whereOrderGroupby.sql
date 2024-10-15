SELECT EmployeeID, COUNT(OrderID) AS Q
FROM Orders
WHERE EmployeeID = 7 OR EmployeeID = 9
GROUP BY EmployeeID
;