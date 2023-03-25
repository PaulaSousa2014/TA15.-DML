/*Copio el codigo de la creacion de las tablas del ta14_ejercicio7*/
DROP DATABASE IF EXISTS ta15_ejercicio1;
CREATE DATABASE ta15_ejercicio1;
USE ta15_ejercicio1;

CREATE TABLE despachos(
numero int,
capacidad int,
primary key(numero)
);

CREATE TABLE directores(
dni varchar(8),
num_apels nvarchar(255),
dni_jefe varchar(8) NULL,
despacho int NULL,
primary key(dni),
foreign key(dni_jefe) references directores(dni)
on delete set null on update cascade,
foreign key(despacho) references despachos(numero)
on delete set null on update cascade
);

/*Insertar 10 tuplas en tabla despachos de ta14_ejercicio7*/
INSERT INTO despachos VALUES
(1,10),
(2,10),
(3,10),
(4,10),
(5,10),
(6,20),
(7,20),
(8,20),
(9,50),
(10,50);

/*Insertar 10 tuplas en tabla directores*/
INSERT INTO directores VALUES
('9999999I', 'Manel Ribera Sanz', null, null),
('0000000J', 'Angela Cabrero', '9999999I',5),
('1111111A', 'Miguel Angel Martí',null, 1),
('2222222B', 'Adrea Tretti', '1111111A', 3),
('3333333C', 'Carlos Martorell', null, null),
('4444444D', 'Paula Sousa',null, 10),
('5555555E', 'Marc Saez',null, 8),
('6666666F', 'Alberto AlgunaCosa',null,9),
('7777777G', 'Juan Martinez', '4444444D', null),
('8888888H', 'Jordi Bonan', '6666666F', null);


