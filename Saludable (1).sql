-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 07-12-2016 a las 04:15:17
-- Versión del servidor: 10.1.13-MariaDB
-- Versión de PHP: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `Saludable`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `authorities`
--

CREATE TABLE `authorities` (
  `username` varchar(50) NOT NULL,
  `authority` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `authorities`
--

INSERT INTO `authorities` (`username`, `authority`) VALUES
('flor', 'ROLE_ADMIN'),
('pepe', 'ROLE_USER'),
('cosme', 'ROLE_COSME_FULANITO'),
('susy', 'ROLE_USER'),
('lolo', 'ROLE_ADMIN');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ControlPaciente`
--

CREATE TABLE `ControlPaciente` (
  `idControl` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `tipoComida` varchar(60) NOT NULL,
  `comidaPrincipal` varchar(100) NOT NULL,
  `comidaSecundaria` varchar(100) DEFAULT NULL,
  `bebida` varchar(100) NOT NULL,
  `ingerioPostre` tinyint(1) DEFAULT NULL,
  `postre` varchar(100) DEFAULT NULL,
  `seTento` tinyint(1) NOT NULL,
  `alimentoDeseado` varchar(100) DEFAULT NULL,
  `quedoHambriento` tinyint(1) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ControlPaciente`
--

INSERT INTO `ControlPaciente` (`idControl`, `username`, `tipoComida`, `comidaPrincipal`, `comidaSecundaria`, `bebida`, `ingerioPostre`, `postre`, `seTento`, `alimentoDeseado`, `quedoHambriento`, `fecha`) VALUES
(1, '3', 'desayuno', 'fff', 'ffff', 'wewe', 0, 'wwe', 0, 'wewe', 0, '2016-12-04'),
(2, '3', 'desayuno', 'eeee', 'eee', 'eee', 0, 'eee', 0, 'eee', 0, '2016-12-04'),
(3, '3', 'desayuno', 'galletitas', 'queso', 'cafe', 0, NULL, 0, '', 1, '2016-12-04'),
(4, '3', 'desayuno', 'sss', 'sss', 'sss', 0, NULL, 0, '', 0, '2016-12-05'),
(5, '3', 'desayuno', 'mlkmlm', 'dddd', 'ddd', 0, NULL, 0, '', 0, '2016-12-06'),
(6, 'susy', 'desayuno', 'mlkmlm', 'dddd', 'ddd', 0, NULL, 0, '', 0, '2016-12-06'),
(7, 'susy', 'merienda', 'dksnfsdfds', 'sdsd', 'sddsd', 0, NULL, 1, 'dsdsdd', 0, '2016-12-06'),
(8, 'susy', 'merienda', 'dksnfsdfds', 'sdsd', 'sddsd', 0, NULL, 1, 'dsdsdd', 0, '2016-12-06'),
(9, 'susy', 'merienda', 'dksnfsdfds', 'sdsd', 'sddsd', 0, NULL, 1, 'dsdsdd', 0, '2016-12-06'),
(10, 'susy', 'merienda', 'dksnfsdfds', 'sdsd', 'sddsd', 0, NULL, 0, 'dsdsdd', 0, '2016-12-06'),
(11, 'susy', 'merienda', 'dksnfsdfds', 'sdsd', 'sddsd', 0, NULL, 0, 'dsdsdd', 0, '2016-12-06'),
(12, 'susy', 'merienda', 'knkn', 'ooo', 'ijln', 0, NULL, 0, 'dsdsdd', 0, '2016-12-06'),
(13, 'susy', 'merienda', 'knkn', 'ooo', 'ijln', 0, NULL, 0, 'dsdsdd', 0, '2016-12-06'),
(14, 'susy', 'desayuno', '', '', '', 0, NULL, 0, '', 0, '2016-12-06'),
(15, 'susy', 'desayuno', '', '', '', 0, NULL, 0, '', 0, '2016-12-06'),
(16, 'susy', 'desayuno', 'ssss', '', '', 0, NULL, 0, '', 0, '2016-12-06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Paciente`
--

CREATE TABLE `Paciente` (
  `id` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `apellido` varchar(40) NOT NULL,
  `DNI` int(11) NOT NULL,
  `sexo` varchar(10) NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `localidad` varchar(40) NOT NULL,
  `tipoTratamiento` varchar(20) NOT NULL,
  `username` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Paciente`
--

INSERT INTO `Paciente` (`id`, `nombre`, `apellido`, `DNI`, `sexo`, `fechaNacimiento`, `localidad`, `tipoTratamiento`, `username`) VALUES
(1, 'Pepe', 'Igles', 32623435, 'masculino', '2016-08-10', 'santos luegares', 'anorexia', 'lolo'),
(2, 'Susana', 'Bevi', 12564767, 'femenino', '1990-05-08', 'avellaneda', 'bulimina', 'susy');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `enabled` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`username`, `password`, `enabled`) VALUES
('flor', 'd38e99d9790733c939e88698afbc30b6', b'1'),
('pepe', 'e10adc3949ba59abbe56e057f20f883e', b'1'),
('cosme', 'c3bbe081f9c89f7d43a4cdb8cf9868d6', b'1'),
('susy', 'ae2518f0370729389043d0874b2f229f', b'1'),
('lolo', 'd6581d542c7eaf801284f084478b5fcc', b'1'),
('toto', 'f71dbe52628a3f83a77ab494817525c6', b'1');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ControlPaciente`
--
ALTER TABLE `ControlPaciente`
  ADD PRIMARY KEY (`idControl`);

--
-- Indices de la tabla `Paciente`
--
ALTER TABLE `Paciente`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `DNI` (`DNI`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ControlPaciente`
--
ALTER TABLE `ControlPaciente`
  MODIFY `idControl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT de la tabla `Paciente`
--
ALTER TABLE `Paciente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
