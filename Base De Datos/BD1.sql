-- Crear la base de datos
CREATE DATABASE IF NOT EXISTS FacuBD;
USE FacuBD;

-- Crear la tabla de Clientes
CREATE TABLE Clientes (
    IdCliente INT AUTO_INCREMENT PRIMARY KEY,
    Cliente VARCHAR(100) NOT NULL,
    IdZona INT,
    CuentaHabilitada BOOLEAN
);

-- Crear la tabla de Zonas
CREATE TABLE Zonas (
    IdZona INT AUTO_INCREMENT PRIMARY KEY,
    Zona VARCHAR(100) NOT NULL
);

-- Crear la tabla de Proveedores
CREATE TABLE Proveedores (
    IdProveedor INT AUTO_INCREMENT PRIMARY KEY,
    Proveedor VARCHAR(100) NOT NULL
);

-- Crear la tabla de Rubros
CREATE TABLE Rubros (
    IdRubro INT AUTO_INCREMENT PRIMARY KEY,
    Rubro VARCHAR(100) NOT NULL
);

-- Crear la tabla de Productos
CREATE TABLE Productos (
    IdProducto INT AUTO_INCREMENT PRIMARY KEY,
    IdRubro INT,
    IdProveedor INT,
    Producto VARCHAR(100) NOT NULL,
    Precio DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (IdRubro) REFERENCES Rubros(IdRubro),
    FOREIGN KEY (IdProveedor) REFERENCES Proveedores(IdProveedor)
);

-- Crear la tabla de Vendedores
CREATE TABLE Vendedores (
    IdVendedor INT AUTO_INCREMENT PRIMARY KEY,
    Vendedor VARCHAR(100) NOT NULL,
    Comision DECIMAL(5,2)
);

-- Crear la tabla de FacturaCabecera
CREATE TABLE FacturaCabecera (
    IdFactura INT AUTO_INCREMENT PRIMARY KEY,
    Sucursal VARCHAR(50),
    Numero INT,
    Fecha DATE,
    Anulada BOOLEAN,
    IdCliente INT,
    IdVendedor INT,
    FOREIGN KEY (IdCliente) REFERENCES Clientes(IdCliente),
    FOREIGN KEY (IdVendedor) REFERENCES Vendedores(IdVendedor)
);

-- Crear la tabla de FacturaDetalle
CREATE TABLE FacturaDetalle (
    IdFactura INT,
    IdProducto INT,
    Cantidad INT,
    PRIMARY KEY (IdFactura, IdProducto),
    FOREIGN KEY (IdFactura) REFERENCES FacturaCabecera(IdFactura),
    FOREIGN KEY (IdProducto) REFERENCES Productos(IdProducto)
);