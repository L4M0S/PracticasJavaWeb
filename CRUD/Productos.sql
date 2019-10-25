CREATE DATABASE Productos;

CREATE TABLE articulos (
  codigo int AUTO_INCREMENT PRIMARY KEY,
  nombre varchar(50) NOT NULL,
  precio varchar(3) NOT NULL
);

INSERT INTO articulos values ('001','Huevo', '25');

update articulos set nombre='Huevo', precio='20' where codigo = '001';