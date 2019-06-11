SELECT
	factura.id, cliente.nombre, factura.fecha
FROM
	factura
		INNER JOIN
	cliente ON factura.idcliente = cliente.id
WHERE
	fecha BETWEEN '2019-01-01' AND '2019-06-10';