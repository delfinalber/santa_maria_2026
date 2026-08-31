-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-08-2026 a las 22:06:01
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pagina_santamaria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formulario_contacto`
--

CREATE TABLE `formulario_contacto` (
  `id_formulario` int(11) NOT NULL,
  `correo_formulario` varchar(150) NOT NULL,
  `nombre_formulario` varchar(100) NOT NULL,
  `telefono_formulario` bigint(13) NOT NULL,
  `mensaje_formulario` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `formulario_contacto`
--

INSERT INTO `formulario_contacto` (`id_formulario`, `correo_formulario`, `nombre_formulario`, `telefono_formulario`, `mensaje_formulario`) VALUES
(1, '', 'Ronal Josue Fernandez', 3228636561, 'Hola Ronal estamos programando en Php.'),
(2, '', 'Alan Santiago Hurtado Losada', 3123391006, 'Hola Alan por que esta aburrido.'),
(3, '', 'DANNA LISETH PULIDO ZABALETA', 3142089287, 'Hola Danna, espero aprenda a programar, diseño una pagina web o aplicativo web.'),
(4, 'dianaaldana2409@gmail.com', 'DIANA ALDANA CASAS', 3114797276, 'Hola Diana como está.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inicio`
--

CREATE TABLE `inicio` (
  `id_inicio` int(11) NOT NULL,
  `banner_inicio` varchar(300) NOT NULL,
  `carru_1_inicio` varchar(300) NOT NULL,
  `carru_2_inicio` varchar(300) NOT NULL,
  `carru_3_inicio` varchar(300) NOT NULL,
  `url_video_inicio` varchar(500) NOT NULL,
  `titulo_acordeon_1` varchar(100) NOT NULL,
  `texto_acordeon_1` varchar(800) NOT NULL,
  `titulo_acordeon_2` varchar(100) NOT NULL,
  `texto_acordeon_2` varchar(800) NOT NULL,
  `titulo_acordeon_3` varchar(100) NOT NULL,
  `texto_acordeon_3` varchar(800) NOT NULL,
  `titulo_colapsar_1` varchar(100) NOT NULL,
  `texto_colapsar_1` varchar(300) NOT NULL,
  `titulo_colapsar_2` varchar(100) NOT NULL,
  `texto_colapsar_2` varchar(300) NOT NULL,
  `titulo_colapsar3` varchar(100) NOT NULL,
  `texto_colapsar_3` varchar(300) NOT NULL,
  `numero_whatsapp` bigint(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `formulario_contacto`
--
ALTER TABLE `formulario_contacto`
  ADD PRIMARY KEY (`id_formulario`);

--
-- Indices de la tabla `inicio`
--
ALTER TABLE `inicio`
  ADD PRIMARY KEY (`id_inicio`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `formulario_contacto`
--
ALTER TABLE `formulario_contacto`
  MODIFY `id_formulario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `inicio`
--
ALTER TABLE `inicio`
  MODIFY `id_inicio` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
