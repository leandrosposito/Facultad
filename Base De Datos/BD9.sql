DELETE FROM Clientes
WHERE cuentaActiva = 0 AND idCliente NOT IN 
(SELECT idCliente FROM Movimientos)
