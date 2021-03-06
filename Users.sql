/*  --------------------- Creando la Base de Datos Users ---------------------------------------  */

CREATE DATABASE Users;

/*  --------------------- Usando la Base de Datos Users -----------------------------------------  */

USE Users;

/*  --------------------- Creando la tabla Usuarios (DDL) --------------------------------------  */

CREATE TABLE Usuarios (
    usuario_id int IDENTITY(1,1) primary key,
    nombre varchar(70) NOT NULL,
    apellido varchar(70) NOT NULL,
    fecha_nacimiento date NOT NULL,
    email varchar(100) NOT NULL,
	clave int
);

/*  --------------------- Creando la tabla Usuarios_Informacion (DDL) ----------------------------------  */

CREATE TABLE Usuarios_Informacion (
    usuario_informacion_id int IDENTITY(1,1) primary key,
    fecha_ingreso date NOT NULL,
    dispositivo varchar(100) NOT NULL,
    sistema_operativo varchar(70) NOT NULL,
    ubicacion varchar(70) NOT NULL,
	usuario_id int FOREIGN KEY REFERENCES Usuarios(usuario_id)
);

/*  --------------------- Creando la tabla Usuarios_Permisos (DDL) ---------------------------------  */

CREATE TABLE Usuarios_Permisos (
    usuarios_permisos_id int IDENTITY(1,1) primary key,
    rol varchar (70) NOT NULL,
    permisos varchar(70) NOT NULL,
	usuario_id int FOREIGN KEY REFERENCES Usuarios(usuario_id)
);

/*  --------------------- Insertando registros en la tabla Usuarios (DML)  -------------------------  */ 

INSERT INTO Usuarios (nombre, apellido, fecha_nacimiento, email, clave)
VALUES ('Ivan', 'Caravajal', '2003-08-13', 'ivan@hotmail.com', 4006);

INSERT INTO Usuarios (nombre, apellido, fecha_nacimiento, email, clave)
VALUES ('Emanuel', 'Alderete', '1994-04-14', 'emanuel@hotmail.com', 4007);

INSERT INTO Usuarios (nombre, apellido, fecha_nacimiento, email, clave)
VALUES ('Gerónimo', 'Riesco', '2001-08-12', 'geronimo@hotmail.com', 4008);


/*  --------------------- Insertando registros en la tabla Usuarios_Informacion (DML)  -------------------------  */ 

INSERT INTO Usuarios_Informacion (fecha_ingreso, dispositivo, sistema_operativo, ubicacion, usuario_id)
VALUES ('2022-06-02', 'iPhone 6', 'iOS', 'Buenos Aires', 1);

INSERT INTO Usuarios_Informacion (fecha_ingreso, dispositivo, sistema_operativo, ubicacion, usuario_id)
VALUES ('2022-06-02', 'Notebook Asus', 'Windows', 'Buenos Aires', 2);

INSERT INTO Usuarios_Informacion (fecha_ingreso, dispositivo, sistema_operativo, ubicacion, usuario_id)
VALUES ('2022-06-02', 'Moto One Macro', 'Android', 'Buenos Aires', 3);


/*  --------------------- Insertando registros en la tabla Usuarios_Permisos (DML)  -------------------------  */ 

INSERT INTO Usuarios_Permisos (rol, permisos, usuario_id)
VALUES ('Presidente', 'Leyes', 3);

INSERT INTO Usuarios_Permisos (rol, permisos, usuario_id)
VALUES ('Secretario', 'Comercio', 2);

INSERT INTO Usuarios_Permisos (rol, permisos, usuario_id)
VALUES ('Vocal', 'Difusión', 1);

/*  --------------------- Consultando tablas (DML) -------------------------  */  

SELECT * FROM Usuarios;

SELECT * FROM Usuarios_Informacion;

SELECT * FROM Usuarios_Permisos;

/*  --------------------- Eliminando registros (DDL) -------------------------  */  

TRUNCATE TABLE Usuarios_Permisos;

TRUNCATE TABLE Usuarios_Informacion;

TRUNCATE TABLE Usuarios;

/*  --------------------- Eliminando tablas (DDL) -------------------------  */  

DROP TABLE Usuarios_Permisos;

DROP TABLE Usuarios_Informacion;

DROP TABLE Usuarios;


