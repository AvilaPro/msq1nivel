UPDATE alumno_seccion,
    curso 
SET 
    al_sec_costo = curso_costo
WHERE
    (SELECT 
            curso_costo
        FROM
            curso
                INNER JOIN
            seccion ON seccion.curso_id = curso.id
        WHERE
            alumno_seccion.seccion_id = seccion.id)
        AND (MONTH(alumno_seccion.fecha_inscripcion) < (MONTH(CURDATE()) - 2))
