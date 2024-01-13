-- Base de datos
CREATE DATABASE IF NOT EXISTS MiBaseDeDatos;
USE MiBaseDeDatos;

-- TABLA DE USUARIOS
CREATE TABLE IF NOT EXISTS usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    email VARCHAR(100),
    fecha_registro DATE
);

-- TABLA DE PERMISOS
CREATE TABLE IF NOT EXISTS permisos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT,
    permiso VARCHAR(50),
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);
