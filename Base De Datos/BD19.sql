SELECT r.Rubro, p.Producto, p.precio AS "PrecioBase",
(p.precio * 1.10) AS "PrecioMayorista",
(p.Precio * 1.30) AS "PrecioConDescuento",
(p.Precio * 1.40) AS "PrecioPublico"
FROM Productos p
JOIN Rubros r ON p.IdRubro = r.IdRubro
ORDER BY r.Rubro, p.Precio