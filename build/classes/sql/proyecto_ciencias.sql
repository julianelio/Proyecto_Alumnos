-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-07-2020 a las 01:20:13
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto_ciencias`
--
CREATE DATABASE IF NOT EXISTS `proyecto_ciencias` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `proyecto_ciencias`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `asistencia` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`nombre`, `apellido`, `mail`, `asistencia`) VALUES
('Veronica', 'Sempertegui', 'veronica@hotmail.es', 'presente'),
('Jorge', 'Sandoval', 'jorgesandoval@hotmail.es', 'presente'),
('Facundo', 'Jara', 'facu115@outlook.es', 'ausente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscripciones`
--

CREATE TABLE `inscripciones` (
  `alumnos` varchar(255) NOT NULL,
  `materias` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `nombre` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `horario` varchar(255) NOT NULL,
  `docente` varchar(255) NOT NULL,
  `ciclo` varchar(255) NOT NULL,
  `nivel` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`nombre`, `descripcion`, `horario`, `docente`, `ciclo`, `nivel`) VALUES
('Matematica', 'Veremos ecuaciones polinomios numeros naturales', 'Lunes y viernes  20 hs', 'Marta griguol', 'cuatrimestral', 6),
('Literaura', 'leeremos el Martin Fierro y analisis', 'martes y jueves 16 hs', 'Luis Aragones', 'Anual', 8),
('Programacion', 'Bases de datos y lenguaje de programacion', 'viernes y sabados 9 hs', 'Felipe Scolari', 'Anual', 9);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
