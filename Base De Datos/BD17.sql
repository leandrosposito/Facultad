SELECT c.Cliente, z.Zona
FROM Clientes c
JOIN Zona z ON c.IdZona = z.IdZona
WHERE c.cliente LIKE "%7"