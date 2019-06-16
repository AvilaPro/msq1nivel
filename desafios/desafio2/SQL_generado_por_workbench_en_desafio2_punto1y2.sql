
--SQL del punto 1
CREATE TABLE `desafio2`.`producto` (
  `id` BIGINT(100) UNSIGNED NOT NULL,
  `nombre` VARCHAR(150) NOT NULL,
  `descripcion` TEXT(50000) NULL,
  `existencia` INT UNSIGNED NOT NULL,
  `precio` DECIMAL(10,2) UNSIGNED NOT NULL,
  `fecha_vencimiento` DATETIME NULL,
  `codigo` INT(10) ZEROFILL UNSIGNED NOT NULL,
  `foto` BLOB NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `nombre_UNIQUE` (`nombre` ASC));

  CREATE TABLE `desafio2`.`factura` (
  `id` BIGINT(100) UNSIGNED NOT NULL AUTO_INCREMENT,
  `numero` BIGINT UNSIGNED NOT NULL,
  `id_cliente` INT UNSIGNED NOT NULL,
  `fecha` TIMESTAMP NOT NULL,
  `monto` FLOAT(8,2) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `numero_UNIQUE` (`numero` ASC));

  CREATE TABLE `desafio2`.`producto_factura` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_producto` BIGINT UNSIGNED NOT NULL,
  `id_factura` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`));

  --SQL del punto 2

ALTER TABLE `desafio2`.`producto` 
ADD INDEX `codigo_idx` (`codigo` ASC),
ADD INDEX `fecha_idx` (`fecha_vencimiento` ASC);

ALTER TABLE `desafio2`.`factura` 
ADD INDEX `idcliente_idx` (`id_cliente` ASC),
ADD INDEX `fecha_idx` (`fecha` ASC);

ALTER TABLE `desafio2`.`producto_factura` 
ADD INDEX `idproducto_idx` (`id_producto` ASC),
ADD INDEX `idfactura_idx` (`id_factura` ASC),
ADD UNIQUE INDEX `idpro_x_idfac_idx` (`id_producto` ASC, `id_factura` ASC);

--SQL del punto 3

INSERT INTO `desafio2`.`factura` (`id`, `numero`, `id_cliente`, `fecha`, `monto`) VALUES ('1', '001', '1', '2019-06-05', '1000');
INSERT INTO `desafio2`.`factura` (`id`, `numero`, `id_cliente`, `fecha`, `monto`) VALUES ('2', '002', '2', '2019-06-06', '2000');
INSERT INTO `desafio2`.`factura` (`id`, `numero`, `id_cliente`, `fecha`, `monto`) VALUES ('3', '003', '3', '2019-06-07', '3000');
INSERT INTO `desafio2`.`factura` (`id`, `numero`, `id_cliente`, `fecha`, `monto`) VALUES ('4', '004', '4', '2019-06-08', '4000');
INSERT INTO `desafio2`.`factura` (`id`, `numero`, `id_cliente`, `fecha`, `monto`) VALUES ('5', '005', '5', '2019-06-09', '5000');

INSERT INTO `desafio2`.`producto` (`id`, `nombre`, `descripcion`, `existencia`, `precio`, `fecha_vencimiento`, `codigo`) VALUES ('1', 'faro hilux 12', 'faro de hilux de 2012 a 2018', '10', '1000', '2020-07-07', '123');
INSERT INTO `desafio2`.`producto` (`id`, `nombre`, `descripcion`, `existencia`, `precio`, `fecha_vencimiento`, `codigo`) VALUES ('2', 'faro hilux 09-11', 'faro de hilux de 2009 a 2011', '8', '1000', '2020-07-07', '456');
INSERT INTO `desafio2`.`producto` (`id`, `nombre`, `descripcion`, `existencia`, `precio`, `fecha_vencimiento`, `codigo`) VALUES ('3', 'stop hilux 12', 'stop de hilux de 2012 a 2018', '20', '500', '2020-12-10', '147');
INSERT INTO `desafio2`.`producto` (`id`, `nombre`, `descripcion`, `existencia`, `precio`, `fecha_vencimiento`, `codigo`) VALUES ('4', 'stop hilux 09-11', 'stop de hilux de 02009 a 2011', '20', '500', '2020-12-10', '258');
INSERT INTO `desafio2`.`producto` (`id`, `nombre`, `descripcion`, `existencia`, `precio`, `fecha_vencimiento`, `codigo`) VALUES ('5', 'faro generico 12', 'faro reemplazo de hilux de 2012 a 2018', '7', '700', '2020-05-05', '789');

INSERT INTO `desafio2`.`producto_factura` (`id`, `id_producto`, `id_factura`) VALUES ('1', '3', '1');
INSERT INTO `desafio2`.`producto_factura` (`id`, `id_producto`, `id_factura`) VALUES ('2', '5', '2');
INSERT INTO `desafio2`.`producto_factura` (`id`, `id_producto`, `id_factura`) VALUES ('3', '2', '3');
INSERT INTO `desafio2`.`producto_factura` (`id`, `id_producto`, `id_factura`) VALUES ('4', '3', '4');
INSERT INTO `desafio2`.`producto_factura` (`id`, `id_producto`, `id_factura`) VALUES ('5', '1', '5');

