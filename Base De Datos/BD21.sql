USE FacuBD;

SELECT r.Rubro, pr.Proveedor, p.Producto, p.Precio
FROM Productos p
JOIN Rubros r ON p.IdRubro = r.IdRubro
JOIN Proveedoores pr ON p.IdProveedor = pr.IdProveedor
WHERE p.IdProducto NOT IN 
(SELECT fd.IdProducto FROM FacturaDetalle fd JOIN FacturaCabecera f ON fd.IdFactura = f.IdFactura WHERE f.IdVendedor = 5)
ORDER BY p.Producto