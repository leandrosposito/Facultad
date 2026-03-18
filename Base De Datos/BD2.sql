-- Insertar datos en Zonas
INSERT INTO Zonas (Zona) VALUES ('Norte'), ('Sur'), ('Este'), ('Oeste'), ('Centro');

-- Insertar datos en Clientes
INSERT INTO Clientes (Cliente, IdZona, CuentaHabilitada) VALUES
('Cliente A', 1, 1),
('Cliente B', 2, 1),
('Cliente C', 3, 0),
('Cliente D', 4, 1),
('Cliente E', 5, 1);

-- Insertar datos en Proveedores
INSERT INTO Proveedores (Proveedor) VALUES
('Proveedor 1'), ('Proveedor 2'), ('Proveedor 3'), ('Proveedor 4'), ('Proveedor 5');

-- Insertar datos en Rubros
INSERT INTO Rubros (Rubro) VALUES
('Electrónica'), ('Alimentos'), ('Muebles'), ('Ropa'), ('Juguetes');

-- Insertar datos en Productos
INSERT INTO Productos (IdRubro, IdProveedor, Producto, Precio) VALUES
(1, 1, 'Televisor', 500.00),
(2, 2, 'Pan', 2.00),
(3, 3, 'Silla', 50.00),
(4, 4, 'Camiseta', 20.00),
(5, 5, 'Muñeca', 15.00);

-- Insertar datos en Vendedores
INSERT INTO Vendedores (Vendedor, Comision) VALUES
('Vendedor 1', 5.0),
('Vendedor 2', 6.0),
('Vendedor 3', 7.0),
('Vendedor 4', 8.0),
('Vendedor 5', 5.5);

-- Insertar datos en FacturaCabecera
INSERT INTO FacturaCabecera (Sucursal, Numero, Fecha, Anulada, IdCliente, IdVendedor) VALUES
('Sucursal 1', 101, '2024-02-01', 0, 1, 1),
('Sucursal 2', 102, '2024-02-02', 0, 2, 2),
('Sucursal 3', 103, '2024-02-03', 1, 3, 3),
('Sucursal 4', 104, '2024-02-04', 0, 4, 4),
('Sucursal 5', 105, '2024-02-05', 0, 5, 5);

-- Insertar datos en FacturaDetalle
INSERT INTO FacturaDetalle (IdFactura, IdProducto, Cantidad) VALUES
(1, 1, 2),
(2, 2, 10),
(3, 3, 4),
(4, 4, 6),
(5, 5, 3);