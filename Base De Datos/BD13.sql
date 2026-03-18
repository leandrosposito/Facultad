SELECT p.producto, SUM(r.cantidad * m.costo) AS "costoTotal"
FROM Productos p
JOIN Receta r ON p.idProducto = r.idProducto
JOIN MateriasPrimas M ON r.idMateriaPrima = m.idMateriaPrima
WHERE p.idProducto = 33
GROUP BY p.producto
ORDER BY p.producto
