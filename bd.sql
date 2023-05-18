-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-05-2023 a las 05:08:15
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `portafolio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conocimientos`
--

CREATE TABLE `conocimientos` (
  `id_conocimiento` int(11) NOT NULL,
  `id_datos_personales` int(11) DEFAULT NULL,
  `software` varchar(100) DEFAULT NULL,
  `nivel` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `conocimientos`
--

INSERT INTO `conocimientos` (`id_conocimiento`, `id_datos_personales`, `software`, `nivel`) VALUES
(1, 1, 'Excel', 'AVANZADO'),
(2, 1, 'Word', 'AVANZADO'),
(3, 1, 'Photoshop', 'AVANZADO'),
(4, 1, 'Netbeans', 'INTERMEDIO'),
(5, 1, 'Genexus', 'INTERMEDIO'),
(6, 1, 'MySQL', 'INTERMEDIO'),
(7, 1, 'Java', 'AVANZADO'),
(8, 1, 'PHP', 'INTERMEDIO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datospersonales`
--

CREATE TABLE `datospersonales` (
  `id_datos_personales` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `sitio_web` varchar(200) DEFAULT NULL,
  `correo_electronico` varchar(100) DEFAULT NULL,
  `foto_perfil` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `datospersonales`
--

INSERT INTO `datospersonales` (`id_datos_personales`, `nombre`, `telefono`, `direccion`, `sitio_web`, `correo_electronico`, `foto_perfil`) VALUES
(1, 'Antonio Cesar Barrios Leguizamon', '0982580075 / 0961399', 'Barrio Herrera - Asunción', 'linkedin.com/in/acbleguizamon/', 'acbleguizamon@gmail.com', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `educacion`
--

CREATE TABLE `educacion` (
  `id_educacion` int(11) NOT NULL,
  `id_datos_personales` int(11) DEFAULT NULL,
  `institucion` varchar(100) DEFAULT NULL,
  `nivel_educativo` varchar(50) DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `educacion`
--

INSERT INTO `educacion` (`id_educacion`, `id_datos_personales`, `institucion`, `nivel_educativo`, `fecha_inicio`, `fecha_fin`) VALUES
(1, 1, 'Escuela 707', 'Preescolar - 2º Grado', NULL, NULL),
(2, 1, 'Mi Pastorcito', '3º Grado - 5º Grado', NULL, NULL),
(3, 1, 'Colegio J.C.C', '6º Grado - 9º Grado', NULL, NULL),
(4, 1, 'Dr. P.P.P', '1º Año - 3º Año', NULL, NULL),
(5, 1, 'U.T.I.C', 'Actualmente cursando el último año de la carrera A', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `experiencialaboral`
--

CREATE TABLE `experiencialaboral` (
  `id_experiencia` int(11) NOT NULL,
  `id_datos_personales` int(11) DEFAULT NULL,
  `empresa` varchar(100) DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  `descripcion` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `experiencialaboral`
--

INSERT INTO `experiencialaboral` (`id_experiencia`, `id_datos_personales`, `empresa`, `fecha_inicio`, `fecha_fin`, `descripcion`) VALUES
(1, 1, 'LABORATORIO NOELIA', '2010-01-02', '2014-12-29', 'Durante mi experiencia laboral en LABORATORIO NOELIA, desempeñé diversas funciones en diferentes áreas. Una de las funciones destacadas fue mi capacidad de atención al cliente. Me sentía muy cómodo trabajando en equipo y ayudando a las personas a resolver sus dudas e inquietudes.\r\n\r\nComo Recepcionista en un laboratorio médico, tuve la oportunidad de interactuar con los pacientes y recibir sus muestras de manera cordial y eficiente. Fui responsable de llevar un registro detallado de cada muestra recibida y asegurarme de que fueran enviadas al laboratorio de manera correcta y en el tiempo adecuado.\r\n\r\nAdemás, también me encargaba de cargar los resultados clínicos en el sistema y asegurarme de que estuvieran disponibles para los pacientes y médicos en el momento adecuado. Fui muy cuidadoso en la verificación de cada dato y en la resolución de cualquier error que pudiera aparecer.\r\n\r\nOtra de las funciones que desempeñé en este trabajo fue la de cajero, donde era responsable de procesar los pagos de los pacientes y mantener un control de caja diario. Me sentí muy cómodo en esta posición, ya que siempre me ha gustado trabajar con números y asegurarme de que todo cuadre al final del día.'),
(2, 1, 'COOPERATIVA 24 DE OCTUBRE', '2015-01-02', '2022-11-29', 'Durante mi tiempo en la COOPERATIVA 24 DE OCTUBRE, tuve la oportunidad de desempeñar diversas funciones y roles en el equipo. Como cajero, manejé el efectivo y las transacciones financieras de los clientes de manera precisa y confiable. También asumí el papel de Gerente de Agencia en las sucursales de Itauguá y Capiatá, donde lideré y supervisé el equipo de trabajo, asegurándome de que todos los miembros estuvieran motivados y enfocados en alcanzar nuestros objetivos de negocio.\r\n\r\nAdemás, también tuve la responsabilidad de proporcionar soporte técnico a la organización, asegurándome de que todos los sistemas y herramientas estuvieran en funcionamiento para que los empleados pudieran hacer su trabajo de manera eficiente y efectiva. Como Asistente de Gerencia, trabajé de cerca con la dirección y otros líderes para garantizar que los objetivos de la organización se alcanzaran de manera oportuna.\r\n\r\nDurante mi experiencia en la COOPERATIVA 24 DE OCTUBRE, también tuve la oportunidad de desarrollar habilidades de comunicación efectiva y resolución de problemas gracias a mi trabajo en el área de Atención al Cliente y en el Área de Recuperación de Crédito. Además, fui responsable de mantener una presencia en línea sólida y positiva para la cooperativa como Community Manager, interactuando con los miembros y fomentando una comunidad fuerte.'),
(3, 1, 'BERKEMEYER', '2022-12-01', NULL, 'Durante mi experiencia en BERKEMEYER, he tenido la oportunidad de trabajar en mi primer proyecto de desarrollo de software de aplicación en ambiente web. Este proyecto es un sistema de registro de sociedades, que utiliza tecnologías como Vue3 y Quasar.\r\n\r\nComo parte de mi trabajo, he sido responsable de realizar el relevamiento del proyecto, lo que implicó analizar las necesidades de los usuarios y definir los requerimientos del sistema. Además, también me he encargado del diseño y desarrollo de la interfaz de usuario, utilizando las herramientas de Vue3 y Quasar. He trabajado en estrecha colaboración con el equipo de desarrollo y otros profesionales para garantizar el éxito del proyecto.\r\n\r\nDurante mi tiempo en BERKEMEYER, he adquirido habilidades en el desarrollo de aplicaciones web y he obtenido experiencia en el uso de tecnologías modernas para la creación de interfaces atractivas y funcionales. Estoy emocionado de seguir creciendo en mi carrera y enfrentar nuevos desafíos en el campo del desarrollo de software.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habilidades`
--

CREATE TABLE `habilidades` (
  `id_habilidad` int(11) NOT NULL,
  `id_datos_personales` int(11) DEFAULT NULL,
  `habilidad` varchar(100) DEFAULT NULL,
  `descripcion` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `habilidades`
--

INSERT INTO `habilidades` (`id_habilidad`, `id_datos_personales`, `habilidad`, `descripcion`) VALUES
(1, 1, 'Netbeans', 'Tengo experiencia en la creación de interfaces gráficas y la configuración de conexiones a bases de datos para el desarrollo de aplicaciones en ambiente Java.'),
(2, 1, 'MySQL', 'He trabajado en la creación de bases de datos, tablas y en la modificación de estructuras existentes para mejorar el rendimiento y la eficiencia de los sistemas.'),
(3, 1, 'Genexus', 'Conozco el proceso completo de desarrollo con Genexus en su versión 17, desde la creación de transacciones hasta la conexión con bases de datos y la programación de dominios y programas. También he trabajado con las K2BTools para aplicar patrones de diseño y buenas prácticas en el desarrollo de aplicaciones.'),
(4, 1, 'Photoshop', 'Tengo habilidades para la creación de flyers y otros materiales de diseño gráfico para la promoción y publicidad de proyectos.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectospersonales`
--

CREATE TABLE `proyectospersonales` (
  `id_proyecto` int(11) NOT NULL,
  `id_datos_personales` int(11) DEFAULT NULL,
  `nombre_proyecto` varchar(100) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `tecnologias` varchar(200) DEFAULT NULL,
  `enlace` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proyectospersonales`
--

INSERT INTO `proyectospersonales` (`id_proyecto`, `id_datos_personales`, `nombre_proyecto`, `descripcion`, `tecnologias`, `enlace`) VALUES
(1, 1, 'Genexus Sistema Abogacía', 'Genexus Sistema Abogacía es un proyecto personal desarrollado por mí en su totalidad, utilizando Genexus versión 17 para su creación en ambiente web. En este sistema se aplicaron patterns K2bTools para la realización del abm y se utilizaron procedimientos de control, desarrollados en JAVA. Además, se alojó en AWS para garantizar un alto nivel de seguridad en el ingreso del cliente, aplicando acceso solo por IPS autorizadas. Este sistema está enfocado en brindar soluciones para el registro y gestión de sociedades, ofreciendo una interfaz amigable y fácil de usar para los usuarios finales.', 'Genexus', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `referenciaslaborales`
--

CREATE TABLE `referenciaslaborales` (
  `id_referencia_laboral` int(11) NOT NULL,
  `id_datos_personales` int(11) DEFAULT NULL,
  `nombre_referencia` varchar(100) DEFAULT NULL,
  `telefono_referencia` varchar(20) DEFAULT NULL,
  `empresa_referencia` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `referenciaslaborales`
--

INSERT INTO `referenciaslaborales` (`id_referencia_laboral`, `id_datos_personales`, `nombre_referencia`, `telefono_referencia`, `empresa_referencia`) VALUES
(1, 1, 'Dra. Estela Leguizamon', '0981 454-420', 'LABORATORIO NOELIA'),
(2, 1, 'Lic. Cirilo Franco', '0992 249-948', 'COOPERATIVA 24 DE OCTUBRE'),
(3, 1, 'Ing. Oscar Bracho', '0986 641-352', 'PROYECTO PERSONAL');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `referenciaspersonales`
--

CREATE TABLE `referenciaspersonales` (
  `id_referencia_personal` int(11) NOT NULL,
  `id_datos_personales` int(11) DEFAULT NULL,
  `nombre_referencia` varchar(100) DEFAULT NULL,
  `telefono_referencia` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `referenciaspersonales`
--

INSERT INTO `referenciaspersonales` (`id_referencia_personal`, `id_datos_personales`, `nombre_referencia`, `telefono_referencia`) VALUES
(1, 1, 'Anahi Melgarejo', '0962 345-078'),
(2, 1, 'Gloria Leguizamon', '0982 748-955');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `conocimientos`
--
ALTER TABLE `conocimientos`
  ADD PRIMARY KEY (`id_conocimiento`),
  ADD KEY `id_datos_personales` (`id_datos_personales`);

--
-- Indices de la tabla `datospersonales`
--
ALTER TABLE `datospersonales`
  ADD PRIMARY KEY (`id_datos_personales`);

--
-- Indices de la tabla `educacion`
--
ALTER TABLE `educacion`
  ADD PRIMARY KEY (`id_educacion`),
  ADD KEY `id_datos_personales` (`id_datos_personales`);

--
-- Indices de la tabla `experiencialaboral`
--
ALTER TABLE `experiencialaboral`
  ADD PRIMARY KEY (`id_experiencia`),
  ADD KEY `id_datos_personales` (`id_datos_personales`);

--
-- Indices de la tabla `habilidades`
--
ALTER TABLE `habilidades`
  ADD PRIMARY KEY (`id_habilidad`),
  ADD KEY `id_datos_personales` (`id_datos_personales`);

--
-- Indices de la tabla `proyectospersonales`
--
ALTER TABLE `proyectospersonales`
  ADD PRIMARY KEY (`id_proyecto`),
  ADD KEY `id_datos_personales` (`id_datos_personales`);

--
-- Indices de la tabla `referenciaslaborales`
--
ALTER TABLE `referenciaslaborales`
  ADD PRIMARY KEY (`id_referencia_laboral`),
  ADD KEY `id_datos_personales` (`id_datos_personales`);

--
-- Indices de la tabla `referenciaspersonales`
--
ALTER TABLE `referenciaspersonales`
  ADD PRIMARY KEY (`id_referencia_personal`),
  ADD KEY `id_datos_personales` (`id_datos_personales`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `conocimientos`
--
ALTER TABLE `conocimientos`
  MODIFY `id_conocimiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `datospersonales`
--
ALTER TABLE `datospersonales`
  MODIFY `id_datos_personales` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `educacion`
--
ALTER TABLE `educacion`
  MODIFY `id_educacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `experiencialaboral`
--
ALTER TABLE `experiencialaboral`
  MODIFY `id_experiencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `habilidades`
--
ALTER TABLE `habilidades`
  MODIFY `id_habilidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `proyectospersonales`
--
ALTER TABLE `proyectospersonales`
  MODIFY `id_proyecto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `referenciaslaborales`
--
ALTER TABLE `referenciaslaborales`
  MODIFY `id_referencia_laboral` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `referenciaspersonales`
--
ALTER TABLE `referenciaspersonales`
  MODIFY `id_referencia_personal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `conocimientos`
--
ALTER TABLE `conocimientos`
  ADD CONSTRAINT `conocimientos_ibfk_1` FOREIGN KEY (`id_datos_personales`) REFERENCES `datospersonales` (`id_datos_personales`);

--
-- Filtros para la tabla `educacion`
--
ALTER TABLE `educacion`
  ADD CONSTRAINT `educacion_ibfk_1` FOREIGN KEY (`id_datos_personales`) REFERENCES `datospersonales` (`id_datos_personales`);

--
-- Filtros para la tabla `experiencialaboral`
--
ALTER TABLE `experiencialaboral`
  ADD CONSTRAINT `experiencialaboral_ibfk_1` FOREIGN KEY (`id_datos_personales`) REFERENCES `datospersonales` (`id_datos_personales`);

--
-- Filtros para la tabla `habilidades`
--
ALTER TABLE `habilidades`
  ADD CONSTRAINT `habilidades_ibfk_1` FOREIGN KEY (`id_datos_personales`) REFERENCES `datospersonales` (`id_datos_personales`);

--
-- Filtros para la tabla `proyectospersonales`
--
ALTER TABLE `proyectospersonales`
  ADD CONSTRAINT `proyectospersonales_ibfk_1` FOREIGN KEY (`id_datos_personales`) REFERENCES `datospersonales` (`id_datos_personales`);

--
-- Filtros para la tabla `referenciaslaborales`
--
ALTER TABLE `referenciaslaborales`
  ADD CONSTRAINT `referenciaslaborales_ibfk_1` FOREIGN KEY (`id_datos_personales`) REFERENCES `datospersonales` (`id_datos_personales`);

--
-- Filtros para la tabla `referenciaspersonales`
--
ALTER TABLE `referenciaspersonales`
  ADD CONSTRAINT `referenciaspersonales_ibfk_1` FOREIGN KEY (`id_datos_personales`) REFERENCES `datospersonales` (`id_datos_personales`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
