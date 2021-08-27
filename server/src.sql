DROP DATABASE IF EXISTS vu;
CREATE DATABASE IF NOT EXISTS vu;
USE vu;
CREATE TABLE IF NOT EXISTS empresa(
    empresa_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(25) NOT NULL,
    direccion VARCHAR(50) NOT NULL
);
CREATE TABLE IF NOT EXISTS empleado(
    empleado_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    dni VARCHAR(50) NOT NULL,
    legajo VARCHAR(50) NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    telefono VARCHAR(50) NOT NULL,
    fecha_creacion DATETIME DEFAULT current_timestamp
);
CREATE TABLE IF NOT EXISTS supervisor(
    supervisor_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    dni VARCHAR(50) NOT NULL,
    legajo VARCHAR(50) NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    telefono VARCHAR(50) NOT NULL,
    fecha_creacion DATETIME DEFAULT current_timestamp
);
CREATE TABLE IF NOT EXISTS trabaja(
    trabaja_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    empleado_id INT UNSIGNED NOT NULL,
    empresa_id INT UNSIGNED NOT NULL,
    salario VARCHAR(50) NOT NULL,
    fecha_ingreso DATE NOT NULL,
    fecha_egresi DATE NOT NULL,
    FOREIGN KEY (empleado_id) REFERENCES empleado(empleado_id),
    FOREIGN KEY (empresa_id) REFERENCES empresa(empresa_id)
);
CREATE TABLE IF NOT EXISTS supervisa(
    supervisa_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    empleado_id INT UNSIGNED NOT NULL,
    supervisor_id INT UNSIGNED NOT NULL,
    FOREIGN KEY (empleado_id) REFERENCES empleado(empleado_id),
    FOREIGN KEY (supervisor_id) REFERENCES supervisor(supervisor_id)
);


