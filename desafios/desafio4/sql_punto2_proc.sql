UPDATE alumno_seccion 
SET 
    costo = curso.costo
WHERE
    alumno_seccion.fecha_inscripcion < (MONTH(CURDATE()) - 2) and 