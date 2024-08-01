CREATE DATABASE localidades_db; 
\c localidades_db;

CREATE TABLE pais(
id serial PRIMARY KEY,
nombre VARCHAR(50)
);

CREATE TABLE departamento(
id serial PRIMARY KEY,
nombre VARCHAR(50),
idPais INTEGER,
FOREIGN KEY (idPais) REFERENCES pais (id)
);

CREATE TABLE municipio(
id serial,
nombre VARCHAR(50),
idDepartamento INTEGER,
UNIQUE (id, idDepartamento),
FOREIGN KEY (idDepartamento) REFERENCES departamento (id)
);

CREATE TABLE localidades(
id_departamento INTEGER,
nombre_departamento VARCHAR(50),
id_municipio INTEGER,
nombre_municipio VARCHAR(50)
);
