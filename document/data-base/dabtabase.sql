DROP DATABASE IF EXISTS sistema_ventas;

CREATE DATABASE sistema_ventas;

-- Seleccionar base de datos (ajústalo si es necesario)
USE sistema_ventas;

-- Tabla: person
CREATE TABLE person (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    lastname VARCHAR(100) NOT NULL,
    phone VARCHAR(20),
    email VARCHAR(100),
    estatus TINYINT DEFAULT 1
);

-- Tabla: rol
CREATE TABLE rol (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    descripcion TEXT,
    estatus TINYINT DEFAULT 1
);

-- Tabla: user
CREATE TABLE user (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    person_id INT NOT NULL,
    rol_id INT NOT NULL,
    estatus TINYINT DEFAULT 1,
    FOREIGN KEY (person_id) REFERENCES person(id),
    FOREIGN KEY (rol_id) REFERENCES rol(id)
);

-- Tabla: product
CREATE TABLE product (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    descripcion TEXT,
    estatus TINYINT DEFAULT 1
);

-- Tabla: inventory
CREATE TABLE inventory (
    id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT NOT NULL,
    stock INT NOT NULL DEFAULT 0,
    unit_value DECIMAL(10,2) NOT NULL,
    estatus TINYINT DEFAULT 1,
    FOREIGN KEY (product_id) REFERENCES product(id)
);

-- Tabla: bill
CREATE TABLE bill (
    id INT AUTO_INCREMENT PRIMARY KEY,
    date DATETIME DEFAULT CURRENT_TIMESTAMP,
    total_value DECIMAL(12,2) NOT NULL,
    person_id INT NOT NULL,
    estatus TINYINT DEFAULT 1,
    FOREIGN KEY (person_id) REFERENCES person(id)
);

-- Tabla: bill_detail
CREATE TABLE bill_detail (
    id INT AUTO_INCREMENT PRIMARY KEY,
    bill_id INT NOT NULL,
    product_id INT NOT NULL,
    count INT NOT NULL,
    value DECIMAL(10,2) NOT NULL,
    estatus TINYINT DEFAULT 1,
    FOREIGN KEY (bill_id) REFERENCES bill(id),
    FOREIGN KEY (product_id) REFERENCES product(id)
);
