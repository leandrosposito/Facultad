CREATE DATABASE Banco;
USE Banco;

CREATE TABLE Clientes (
    idCliente INT PRIMARY KEY,
    nombre VARCHAR(45),
    cuentaActiva INT
);

CREATE TABLE Movimientos (
    idMovimiento INT PRIMARY KEY,
    idCliente INT,
    fecha DATE,
    ingreso FLOAT,
    egreso FLOAT,
    FOREIGN KEY (idCliente) REFERENCES Clientes(idCliente)
);


