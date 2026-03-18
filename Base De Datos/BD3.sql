SELECT v.Vendedor, (v.Comision * f.Numero) AS 'Importe'
FROM Vendedores v
JOIN FacturaCabecera f ON v.IdVendedor = f.IdVendedor
WHERE YEAR(f.Fecha) = '2006' AND MONTH(f.Fecha) = '06'
ORDER BY v.Vendedor;