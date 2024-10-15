-- - Table : OrderDetails
-- - 조건 : OrderID가 10284 ~ 10437 Quantity 합계와 건수 표시
-- - where 완료 후 가상 Table로 group by 진행
-- [출력 예시]
-- OrderID        Quantity_sum  ORDER_COUNT 
--    10284             27                         3
-- [참조 예제]
-- SELECT COUNT(*) AS EMPLOYEE_CNT
--                    , T_OUTER_ORS.EmployeeID
-- FROM (
--      SELECT T_INNER_ORS.*
--      FROM ORDERS AS T_INNER_ORS
--      WHERE T_INNER_ORS.EmployeeID IN (7,9)
--     ) AS T_OUTER_ORS
-- GROUP BY T_OUTER_ORS.EmployeeID;

-- SELECT OrderID, Quantity 
-- FROM OrderDetails
-- WHERE OrderID BETWEEN 10284 AND 10437
-- GROUP BY OrderID, Quantity
-- ;

-- SELECT OrderDetailID, OrderID, AS Quantity_sum,  COUNT(*) AS ORDER_COUNT
-- FROM (
--      SELECT OrderID, Quantity 
--     FROM OrderDetails
--     WHERE OrderID BETWEEN 10284 AND 10437
--     GROUP BY OrderID, Quantity
--     ) AS OG_TABLE
-- GROUP BY OG_TABLE


-- SELECT OrderID, SUM()
-- FROM (
--      SELECT OrderID, Quantity 
--     FROM OrderDetails
--     WHERE OrderID BETWEEN 10284 AND 10437
--     GROUP BY OrderID, Quantity
--     ) AS OG_TABLE
-- GROUP BY OG_TABLE.OrderID
-- ;

-- SELECT OrderID, SUM(Quantity) AS Quantity_sum, 
-- FROM (
--      SELECT OrderID, Quantity 
--     FROM OrderDetails
--     WHERE OrderID BETWEEN 10284 AND 10437
--     GROUP BY OrderID, Quantity
--     ) AS OG_TABLE
-- GROUP BY OG_TABLE.OrderID
-- ;
-- ---------------------------------------
SELECT OrderID, SUM(Quantity) AS Quantity_sum, COUNT(OrderID) AS ORDER_COUNT
FROM (
     SELECT OrderID, Quantity 
    FROM OrderDetails
    WHERE OrderID BETWEEN 10284 AND 10437
    GROUP BY OrderID, Quantity
    ) AS OG_TABLE
GROUP BY OG_TABLE.OrderID
;