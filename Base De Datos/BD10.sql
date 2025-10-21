CREATE DATABASE Fabrica;
USE Fabrica;

CREATE TABLE Productos (
    idProducto INT PRIMARY KEY,
    producto VARCHAR(45),
    precio FLOAT
);

CREATE TABLE MateriasPrimas (
    idMateriaPrima INT PRIMARY KEY,
    materiaPrima VARCHAR(45),
    unidadMedida VARCHAR(45),
    costo FLOAT
);

CREATE TABLE Receta (
    idProducto INT,
    idMateriaPrima INT,
    cantidad FLOAT,
    PRIMARY KEY (idProducto, idMateriaPrima),
    FOREIGN KEY (idProducto) REFERENCES Productos(idProducto),
    FOREIGN KEY (idMateriaPrima) REFERENCES MateriasPrimas(idMateriaPrima)
);
