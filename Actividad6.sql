-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 09-11-2021 a las 15:27:39
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `Actividad6`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadoDispositivo`
--

CREATE TABLE `estadoDispositivo` (
  `idDevice` varchar(20) NOT NULL,
  `fotoresistencia` float NOT NULL,
  `led` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estadoDispositivo`
--

INSERT INTO `estadoDispositivo` (`idDevice`, `fotoresistencia`, `led`) VALUES
('tarjeta1', 10, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial`
--

CREATE TABLE `historial` (
  `idDevice` varchar(20) NOT NULL,
  `nomSensor` varchar(20) NOT NULL,
  `valSensor` varchar(20) NOT NULL,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `historial`
--

INSERT INTO `historial` (`idDevice`, `nomSensor`, `valSensor`, `fecha`) VALUES
('tarjeta1', 'fotoresistencia', '0', '2021-11-08 21:07:24'),
('tarjeta1', 'led', '1', '2021-11-08 21:07:24'),
('tarjeta1', 'fotoresistencia', '', '2021-11-08 22:02:30'),
('tarjeta1', 'led', '', '2021-11-08 22:02:30'),
('tarjeta1', 'fotoresistencia', '', '2021-11-08 22:05:35'),
('tarjeta1', 'led', '', '2021-11-08 22:05:35'),
('tarjeta1', 'fotoresistencia', '0', '2021-11-09 08:04:28'),
('tarjeta1', 'led', '1', '2021-11-09 08:04:28'),
('tarjeta1', 'fotoresistencia', '0', '2021-11-09 08:04:29'),
('tarjeta1', 'led', '1', '2021-11-09 08:04:29'),
('tarjeta1', 'fotoresistencia', '0', '2021-11-09 08:04:30'),
('tarjeta1', 'led', '1', '2021-11-09 08:04:30'),
('tarjeta1', 'fotoresistencia', '0', '2021-11-09 08:04:31'),
('tarjeta1', 'led', '1', '2021-11-09 08:04:31'),
('tarjeta1', 'fotoresistencia', '0', '2021-11-09 08:04:32'),
('tarjeta1', 'led', '1', '2021-11-09 08:04:32'),
('tarjeta1', 'fotoresistencia', '0', '2021-11-09 08:04:33'),
('tarjeta1', 'led', '1', '2021-11-09 08:04:33'),
('tarjeta1', 'fotoresistencia', '0', '2021-11-09 08:04:34'),
('tarjeta1', 'led', '1', '2021-11-09 08:04:34'),
('tarjeta1', 'fotoresistencia', '0', '2021-11-09 08:04:35'),
('tarjeta1', 'led', '1', '2021-11-09 08:04:35'),
('tarjeta1', 'fotoresistencia', '0', '2021-11-09 08:04:36'),
('tarjeta1', 'led', '1', '2021-11-09 08:04:36'),
('tarjeta1', 'fotoresistencia', '0', '2021-11-09 08:04:37'),
('tarjeta1', 'led', '1', '2021-11-09 08:04:37'),
('tarjeta1', 'fotoresistencia', '0', '2021-11-09 08:04:38'),
('tarjeta1', 'led', '1', '2021-11-09 08:04:38'),
('tarjeta1', 'fotoresistencia', '0', '2021-11-09 08:04:39'),
('tarjeta1', 'led', '1', '2021-11-09 08:04:39'),
('tarjeta1', 'fotoresistencia', '0', '2021-11-09 08:04:40'),
('tarjeta1', 'led', '1', '2021-11-09 08:04:40'),
('tarjeta1', 'fotoresistencia', '0', '2021-11-09 08:04:41'),
('tarjeta1', 'led', '1', '2021-11-09 08:04:41'),
('tarjeta1', 'fotoresistencia', '0', '2021-11-09 08:04:42'),
('tarjeta1', 'led', '1', '2021-11-09 08:04:42'),
('tarjeta1', 'fotoresistencia', '0', '2021-11-09 08:04:43'),
('tarjeta1', 'led', '1', '2021-11-09 08:04:43'),
('tarjeta1', 'fotoresistencia', '0', '2021-11-09 08:04:44'),
('tarjeta1', 'led', '1', '2021-11-09 08:04:44'),
('tarjeta1', 'fotoresistencia', '0', '2021-11-09 08:04:45'),
('tarjeta1', 'led', '1', '2021-11-09 08:04:45'),
('tarjeta1', 'fotoresistencia', '0', '2021-11-09 08:04:46'),
('tarjeta1', 'led', '1', '2021-11-09 08:04:46'),
('tarjeta1', 'fotoresistencia', '0', '2021-11-09 08:04:47'),
('tarjeta1', 'led', '1', '2021-11-09 08:04:47'),
('tarjeta1', 'fotoresistencia', '0', '2021-11-09 08:04:48'),
('tarjeta1', 'led', '1', '2021-11-09 08:04:48'),
('tarjeta1', 'fotoresistencia', '0', '2021-11-09 08:04:49'),
('tarjeta1', 'led', '1', '2021-11-09 08:04:49'),
('tarjeta1', 'fotoresistencia', '0', '2021-11-09 08:04:50'),
('tarjeta1', 'led', '1', '2021-11-09 08:04:50'),
('tarjeta1', 'fotoresistencia', '0', '2021-11-09 08:04:50'),
('tarjeta1', 'led', '1', '2021-11-09 08:04:50'),
('tarjeta1', 'fotoresistencia', '0', '2021-11-09 08:04:51'),
('tarjeta1', 'led', '1', '2021-11-09 08:04:51'),
('tarjeta1', 'fotoresistencia', '0', '2021-11-09 08:04:52'),
('tarjeta1', 'led', '1', '2021-11-09 08:04:52'),
('tarjeta1', 'fotoresistencia', '0', '2021-11-09 08:04:53'),
('tarjeta1', 'led', '1', '2021-11-09 08:04:53'),
('tarjeta1', 'fotoresistencia', '0', '2021-11-09 08:04:54'),
('tarjeta1', 'led', '1', '2021-11-09 08:04:54'),
('tarjeta1', 'fotoresistencia', '0', '2021-11-09 08:04:55'),
('tarjeta1', 'led', '1', '2021-11-09 08:04:55'),
('tarjeta1', 'fotoresistencia', '0', '2021-11-09 08:04:56'),
('tarjeta1', 'led', '1', '2021-11-09 08:04:56'),
('tarjeta1', 'fotoresistencia', '0', '2021-11-09 08:04:57'),
('tarjeta1', 'led', '1', '2021-11-09 08:04:57'),
('tarjeta1', 'fotoresistencia', '0', '2021-11-09 08:04:58'),
('tarjeta1', 'led', '1', '2021-11-09 08:04:58'),
('tarjeta1', 'fotoresistencia', '0', '2021-11-09 08:04:59'),
('tarjeta1', 'led', '1', '2021-11-09 08:04:59'),
('tarjeta1', 'fotoresistencia', '0', '2021-11-09 08:05:00'),
('tarjeta1', 'led', '1', '2021-11-09 08:05:00'),
('tarjeta1', 'fotoresistencia', '0', '2021-11-09 08:05:01'),
('tarjeta1', 'led', '1', '2021-11-09 08:05:01'),
('tarjeta1', 'fotoresistencia', '0', '2021-11-09 08:05:03'),
('tarjeta1', 'led', '1', '2021-11-09 08:05:03'),
('tarjeta1', 'fotoresistencia', '0', '2021-11-09 08:05:04'),
('tarjeta1', 'led', '1', '2021-11-09 08:05:04'),
('tarjeta1', 'fotoresistencia', '0', '2021-11-09 08:05:05'),
('tarjeta1', 'led', '1', '2021-11-09 08:05:05'),
('tarjeta1', 'fotoresistencia', '0', '2021-11-09 08:05:06'),
('tarjeta1', 'led', '1', '2021-11-09 08:05:06'),
('tarjeta1', 'fotoresistencia', '0', '2021-11-09 08:05:07'),
('tarjeta1', 'led', '1', '2021-11-09 08:05:07'),
('tarjeta1', 'fotoresistencia', '0', '2021-11-09 08:05:08'),
('tarjeta1', 'led', '1', '2021-11-09 08:05:08'),
('tarjeta1', 'fotoresistencia', '0', '2021-11-09 08:05:09'),
('tarjeta1', 'led', '1', '2021-11-09 08:05:09'),
('tarjeta1', 'fotoresistencia', '0', '2021-11-09 08:05:10'),
('tarjeta1', 'led', '1', '2021-11-09 08:05:10'),
('tarjeta1', 'fotoresistencia', '0', '2021-11-09 08:05:12'),
('tarjeta1', 'led', '1', '2021-11-09 08:05:12'),
('tarjeta1', 'fotoresistencia', '0', '2021-11-09 08:05:13'),
('tarjeta1', 'led', '1', '2021-11-09 08:05:13'),
('tarjeta1', 'fotoresistencia', '0', '2021-11-09 08:05:14'),
('tarjeta1', 'led', '1', '2021-11-09 08:05:14'),
('tarjeta1', 'fotoresistencia', '0', '2021-11-09 08:05:15'),
('tarjeta1', 'led', '1', '2021-11-09 08:05:15'),
('tarjeta1', 'fotoresistencia', '0', '2021-11-09 08:05:16'),
('tarjeta1', 'led', '1', '2021-11-09 08:05:16'),
('tarjeta1', 'fotoresistencia', '0', '2021-11-09 08:05:17'),
('tarjeta1', 'led', '1', '2021-11-09 08:05:17'),
('tarjeta1', 'fotoresistencia', '0', '2021-11-09 08:05:18'),
('tarjeta1', 'led', '1', '2021-11-09 08:05:18'),
('tarjeta1', 'fotoresistencia', '0', '2021-11-09 08:05:19'),
('tarjeta1', 'led', '1', '2021-11-09 08:05:19'),
('tarjeta1', 'fotoresistencia', '0', '2021-11-09 08:05:20'),
('tarjeta1', 'led', '1', '2021-11-09 08:05:20'),
('tarjeta1', 'fotoresistencia', '0', '2021-11-09 08:05:21'),
('tarjeta1', 'led', '1', '2021-11-09 08:05:21'),
('tarjeta1', 'fotoresistencia', '0', '2021-11-09 08:05:22'),
('tarjeta1', 'led', '1', '2021-11-09 08:05:22'),
('tarjeta1', 'fotoresistencia', '0', '2021-11-09 08:05:23'),
('tarjeta1', 'led', '1', '2021-11-09 08:05:23'),
('tarjeta1', 'fotoresistencia', '0', '2021-11-09 08:05:24'),
('tarjeta1', 'led', '1', '2021-11-09 08:05:24'),
('tarjeta1', 'fotoresistencia', '0', '2021-11-09 08:05:25'),
('tarjeta1', 'led', '1', '2021-11-09 08:05:25'),
('tarjeta1', 'fotoresistencia', '0', '2021-11-09 08:05:26'),
('tarjeta1', 'led', '1', '2021-11-09 08:05:26'),
('tarjeta1', 'fotoresistencia', '0', '2021-11-09 08:05:28'),
('tarjeta1', 'led', '1', '2021-11-09 08:05:28'),
('tarjeta1', 'fotoresistencia', '0', '2021-11-09 08:05:29'),
('tarjeta1', 'led', '1', '2021-11-09 08:05:29'),
('tarjeta1', 'fotoresistencia', '0', '2021-11-09 08:05:30'),
('tarjeta1', 'led', '1', '2021-11-09 08:05:30'),
('tarjeta1', 'fotoresistencia', '10', '2021-11-09 08:05:38'),
('tarjeta1', 'led', '0', '2021-11-09 08:05:38'),
('tarjeta1', 'fotoresistencia', '10', '2021-11-09 08:05:39'),
('tarjeta1', 'led', '0', '2021-11-09 08:05:39'),
('tarjeta1', 'fotoresistencia', '10', '2021-11-09 08:05:40'),
('tarjeta1', 'led', '0', '2021-11-09 08:05:40'),
('tarjeta1', 'fotoresistencia', '10', '2021-11-09 08:05:41'),
('tarjeta1', 'led', '0', '2021-11-09 08:05:41'),
('tarjeta1', 'fotoresistencia', '10', '2021-11-09 08:05:42'),
('tarjeta1', 'led', '0', '2021-11-09 08:05:42'),
('tarjeta1', 'fotoresistencia', '10', '2021-11-09 08:05:43'),
('tarjeta1', 'led', '0', '2021-11-09 08:05:43'),
('tarjeta1', 'fotoresistencia', '10', '2021-11-09 08:05:44'),
('tarjeta1', 'led', '0', '2021-11-09 08:05:44'),
('tarjeta1', 'fotoresistencia', '10', '2021-11-09 08:05:45'),
('tarjeta1', 'led', '0', '2021-11-09 08:05:45'),
('tarjeta1', 'fotoresistencia', '10', '2021-11-09 08:05:46'),
('tarjeta1', 'led', '0', '2021-11-09 08:05:46'),
('tarjeta1', 'fotoresistencia', '10', '2021-11-09 08:05:47'),
('tarjeta1', 'led', '0', '2021-11-09 08:05:47'),
('tarjeta1', 'fotoresistencia', '10', '2021-11-09 08:05:48'),
('tarjeta1', 'led', '0', '2021-11-09 08:05:48'),
('tarjeta1', 'fotoresistencia', '10', '2021-11-09 08:05:49'),
('tarjeta1', 'led', '0', '2021-11-09 08:05:49'),
('tarjeta1', 'fotoresistencia', '10', '2021-11-09 08:05:50'),
('tarjeta1', 'led', '0', '2021-11-09 08:05:50'),
('tarjeta1', 'fotoresistencia', '10', '2021-11-09 08:05:51'),
('tarjeta1', 'led', '0', '2021-11-09 08:05:51'),
('tarjeta1', 'fotoresistencia', '10', '2021-11-09 08:05:52'),
('tarjeta1', 'led', '0', '2021-11-09 08:05:52'),
('tarjeta1', 'fotoresistencia', '10', '2021-11-09 08:05:53'),
('tarjeta1', 'led', '0', '2021-11-09 08:05:53'),
('tarjeta1', 'fotoresistencia', '10', '2021-11-09 08:05:54'),
('tarjeta1', 'led', '0', '2021-11-09 08:05:54'),
('tarjeta1', 'fotoresistencia', '10', '2021-11-09 08:05:56'),
('tarjeta1', 'led', '0', '2021-11-09 08:05:56'),
('tarjeta1', 'fotoresistencia', '10', '2021-11-09 08:05:58'),
('tarjeta1', 'led', '0', '2021-11-09 08:05:58'),
('tarjeta1', 'fotoresistencia', '10', '2021-11-09 08:05:59'),
('tarjeta1', 'led', '0', '2021-11-09 08:05:59'),
('tarjeta1', 'fotoresistencia', '10', '2021-11-09 08:06:00'),
('tarjeta1', 'led', '0', '2021-11-09 08:06:00'),
('tarjeta1', 'fotoresistencia', '10', '2021-11-09 08:06:01'),
('tarjeta1', 'led', '0', '2021-11-09 08:06:01'),
('tarjeta1', 'fotoresistencia', '10', '2021-11-09 08:06:02'),
('tarjeta1', 'led', '0', '2021-11-09 08:06:02'),
('tarjeta1', 'fotoresistencia', '10', '2021-11-09 08:06:03'),
('tarjeta1', 'led', '0', '2021-11-09 08:06:03'),
('tarjeta1', 'fotoresistencia', '10', '2021-11-09 08:06:04'),
('tarjeta1', 'led', '0', '2021-11-09 08:06:04'),
('tarjeta1', 'fotoresistencia', '10', '2021-11-09 08:06:05'),
('tarjeta1', 'led', '0', '2021-11-09 08:06:05'),
('tarjeta1', 'fotoresistencia', '10', '2021-11-09 08:06:06'),
('tarjeta1', 'led', '0', '2021-11-09 08:06:06'),
('tarjeta1', 'fotoresistencia', '10', '2021-11-09 08:06:07'),
('tarjeta1', 'led', '0', '2021-11-09 08:06:07'),
('tarjeta1', 'fotoresistencia', '10', '2021-11-09 08:06:08'),
('tarjeta1', 'led', '0', '2021-11-09 08:06:08'),
('tarjeta1', 'fotoresistencia', '10', '2021-11-09 08:06:09'),
('tarjeta1', 'led', '0', '2021-11-09 08:06:09'),
('tarjeta1', 'fotoresistencia', '10', '2021-11-09 08:06:10'),
('tarjeta1', 'led', '0', '2021-11-09 08:06:10'),
('tarjeta1', 'fotoresistencia', '10', '2021-11-09 08:06:11'),
('tarjeta1', 'led', '0', '2021-11-09 08:06:11'),
('tarjeta1', 'fotoresistencia', '10', '2021-11-09 08:06:12'),
('tarjeta1', 'led', '0', '2021-11-09 08:06:12'),
('tarjeta1', 'fotoresistencia', '10', '2021-11-09 08:06:13'),
('tarjeta1', 'led', '0', '2021-11-09 08:06:13'),
('tarjeta1', 'fotoresistencia', '10', '2021-11-09 08:06:14'),
('tarjeta1', 'led', '0', '2021-11-09 08:06:14'),
('tarjeta1', 'fotoresistencia', '10', '2021-11-09 08:06:15'),
('tarjeta1', 'led', '0', '2021-11-09 08:06:15'),
('tarjeta1', 'fotoresistencia', '10', '2021-11-09 08:06:16'),
('tarjeta1', 'led', '0', '2021-11-09 08:06:16'),
('tarjeta1', 'fotoresistencia', '10', '2021-11-09 08:06:17'),
('tarjeta1', 'led', '0', '2021-11-09 08:06:17');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `estadoDispositivo`
--
ALTER TABLE `estadoDispositivo`
  ADD PRIMARY KEY (`idDevice`);

--
-- Indices de la tabla `historial`
--
ALTER TABLE `historial`
  ADD KEY `idDevice` (`idDevice`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `historial`
--
ALTER TABLE `historial`
  ADD CONSTRAINT `historial_ibfk_1` FOREIGN KEY (`idDevice`) REFERENCES `estadoDispositivo` (`idDevice`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
