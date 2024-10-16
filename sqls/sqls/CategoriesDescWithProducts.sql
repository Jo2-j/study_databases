-- - Table : Products
-- - 조건 : 카테고리에 속한 상품 갯수 순으로 Desc


-- 상품이름, 상품갯수


SELECT C.CategoryName, COUNT(P.ProductName)
FROM 
Categories as C INNER JOIN Products as P
	                ON C.CategoryID = P.CategoryID
                 
GROUP BY C.CategoryID
ORDER BY COUNT(P.ProductName) desc
;