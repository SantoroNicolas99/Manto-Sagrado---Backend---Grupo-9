-- Crear la base de datos
CREATE DATABASE manto_sagrado;

-- Usar la base de datos
USE manto_sagrado;

-- Crear la tabla Productos
CREATE TABLE Productos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    precio DECIMAL(10, 2) NOT NULL
);

-- Crear la tabla Clientes
CREATE TABLE Clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,clientesclientes
    apellido VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    telefono VARCHAR(20) NOT NULL,
    consulta TEXT
);

-- Crear la tabla Pedidos
CREATE TABLE Pedidos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT,
    tipo VARCHAR(50),
    FOREIGN KEY (cliente_id) REFERENCES Clientes(id)
);

-- Crear la tabla PedidosProductos
CREATE TABLE PedidosProductos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    pedido_id INT,
    producto_id INT,
    cantidad INT,
    FOREIGN KEY (pedido_id) REFERENCES Pedidos(id),
    FOREIGN KEY (producto_id) REFERENCES Productos(id)
);

INSERT INTO Productos(`id`,`Nombre`,`Precio`) VALUES (NULL,'CAMISETA BOCA JUNIORS (MODELO NUEVO)',15599);
INSERT INTO Productos(`id`,`Nombre`,`Precio`) VALUES (NULL,'CAMISETA INDEPENDIENTE',16999);
INSERT INTO Productos(`id`,`Nombre`,`Precio`) VALUES (NULL,'CAMISETA RIVER PLATE',16999);
INSERT INTO Productos(`id`,`Nombre`,`Precio`) VALUES (NULL,'CAMISETA DE RACING',16999);
INSERT INTO Productos(`id`,`Nombre`,`Precio`) VALUES (NULL,'CAMISETA SAN LORENZO DE ALMAGRO',16999);
INSERT INTO Productos(`id`,`Nombre`,`Precio`) VALUES (NULL,'CAMISETA ESTUDIANTES DE LA PLATA',16999);
INSERT INTO Productos(`id`,`Nombre`,`Precio`) VALUES (NULL,'CAMISETA AC MILAN',16999);
INSERT INTO Productos(`id`,`Nombre`,`Precio`) VALUES (NULL,'CAMISETA INTER MIAMI',16999);
INSERT INTO Productos(`id`,`Nombre`,`Precio`) VALUES (NULL,'CAMISETA BARCELONA',16999);
INSERT INTO Productos(`id`,`Nombre`,`Precio`) VALUES (NULL,'CAMISETA REAL MADRID',16999);
INSERT INTO Productos(`id`,`Nombre`,`Precio`) VALUES (NULL,'CAMISETA BAYERN MUNICH',16999);
INSERT INTO Productos(`id`,`Nombre`,`Precio`) VALUES (NULL,'CAMISETA MANCHESTER UNITED',16999);
INSERT INTO Productos(`id`,`Nombre`,`Precio`) VALUES (NULL,'CAMISETA SELECCION DE BRASIL',16999);
INSERT INTO Productos(`id`,`Nombre`,`Precio`) VALUES (NULL,'CAMISETA SELECCION ARGENTINA',16999);
INSERT INTO Productos(`id`,`Nombre`,`Precio`) VALUES (NULL,'CAMISETA SELECCION DE ITALIA',16999);
INSERT INTO Productos(`id`,`Nombre`,`Precio`) VALUES (NULL,'CAMISETA SELECCION DE URUGUAY',16999);
INSERT INTO Productos(`id`,`Nombre`,`Precio`) VALUES (NULL,'CAMISETA SELECCION DE ESPAÑA',16999);
INSERT INTO Productos(`id`,`Nombre`,`Precio`) VALUES (NULL,'CAMISETA SELECCION ALEMANIA',16999);
INSERT INTO Productos(`id`,`Nombre`,`Precio`) VALUES (NULL,'PRUEBA',100);
INSERT INTO Productos(`id`,`Nombre`,`Precio`) VALUES (NULL,'PRUEBA-2',1000);
SHOW TABLES;

SELECT * FROM productos;
