CREATE DATABASE biblioteca;
\c biblioteca

CREATE TABLE libros(codigo INT PRIMARY KEY, nombre VARCHAR(100) NOT NULL);
CREATE TABLE autores(id SERIAL PRIMARY KEY, nombre VARCHAR(100) NOT NULL);
CREATE TABLE lectores(id SERIAL PRIMARY KEY, nombre VARCHAR(100) NOT NULL);
CREATE TABLE editoriales(id SERIAL PRIMARY KEY, nombre VARCHAR(100) NOT NULL);

CREATE TABLE prestamos(id SERIAL PRIMARY KEY, fecha_devolucion DATE NOT NULL, lectores_id INT NOT NULL REFERENCES lectores(id), libros_codigo INT NOT NULL REFERENCES libros(codigo));
CREATE TABLE autores_libros(libros_codigo INT REFERENCES libros(codigo), autores_id INT REFERENCES autores(id));
CREATE TABLE libros_editoriales(libros_codigo INT REFERENCES libros(codigo), editoriales_id INT REFERENCES editoriales(id));