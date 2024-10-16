-- - Table : Orders
-- - 조건 : 가장 많이 주문 받은 회사 직원명과 갯수



--Orders - OrderDetails - Products - Suppliers
SELECT SupplierName, COUNT(SupplierName)
FROM 
        ((((Orders as O INNER JOIN OrderDetails as OD
	ON O.OrderID = OD.OrderID)
	INNER JOIN Products as P
    ON OD.ProductID = P.ProductID))
        INNER JOIN Suppliers as S
        ON P.SupplierID = S.SupplierID) 
GROUP BY SupplierName
ORDER BY COUNT(SupplierName) desc
LIMIT 1;
;