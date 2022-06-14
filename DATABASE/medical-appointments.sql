-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-06-2022 a las 01:21:18
-- Versión del servidor: 10.4.16-MariaDB
-- Versión de PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `medical-appointments`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medical_appointment`
--

CREATE TABLE `medical_appointment` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `psycho_id` int(11) NOT NULL,
  `date_request` datetime NOT NULL,
  `date_appointment` datetime NOT NULL,
  `status_appointment` varchar(20) NOT NULL,
  `psycho_diagnosis` varchar(200) NOT NULL,
  `student_raiting` varchar(50) NOT NULL,
  `psycho_treatment` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `psychology`
--

CREATE TABLE `psychology` (
  `id` int(11) NOT NULL,
  `nickname` varchar(20) NOT NULL,
  `name` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `city` varchar(25) NOT NULL,
  `code_psychology` varchar(7) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `reiting_average` float NOT NULL,
  `appointment_number` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `psychology`
--

INSERT INTO `psychology` (`id`, `nickname`, `name`, `password`, `email`, `phone`, `city`, `code_psychology`, `active`, `reiting_average`, `appointment_number`, `created_at`, `updated_at`) VALUES
(1, 'm', 'string', '$2b$10$RgDjliFpzNAWhx.HZT', 'string', 'string', 'string', '11', 1, 10, 5, '2022-06-14 23:20:17', '2022-06-14 23:20:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `nickname` varchar(20) NOT NULL,
  `name` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `city` varchar(25) NOT NULL,
  `code_student` varchar(7) NOT NULL,
  `academic_program` int(25) NOT NULL,
  `semester` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `student`
--

INSERT INTO `student` (`id`, `nickname`, `name`, `password`, `email`, `phone`, `city`, `code_student`, `academic_program`, `semester`, `created_at`, `updated_at`) VALUES
(1, 'string', 'string', 'string', 'string', 'string', 'string', 'string', 1, 1, '2022-06-14 16:24:49', '2022-06-14 16:24:49'),
(2, 'yo', 'string', 'string', 'string', 'string', 'string', 'string1', 1, 10, '2022-06-14 21:33:55', '2022-06-14 21:33:55'),
(4, 'yoooooo', 'string', 'string', 'string', 'string', 'string', 'string9', 1, 10, '2022-06-14 21:34:43', '2022-06-14 21:34:43'),
(8, 'yooooo', 'string', 'string', 'string', 'string', 'string', 'string6', 1, 10, '2022-06-14 21:43:14', '2022-06-14 21:43:14'),
(9, 'yoooo', 'string', 'string', 'string', 'string', 'string', 'string8', 1, 10, '2022-06-14 22:01:35', '2022-06-14 22:01:35'),
(10, 'me', 'string', 'string', 'string', 'string', 'string', 'str8', 1, 10, '2022-06-14 22:20:04', '2022-06-14 22:20:04'),
(11, 'mes', 'string', 'string', 'string', 'string', 'string', 'str9', 1, 10, '2022-06-14 22:20:52', '2022-06-14 22:20:52'),
(12, 'mesa', 'string', 'string', 'string', 'string', 'string', 'str1', 1, 10, '2022-06-14 22:23:59', '2022-06-14 22:23:59'),
(13, 'm', 'string', '$2b$10$wmURf5x/TgV42XMAHo', 'string', 'string', 'string', '1', 1, 10, '2022-06-14 22:25:06', '2022-06-14 22:25:06'),
(14, 'mM', 'string', '$2b$10$Vq1dcHRd.5l.Llh4BL', 'string', 'string', 'string', '11', 1, 10, '2022-06-14 22:34:32', '2022-06-14 22:34:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `superuser`
--

CREATE TABLE `superuser` (
  `id` int(11) NOT NULL,
  `nickname` varchar(30) NOT NULL,
  `password_superuser` varchar(30) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `workshop`
--

CREATE TABLE `workshop` (
  `id` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `image` varchar(200) NOT NULL,
  `body` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `workshop`
--

INSERT INTO `workshop` (`id`, `title`, `image`, `body`, `created_at`, `updated_at`) VALUES
(1, 'Test para saber si necesito ir', 'https://www.psicoactiva.com/wp-content/uploads/2022/05/test-conocer-si-necesito-psicologo.png', 'El Cuestionario General de Salud GHQ-12 fue desarrollado por el profesor Sir David Paul Brandes Gold', '2022-06-10 03:07:31', '2022-06-10 03:07:31'),
(2, 'Test de Ecología de vida', 'https://www.psicoactiva.com/wp-content/uploads/2022/04/test-ecologia-de-vida-768x428.webp', 'La Ecología de vida es una herramienta diseñada por el terapéuta Vicens Olivé Pibernat, socio fundad', '2022-06-10 03:16:17', '2022-06-10 03:16:17'),
(3, 'Test de personalidad de cinco ', 'https://www.psicoactiva.com/wp-content/uploads/2019/05/test-de-personalidad-de-5-factores-768x264.jpg', 'La Personalidad es el conjunto de características, rasgos y cualidades con base genética, pero tambi', '2022-06-10 03:16:17', '2022-06-10 03:16:17'),
(4, 'Test de orientación profesiona', 'https://www.psicoactiva.com/wp-content/uploads/2019/05/test-orientacion-profesional-768x213.png', 'Este test de orientación profesional tiene como finalidad orientarte en la elección de tu futura pro', '2022-06-10 03:16:17', '2022-06-10 03:16:17'),
(5, 'Escala abreviada de sabiduría ', 'https://www.psicoactiva.com/wp-content/uploads/2021/12/escala-abreviada-de-sabiduria-de-san-diego-sd-wise-7-768x447.jpg', 'Este test ha sido desarrollado por un equipo multidisciplinar de la universidad de San Diego con el ', '2022-06-10 03:16:17', '2022-06-10 03:16:17'),
(6, 'Escala de sabiduría de San Die', 'https://www.psicoactiva.com/wp-content/uploads/2021/12/test-de-sabiduria-de-san-diego-sd-wise-768x432.jpg', 'A diferencia de la inteligencia general (CI), la sabiduría es un concepto superior que se refiere al', '2022-06-10 03:22:54', '2022-06-10 03:22:54'),
(7, 'Test de los intereses profesio', 'https://www.psicoactiva.com/wp-content/uploads/2021/11/test-orientacion-vocacional-holland-768x397.jpg', 'El test de los intereses profesionales de Holland se basa en el modelo tipológico desarrollado por e', '2022-06-10 03:22:54', '2022-06-10 03:22:54'),
(8, 'Test: Descubre cómo te ven los', 'https://www.psicoactiva.com/wp-content/uploads/2020/04/como-te-ven-los-demas-768x325.jpg', 'Este es un test que se utiliza habitualmente a nivel empresarial para conocer mejor a los empleados.', '2022-06-10 03:22:54', '2022-06-10 03:22:54'),
(9, 'Test de evaluación del éxito p', 'https://www.psicoactiva.com/wp-content/uploads/2020/04/test-del-logro-768x360.jpg', 'Las habilidades o competencias profesionales se están convirtiendo cada vez más en un factor determi', '2022-06-10 03:22:54', '2022-06-10 03:22:54'),
(10, 'Test de depresión confiable. E', 'https://www.psicoactiva.com/wp-content/uploads/2020/04/depresion-test-confiable-escala-de-zung-768x368.jpg', 'Existen más de 300 millones de personas con depresión en el mundo. Es la principal causa de discapac', '2022-06-10 03:22:54', '2022-06-10 03:22:54'),
(11, 'Test de memoria a corto plazo', 'https://www.psicoactiva.com/wp-content/uploads/2020/05/memoria-768x324.jpg', 'A continuación te presentamos un test que te permitirá evaluar tu memoria. El objetivo es memorizar ', '2022-06-10 03:44:03', '2022-06-10 03:44:03'),
(12, 'Test de inteligencia (CI) actu', 'https://www.psicoactiva.com/wp-content/uploads/2020/05/test-de-inteligencia-ci-actualizado-768x400.jpg', 'El siguiente test calcula una aproximación del Cociente Intelectual (CI) personal. La puntuación sól', '2022-06-10 03:44:03', '2022-06-10 03:44:03'),
(13, 'Test de autoconsciencia y auto', 'https://www.psicoactiva.com/wp-content/uploads/2020/03/test-de-autoconsciencia-768x354.jpg', 'En ocasiones no somos realmente conscientes de nosotros mismos, de nuestra existencia personal, nues', '2022-06-10 03:44:03', '2022-06-10 03:44:03'),
(14, 'Test para descubrir si tienes ', 'https://www.psicoactiva.com/wp-content/uploads/2021/07/test-buena-relacion-con-la-comida-768x443.jpg', 'Para algunas personas, la comida ocupa buena parte de sus pensamientos. Nos preocupa si nos hace sub', '2022-06-10 03:44:03', '2022-06-10 03:44:03'),
(15, 'Test de actitudes disfuncional', 'https://www.psicoactiva.com/wp-content/uploads/2020/04/test-de-actitudes-disfuncionales-de-weismman-768x413.png', 'Este test es el llamado \"Escala de actitudes disfuncionales de Weismman\", y mide cómo valora una per', '2022-06-10 03:44:03', '2022-06-10 03:44:03');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `medical_appointment`
--
ALTER TABLE `medical_appointment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `psycho_id` (`psycho_id`);

--
-- Indices de la tabla `psychology`
--
ALTER TABLE `psychology`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nickname` (`nickname`);

--
-- Indices de la tabla `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nickname` (`nickname`),
  ADD UNIQUE KEY `code_student` (`code_student`);

--
-- Indices de la tabla `superuser`
--
ALTER TABLE `superuser`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nickname` (`nickname`);

--
-- Indices de la tabla `workshop`
--
ALTER TABLE `workshop`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `medical_appointment`
--
ALTER TABLE `medical_appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `psychology`
--
ALTER TABLE `psychology`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `superuser`
--
ALTER TABLE `superuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `workshop`
--
ALTER TABLE `workshop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `medical_appointment`
--
ALTER TABLE `medical_appointment`
  ADD CONSTRAINT `medical_appointment_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`),
  ADD CONSTRAINT `medical_appointment_ibfk_2` FOREIGN KEY (`psycho_id`) REFERENCES `psychology` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
