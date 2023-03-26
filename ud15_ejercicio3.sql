-- Elimina y la BBDD en el caso de que exista
DROP DATABASE IF EXISTS ud15_ejercicio3;

-- Creamos la BBDD
CREATE DATABASE ud15_ejercicio3;

USE ud15_ejercicio3;

-- Creamos la tabla cientificos, almacena informacion de los cientificos
CREATE TABLE cientificos (
    dni VARCHAR(9) PRIMARY KEY, -- PRIMARY KEY del cientifico
    NomApels NVARCHAR(255) NOT NULL
);

-- Creamos la tabla Proyecto, almacena informacion de los proyectos
CREATE TABLE proyecto (
    id CHAR(4) PRIMARY KEY, -- PRIMARY KEY del proyecto
    Nombre NVARCHAR(255) NOT NULL, 
    Horas INT NOT NULL 
);

-- Creamos la tabla asignado_a, relaciona cientificos con proyectos
CREATE TABLE asignado_a (
    dni_cientifico VARCHAR(9) NOT NULL, -- FK, referencia al dni del cientifico
    id_proyecto CHAR(4) NOT NULL, -- FK, referencia al Id del proyecto

    PRIMARY KEY (dni_cientifico, id_proyecto), -- PK, Combinamos las dos FK

    FOREIGN KEY (dni_cientifico) REFERENCES cientificos(dni)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
        
    FOREIGN KEY (id_proyecto) REFERENCES proyecto(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

-- Insertamos 10 datos en la tabla cientificos
INSERT INTO cientificos (dni, NomApels)
VALUES ('00000000A', 'Alberto del Pozo '),
       ('00000000B', 'Maria Lopez'),
       ('00000000C', 'Carlos Rodriguez'),
       ('00000000D', 'Ana Fernandez'),
       ('00000000E', 'Pedro Torres'),
       ('00000000F', 'Isabel Martinez'),
       ('00000000G', 'Luis Herrera'),
       ('00000000H', 'Sonia Ramirez'),
       ('00000000I', 'Miguel Jimenez'),
       ('00000000J', 'Laura Guerrero');

-- Insertamos 10 datos en la tabla proyecto
INSERT INTO proyecto (id, Nombre, Horas)
VALUES ('P001', 'Proyecto 1', 300),
       ('P002', 'Proyecto 2', 250),
       ('P003', 'Proyecto 3', 400),
       ('P004', 'Proyecto 4', 150),
       ('P005', 'Proyecto 5', 350),
       ('P006', 'Proyecto 6', 200),
       ('P007', 'Proyecto 7', 500),
       ('P008', 'Proyecto 8', 450),
       ('P009', 'Proyecto 9', 100),
       ('P010', 'Proyecto 10', 600);

-- Insertamos 10 datos en la tabla asignado_a
INSERT INTO asignado_a (dni_cientifico, id_proyecto)
VALUES ('00000000A', 'P001'),
       ('00000000B', 'P002'),
       ('00000000C', 'P003'),
       ('00000000D', 'P004'),
       ('00000000E', 'P005'),
       ('00000000F', 'P006'),
       ('00000000G', 'P007'),
       ('00000000H', 'P008'),
       ('00000000I', 'P009'),
       ('00000000J', 'P010');
