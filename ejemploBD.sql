-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-04-2023 a las 17:27:34
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ejemplo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ejemplo`
--

CREATE TABLE `ejemplo` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `ciudad` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `ejemplo`
--

INSERT INTO `ejemplo` (`id`, `nombre`, `edad`, `ciudad`) VALUES
(1, 'Juan', 23, 'Madrid'),
(2, 'Ana', 27, 'Barcelona'),
(3, 'Pedro', 35, 'Sevilla'),
(4, 'Sara', 18, 'Valencia'),
(5, 'Luis', 42, 'Granada'),
(6, 'Elena', 31, 'Bilbao'),
(7, 'Diego', 25, 'Málaga'),
(8, 'Laura', 29, 'Zaragoza'),
(9, 'Mario', 21, 'Alicante'),
(10, 'Carmen', 39, 'Murcia'),
(11, 'Javier', 28, 'Valladolid'),
(12, 'Isabel', 33, 'Oviedo'),
(13, 'Pablo', 24, 'Gijón'),
(14, 'Marta', 37, 'Santander'),
(15, 'Antonio', 46, 'Pamplona'),
(16, 'Clara', 22, 'Santiago de Compostela'),
(17, 'Jorge', 36, 'Logroño'),
(18, 'Raquel', 32, 'Toledo'),
(19, 'Julio', 40, 'Cádiz'),
(20, 'Olga', 26, 'Vigo');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ejemplo`
--
ALTER TABLE `ejemplo`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
