SELECT 
    alumno_seccion.seccion_id AS Seccion,
    alumno.nombre AS Nombre,
    curso.nombre AS Curso,
    alumno_seccion.fecha_inscripcion
FROM
    alumno_seccion
        INNER JOIN
    alumno ON alumno_seccion.alumno_id = alumno.id
        INNER JOIN
    curso ON alumno_seccion.seccion_id = curso.id
WHERE
    alumno_seccion.fecha_inscripcion BETWEEN '2019-04-01' AND '2019-06-01'
