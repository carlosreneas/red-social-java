-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-04-2019 a las 17:00:02
-- Versión del servidor: 10.1.13-MariaDB
-- Versión de PHP: 5.5.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `shadiagram`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `amistad`
--

CREATE TABLE `amistad` (
  `usuario` int(11) DEFAULT NULL,
  `amistad` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `fechasolicitud` date DEFAULT NULL,
  `estado` int(11) DEFAULT NULL COMMENT 'Almacena el estado de la solicitud, 0 si fue realizada, 1 si se aprobo y 2 si fue rechazada'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Almacena la relación de amistad entre los usuarios';

--
-- Volcado de datos para la tabla `amistad`
--

INSERT INTO `amistad` (`usuario`, `amistad`, `id`, `fechasolicitud`, `estado`) VALUES
(4, 16, 11, NULL, 1),
(4, 17, 12, NULL, 1),
(4, 18, 13, NULL, 1),
(4, 19, 14, NULL, 1),
(4, 20, 15, NULL, 1),
(4, 21, 16, NULL, 1),
(4, 22, 17, NULL, 1),
(4, 23, 18, NULL, 1),
(4, 24, 19, NULL, 1),
(4, 25, 20, NULL, 1),
(4, 26, 21, NULL, 1),
(4, 27, 22, NULL, 1),
(4, 28, 23, NULL, 1),
(4, 29, 24, NULL, 1),
(4, 30, 25, NULL, 1),
(4, 31, 26, NULL, 1),
(5, 4, 27, NULL, 1),
(18, 4, 28, NULL, 1),
(31, 4, 29, NULL, 1),
(22, 4, 30, NULL, 1),
(26, 4, 31, NULL, 1),
(25, 4, 32, NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentario`
--

CREATE TABLE `comentario` (
  `id` int(11) NOT NULL,
  `publicacion` int(11) DEFAULT NULL COMMENT 'Almacena el identificador de la publicacipon del usuario',
  `usuario` int(11) DEFAULT NULL COMMENT 'Almacena el identificador del usuario que realizó la publicación',
  `fechapublicacion` date DEFAULT NULL COMMENT 'Almacena la fecha de la publicación',
  `estado` int(11) DEFAULT NULL COMMENT 'Almacena el estado de la publicación, que puede ser desde activo, bloqueado o demas'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Almacena la información de los comentarios realizados por los usuarios sobre las distintas publicaciones a la base de datos';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `etiqueta`
--

CREATE TABLE `etiqueta` (
  `id` int(11) NOT NULL,
  `usuario` int(11) DEFAULT NULL COMMENT 'Almacena el identificador del usuario que etiqueto',
  `publicacion` int(11) DEFAULT NULL COMMENT 'Almacena el identificador de la publicacion donde fue etiquetado, se asume que solo puede etiquetar el usuario dueño de la publicacion',
  `fecha` date DEFAULT NULL COMMENT 'Almacena la fecha de la etiqueta',
  `mensaje` text COMMENT 'Almacena el mensaje de la etiqueta'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Almacena la información de las etiquetas de los usuarios sobre las publicaciones';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensaje`
--

CREATE TABLE `mensaje` (
  `id` int(11) NOT NULL,
  `fechamensaje` date DEFAULT NULL,
  `envia` int(11) NOT NULL COMMENT 'Corresponde al identificador del usuario que envia',
  `recibe` int(11) NOT NULL COMMENT 'Corresponde al identificador del usuario que recibe',
  `mensaje` text COMMENT 'Corresponde al mensaje enviado'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Almacena los mensaje privados que son enviados a los usuarios';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicacion`
--

CREATE TABLE `publicacion` (
  `id` int(11) NOT NULL,
  `descripcion` text,
  `usuario` int(11) DEFAULT NULL COMMENT 'Almacena el usuario que realiza la publicación',
  `fechapublicacion` date DEFAULT NULL COMMENT 'Almacena la fecha de publicación del usuario',
  `acceso` int(11) DEFAULT NULL COMMENT 'Define el tipo de acceso de la publicación, que puede ser privado, publico o solo para amigos.'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Almacena la información de las publicaciones del usuario';

--
-- Volcado de datos para la tabla `publicacion`
--

INSERT INTO `publicacion` (`id`, `descripcion`, `usuario`, `fechapublicacion`, `acceso`) VALUES
(1, 'Hola', 5, '2019-04-12', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL COMMENT 'Almacena el identificador interno del usuario, es un codigo interno del sistema-',
  `usuario` varchar(50) NOT NULL COMMENT 'Almacena el nombre identificador del usuario',
  `email` varchar(100) NOT NULL COMMENT 'Almacena el correo electrónico del usuario. El email debe ser unico.',
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `pass` varchar(100) NOT NULL,
  `fecharegistro` date DEFAULT NULL COMMENT 'Almacena la fecha de registro del usuario.  Esta fecha es generada por el sistema de forma automatica',
  `fechanacimiento` date DEFAULT NULL COMMENT 'Almacena la fecha de nacimiento del usuario',
  `pais` int(11) DEFAULT NULL COMMENT 'Registra el país de procedencia del usuario'
) COMMENT='El usuario debe ser unico para todos los participantes en la red';

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `usuario`, `email`, `nombre`, `apellido`, `pass`, `fecharegistro`, `fechanacimiento`, `pais`) VALUES
(4, 'crangarita', 'crangarita@gmail.com', 'Carlos René', 'Angarita Sanguino', '1234', NULL, NULL, 0),
(5, 'ygomez', 'claudiayamilegomez@gmail.com', 'Claudia Yamile', 'Gomez Llanez', '1234', NULL, NULL, 0),
(16, '1151125', 'dairofranciscorp@ufps.edu.co', 'Dairo Francisco', 'Ramirez Preciado', '1234', NULL, NULL, 0),
(17, '1151136', 'brayanalexisrm@ufps.edu.co', 'Brayan Alexis', 'Rincon Mendoza', '1234', NULL, NULL, 0),
(18, '1151170', 'danapaulinacv@ufps.edu.co', 'Dana Paulina', 'Chaparro Vera', '1234', NULL, NULL, 0),
(19, '1151177', 'lizethre@ufps.edu.co', 'Lizeth', 'Rios Epalza', '1234', NULL, NULL, 0),
(20, '1151270', 'gersonfernandogm@ufps.edu.co', 'Gerson Fernando', 'Gomez Mojica', '1234', NULL, NULL, 0),
(21, '1151281', 'cristianarbeybg@ufps.edu.co', 'Cristian Arbey', 'Bustos Galvis', '1234', NULL, NULL, 0),
(22, '1151290', 'javierbrandongm@ufps.edu.co', 'Javier Brandon', 'Garcia Maldonado', '1234', NULL, NULL, 0),
(23, '1151387', 'edysonfabianlm@ufps.edu.co', 'Edyson Fabian', 'Leal Marin', '1234', NULL, NULL, 0),
(24, '1151468', 'adrianaelizabethqr@ufps.edu.co', 'Adriana Elizabeth', 'Quijano Rodriguez', '1234', NULL, NULL, 0),
(25, '1151480', 'shadiashirleyoc@ufps.edu.co', 'Shadia Shirley', 'Ochoa Capacho', '1234', NULL, NULL, 0),
(26, '1151487', 'juanandresfl@ufps.edu.co', 'Juan Andres', 'Fuentes Laguado', '1234', NULL, NULL, 0),
(27, '1151493', 'camiloandresoa@ufps.edu.co', 'Camilo Andres', 'Obando Abril', '1234', NULL, NULL, 0),
(28, '1151507', 'yefersondanielar@ufps.edu.co', 'Yeferson Daniel', 'Ascanio Rodriguez', '1234', NULL, NULL, 0),
(29, '1151547', 'jairoandresrco@ufps.edu.co', 'Jairo Andres', 'Rodriguez Corona', '1234', NULL, NULL, 0),
(30, '1151555', 'henrygeovannyom@ufps.edu.co', 'Henry Geovanny', 'Ortega Mantilla', '1234', NULL, NULL, 0),
(31, '1151725', 'leynerjoseoa@ufps.edu.co', 'Leyner Jose', 'Ortega Arias', '1234', NULL, NULL, 0),
(32, '1151747', 'sergiostivesbb@ufps.edu.co', 'Sergio Stives', 'Barrios Buitrago', '1234', NULL, NULL, 0),
(33, '1151097', 'camiloalexanderjm@ufps.edu.co', 'Camilo Alexander', 'Jauregui Muñoz', '1234', NULL, NULL, 0),
(34, '1151196', 'andersonfabianrb@ufps.edu.co', 'Anderson Fabian', 'Rodriguez Bonilla', '1234', NULL, NULL, 0),
(35, '1151216', 'joserafaelcp@ufps.edu.co', 'Jose Rafael', 'Cano Pabon', '1234', NULL, NULL, 0),
(36, '1151222', 'dumaryekselbm@ufps.edu.co', 'Dumar Yeksel', 'Basto Moreno', '1234', NULL, NULL, 0),
(37, '1151292', 'leonelalbertocc@ufps.edu.co', 'Leonel Alberto', 'Carrillo Contreras', '1234', NULL, NULL, 0),
(38, '1151295', 'luisadriangv@ufps.edu.co', 'Luis Adrian', 'Garcia Velasquez', '1234', NULL, NULL, 0),
(39, '1151308', 'juandavidsm@ufps.edu.co', 'Juan David', 'Sanchez Mancilla', '1234', NULL, NULL, 0),
(40, '1151331', 'victormanuelbm@ufps.edu.co', 'Victor Manuel', 'Blanco Mancera', '1234', NULL, NULL, 0),
(41, '1151358', 'dairojavierrg@ufps.edu.co', 'Dairo Javier', 'Rodriguez Gomez', '1234', NULL, NULL, 0),
(42, '1151370', 'brayanstivenpv@ufps.edu.co', 'Brayan Stiven', 'Palomino Vasquez', '1234', NULL, NULL, 0),
(43, '1151383', 'carlosjosepg@ufps.edu.co', 'Carlos Jose', 'Pablos Gutierrez', '1234', NULL, NULL, 0),
(44, '1151406', 'mairaalejandrasn@ufps.edu.co', 'Maira Alejandra', 'Sosa Novoa', '1234', NULL, NULL, 0),
(45, '1151447', 'brayamstevencf@ufps.edu.co', 'Brayam Steven', 'Caicedo Florez', '1234', NULL, NULL, 0),
(46, '1151483', 'jorgeandresmv@ufps.edu.co', 'Jorge Andres', 'Mojica Villamizar', '1234', NULL, NULL, 0),
(47, '1151505', 'andrescamiloye@ufps.edu.co', 'Andres Camilo', 'Yañez Escobar', '1234', NULL, NULL, 0),
(48, '1151510', 'diegoalexandernu@ufps.edu.co', 'Diego Alexander', 'Navas Urbina', '1234', NULL, NULL, 0),
(49, '1151528', 'andresdavidac@ufps.edu.co', 'Andres David', 'Ariza Caceres', '1234', NULL, NULL, 0),
(50, '1151704', 'omarrm@ufps.edu.co', 'Omar', 'Ramon Montes', '1234', NULL, NULL, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `amistad`
--
ALTER TABLE `amistad`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_amistad` (`usuario`,`amistad`,`estado`),
  ADD KEY `FKCB3A5981B5E0DA61` (`amistad`),
  ADD KEY `FKCB3A5981E2BB740E` (`usuario`);

--
-- Indices de la tabla `comentario`
--
ALTER TABLE `comentario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK9E0DE7E1E2BB740E` (`usuario`),
  ADD KEY `FK9E0DE7E18E37346C` (`publicacion`);

--
-- Indices de la tabla `etiqueta`
--
ALTER TABLE `etiqueta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKADC57F94E2BB740E` (`usuario`),
  ADD KEY `FKADC57F948E37346C` (`publicacion`);

--
-- Indices de la tabla `mensaje`
--
ALTER TABLE `mensaje`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK38A48ADFF0698FA5` (`envia`),
  ADD KEY `FK38A48ADFB2ECD4BC` (`recibe`);

--
-- Indices de la tabla `publicacion`
--
ALTER TABLE `publicacion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKBFB3E7DDE2BB740E` (`usuario`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_usuario` (`usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `amistad`
--
ALTER TABLE `amistad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT de la tabla `comentario`
--
ALTER TABLE `comentario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `etiqueta`
--
ALTER TABLE `etiqueta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `mensaje`
--
ALTER TABLE `mensaje`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `publicacion`
--
ALTER TABLE `publicacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Almacena el identificador interno del usuario, es un codigo interno del sistema-';
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `amistad`
--
ALTER TABLE `amistad`
  ADD CONSTRAINT `FKCB3A5981B5E0DA61` FOREIGN KEY (`amistad`) REFERENCES `usuario` (`id`),
  ADD CONSTRAINT `FKCB3A5981E2BB740E` FOREIGN KEY (`usuario`) REFERENCES `usuario` (`id`),
  ADD CONSTRAINT `FK_amistad_usuario` FOREIGN KEY (`usuario`) REFERENCES `usuario` (`id`),
  ADD CONSTRAINT `FK_amistad_usuario_02` FOREIGN KEY (`amistad`) REFERENCES `usuario` (`id`);

--
-- Filtros para la tabla `comentario`
--
ALTER TABLE `comentario`
  ADD CONSTRAINT `FK9E0DE7E18E37346C` FOREIGN KEY (`publicacion`) REFERENCES `publicacion` (`id`),
  ADD CONSTRAINT `FK9E0DE7E1E2BB740E` FOREIGN KEY (`usuario`) REFERENCES `usuario` (`id`),
  ADD CONSTRAINT `FK_comentario_publicacion` FOREIGN KEY (`publicacion`) REFERENCES `publicacion` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_comentario_usuario` FOREIGN KEY (`usuario`) REFERENCES `usuario` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `etiqueta`
--
ALTER TABLE `etiqueta`
  ADD CONSTRAINT `FKADC57F948E37346C` FOREIGN KEY (`publicacion`) REFERENCES `publicacion` (`id`),
  ADD CONSTRAINT `FKADC57F94E2BB740E` FOREIGN KEY (`usuario`) REFERENCES `usuario` (`id`),
  ADD CONSTRAINT `FK_etiqueta_publicacion` FOREIGN KEY (`publicacion`) REFERENCES `publicacion` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_etiqueta_usuario` FOREIGN KEY (`usuario`) REFERENCES `usuario` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `mensaje`
--
ALTER TABLE `mensaje`
  ADD CONSTRAINT `FK38A48ADFB2ECD4BC` FOREIGN KEY (`recibe`) REFERENCES `usuario` (`id`),
  ADD CONSTRAINT `FK38A48ADFF0698FA5` FOREIGN KEY (`envia`) REFERENCES `usuario` (`id`),
  ADD CONSTRAINT `FK_mensaje_usuario` FOREIGN KEY (`envia`) REFERENCES `usuario` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_mensaje_usuario_02` FOREIGN KEY (`recibe`) REFERENCES `usuario` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `publicacion`
--
ALTER TABLE `publicacion`
  ADD CONSTRAINT `FKBFB3E7DDE2BB740E` FOREIGN KEY (`usuario`) REFERENCES `usuario` (`id`),
  ADD CONSTRAINT `FK_publicacion_usuario` FOREIGN KEY (`usuario`) REFERENCES `usuario` (`id`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
