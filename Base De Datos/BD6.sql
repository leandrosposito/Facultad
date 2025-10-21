SELECT c.nombre
FROM Clientes c
JOIN Movimientos m ON c.idCliente = m.idCliente;