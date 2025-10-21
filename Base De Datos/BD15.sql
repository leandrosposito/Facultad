SELECT c.cliente, z.zona
FROM Clientes c
JOIN Zonas z ON c.IdZona = z.IdZona
WHERE c.CuentaHabilitada = 0
ORDER BY c.clientes DESC