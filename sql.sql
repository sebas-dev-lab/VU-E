/* TIPO DE ENTIDADES => AUTORES
 Nombre: autores //nombre de tabla
 */
-- Nombre
-- Genero
-- Fecha de nacimiento
-- Pais de origen
-- // Columnas Y TIPO DE DATO
-- // Normalizacion (verificar si tenemos columnas compuestas)
-- //query
-- Crear tabla
DROP DATABASE IF EXISTS libreria;
CREATE DATABASE IF NOT EXISTS libreria;
USE libreria;
CREATE TABLE IF NOT EXISTS autores(
    autor_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(25) NOT NULL,
    apellido VARCHAR(25) NOT NULL,
    genero ENUM('M', 'F'),
    seudonimo VARCHAR(50) UNIQUE,
    fecha_nacimiento DATE NOT NULL,
    pais_origen VARCHAR(40) NOT NULL,
    fecha_creacion DATETIME DEFAULT current_timestamp
);
CREATE TABLE libros(
    libro_id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    autor_id INT UNSIGNED NOT NULL,
    titutlo VARCHAR(50) NOT NULL,
    descripcion VARCHAR(250) NOT NULL,
    paginas INTEGER UNSIGNED,
    fecha_publicacion DATE NOT NULL,
    fecha_creacion DATETIME DEFAULT current_timestamp,
    FOREIGN KEY (autor_id) REFERENCES autores(autor_id)
);
-- // Insertar registros - libreria
-- Unique 
INSERT INTO autores (
        nombre,
        apellido,
        seudonimo,
        genero,
        fecha_nacimiento,
        pais_origen
    )
VALUES (
        'test4 autor4',
        'test autor apellido',
        'seudonimotest',
        'M',
        '2021-08-25',
        'Argentina'
    ),
    (
        'test5 autor5',
        'test autor apellido5',
        'seudonimotest5',
        'F',
        '2021-08-25',
        'Argentina'
    );
-- // Insertar registros - libreria
INSERT INTO libros(
        autor_id,
        titutlo,
        descripcion,
        paginas,
        fecha_publicacion,
        fecha_creacion
    )
VALUES (1, 'CARRIE', '1974-01-01'),
    (1, 'Mistery', '1974-01-01'),
    (1, 'el resplandor', '1974-01-01'),
    (2, 'harry postre', '1974-01-01');


    
SELECT *
FROM autores;
SELECT *
FROM libros;