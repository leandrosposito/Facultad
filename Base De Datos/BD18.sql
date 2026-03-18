SELECT f.numero, f.fecha, c.cliente, z.zona, v.vendedor
FROM FacturaCabecera f
JOIN Vendedores v ON f.IdVendedor = v.IdVendedor
JOIN Clientes c ON f.IdCliente = c.IdCliente
JOIN Zonas z ON c.IdZona = z.IdZona
WHERE f.anulada = 1 AND YEAR(f.Fecha) = "2006" 
ORDER BY f.fecha