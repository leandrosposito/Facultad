UPDATE MateriasPrimas mp
JOIN receta r ON mp.idMateriaPrima = r.idMateriaPrima
SET mp.costo = mp.costo*1.10
WHERE r.idProducto = 33