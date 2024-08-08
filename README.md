# Base de Datos Colegio

Este script SQL crea y configura una base de datos para gestionar la información de un colegio, incluyendo docentes, asignaturas, estudiantes y calificaciones.

## Estructura de la Base de Datos

La base de datos `Colegio` está compuesta por las siguientes tablas:

### 1. Tabla `docentes`

Almacena la información de los docentes.

- **id_docente**: Identificador único del docente (`INT`, `PRIMARY KEY`).
- **nombre**: Nombre del docente (`VARCHAR(50)`, `NOT NULL`).
- **apellido**: Apellido del docente (`VARCHAR(50)`, `NOT NULL`).
- **especialidad**: Especialidad del docente (`VARCHAR(50)`, `NOT NULL`).
- **direccion**: Dirección del docente (`VARCHAR(100)`, `NOT NULL`).
- **telefono**: Teléfono del docente (`VARCHAR(13)`, `NOT NULL`).
- **email**: Correo electrónico del docente (`VARCHAR(100)`, `NOT NULL`).
- **estado**: Estado del docente (`TINYINT`).

### 2. Tabla `asignaturas`

Almacena las asignaturas y su relación con los docentes.

- **id_asignatura**: Identificador único de la asignatura (`INT`, `PRIMARY KEY`).
- **nombre**: Nombre de la asignatura (`VARCHAR(50)`, `NOT NULL`).
- **descripcion**: Descripción de la asignatura (`TINYTEXT`, `NOT NULL`).
- **docente_ID**: Identificador del docente que imparte la asignatura (`INT`, `NOT NULL`, `UNIQUE`), clave foránea que referencia `docentes(id_docente)`.

### 3. Tabla `estudiantes`

Almacena la información de los estudiantes.

- **id_estudiante**: Identificador único del estudiante (`INT`, `PRIMARY KEY`).
- **nombres**: Nombres del estudiante (`VARCHAR(60)`, `NOT NULL`).
- **apellidos**: Apellidos del estudiante (`VARCHAR(60)`, `NOT NULL`).
- **tipo_documento**: Tipo de documento (`ENUM('CC', 'TI', 'PE', 'RC')`, `NOT NULL`).
- **num_documento**: Número de documento (`VARCHAR(10000)`, `NOT NULL`).
- **telefono**: Teléfono del estudiante (`VARCHAR(15)`, `NOT NULL`).
- **email**: Correo electrónico del estudiante (`VARCHAR(100)`, `NOT NULL`).
- **nombre_acudiente**: Nombre del acudiente (`VARCHAR(50)`).
- **telefono_acudiente**: Teléfono del acudiente (`VARCHAR(15)`, `NOT NULL`).
- **email_acudiente**: Correo electrónico del acudiente (`VARCHAR(15)`, `NOT NULL`).
- **estado**: Estado del estudiante (`TINYINT`, `NOT NULL`).

### 4. Tabla `calificaciones`

Almacena las calificaciones de los estudiantes en las asignaturas.

- **id_calificacion**: Identificador único de la calificación (`INT`, `PRIMARY KEY`).
- **fecha_registro**: Fecha de registro de la calificación (`DATE`, `NOT NULL`).
- **calificacion**: Valor de la calificación (`DECIMAL(2,1)`, `NOT NULL`).
- **asignatura_ID**: Identificador de la asignatura (`INT`, `NOT NULL`), clave foránea que referencia `asignaturas(id_asignatura)`.
- **estudiante_ID**: Identificador del estudiante (`INT`, `NOT NULL`), clave foránea que referencia `estudiantes(id_estudiante)`.

## Uso del Script

1. **Conéctate a tu servidor MySQL.**

2. **Ejecuta el script SQL para crear la base de datos y sus tablas:**

   ```sql
   USE Colegio;
   CREATE TABLE IF NOT EXISTS docentes (...);
   CREATE TABLE IF NOT EXISTS asignaturas (...);
   CREATE TABLE IF NOT EXISTS estudiantes (...);
   CREATE TABLE IF NOT EXISTS calificaciones (...);
