-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-12-2021 a las 03:07:38
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `farmacia_del ahorro`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `IDarticulo` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Precio` varchar(50) NOT NULL,
  `Cantidad` varchar(50) NOT NULL,
  `Fecha_vendido` date NOT NULL,
  `Descripcion` varchar(80) NOT NULL,
  `Tiempo_entrega` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`IDarticulo`, `Nombre`, `Precio`, `Cantidad`, `Fecha_vendido`, `Descripcion`, `Tiempo_entrega`) VALUES
(1, 'aspirina', '$20', '1', '2021-11-01', 'la cliengte se llevo una aspirina de 20 pesos', '20min'),
(2, 'aspirinaaa', '$20', '1', '2021-11-02', 'se llevo un tucol d de 20 pesos', '20min');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `IDcliente` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Domicilio` varchar(50) NOT NULL,
  `Numero_tel` varchar(50) NOT NULL,
  `Correo` varchar(50) NOT NULL,
  `Fecha_pedido` date NOT NULL,
  `Medicamento` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`IDcliente`, `Nombre`, `Domicilio`, `Numero_tel`, `Correo`, `Fecha_pedido`, `Medicamento`) VALUES
(1, 'georgina', 'tupolev pte. 2402', '6751992', 'georgina@gmail.com', '2021-11-01', 'aspirina'),
(3, 'anaaa', 'tupolev pte.2401', '3605793', '', '2021-11-01', 'aspirina');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `IDempleado` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Apellido` varchar(50) NOT NULL,
  `Numero_tel` varchar(50) NOT NULL,
  `Fecha_nacimiento` date NOT NULL,
  `Correo` varchar(55) NOT NULL,
  `Domicilio` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`IDempleado`, `Nombre`, `Apellido`, `Numero_tel`, `Fecha_nacimiento`, `Correo`, `Domicilio`) VALUES
(1, 'jorge', 'baylon', '', '0000-00-00', '', ''),
(4, 'ana', 'baylon', '1678992', '0000-00-00', 'albaylonsanchez@gmail.com', 'calle alce 1172 eco 2000'),
(5, '', '', '', '0000-00-00', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `IDventa` int(11) NOT NULL,
  `Producto` varchar(50) NOT NULL,
  `Domicilio` varchar(60) NOT NULL,
  `Categoria` varchar(55) NOT NULL,
  `Precio` varchar(50) NOT NULL,
  `Descripcion` varchar(80) NOT NULL,
  `Costo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`IDventa`, `Producto`, `Domicilio`, `Categoria`, `Precio`, `Descripcion`, `Costo`) VALUES
(1, 'aspirina', 'tupolev pte. 2402', 'medicamento', '$20', 'la cliente se llevo una aspirina de 20 pesos', '20'),
(3, 'aspirina', 'tupolev pte.2401', 'medicamento', '$20', 'se llevo una aspirina de 20 pesos', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`IDarticulo`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`IDcliente`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`IDempleado`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`IDventa`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulos`
--
ALTER TABLE `articulos`
  MODIFY `IDarticulo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `IDcliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `IDempleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `IDventa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
