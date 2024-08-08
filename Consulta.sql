USE Colegio;

SELECT cal.calificacion, est.nombres, asi.nombre AS asignatura
FROM califaicaciones AS cal
INNER JOIN estudiantes AS est
ON cal.estudiante_ID = est.id_estudiante
INNER JOIN asignaturas AS asi
ON cal.asignatura_ID = asi.id_asignatura;
