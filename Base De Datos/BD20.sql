/*
34.	Modifique los nombres de los clientes con cuenta inhabilitada
 de tal manera que al final del nombre se agregue el texto
 ‘- (Cuenta inhabilitada)’ Ej: Cliente 102 – (Cuenta Inhabilitada)
 */

UPDATE Clientes c
SET c.Cliente = c.Cliente - ("Cuenta Inhabilitada")
WHERE CuentaHabilitada = 1