
CREATE DATABASE escuela;
GO

USE escuela;
GO


CREATE TABLE alumnos (
    id_alumno INT IDENTITY(1,1) PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    semestre INT NOT NULL,
    promedio DECIMAL(4,2) NULL
);
GO


CREATE TABLE materias (
    id_materia INT IDENTITY(1,1) PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    creditos INT NOT NULL
);
GO


CREATE TABLE inscripciones (
    id_inscripcion INT IDENTITY(1,1) PRIMARY KEY,
    id_alumno INT NOT NULL,
    id_materia INT NOT NULL,
    fecha_inscripcion DATE NOT NULL DEFAULT GETDATE(),
    FOREIGN KEY (id_alumno) REFERENCES alumnos(id_alumno),
    FOREIGN KEY (id_materia) REFERENCES materias(id_materia)
);
GO


INSERT INTO alumnos (nombre, apellido, semestre, promedio)
VALUES 
('Luis', 'Martínez', 2, 8.7),
('Ana', 'Gómez', 4, 9.1),
('Susana', 'Hernández', 1, 7.9);
GO


INSERT INTO materias (nombre, creditos)
VALUES
('Matemáticas I', 8),
('Programación I', 10),
('Bases de Datos', 10);
GO


INSERT INTO inscripciones (id_alumno, id_materia)
VALUES
(1, 1),
(1, 2),
(2, 3),
(3, 2);
GO

USE escuela;
GO
SELECT * FROM sys.tables;

SELECT * FROM alumnos;

SELECT * FROM materias;

SELECT * FROM inscripciones;

SELECT * FROM sys.tables;
--------------------------------
VISTAS
--------------------------------
CREATE VIEW vista_alumnos AS
SELECT *
FROM alumnos
WHERE promedio > 8;
GO
-------------------------------
SELECT * FROM vista_alumnos;
---------------------------------
  DROP VIEW vista_alumnos;
GO
-----------------------------------
 
 