-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-06-2019 a las 18:18:59
-- Versión del servidor: 5.7.11
-- Versión de PHP: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `clase2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id` int(11) NOT NULL COMMENT 'este campo es la clave primaria (identificador unico)',
  `rif` varchar(45) NOT NULL COMMENT 'rif del cliente',
  `nombre` varchar(45) NOT NULL,
  `tipo` int(10) UNSIGNED DEFAULT '1',
  `codigo` int(10) UNSIGNED ZEROFILL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT=' almacena los clientes de la empresa';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `id` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `monto` float(15,2) UNSIGNED NOT NULL,
  `idcliente` int(10) UNSIGNED NOT NULL,
  `numero` int(10) UNSIGNED ZEROFILL NOT NULL COMMENT 'el numero de factura debe ser unico por eso se crea un indice',
  `forma_pago` enum('credito','contado') NOT NULL DEFAULT 'contado' COMMENT 'aqui se seleccionara la forma de pago'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`id`, `fecha`, `monto`, `idcliente`, `numero`, `forma_pago`) VALUES
(1, '2019-06-04 00:00:00', 1650.00, 2, 0000000001, 'contado'),
(2, '2016-06-02 18:25:00', 100.00, 2, 0000000002, 'contado'),
(3, '2016-06-01 06:30:35', 16500.00, 1, 0000000003, 'contado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `login` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rif_UNIQUE` (`rif`),
  ADD KEY `cliente_nombre` (`nombre`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `numero_UNIQUE` (`numero`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'este campo es la clave primaria (identificador unico)';
--
-- AUTO_INCREMENT de la tabla `factura`
--
ALTER TABLE `factura`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
