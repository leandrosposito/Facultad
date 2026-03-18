SELECT c.nombre, m.fecha, m.ingreso, m.egreso
FROM Movimientos m
JOIN Clientes c ON m.idCliente = c.idCliente
WHERE cuentaActiva = 1
ORDER BY c.nombre, m.fecha