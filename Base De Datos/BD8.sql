SELECT c.nombre, COALESCE(SUM(m.ingreso - m.egreso), 0) AS "saldo"
FROM Clientes c
LEFT JOIN Movimientos m ON c.idCliente = m.idCliente
GROUP BY c.nombre
ORDER BY c.nombre;