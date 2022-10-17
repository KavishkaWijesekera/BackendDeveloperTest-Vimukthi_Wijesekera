CREATE PROCEDURE SP_GetActiveOrdersByCustomer 

@CustomerId UNIQUEIDENTIFIER

AS
BEGIN

SELECT Orders.OrderId, Orders.ProductId, Orders.OrderStatus, Orders.OrderType, Orders.OrderBy, Orders.OrderedOn, Orders.ShippedOn, Orders.IsActive AS IsActiveOrder, 
Product.ProductName, Product.UnitPrice, Product.SupplierId, Product.CreatedOn AS CreatedOnProduct, Product.IsActive AS IsActiveProduct,
Supplier.SupplierName, Supplier.CreatedOn AS CreatedOnSuplier, Supplier.IsActivate 
FROM Orders 
INNER JOIN Product 
ON Orders.ProductId = Product.ProductId
INNER JOIN Supplier 
ON Product.SupplierId = Supplier.SupplierId
WHERE Orders.OrderBy = @CustomerId AND Orders.IsActive = '1'

END;
GO

--EXEC SP_GetActiveOrdersByCustomer @CustomerId = '3FA85F54-5717-4562-B3FC-2C963F66AFA7'
