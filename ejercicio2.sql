/*Copio la creacion de tabla del ejercicio 8 de la TA14*/
/*Primero ponemos un DROP para que elimine y vuelva a cargar la base de datos 
en caso de que ya esxista*/
DROP DATABASE IF EXISTS ta15_ejercicio1;

/*Creamos la base de datos*/
CREATE DATABASE ta15_ejercicio1;

/*Entramos en la base de datos*/
USE ta15_ejercicio1;

/*Creamos la primera tabla que no tiene ninguna clave foránea*/
CREATE TABLE piezas(
codigo INT not null auto_increment,
nombre nvarchar(100),
primary key(codigo)
);

/*Creamos la segunda tabla que no tiene ninguna clave foránea*/
CREATE TABLE proveedores(
id char(4),
nombre nvarchar(100),
primary key(id)
);

/*Creamos la tercera tabla que tiene clave foránea que no deje eliminar
pero que si actualizada actualice en cascata*/
CREATE TABLE suministra(
codigo_pieza int,
id_proveedor char(4),
precio int,
primary key(codigo_pieza, id_proveedor),
foreign key(codigo_pieza) references piezas(codigo)
on delete cascade on update cascade,
foreign key(id_proveedor) references proveedores(id)
on delete cascade on update cascade
);

/*Insertar 10 tuplas en tabla piezas de ta14_ejercicio8*/
INSERT INTO piezas(nombre) VALUES
('pieza1'),
('pieza2'),
('pieza3'),
('pieza4'),
('pieza5'),
('pieza6'),
('pieza7'),
('pieza8'),
('pieza9'),
('pieza10');

/*Insertar 10 tuplas en tabla proveedores de ta14_ejercicio8*/
INSERT INTO proveedores VALUES
(6,'nombre1'),
(3, 'nombre2'),
(2, 'nombre3'),
(10, 'nombre4'),
(1, 'nombre2'),
(0, 'nombre6'),
(20, 'nombre7'),
(13, 'nombre8'),
(34, 'nombre2');

/*Insertar 10 tuplas en tabla suministra de ta14_ejercicio8*/
INSERT INTO suministra (codigo_pieza, id_proveedor, precio) VALUES 
(1, '0', 50),
(2, '3', 75),
(3, '10', 100),
(4, '13', 125),
(5, '20', 150),
(6, '34', 175),
(7, '6', 200),
(8, '1', 225),
(9, '0', 250),
(10, '0', 275);