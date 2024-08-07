USE Colegio;

CREATE TABLE IF NOT EXISTS docentes (
id_docente INT PRIMARY KEY,
nombre varchar(50) NOT NULL,
apellido varchar(50) NOT NULL,
especialidad varchar(50) NOT NULL,
direccion varchar(100) NOT NULL,
telefono varchar(13) NOT NULL,
email varchar(100) NOT NULL,
estado TINYINT
);

CREATE TABLE IF NOT EXISTS asignaturas(
id_asignatura INT PRIMARY KEY,
nombre varchar(50) NOT NULL,
descripcion TINYTEXT NOT NULL,
docente_ID INT NOT NULL UNIQUE,
FOREIGN KEY (docente_ID) REFERENCES docentes(id_docente)
);

CREATE TABLE IF NOT EXISTS estudiantes(
id_estudiante INT PRIMARY KEY,
nombres varchar(60) NOT NULL,
apellidos varchar(60) NOT NULL,
tipo_documento ENUM('CC', 'TI', 'PE','RC') NOT NULL,
num_documento varchar(10000) NOT NULL,
telefono varchar(15) NOT NULL,
email varchar(100) NOT NULL,
nombre_acudiente varchar(50),
telefono_acudiente varchar(15) NOT NULL,
email_acudiente varchar(15) NOT NULL,
estado TINYINT NOT NULL
);

CREATE TABLE IF NOT EXISTS califaicaciones(
id_calificacion INT PRIMARY KEY,
fecha_registro DATE NOT NULL,
calificacion DECIMAL (2,1) NOT NULL,
asignatura_ID INT NOT NULL,
estudiante_ID INT NOT NULL,
FOREIGN KEY (asignatura_ID) REFERENCES asignaturas(id_asignatura),
FOREIGN KEY (estudiante_ID) REFERENCES estudiantes(id_estudiante)
);