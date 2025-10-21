SELECT SUM(p.precio * fd.Cantidad) AS 'importe',
MONTH(f.Fecha) AS 'mes', 
YEAR(f.Fecha) AS 'anio'
FROM FacturaDetalle fd
JOIN productos p ON fd.IdProducto = p.IdProducto
JOIN FacturaCabecera f ON fd.IdFactura = f.IdFactura
WHERE YEAR(f.fecha) = 2006
GROUP BY YEAR(f.fecha),MONTH(f.fecha)
ORDER BY 'mes'