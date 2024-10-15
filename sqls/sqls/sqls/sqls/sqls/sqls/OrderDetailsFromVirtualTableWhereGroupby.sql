SELECT OrderID, SUM(Quantity) AS Quantity_sum, COUNT(OrderID) AS ORDER_COUNT
FROM (
     SELECT OrderID, Quantity 
    FROM OrderDetails
    WHERE OrderID BETWEEN 10284 AND 10437
    GROUP BY OrderID, Quantity
    ) AS OG_TABLE
GROUP BY OG_TABLE.OrderID
;