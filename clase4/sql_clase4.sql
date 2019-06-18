--FUNCIONES DE MYSQL

SELECT curdate(), now(), curtime(), year(curdate()), hour(curtime());

SELECT * FROM clase2.factura
where year(fecha)=year(curdate())
# date(fecha)=curdate() 'ver el dia de hoy'

SELECT 
    CURDATE() AS `curdate()`,
    fecha_registro,
    `clase2`.`cliente`.`nombre` AS `nombre`,
    CONCAT(`clase2`.`cliente`.`nombre`,
            ' ',
            `clase2`.`cliente`.`apellido`) AS `nombre_y_apellido`,
    `clase2`.`cliente`.`fecha` AS `fecha`,
    DATE_FORMAT(`clase2`.`cliente`.`fecha`, '%d/%m/%Y') AS `fecha_ordenado`,
    (TO_DAYS(CURDATE()) - TO_DAYS(`clase2`.`cliente`.`fecha`)) AS `dias_nacido`,
    ((TO_DAYS(CURDATE()) - TO_DAYS(`clase2`.`cliente`.`fecha`)) / 365) AS `años_nacido_noEntero`,
    floor(datediff(curdate(), fecha_nacimiento)/365) as `edad`
    calcular_edad(fecha_registro) AS `diff_de_años`,
    TIMESTAMPDIFF(DAY,
        `clase2`.`cliente`.`fecha_registro`,
        NOW()) AS `timestampdiff(day, fecha_registro, now())`
FROM
    `clase2`.`cliente`

--para convertir registros en objeto json
SELECT 
    JSON_OBJECT('id',
            id,
            'nombre',
            nombre,
            'apellido',
            apellido)
FROM
    clase2.cliente