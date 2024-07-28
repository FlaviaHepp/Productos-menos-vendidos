USE AdventureWorks2019
GO

--Se desea concoer cuales son los 5 productos menos vendidos

SELECT TOP 5 pp.ProductID, pp.Name AS Producto, COUNT(ss.ProductID) AS Cantidad_vendido
FROM Production.Product pp
INNER JOIN Sales.SalesOrderDetail ss
ON pp.ProductID = ss.ProductID
GROUP BY ss.ProductID, pp.Name, pp.ProductID
ORDER BY COUNT(ss.ProductID) ASC