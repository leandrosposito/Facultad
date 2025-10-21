SELECT p.producto, m.materiaPrima, m.unidadMedida, r.cantidad
FROM Productos p
JOIN Receta r ON p.idProducto = r.idProducto
JOIN MateriasPrimas m ON r.idMateriaPrima = m.idMateriaPrima
WHERE p.idProducto = 28;