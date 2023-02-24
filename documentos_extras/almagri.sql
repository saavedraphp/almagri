-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 24-02-2023 a las 12:58:44
-- Versión del servidor: 8.0.30
-- Versión de PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `almagri`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actas`
--

CREATE TABLE `actas` (
  `acta_id` int NOT NULL,
  `empr_id` int NOT NULL,
  `tipo_docu_id` int NOT NULL COMMENT '- Guia\n- Factura',
  `tipo_movimiento_codigo` char(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '- alamacenamiento\n- Picking\n',
  `acta_encargado_id` int DEFAULT NULL,
  `acta_supervisor_id` int DEFAULT NULL,
  `contrato_id` int DEFAULT NULL,
  `acta_sub_cliente` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `acta_numero_ingr_sali` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `acta_costo` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `acta_fecha_ini` datetime DEFAULT NULL,
  `acta_fecha_fin` datetime DEFAULT NULL,
  `acta_comentario` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `estado_asignacion` char(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='																			';

--
-- Volcado de datos para la tabla `actas`
--

INSERT INTO `actas` (`acta_id`, `empr_id`, `tipo_docu_id`, `tipo_movimiento_codigo`, `acta_encargado_id`, `acta_supervisor_id`, `contrato_id`, `acta_sub_cliente`, `acta_numero_ingr_sali`, `acta_costo`, `acta_fecha_ini`, `acta_fecha_fin`, `acta_comentario`, `estado_asignacion`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 19, 1, 'INGRESO', NULL, NULL, NULL, 'Luis Saavedra', '40221837', NULL, NULL, NULL, '#ID Producto	Producto	Stock	Ingreso	Accion\r\n3	Cámara web Radioshack con luz led	0	10	\r\n2	Mouse pad ergonómico Teraware	0	8	\r\n1	Notebook Lenovo Thinkpad L15, 15.6\"	0	6', 'REALIZADO', '2022-06-22 21:24:55', '2022-06-27 21:30:10', '2022-06-27 21:30:10'),
(2, 19, 1, 'INGRESO', NULL, NULL, NULL, 'Veronica', '200023', NULL, NULL, NULL, '#ID Producto	Producto	Stock	Ingreso	Accion\r\n3	Cámara web Radioshack con luz led	10	15', 'REALIZADO', '2022-06-22 21:26:03', '2022-06-27 21:30:08', '2022-06-27 21:30:08'),
(3, 19, 1, 'DESPACHO', NULL, NULL, NULL, 'Rocio Saavedra', '54227813', NULL, NULL, NULL, '#ID Producto	Producto	Stock	Salida	Accion\r\n3	Cámara web Radioshack con luz led	25	5	\r\n2	Mouse pad ergonómico Teraware	8	3', NULL, '2022-06-22 23:52:06', '2022-06-27 21:45:36', '2022-06-27 21:45:36'),
(4, 19, 1, 'INGRESO', NULL, NULL, NULL, 'Luis', '12345678', NULL, NULL, NULL, NULL, 'REALIZADO', '2022-06-24 23:21:45', '2022-06-27 21:30:07', '2022-06-27 21:30:07'),
(5, 19, 1, 'DESPACHO', NULL, NULL, NULL, 'Luis', '12345678', NULL, NULL, NULL, NULL, NULL, '2022-06-24 23:23:58', '2022-06-27 21:45:34', '2022-06-27 21:45:34'),
(6, 19, 1, 'INGRESO', NULL, NULL, NULL, 'Rocio Saavedra', '40221837', NULL, NULL, NULL, '#ID Producto	Producto	Stock	Ingreso	Accion\r\n3	Cámara web Radioshack con luz led	17	5	\r\n2	Mouse pad ergonómico Teraware	7	4', 'PENDIENTE', '2022-06-24 23:52:54', '2022-06-27 21:30:03', '2022-06-27 21:30:03'),
(7, 21, 1, 'INGRESO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, NULL, 'REALIZADO', '2022-06-27 17:07:50', '2022-06-27 17:21:55', '2022-06-27 17:21:55'),
(8, 21, 1, 'INGRESO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, 'STOCK AL 27 DE JUNIO DEL 2022', 'REALIZADO', '2022-06-27 21:42:52', '2022-08-09 18:36:38', '2022-08-09 18:36:38'),
(9, 21, 1, 'DESPACHO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, NULL, NULL, '2022-06-27 21:51:15', '2022-08-11 23:42:40', '2022-08-11 23:42:40'),
(10, 21, 1, 'INGRESO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, NULL, 'REALIZADO', '2022-06-27 21:52:33', '2022-08-09 18:36:34', '2022-08-09 18:36:34'),
(11, 22, 1, 'INGRESO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, NULL, 'REALIZADO', '2022-06-27 23:04:58', '2022-07-06 17:42:56', '2022-07-06 17:42:56'),
(12, 24, 1, 'INGRESO', NULL, NULL, NULL, 'Luis Saavedra', '40221837', NULL, NULL, NULL, '95	Monomero 15ml modi	0	2	101', 'REALIZADO', '2022-07-14 16:40:08', '2022-08-09 18:36:29', '2022-08-09 18:36:29'),
(13, 24, 1, 'DESPACHO', NULL, NULL, NULL, 'Rocio Saavedra', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-14 16:59:14', '2022-08-09 18:36:44', '2022-08-09 18:36:44'),
(14, 24, 1, 'INGRESO', NULL, NULL, NULL, 'Luis Saavedra', '54227813', NULL, NULL, NULL, '95	Monomero 15ml modi	1	2	102', 'REALIZADO', '2022-07-14 22:03:35', '2022-08-09 18:36:25', '2022-08-09 18:36:25'),
(15, 21, 1, 'INGRESO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, NULL, 'REALIZADO', '2022-08-12 00:28:46', '2022-12-30 19:46:12', '2022-12-30 19:46:12'),
(16, 21, 1, 'INGRESO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, NULL, 'REALIZADO', '2022-08-12 00:35:21', '2022-12-30 19:46:10', '2022-12-30 19:46:10'),
(17, 21, 1, 'INGRESO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, NULL, 'REALIZADO', '2022-08-15 17:49:56', '2022-12-30 19:46:07', '2022-12-30 19:46:07'),
(18, 21, 1, 'INGRESO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, NULL, 'REALIZADO', '2022-08-15 17:52:03', '2022-12-30 19:46:04', '2022-12-30 19:46:04'),
(19, 21, 1, 'DESPACHO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, NULL, NULL, '2022-08-15 17:53:12', '2022-12-30 19:45:50', '2022-12-30 19:45:50'),
(20, 21, 1, 'DESPACHO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, NULL, NULL, '2022-08-17 17:10:59', '2022-12-30 19:45:48', '2022-12-30 19:45:48'),
(21, 21, 1, 'INGRESO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, NULL, 'REALIZADO', '2022-08-17 22:47:17', '2022-12-30 19:45:59', '2022-12-30 19:45:59'),
(22, 27, 1, 'INGRESO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, NULL, 'REALIZADO', '2022-08-18 18:41:21', '2022-08-18 23:47:55', '2022-08-18 23:47:55'),
(23, 27, 1, 'INGRESO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, 'TWNNPR28COA	FLAT COUPE PLATE 28CM	CORAL TIENE DOS POSICIONES B-104-106', 'REALIZADO', '2022-08-19 20:37:33', '2022-12-27 17:59:22', '2022-12-27 17:59:22'),
(24, 21, 1, 'DESPACHO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, NULL, NULL, '2022-08-20 01:25:14', '2022-12-30 19:45:46', '2022-12-30 19:45:46'),
(25, 21, 1, 'DESPACHO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, NULL, NULL, '2022-08-20 01:25:33', '2022-12-30 19:45:45', '2022-12-30 19:45:45'),
(26, 21, 1, 'INGRESO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, NULL, 'REALIZADO', '2022-08-20 01:26:52', '2022-12-30 19:46:15', '2022-12-30 19:46:15'),
(27, 21, 1, 'DESPACHO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, NULL, NULL, '2022-12-02 20:23:38', '2022-12-30 19:45:42', '2022-12-30 19:45:42'),
(28, 21, 1, 'INGRESO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, NULL, 'REALIZADO', '2022-12-19 14:45:59', '2022-12-19 14:46:49', '2022-12-19 14:46:49'),
(29, 21, 1, 'DESPACHO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, NULL, NULL, '2022-12-19 14:47:58', '2022-12-30 19:45:39', '2022-12-30 19:45:39'),
(30, 27, 1, 'INGRESO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, NULL, 'REALIZADO', '2022-12-19 22:05:49', '2022-12-27 17:59:18', '2022-12-27 17:59:18'),
(31, 27, 1, 'DESPACHO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, NULL, NULL, '2022-12-19 22:07:52', '2022-12-27 17:59:38', '2022-12-27 17:59:38'),
(32, 27, 1, 'INGRESO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, NULL, 'REALIZADO', '2022-12-27 19:08:38', '2022-12-27 19:08:38', NULL),
(33, 27, 1, 'INGRESO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, NULL, 'REALIZADO', '2022-12-28 14:38:04', '2022-12-28 14:38:04', NULL),
(34, 27, 1, 'INGRESO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, NULL, 'REALIZADO', '2022-12-28 15:01:21', '2022-12-28 15:01:21', NULL),
(35, 27, 1, 'INGRESO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, NULL, 'REALIZADO', '2022-12-28 18:08:12', '2022-12-28 18:08:12', NULL),
(36, 27, 1, 'DESPACHO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, NULL, NULL, '2022-12-30 20:38:31', '2022-12-30 20:38:31', NULL),
(37, 27, 1, 'DESPACHO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, NULL, NULL, '2023-01-02 16:05:41', '2023-01-02 16:05:41', NULL),
(38, 21, 1, 'INGRESO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, 'A102035 - Caja Varios (trapos sucios 3, bolsa abierta papel Kraft, Maskingtape, papel interfoliado, Bolsa de Sal Rota)', 'REALIZADO', '2023-01-02 22:11:05', '2023-01-02 22:11:05', NULL),
(39, 27, 1, 'DESPACHO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, 'SE ENVIO POR ERROR EL DIA 28/12/22', NULL, '2023-01-03 14:03:25', '2023-01-03 14:03:25', NULL),
(40, 21, 1, 'DESPACHO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, 'SALIDA 02/01/22', NULL, '2023-01-03 14:10:23', '2023-01-03 14:10:23', NULL),
(41, 27, 1, 'DESPACHO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, NULL, NULL, '2023-01-04 16:00:10', '2023-01-04 16:00:10', NULL),
(42, 27, 1, 'INGRESO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, NULL, 'REALIZADO', '2023-01-04 16:23:06', '2023-01-04 16:24:16', '2023-01-04 16:24:16'),
(43, 27, 1, 'INGRESO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, NULL, 'REALIZADO', '2023-01-04 18:22:19', '2023-01-04 18:22:19', NULL),
(44, 27, 1, 'INGRESO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, NULL, 'REALIZADO', '2023-01-04 19:56:46', '2023-01-04 19:56:46', NULL),
(45, 21, 1, 'DESPACHO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, 'SALIDA DEL 02/01/23', NULL, '2023-01-05 14:47:51', '2023-01-05 15:34:44', '2023-01-05 15:34:44'),
(46, 21, 1, 'INGRESO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, 'INGRESO 03/01/23', 'REALIZADO', '2023-01-05 15:01:12', '2023-01-05 15:01:12', NULL),
(47, 21, 1, 'DESPACHO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, 'SALIDA 03/01/23', NULL, '2023-01-05 15:05:07', '2023-01-05 15:05:07', NULL),
(48, 21, 1, 'DESPACHO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, 'SALIDA 04/01/23', NULL, '2023-01-05 15:06:23', '2023-01-05 15:06:23', NULL),
(49, 21, 1, 'DESPACHO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, NULL, NULL, '2023-01-05 19:38:29', '2023-01-05 19:38:29', NULL),
(50, 27, 1, 'INGRESO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, NULL, 'REALIZADO', '2023-01-06 17:02:46', '2023-01-06 17:02:46', NULL),
(51, 27, 1, 'INGRESO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, NULL, 'REALIZADO', '2023-01-06 20:38:37', '2023-01-06 20:38:37', NULL),
(52, 27, 1, 'INGRESO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, NULL, 'REALIZADO', '2023-01-06 22:22:11', '2023-01-06 22:22:11', NULL),
(53, 27, 1, 'INGRESO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, NULL, 'REALIZADO', '2023-01-07 16:19:56', '2023-01-07 16:19:56', NULL),
(54, 21, 1, 'INGRESO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, NULL, 'REALIZADO', '2023-01-07 17:21:50', '2023-01-07 17:21:50', NULL),
(55, 21, 1, 'DESPACHO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, '6/1/23', NULL, '2023-01-07 17:23:22', '2023-01-07 17:23:22', NULL),
(56, 27, 1, 'INGRESO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, NULL, 'REALIZADO', '2023-01-09 18:08:11', '2023-01-09 18:08:11', NULL),
(57, 27, 1, 'INGRESO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, NULL, 'REALIZADO', '2023-01-09 19:39:32', '2023-01-09 19:39:32', NULL),
(58, 27, 1, 'DESPACHO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, 'Salida del 05/01/23', NULL, '2023-01-09 20:35:44', '2023-01-09 20:35:44', NULL),
(59, 21, 1, 'INGRESO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, NULL, 'REALIZADO', '2023-01-09 20:41:25', '2023-01-09 20:41:25', NULL),
(60, 21, 1, 'DESPACHO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, NULL, NULL, '2023-01-09 20:43:11', '2023-01-09 20:43:11', NULL),
(61, 27, 1, 'INGRESO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, NULL, 'REALIZADO', '2023-01-09 21:58:54', '2023-01-09 21:58:54', NULL),
(62, 23, 1, 'INGRESO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, NULL, 'REALIZADO', '2023-01-10 16:23:39', '2023-01-10 16:23:39', NULL),
(63, 23, 1, 'INGRESO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, NULL, 'REALIZADO', '2023-01-10 16:23:58', '2023-01-10 16:25:31', '2023-01-10 16:25:31'),
(64, 30, 1, 'INGRESO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, NULL, 'REALIZADO', '2023-01-10 18:17:47', '2023-01-10 18:17:47', NULL),
(65, 30, 1, 'INGRESO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, NULL, 'REALIZADO', '2023-01-10 18:20:05', '2023-01-10 18:20:05', NULL),
(66, 27, 1, 'DESPACHO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, NULL, NULL, '2023-01-10 22:33:10', '2023-01-10 22:33:10', NULL),
(67, 23, 1, 'DESPACHO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, NULL, NULL, '2023-01-10 22:54:49', '2023-01-10 22:54:49', NULL),
(68, 21, 1, 'DESPACHO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, NULL, NULL, '2023-01-11 16:41:17', '2023-01-11 16:41:17', NULL),
(69, 23, 1, 'INGRESO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, NULL, 'REALIZADO', '2023-01-11 17:56:00', '2023-01-11 17:56:00', NULL),
(70, 27, 1, 'DESPACHO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, NULL, NULL, '2023-01-11 22:01:58', '2023-01-11 22:01:58', NULL),
(71, 30, 1, 'DESPACHO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, NULL, NULL, '2023-01-11 22:56:31', '2023-01-11 22:56:31', NULL),
(72, 30, 1, 'DESPACHO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, NULL, NULL, '2023-01-12 19:19:56', '2023-01-12 19:19:56', NULL),
(73, 21, 1, 'DESPACHO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, NULL, NULL, '2023-01-12 19:21:49', '2023-01-12 19:21:49', NULL),
(74, 27, 1, 'DESPACHO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, NULL, NULL, '2023-01-12 21:44:13', '2023-01-12 21:44:13', NULL),
(75, 21, 1, 'INGRESO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, NULL, 'REALIZADO', '2023-01-13 22:14:38', '2023-01-13 22:14:38', NULL),
(76, 30, 1, 'DESPACHO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, NULL, NULL, '2023-01-20 14:24:49', '2023-01-20 14:24:49', NULL),
(77, 23, 1, 'DESPACHO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, '18/01/23', NULL, '2023-01-27 19:51:06', '2023-01-27 19:51:06', NULL),
(78, 23, 1, 'INGRESO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, NULL, 'REALIZADO', '2023-01-27 20:00:56', '2023-01-27 20:00:56', NULL),
(79, 21, 1, 'DESPACHO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, NULL, NULL, '2023-01-27 21:38:49', '2023-01-27 21:38:49', NULL),
(80, 21, 1, 'INGRESO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, '24/01/23', 'REALIZADO', '2023-01-27 22:39:39', '2023-01-27 22:39:39', NULL),
(81, 21, 1, 'DESPACHO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, '24/01/23', NULL, '2023-01-27 22:42:01', '2023-01-27 22:42:01', NULL),
(82, 21, 1, 'DESPACHO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, '23/1/23', NULL, '2023-01-27 22:43:44', '2023-01-27 22:43:44', NULL),
(83, 21, 1, 'DESPACHO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, '18/01/23', NULL, '2023-01-27 22:47:12', '2023-01-27 22:47:12', NULL),
(84, 21, 1, 'INGRESO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, '17/01/23', 'REALIZADO', '2023-01-27 22:49:42', '2023-01-27 22:49:42', NULL),
(85, 21, 1, 'DESPACHO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, '16/01/23', NULL, '2023-01-27 22:54:20', '2023-01-27 22:54:20', NULL),
(86, 23, 1, 'INGRESO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, NULL, 'REALIZADO', '2023-01-28 15:21:02', '2023-01-28 15:21:02', NULL),
(87, 23, 1, 'DESPACHO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, '27/01/23', NULL, '2023-01-28 15:44:59', '2023-01-28 15:44:59', NULL),
(88, 30, 1, 'INGRESO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, '20/01/23', 'REALIZADO', '2023-01-28 16:24:26', '2023-01-28 16:24:26', NULL),
(89, 30, 1, 'DESPACHO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, '20/01/23', NULL, '2023-01-28 16:34:07', '2023-01-28 16:34:07', NULL),
(90, 30, 1, 'DESPACHO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, 'Hubo confusión con el kingston62 Gold 1000ml', NULL, '2023-01-28 16:36:02', '2023-01-28 16:36:02', NULL),
(91, 30, 1, 'DESPACHO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, '24/01/23', NULL, '2023-01-28 16:49:43', '2023-01-28 16:49:43', NULL),
(92, 30, 1, 'DESPACHO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, '25/01/23', NULL, '2023-01-28 16:52:52', '2023-01-28 16:52:52', NULL),
(93, 30, 1, 'INGRESO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, NULL, 'REALIZADO', '2023-01-28 16:57:48', '2023-01-28 16:57:48', NULL),
(94, 30, 1, 'DESPACHO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, '26/01/23', NULL, '2023-01-28 17:02:14', '2023-01-28 17:02:14', NULL),
(95, 23, 1, 'DESPACHO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, '30/01/23', NULL, '2023-01-31 21:45:35', '2023-01-31 21:45:35', NULL),
(96, 21, 1, 'DESPACHO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, '30/01/23', NULL, '2023-01-31 21:48:45', '2023-01-31 21:48:45', NULL),
(97, 21, 1, 'INGRESO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, NULL, 'REALIZADO', '2023-01-31 21:52:55', '2023-01-31 21:52:55', NULL),
(98, 21, 1, 'DESPACHO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, NULL, NULL, '2023-01-31 21:54:07', '2023-01-31 21:54:07', NULL),
(99, 27, 1, 'DESPACHO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, 'REGULARIZACION POR EL INVENTARIO', NULL, '2023-02-02 17:45:50', '2023-02-02 17:45:50', NULL),
(100, 27, 1, 'INGRESO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, 'REGULARIZACIÓN DEL INVERITARIO REALIZADO EL 26/01/23', 'REALIZADO', '2023-02-02 18:10:06', '2023-02-02 18:10:06', NULL),
(101, 27, 1, 'DESPACHO', NULL, NULL, NULL, 'Frank Bautista', '72934473', NULL, NULL, NULL, 'PARA REGULARIZAR EL INVENTARIO.', NULL, '2023-02-02 18:41:23', '2023-02-02 18:41:23', NULL),
(102, 27, 1, 'INGRESO', NULL, NULL, NULL, 'Luis Saavera', '40221837', NULL, NULL, NULL, '#ID	Producto	Stock	Ingreso	Casilla	Accion\r\n612	CHIRIMOYA AZUL	0	10	TORRE A101	\r\n612	CHIRIMOYA AZUL	0	5	TORRE A102	\r\n607	CHIRIMOYA ROJA	0	9	TORRE B101	\r\n607	CHIRIMOYA ROJA	0	5	TORRE A101', 'REALIZADO', '2023-02-09 13:02:43', '2023-02-09 13:02:43', NULL),
(103, 27, 1, 'DESPACHO', NULL, NULL, NULL, 'Luis Saavera', NULL, NULL, NULL, NULL, '#ID	Producto	Stock	Salida	Casilla	Accion\r\n612	27CHIMRJ - CHIRIMOYA AZUL	15	2	TORRE A - 101	\r\n612	27CHIMRJ - CHIRIMOYA AZUL	15	1	TORRE A - 102	\r\n607	27CHIMGR - CHIRIMOYA ROJA	14	5	TORRE B - 101	\r\n607	27CHIMGR - CHIRIMOYA ROJA	14	2	TORRE A - 101', NULL, '2023-02-09 20:08:40', '2023-02-09 20:08:40', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `casillas_empresas`
--

CREATE TABLE `casillas_empresas` (
  `id` int NOT NULL,
  `rc_id` int NOT NULL,
  `empr_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `casillas_empresas`
--

INSERT INTO `casillas_empresas` (`id`, `rc_id`, `empr_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(8, 222, 21, '2022-06-25 18:56:42', NULL, NULL),
(9, 223, 21, '2022-06-25 18:56:42', NULL, NULL),
(10, 224, 22, '2022-06-27 10:20:09', NULL, NULL),
(11, 225, 22, '2022-06-27 10:20:09', NULL, NULL),
(12, 233, 22, '2022-06-27 11:05:56', NULL, NULL),
(28, 4, 27, '2023-02-08 14:09:01', '2023-02-08 14:09:01', NULL),
(29, 5, 27, '2023-02-08 15:15:28', '2023-02-08 15:15:28', NULL),
(30, 79, 27, '2023-02-08 15:38:41', '2023-02-08 15:38:41', NULL),
(31, 80, 27, '2023-02-08 15:42:02', '2023-02-08 15:42:02', NULL),
(32, 82, 27, '2023-02-08 15:46:45', '2023-02-08 15:46:45', NULL),
(33, 20, 27, '2023-02-08 15:46:45', '2023-02-24 06:39:46', '2023-02-24 06:39:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_producto`
--

CREATE TABLE `categoria_producto` (
  `id` int NOT NULL,
  `categoria` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudades`
--

CREATE TABLE `ciudades` (
  `id` int NOT NULL,
  `estado_id` int DEFAULT NULL,
  `pais_id` int NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `estado` char(1) NOT NULL DEFAULT '1',
  `c_cond_id` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contactos_x_empresa`
--

CREATE TABLE `contactos_x_empresa` (
  `id` int NOT NULL,
  `empresa_id` int NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `telefono` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `contactos_x_empresa`
--

INSERT INTO `contactos_x_empresa` (`id`, `empresa_id`, `nombre`, `telefono`, `email`, `created_at`, `updated_at`, `deleted_at`) VALUES
(8, 19, 'Veronica', '960203783', 'veronica@gmail.com', '2022-06-22 17:36:20', '2022-06-22 17:36:20', NULL),
(9, 19, 'Jessica', '98542175', 'jemec_1@hotmail.com', '2022-06-22 17:36:56', '2022-06-22 17:36:56', NULL),
(10, 21, 'CESAR ENRIQUE ZEVALLOS HERNANDEZ', '987106454', 'empresas@merqhatuperu.com', '2022-06-25 18:53:41', '2022-06-25 18:53:41', NULL),
(11, 21, 'AMY', '993976557', 'empresas@merqhatuperu.com', '2022-06-25 18:54:19', '2022-06-25 18:54:19', NULL),
(12, 22, 'LUIS EDOARDO BACIGALUPO ROMERO', '947670577', 'lbacigalupo@andana.com.pe', '2022-06-27 22:19:45', '2022-06-27 22:19:45', NULL),
(13, 23, 'ROY RODRIGUEZ', '969421805', 'roy.rodriguez@innova-itc.com', '2022-06-27 23:39:08', '2022-06-27 23:39:08', NULL),
(14, 23, 'SHARON HUAMANI', '960143426', 'asistente.ingenieria@innova-itc.com', '2022-06-27 23:40:01', '2022-06-27 23:40:01', NULL),
(15, 24, 'Raul Alexander', '960203783', 'raulalexander@gmail.com', '2022-07-14 15:57:45', '2022-07-14 16:00:19', NULL),
(16, 25, 'JESUS', '980560812', 'elizabethcanaquiri@gmail.com', '2022-07-14 21:27:38', '2022-07-14 21:27:38', NULL),
(17, 27, 'MARTIN EZEQUIEL LIJTMAER', '922022359', 'martin@volfperu.com', '2022-07-16 18:32:26', '2022-07-16 18:32:26', NULL),
(18, 27, 'Daniela', '926738874', 'compras@volfperu.com', '2022-07-16 18:33:29', '2022-07-16 18:33:29', NULL),
(19, 28, 'Julio', '998363741', 'almacen@itvperu.com', '2022-07-16 18:44:27', '2022-07-16 18:44:27', NULL),
(20, 28, 'Saul', '943292466', 'almacen@itvperu.com', '2022-07-16 18:45:21', '2022-07-16 18:45:21', NULL),
(21, 28, 'Sra. Clara', '999999999', 'contabilidad@itvperu.com', '2022-07-16 18:46:21', '2022-07-16 18:46:21', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
--

CREATE TABLE `empresas` (
  `empr_id` int NOT NULL,
  `user_id` int NOT NULL,
  `empr_nombre` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `empr_ruc` char(12) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `empr_direccion` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `empr_telefono` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `empr_celular` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `empr_correo` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `empr_contacto` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `empr_estado` char(4) COLLATE utf8mb4_general_ci DEFAULT 'ACTI',
  `empr_ruta_img_reporte` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empresas`
--

INSERT INTO `empresas` (`empr_id`, `user_id`, `empr_nombre`, `empr_ruc`, `empr_direccion`, `empr_telefono`, `empr_celular`, `empr_correo`, `empr_contacto`, `empr_estado`, `empr_ruta_img_reporte`, `created_at`, `updated_at`, `deleted_at`) VALUES
(19, 18, 'EMPRESA TES', '20402218372', 'CALLE LOS ZORZALES 160  - SAN ISIDRO', '5612938', '960203783', 'empresates@gmail.com', NULL, 'ACTI', '19-1655923069.pdf', '2022-06-22 17:17:57', '2022-06-27 21:45:47', '2022-06-27 21:45:47'),
(20, 19, 'VOLF PERU SAC', '20607444111', 'Av. de la Aviación 545, Miraflores', '994910135', '960143426', 'martin@volfperu.com', NULL, 'ACTI', NULL, '2022-06-24 23:05:57', '2022-06-24 23:06:11', '2022-06-24 23:06:11'),
(21, 20, 'MERQHATU HORECA SAC', '20608344595', 'AV. ALEJANDRO VELASCO ASTETE NRO. 265 DPTO. 101 URB. MARISCAL RAMON CASTILLA, SAN BORJA', '987106454', '987106454', 'empresas@merqhatuperu.com', NULL, 'ACTI', NULL, '2022-06-25 18:52:11', '2022-06-25 18:54:40', NULL),
(22, 21, 'ANDANA REPRESENTACIONES SAC', '20512238611', 'AV. OSCAR R. BENAVIDES NRO. 380 INT. 601, MIRAFLORES', '947670577', '947670577', 'lbacigalupo@andana.com.pe', NULL, 'ACTI', NULL, '2022-06-27 22:18:43', '2022-07-06 17:43:03', '2022-07-06 17:43:03'),
(23, 22, 'INNOVA INFORMATION TECHNOLOGY & COMMUNICATIONS SAC', '20602207162', 'PJ. MARTIR OLAYA NRO. 129 INT. 1506, MIRAFLORES', '969421805', '969421805', 'roy.rodriguez@innova-itc.com', NULL, 'ACTI', NULL, '2022-06-27 23:38:01', '2022-06-27 23:38:01', NULL),
(24, 23, 'EMPRESA-TEST23', '20390247487', 'mz g2 lote 16, H.A Daniel Alcides Carrión Sector \"C\" Los Olivos', '960203783', '980560812', 'empresa-test22@gmail.com', NULL, 'ACTI', '', '2022-07-13 22:53:55', '2022-08-09 18:35:56', '2022-08-09 18:35:56'),
(27, 26, 'VOLF PERU SAC', '20604045569', 'Av. de la Aviacion Nro. 545, Miraflores', '922022359', '922022359', 'martin@volfperu.com', NULL, 'ACTI', NULL, '2022-07-16 18:30:37', '2022-07-16 18:30:37', NULL),
(28, 27, 'TRADING VENTURES SAC', '20600657641', 'JR. CMDTE JUAN FANNING 297 URB. LA VIÑITA, BARRANCO', '998363741', '998363741', 'almacen@itvperu.com', NULL, 'ACTI', NULL, '2022-07-16 18:43:41', '2022-07-16 18:43:41', NULL),
(29, 28, 'KBM SERVICIOS GENERALES S.A.C', '20522992845', 'AV. GUARDIA PERUANA NRO. 1465 INT. 1 LA CAMPIÑA, CHORRILLOS', '012242084', '999999999', 'prueba@prueba.com', NULL, 'ACTI', NULL, '2022-07-16 18:52:30', '2022-08-09 18:36:06', '2022-08-09 18:36:06'),
(30, 31, 'THE SPIRIT COMPANY SAC (PROBAAR)', '20604232792', 'CALLE JUAN SOTO BERMEO 406 - SURCO', '929930612', '929930612', 'gabriel.hurtado@probaar.co', NULL, 'ACTI', NULL, '2023-01-10 16:50:04', '2023-01-11 16:13:23', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entidades`
--

CREATE TABLE `entidades` (
  `id` int NOT NULL,
  `tipo_documento` int DEFAULT NULL,
  `nro_documento` varchar(25) DEFAULT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `tipo` char(20) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `datos_adicionales` varchar(200) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `entidades`
--

INSERT INTO `entidades` (`id`, `tipo_documento`, `nro_documento`, `nombre`, `tipo`, `telefono`, `correo`, `datos_adicionales`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '40221837', 'Luis Saavera', 'SUB_CLIENTE', NULL, NULL, NULL, '2023-02-08 18:07:19', '2023-02-08 18:07:19', NULL),
(2, 1, '999999', 'Veronica', 'SUB_CLIENTE', NULL, NULL, NULL, '2023-02-08 18:10:10', '2023-02-08 18:10:10', NULL),
(3, 1, '324324324324', 'sdadsad', 'SUB_CLIENTE', NULL, NULL, NULL, '2023-02-08 18:11:10', '2023-02-08 18:11:10', NULL),
(4, 1, '3432432', 'ewewqeqe', 'SUB_CLIENTE', NULL, NULL, NULL, '2023-02-08 18:12:45', '2023-02-08 18:12:45', NULL),
(5, 1, '343242', 'dfsdfds', 'SUB_CLIENTE', NULL, NULL, NULL, '2023-02-08 18:25:12', '2023-02-08 18:25:12', NULL),
(6, 2, 'sdsadas', 'sadsad', 'SUB_CLIENTE', NULL, NULL, NULL, '2023-02-08 18:26:14', '2023-02-08 18:26:14', NULL),
(7, 1, '43543543', 'sfdsfds', 'SUB_CLIENTE', NULL, NULL, NULL, '2023-02-08 18:59:25', '2023-02-08 18:59:25', NULL),
(8, 1, '789456132', 'Rocio Saavedra', 'SUB_CLIENTE', NULL, NULL, NULL, '2023-02-08 19:05:04', '2023-02-08 19:05:04', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados`
--

CREATE TABLE `estados` (
  `id` int NOT NULL,
  `pais_id` int NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `esta_reloj` varchar(255) DEFAULT NULL,
  `estado` char(4) NOT NULL DEFAULT 'ACTI'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `kardex`
--

CREATE TABLE `kardex` (
  `kard_id` int NOT NULL,
  `acta_id` int NOT NULL,
  `prod_id` int NOT NULL,
  `lote_id` int NOT NULL,
  `rc_id` int DEFAULT NULL,
  `tipo_movimiento` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `kard_cantidad` smallint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `kardex`
--

INSERT INTO `kardex` (`kard_id`, `acta_id`, `prod_id`, `lote_id`, `rc_id`, `tipo_movimiento`, `kard_cantidad`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 3, 9999999, 5, 'INGRESO', 10, '2022-06-22 21:24:55', '2022-06-27 21:30:10', '2022-06-27 21:30:10'),
(2, 1, 2, 9999999, 11, 'INGRESO', 8, '2022-06-22 21:24:55', '2022-06-27 21:30:10', '2022-06-27 21:30:10'),
(3, 1, 1, 9999999, 6, 'INGRESO', 6, '2022-06-22 21:24:55', '2022-06-27 21:30:10', '2022-06-27 21:30:10'),
(4, 2, 3, 9999999, 6, 'INGRESO', 15, '2022-06-22 21:26:03', '2022-06-27 21:30:08', '2022-06-27 21:30:08'),
(5, 3, 3, 9999999, NULL, 'DESPACHO', 5, '2022-06-22 23:52:06', '2022-06-27 21:45:36', '2022-06-27 21:45:36'),
(6, 3, 2, 9999999, NULL, 'DESPACHO', 3, '2022-06-22 23:52:06', '2022-06-27 21:45:36', '2022-06-27 21:45:36'),
(7, 4, 2, 9999999, 6, 'INGRESO', 5, '2022-06-24 23:21:45', '2022-06-27 21:30:07', '2022-06-27 21:30:07'),
(8, 4, 3, 9999999, 6, 'INGRESO', 2, '2022-06-24 23:21:45', '2022-06-27 21:30:07', '2022-06-27 21:30:07'),
(9, 4, 1, 9999999, 6, 'INGRESO', 4, '2022-06-24 23:21:45', '2022-06-27 21:30:07', '2022-06-27 21:30:07'),
(10, 5, 2, 9999999, NULL, 'DESPACHO', 3, '2022-06-24 23:23:58', '2022-06-27 21:45:34', '2022-06-27 21:45:34'),
(11, 5, 3, 9999999, NULL, 'DESPACHO', 5, '2022-06-24 23:23:58', '2022-06-27 21:45:34', '2022-06-27 21:45:34'),
(12, 5, 1, 9999999, NULL, 'DESPACHO', 2, '2022-06-24 23:23:58', '2022-06-27 21:45:34', '2022-06-27 21:45:34'),
(13, 6, 3, 9999999, NULL, 'INGRESO', 5, '2022-06-24 23:52:54', '2022-06-27 21:30:03', '2022-06-27 21:30:03'),
(14, 6, 2, 9999999, NULL, 'INGRESO', 4, '2022-06-24 23:52:54', '2022-06-27 21:30:03', '2022-06-27 21:30:03'),
(15, 7, 10, 9999999, 222, 'INGRESO', 5, '2022-06-27 17:07:50', '2022-06-27 17:21:55', '2022-06-27 17:21:55'),
(16, 8, 10, 9999999, 222, 'INGRESO', 5, '2022-06-27 21:42:52', '2022-08-09 18:36:37', '2022-08-09 18:36:37'),
(17, 8, 15, 9999999, 223, 'INGRESO', 3, '2022-06-27 21:42:52', '2022-08-09 18:36:37', '2022-08-09 18:36:37'),
(18, 8, 16, 9999999, 223, 'INGRESO', 1, '2022-06-27 21:42:52', '2022-08-09 18:36:37', '2022-08-09 18:36:37'),
(19, 8, 17, 9999999, 223, 'INGRESO', 1, '2022-06-27 21:42:52', '2022-08-09 18:36:37', '2022-08-09 18:36:37'),
(20, 8, 27, 9999999, 223, 'INGRESO', 2, '2022-06-27 21:42:52', '2022-08-09 18:36:37', '2022-08-09 18:36:37'),
(21, 8, 32, 9999999, 222, 'INGRESO', 4, '2022-06-27 21:42:52', '2022-08-09 18:36:37', '2022-08-09 18:36:37'),
(22, 8, 33, 9999999, 222, 'INGRESO', 3, '2022-06-27 21:42:52', '2022-08-09 18:36:37', '2022-08-09 18:36:37'),
(23, 8, 34, 9999999, 222, 'INGRESO', 10, '2022-06-27 21:42:52', '2022-08-09 18:36:37', '2022-08-09 18:36:37'),
(24, 8, 35, 9999999, 222, 'INGRESO', 11, '2022-06-27 21:42:52', '2022-08-09 18:36:37', '2022-08-09 18:36:37'),
(25, 8, 36, 9999999, 222, 'INGRESO', 2, '2022-06-27 21:42:52', '2022-08-09 18:36:37', '2022-08-09 18:36:37'),
(26, 8, 37, 9999999, 223, 'INGRESO', 1, '2022-06-27 21:42:52', '2022-08-09 18:36:37', '2022-08-09 18:36:37'),
(27, 8, 38, 9999999, 223, 'INGRESO', 2, '2022-06-27 21:42:52', '2022-08-09 18:36:37', '2022-08-09 18:36:37'),
(28, 8, 39, 9999999, 223, 'INGRESO', 3, '2022-06-27 21:42:52', '2022-08-09 18:36:37', '2022-08-09 18:36:37'),
(29, 8, 45, 9999999, 223, 'INGRESO', 3, '2022-06-27 21:42:52', '2022-08-09 18:36:37', '2022-08-09 18:36:37'),
(30, 8, 47, 9999999, 223, 'INGRESO', 18, '2022-06-27 21:42:52', '2022-08-09 18:36:37', '2022-08-09 18:36:37'),
(31, 8, 48, 9999999, 223, 'INGRESO', 6, '2022-06-27 21:42:52', '2022-08-09 18:36:37', '2022-08-09 18:36:37'),
(32, 8, 51, 9999999, 223, 'INGRESO', 1, '2022-06-27 21:42:52', '2022-08-09 18:36:37', '2022-08-09 18:36:37'),
(33, 8, 56, 9999999, 223, 'INGRESO', 1, '2022-06-27 21:42:52', '2022-08-09 18:36:37', '2022-08-09 18:36:37'),
(34, 8, 57, 9999999, 223, 'INGRESO', 6, '2022-06-27 21:42:52', '2022-08-09 18:36:37', '2022-08-09 18:36:37'),
(35, 8, 58, 9999999, 223, 'INGRESO', 2, '2022-06-27 21:42:52', '2022-08-09 18:36:37', '2022-08-09 18:36:37'),
(36, 8, 59, 9999999, 223, 'INGRESO', 2, '2022-06-27 21:42:52', '2022-08-09 18:36:37', '2022-08-09 18:36:37'),
(37, 8, 60, 9999999, 223, 'INGRESO', 2, '2022-06-27 21:42:52', '2022-08-09 18:36:38', '2022-08-09 18:36:38'),
(38, 8, 61, 9999999, 223, 'INGRESO', 2, '2022-06-27 21:42:52', '2022-08-09 18:36:38', '2022-08-09 18:36:38'),
(39, 9, 32, 9999999, NULL, 'DESPACHO', 2, '2022-06-27 21:51:15', '2022-08-11 23:42:40', '2022-08-11 23:42:40'),
(40, 9, 33, 9999999, NULL, 'DESPACHO', 2, '2022-06-27 21:51:15', '2022-08-11 23:42:40', '2022-08-11 23:42:40'),
(41, 9, 34, 9999999, NULL, 'DESPACHO', 4, '2022-06-27 21:51:15', '2022-08-11 23:42:40', '2022-08-11 23:42:40'),
(42, 9, 35, 9999999, NULL, 'DESPACHO', 2, '2022-06-27 21:51:15', '2022-08-11 23:42:40', '2022-08-11 23:42:40'),
(43, 9, 36, 9999999, NULL, 'DESPACHO', 1, '2022-06-27 21:51:15', '2022-08-11 23:42:40', '2022-08-11 23:42:40'),
(44, 10, 12, 9999999, 223, 'INGRESO', 22, '2022-06-27 21:52:33', '2022-08-09 18:36:34', '2022-08-09 18:36:34'),
(45, 11, 68, 9999999, 233, 'INGRESO', 27, '2022-06-27 23:04:58', '2022-07-06 17:42:56', '2022-07-06 17:42:56'),
(46, 11, 79, 9999999, 233, 'INGRESO', 6, '2022-06-27 23:04:58', '2022-07-06 17:42:56', '2022-07-06 17:42:56'),
(47, 11, 82, 9999999, 233, 'INGRESO', 24, '2022-06-27 23:04:58', '2022-07-06 17:42:56', '2022-07-06 17:42:56'),
(48, 11, 85, 9999999, 224, 'INGRESO', 84, '2022-06-27 23:04:58', '2022-07-06 17:42:56', '2022-07-06 17:42:56'),
(49, 11, 86, 9999999, 224, 'INGRESO', 24, '2022-06-27 23:04:58', '2022-07-06 17:42:56', '2022-07-06 17:42:56'),
(50, 11, 87, 9999999, 224, 'INGRESO', 12, '2022-06-27 23:04:58', '2022-07-06 17:42:56', '2022-07-06 17:42:56'),
(51, 11, 88, 9999999, 224, 'INGRESO', 12, '2022-06-27 23:04:58', '2022-07-06 17:42:56', '2022-07-06 17:42:56'),
(52, 11, 89, 9999999, 224, 'INGRESO', 204, '2022-06-27 23:04:58', '2022-07-06 17:42:56', '2022-07-06 17:42:56'),
(53, 11, 91, 9999999, 225, 'INGRESO', 156, '2022-06-27 23:04:58', '2022-07-06 17:42:56', '2022-07-06 17:42:56'),
(54, 11, 94, 9999999, 225, 'INGRESO', 168, '2022-06-27 23:04:58', '2022-07-06 17:42:56', '2022-07-06 17:42:56'),
(55, 12, 95, 9999999, 4, 'INGRESO', 2, '2022-07-14 16:40:08', '2022-08-09 18:36:29', '2022-08-09 18:36:29'),
(56, 13, 95, 9999999, NULL, 'DESPACHO', 1, '2022-07-14 16:59:14', '2022-08-09 18:36:44', '2022-08-09 18:36:44'),
(57, 14, 95, 9999999, 5, 'INGRESO', 2, '2022-07-14 22:03:35', '2022-08-09 18:36:25', '2022-08-09 18:36:25'),
(58, 15, 59, 9999999, 223, 'INGRESO', 2, '2022-08-12 00:28:46', '2022-12-30 19:46:12', '2022-12-30 19:46:12'),
(59, 15, 45, 9999999, 223, 'INGRESO', 3, '2022-08-12 00:28:46', '2022-12-30 19:46:12', '2022-12-30 19:46:12'),
(60, 15, 37, 9999999, 223, 'INGRESO', 1, '2022-08-12 00:28:46', '2022-12-30 19:46:12', '2022-12-30 19:46:12'),
(61, 15, 31, 9999999, 222, 'INGRESO', 7, '2022-08-12 00:28:46', '2022-12-30 19:46:12', '2022-12-30 19:46:12'),
(62, 15, 35, 9999999, 222, 'INGRESO', 8, '2022-08-12 00:28:46', '2022-12-30 19:46:12', '2022-12-30 19:46:12'),
(63, 15, 51, 9999999, 222, 'INGRESO', 1, '2022-08-12 00:28:46', '2022-12-30 19:46:12', '2022-12-30 19:46:12'),
(64, 15, 57, 9999999, 223, 'INGRESO', 6, '2022-08-12 00:28:46', '2022-12-30 19:46:12', '2022-12-30 19:46:12'),
(65, 15, 32, 9999999, 222, 'INGRESO', 3, '2022-08-12 00:28:46', '2022-12-30 19:46:12', '2022-12-30 19:46:12'),
(66, 15, 33, 9999999, 222, 'INGRESO', 3, '2022-08-12 00:28:46', '2022-12-30 19:46:12', '2022-12-30 19:46:12'),
(67, 15, 30, 9999999, 222, 'INGRESO', 10, '2022-08-12 00:28:46', '2022-12-30 19:46:12', '2022-12-30 19:46:12'),
(68, 15, 34, 9999999, 222, 'INGRESO', 12, '2022-08-12 00:28:46', '2022-12-30 19:46:12', '2022-12-30 19:46:12'),
(69, 15, 15, 9999999, 223, 'INGRESO', 3, '2022-08-12 00:28:46', '2022-12-30 19:46:12', '2022-12-30 19:46:12'),
(70, 15, 16, 9999999, 223, 'INGRESO', 1, '2022-08-12 00:28:46', '2022-12-30 19:46:12', '2022-12-30 19:46:12'),
(71, 15, 38, 9999999, 223, 'INGRESO', 2, '2022-08-12 00:28:46', '2022-12-30 19:46:12', '2022-12-30 19:46:12'),
(72, 15, 39, 9999999, 223, 'INGRESO', 3, '2022-08-12 00:28:46', '2022-12-30 19:46:12', '2022-12-30 19:46:12'),
(73, 15, 27, 9999999, 223, 'INGRESO', 2, '2022-08-12 00:28:46', '2022-12-30 19:46:12', '2022-12-30 19:46:12'),
(74, 15, 12, 9999999, 223, 'INGRESO', 16, '2022-08-12 00:28:46', '2022-12-30 19:46:12', '2022-12-30 19:46:12'),
(75, 15, 47, 9999999, 223, 'INGRESO', 15, '2022-08-12 00:28:46', '2022-12-30 19:46:12', '2022-12-30 19:46:12'),
(76, 15, 36, 9999999, 222, 'INGRESO', 3, '2022-08-12 00:28:46', '2022-12-30 19:46:12', '2022-12-30 19:46:12'),
(77, 15, 17, 9999999, 223, 'INGRESO', 1, '2022-08-12 00:28:46', '2022-12-30 19:46:12', '2022-12-30 19:46:12'),
(78, 15, 56, 9999999, 223, 'INGRESO', 1, '2022-08-12 00:28:46', '2022-12-30 19:46:12', '2022-12-30 19:46:12'),
(79, 16, 97, 9999999, 223, 'INGRESO', 4, '2022-08-12 00:35:21', '2022-12-30 19:46:10', '2022-12-30 19:46:10'),
(80, 16, 98, 9999999, 223, 'INGRESO', 2, '2022-08-12 00:35:21', '2022-12-30 19:46:10', '2022-12-30 19:46:10'),
(81, 16, 99, 9999999, 223, 'INGRESO', 9, '2022-08-12 00:35:21', '2022-12-30 19:46:10', '2022-12-30 19:46:10'),
(82, 17, 31, 9999999, 222, 'INGRESO', 15, '2022-08-15 17:49:56', '2022-12-30 19:46:07', '2022-12-30 19:46:07'),
(83, 17, 30, 9999999, 222, 'INGRESO', 15, '2022-08-15 17:49:56', '2022-12-30 19:46:07', '2022-12-30 19:46:07'),
(84, 18, 207, 9999999, 223, 'INGRESO', 5, '2022-08-15 17:52:03', '2022-12-30 19:46:04', '2022-12-30 19:46:04'),
(85, 19, 207, 9999999, NULL, 'DESPACHO', 3, '2022-08-15 17:53:12', '2022-12-30 19:45:50', '2022-12-30 19:45:50'),
(86, 19, 30, 9999999, NULL, 'DESPACHO', 2, '2022-08-15 17:53:12', '2022-12-30 19:45:50', '2022-12-30 19:45:50'),
(87, 19, 32, 9999999, NULL, 'DESPACHO', 1, '2022-08-15 17:53:12', '2022-12-30 19:45:50', '2022-12-30 19:45:50'),
(88, 19, 33, 9999999, NULL, 'DESPACHO', 1, '2022-08-15 17:53:12', '2022-12-30 19:45:50', '2022-12-30 19:45:50'),
(89, 20, 30, 9999999, NULL, 'DESPACHO', 18, '2022-08-17 17:10:59', '2022-12-30 19:45:48', '2022-12-30 19:45:48'),
(90, 20, 31, 9999999, NULL, 'DESPACHO', 20, '2022-08-17 17:10:59', '2022-12-30 19:45:48', '2022-12-30 19:45:48'),
(91, 20, 34, 9999999, NULL, 'DESPACHO', 10, '2022-08-17 17:10:59', '2022-12-30 19:45:48', '2022-12-30 19:45:48'),
(92, 20, 35, 9999999, NULL, 'DESPACHO', 8, '2022-08-17 17:10:59', '2022-12-30 19:45:48', '2022-12-30 19:45:48'),
(93, 20, 47, 9999999, NULL, 'DESPACHO', 11, '2022-08-17 17:10:59', '2022-12-30 19:45:48', '2022-12-30 19:45:48'),
(94, 20, 39, 9999999, NULL, 'DESPACHO', 3, '2022-08-17 17:10:59', '2022-12-30 19:45:48', '2022-12-30 19:45:48'),
(95, 21, 30, 9999999, 222, 'INGRESO', 10, '2022-08-17 22:47:17', '2022-12-30 19:45:59', '2022-12-30 19:45:59'),
(96, 21, 34, 9999999, 222, 'INGRESO', 8, '2022-08-17 22:47:17', '2022-12-30 19:45:59', '2022-12-30 19:45:59'),
(97, 21, 31, 9999999, 222, 'INGRESO', 10, '2022-08-17 22:47:17', '2022-12-30 19:45:59', '2022-12-30 19:45:59'),
(98, 21, 35, 9999999, 222, 'INGRESO', 10, '2022-08-17 22:47:17', '2022-12-30 19:45:59', '2022-12-30 19:45:59'),
(99, 22, 231, 9999999, 158, 'INGRESO', 2, '2022-08-18 18:41:21', '2022-08-18 23:47:55', '2022-08-18 23:47:55'),
(100, 22, 241, 9999999, 158, 'INGRESO', 2, '2022-08-18 18:41:21', '2022-08-18 23:47:55', '2022-08-18 23:47:55'),
(101, 22, 228, 9999999, 158, 'INGRESO', 2, '2022-08-18 18:41:21', '2022-08-18 23:47:55', '2022-08-18 23:47:55'),
(102, 22, 242, 9999999, 158, 'INGRESO', 2, '2022-08-18 18:41:21', '2022-08-18 23:47:55', '2022-08-18 23:47:55'),
(103, 22, 255, 9999999, 159, 'INGRESO', 3, '2022-08-18 18:41:21', '2022-08-18 23:47:55', '2022-08-18 23:47:55'),
(104, 23, 135, 9999999, 84, 'INGRESO', 100, '2022-08-19 20:37:33', '2022-12-27 17:59:22', '2022-12-27 17:59:22'),
(105, 23, 101, 9999999, 82, 'INGRESO', 8, '2022-08-19 20:37:33', '2022-12-27 17:59:22', '2022-12-27 17:59:22'),
(106, 23, 102, 9999999, 82, 'INGRESO', 8, '2022-08-19 20:37:33', '2022-12-27 17:59:22', '2022-12-27 17:59:22'),
(107, 23, 103, 9999999, 82, 'INGRESO', 9, '2022-08-19 20:37:33', '2022-12-27 17:59:22', '2022-12-27 17:59:22'),
(108, 23, 105, 9999999, 79, 'INGRESO', 3, '2022-08-19 20:37:33', '2022-12-27 17:59:22', '2022-12-27 17:59:22'),
(109, 23, 106, 9999999, 82, 'INGRESO', 10, '2022-08-19 20:37:33', '2022-12-27 17:59:22', '2022-12-27 17:59:22'),
(110, 23, 107, 9999999, 80, 'INGRESO', 13, '2022-08-19 20:37:33', '2022-12-27 17:59:22', '2022-12-27 17:59:22'),
(111, 23, 108, 9999999, 80, 'INGRESO', 8, '2022-08-19 20:37:33', '2022-12-27 17:59:22', '2022-12-27 17:59:22'),
(112, 23, 109, 9999999, 80, 'INGRESO', 5, '2022-08-19 20:37:33', '2022-12-27 17:59:22', '2022-12-27 17:59:22'),
(113, 23, 110, 9999999, 80, 'INGRESO', 10, '2022-08-19 20:37:33', '2022-12-27 17:59:22', '2022-12-27 17:59:22'),
(114, 23, 111, 9999999, 80, 'INGRESO', 5, '2022-08-19 20:37:33', '2022-12-27 17:59:22', '2022-12-27 17:59:22'),
(115, 23, 112, 9999999, 82, 'INGRESO', 8, '2022-08-19 20:37:33', '2022-12-27 17:59:22', '2022-12-27 17:59:22'),
(116, 23, 114, 9999999, 80, 'INGRESO', 8, '2022-08-19 20:37:33', '2022-12-27 17:59:22', '2022-12-27 17:59:22'),
(117, 23, 115, 9999999, 80, 'INGRESO', 8, '2022-08-19 20:37:33', '2022-12-27 17:59:22', '2022-12-27 17:59:22'),
(118, 23, 116, 9999999, 80, 'INGRESO', 8, '2022-08-19 20:37:33', '2022-12-27 17:59:22', '2022-12-27 17:59:22'),
(119, 23, 118, 9999999, 80, 'INGRESO', 2, '2022-08-19 20:37:33', '2022-12-27 17:59:22', '2022-12-27 17:59:22'),
(120, 23, 119, 9999999, 80, 'INGRESO', 2, '2022-08-19 20:37:33', '2022-12-27 17:59:22', '2022-12-27 17:59:22'),
(121, 23, 120, 9999999, 81, 'INGRESO', 5, '2022-08-19 20:37:33', '2022-12-27 17:59:22', '2022-12-27 17:59:22'),
(122, 23, 121, 9999999, 81, 'INGRESO', 45, '2022-08-19 20:37:33', '2022-12-27 17:59:22', '2022-12-27 17:59:22'),
(123, 23, 122, 9999999, 81, 'INGRESO', 13, '2022-08-19 20:37:33', '2022-12-27 17:59:22', '2022-12-27 17:59:22'),
(124, 23, 124, 9999999, 81, 'INGRESO', 7, '2022-08-19 20:37:33', '2022-12-27 17:59:22', '2022-12-27 17:59:22'),
(125, 23, 125, 9999999, 83, 'INGRESO', 3, '2022-08-19 20:37:33', '2022-12-27 17:59:22', '2022-12-27 17:59:22'),
(126, 23, 128, 9999999, 83, 'INGRESO', 3, '2022-08-19 20:37:33', '2022-12-27 17:59:22', '2022-12-27 17:59:22'),
(127, 23, 129, 9999999, 83, 'INGRESO', 3, '2022-08-19 20:37:33', '2022-12-27 17:59:22', '2022-12-27 17:59:22'),
(128, 23, 130, 9999999, 83, 'INGRESO', 10, '2022-08-19 20:37:33', '2022-12-27 17:59:22', '2022-12-27 17:59:22'),
(129, 23, 131, 9999999, 83, 'INGRESO', 10, '2022-08-19 20:37:33', '2022-12-27 17:59:22', '2022-12-27 17:59:22'),
(130, 23, 133, 9999999, 83, 'INGRESO', 2, '2022-08-19 20:37:33', '2022-12-27 17:59:22', '2022-12-27 17:59:22'),
(131, 23, 134, 9999999, 82, 'INGRESO', 8, '2022-08-19 20:37:33', '2022-12-27 17:59:22', '2022-12-27 17:59:22'),
(132, 23, 136, 9999999, 84, 'INGRESO', 10, '2022-08-19 20:37:33', '2022-12-27 17:59:22', '2022-12-27 17:59:22'),
(133, 23, 137, 9999999, 84, 'INGRESO', 9, '2022-08-19 20:37:33', '2022-12-27 17:59:22', '2022-12-27 17:59:22'),
(134, 23, 138, 9999999, 84, 'INGRESO', 1, '2022-08-19 20:37:33', '2022-12-27 17:59:22', '2022-12-27 17:59:22'),
(135, 23, 139, 9999999, 84, 'INGRESO', 8, '2022-08-19 20:37:33', '2022-12-27 17:59:22', '2022-12-27 17:59:22'),
(136, 23, 141, 9999999, 83, 'INGRESO', 16, '2022-08-19 20:37:33', '2022-12-27 17:59:22', '2022-12-27 17:59:22'),
(137, 24, 31, 9999999, NULL, 'DESPACHO', 7, '2022-08-20 01:25:14', '2022-12-30 19:45:46', '2022-12-30 19:45:46'),
(138, 24, 30, 9999999, NULL, 'DESPACHO', 6, '2022-08-20 01:25:14', '2022-12-30 19:45:46', '2022-12-30 19:45:46'),
(139, 25, 31, 9999999, NULL, 'DESPACHO', 7, '2022-08-20 01:25:33', '2022-12-30 19:45:45', '2022-12-30 19:45:45'),
(140, 25, 30, 9999999, NULL, 'DESPACHO', 6, '2022-08-20 01:25:33', '2022-12-30 19:45:45', '2022-12-30 19:45:45'),
(141, 26, 47, 9999999, 223, 'INGRESO', 26, '2022-08-20 01:26:52', '2022-12-30 19:46:15', '2022-12-30 19:46:15'),
(142, 26, 97, 9999999, 223, 'INGRESO', 10, '2022-08-20 01:26:52', '2022-12-30 19:46:15', '2022-12-30 19:46:15'),
(143, 26, 39, 9999999, 223, 'INGRESO', 12, '2022-08-20 01:26:52', '2022-12-30 19:46:15', '2022-12-30 19:46:15'),
(144, 27, 207, 9999999, NULL, 'DESPACHO', 1, '2022-12-02 20:23:38', '2022-12-30 19:45:42', '2022-12-30 19:45:42'),
(145, 27, 45, 9999999, NULL, 'DESPACHO', 2, '2022-12-02 20:23:38', '2022-12-30 19:45:42', '2022-12-30 19:45:42'),
(146, 28, 28, 9999999, 4, 'INGRESO', 4, '2022-12-19 14:45:59', '2022-12-19 14:46:49', '2022-12-19 14:46:49'),
(147, 29, 59, 9999999, NULL, 'DESPACHO', 2, '2022-12-19 14:47:58', '2022-12-30 19:45:39', '2022-12-30 19:45:39'),
(148, 30, 141, 9999999, 89, 'INGRESO', 8, '2022-12-19 22:05:49', '2022-12-27 17:59:18', '2022-12-27 17:59:18'),
(149, 30, 229, 9999999, 89, 'INGRESO', 1, '2022-12-19 22:05:49', '2022-12-27 17:59:18', '2022-12-27 17:59:18'),
(150, 31, 229, 9999999, NULL, 'DESPACHO', 1, '2022-12-19 22:07:52', '2022-12-27 17:59:38', '2022-12-27 17:59:38'),
(151, 32, 140, 9999999, 314, 'INGRESO', 400, '2022-12-27 19:08:38', NULL, NULL),
(152, 32, 132, 9999999, 313, 'INGRESO', 150, '2022-12-27 19:08:38', NULL, NULL),
(153, 32, 357, 9999999, 313, 'INGRESO', 120, '2022-12-27 19:08:38', NULL, NULL),
(154, 32, 157, 9999999, 313, 'INGRESO', 140, '2022-12-27 19:08:38', NULL, NULL),
(155, 32, 133, 9999999, 314, 'INGRESO', 508, '2022-12-27 19:08:38', NULL, NULL),
(156, 33, 488, 9999999, 313, 'INGRESO', 100, '2022-12-28 14:38:04', NULL, NULL),
(157, 33, 489, 9999999, 312, 'INGRESO', 75, '2022-12-28 14:38:04', NULL, NULL),
(158, 33, 490, 9999999, 311, 'INGRESO', 80, '2022-12-28 14:38:04', NULL, NULL),
(159, 33, 347, 9999999, 320, 'INGRESO', 200, '2022-12-28 14:38:04', NULL, NULL),
(160, 33, 230, 9999999, 321, 'INGRESO', 300, '2022-12-28 14:38:04', NULL, NULL),
(161, 33, 506, 9999999, 320, 'INGRESO', 300, '2022-12-28 14:38:04', NULL, NULL),
(162, 33, 507, 9999999, 320, 'INGRESO', 120, '2022-12-28 14:38:04', NULL, NULL),
(163, 33, 508, 9999999, 320, 'INGRESO', 150, '2022-12-28 14:38:04', NULL, NULL),
(164, 33, 509, 9999999, 319, 'INGRESO', 12, '2022-12-28 14:38:04', NULL, NULL),
(165, 33, 120, 9999999, 324, 'INGRESO', 150, '2022-12-28 14:38:04', NULL, NULL),
(166, 33, 105, 9999999, 325, 'INGRESO', 100, '2022-12-28 14:38:04', NULL, NULL),
(167, 33, 101, 9999999, 326, 'INGRESO', 414, '2022-12-28 14:38:04', NULL, NULL),
(168, 33, 100, 9999999, 324, 'INGRESO', 100, '2022-12-28 14:38:04', NULL, NULL),
(169, 33, 501, 9999999, 324, 'INGRESO', 120, '2022-12-28 14:38:04', NULL, NULL),
(170, 33, 504, 9999999, 322, 'INGRESO', 60, '2022-12-28 14:38:04', NULL, NULL),
(171, 33, 486, 9999999, 323, 'INGRESO', 208, '2022-12-28 14:38:04', NULL, NULL),
(172, 33, 502, 9999999, 321, 'INGRESO', 600, '2022-12-28 14:38:04', NULL, NULL),
(173, 33, 102, 9999999, 323, 'INGRESO', 150, '2022-12-28 14:38:04', NULL, NULL),
(174, 33, 505, 9999999, 322, 'INGRESO', 60, '2022-12-28 14:38:04', NULL, NULL),
(175, 33, 119, 9999999, 319, 'INGRESO', 250, '2022-12-28 14:38:05', NULL, NULL),
(176, 33, 135, 9999999, 319, 'INGRESO', 100, '2022-12-28 14:38:05', NULL, NULL),
(177, 33, 499, 9999999, 319, 'INGRESO', 250, '2022-12-28 14:38:05', NULL, NULL),
(178, 33, 107, 9999999, 319, 'INGRESO', 250, '2022-12-28 14:38:05', NULL, NULL),
(179, 33, 500, 9999999, 315, 'INGRESO', 60, '2022-12-28 14:38:05', NULL, NULL),
(180, 33, 129, 9999999, 315, 'INGRESO', 75, '2022-12-28 14:38:05', NULL, NULL),
(181, 34, 363, 9999999, 316, 'INGRESO', 200, '2022-12-28 15:01:21', NULL, NULL),
(182, 34, 368, 9999999, 317, 'INGRESO', 60, '2022-12-28 15:01:21', NULL, NULL),
(183, 34, 387, 9999999, 316, 'INGRESO', 45, '2022-12-28 15:01:21', NULL, NULL),
(184, 34, 510, 9999999, 317, 'INGRESO', 40, '2022-12-28 15:01:21', NULL, NULL),
(185, 34, 154, 9999999, 315, 'INGRESO', 75, '2022-12-28 15:01:21', NULL, NULL),
(186, 34, 384, 9999999, 317, 'INGRESO', 336, '2022-12-28 15:01:21', NULL, NULL),
(187, 34, 497, 9999999, 317, 'INGRESO', 120, '2022-12-28 15:01:21', NULL, NULL),
(188, 34, 498, 9999999, 316, 'INGRESO', 120, '2022-12-28 15:01:21', NULL, NULL),
(189, 34, 118, 9999999, 321, 'INGRESO', 250, '2022-12-28 15:01:21', NULL, NULL),
(190, 34, 117, 9999999, 322, 'INGRESO', 250, '2022-12-28 15:01:21', NULL, NULL),
(191, 34, 104, 9999999, 322, 'INGRESO', 100, '2022-12-28 15:01:21', NULL, NULL),
(192, 34, 494, 9999999, 315, 'INGRESO', 120, '2022-12-28 15:01:21', NULL, NULL),
(193, 34, 495, 9999999, 315, 'INGRESO', 120, '2022-12-28 15:01:21', NULL, NULL),
(194, 34, 130, 9999999, 315, 'INGRESO', 45, '2022-12-28 15:01:21', NULL, NULL),
(195, 34, 148, 9999999, 315, 'INGRESO', 100, '2022-12-28 15:01:21', NULL, NULL),
(196, 34, 153, 9999999, 315, 'INGRESO', 400, '2022-12-28 15:01:21', NULL, NULL),
(197, 34, 350, 9999999, 314, 'INGRESO', 60, '2022-12-28 15:01:21', NULL, NULL),
(198, 34, 158, 9999999, 314, 'INGRESO', 300, '2022-12-28 15:01:21', NULL, NULL),
(199, 34, 496, 9999999, 316, 'INGRESO', 350, '2022-12-28 15:01:21', NULL, NULL),
(200, 34, 122, 9999999, 311, 'INGRESO', 150, '2022-12-28 15:01:21', NULL, NULL),
(201, 34, 138, 9999999, 312, 'INGRESO', 250, '2022-12-28 15:01:21', NULL, NULL),
(202, 34, 116, 9999999, 311, 'INGRESO', 394, '2022-12-28 15:01:21', NULL, NULL),
(203, 34, 113, 9999999, 312, 'INGRESO', 250, '2022-12-28 15:01:21', NULL, NULL),
(204, 34, 493, 9999999, 312, 'INGRESO', 60, '2022-12-28 15:01:21', NULL, NULL),
(205, 34, 491, 9999999, 312, 'INGRESO', 40, '2022-12-28 15:01:21', NULL, NULL),
(206, 34, 492, 9999999, 312, 'INGRESO', 150, '2022-12-28 15:01:21', NULL, NULL),
(207, 34, 128, 9999999, 311, 'INGRESO', 150, '2022-12-28 15:01:21', NULL, NULL),
(208, 34, 160, 9999999, 312, 'INGRESO', 150, '2022-12-28 15:01:21', NULL, NULL),
(209, 34, 336, 9999999, 313, 'INGRESO', 350, '2022-12-28 15:01:21', NULL, NULL),
(210, 34, 358, 9999999, 311, 'INGRESO', 60, '2022-12-28 15:01:21', NULL, NULL),
(211, 34, 362, 9999999, 312, 'INGRESO', 45, '2022-12-28 15:01:21', NULL, NULL),
(212, 35, 503, 9999999, 323, 'INGRESO', 208, '2022-12-28 18:08:12', NULL, NULL),
(213, 36, 116, 9999999, NULL, 'DESPACHO', 184, '2022-12-30 20:38:31', NULL, NULL),
(214, 36, 357, 9999999, NULL, 'DESPACHO', 38, '2022-12-30 20:38:31', NULL, NULL),
(215, 36, 230, 9999999, NULL, 'DESPACHO', 78, '2022-12-30 20:38:31', NULL, NULL),
(216, 36, 158, 9999999, NULL, 'DESPACHO', 161, '2022-12-30 20:38:31', NULL, NULL),
(217, 36, 101, 9999999, NULL, 'DESPACHO', 276, '2022-12-30 20:38:31', NULL, NULL),
(218, 36, 384, 9999999, NULL, 'DESPACHO', 258, '2022-12-30 20:38:31', NULL, NULL),
(219, 36, 140, 9999999, NULL, 'DESPACHO', 68, '2022-12-30 20:38:31', NULL, NULL),
(220, 36, 133, 9999999, NULL, 'DESPACHO', 394, '2022-12-30 20:38:31', NULL, NULL),
(221, 36, 102, 9999999, NULL, 'DESPACHO', 12, '2022-12-30 20:38:31', NULL, NULL),
(222, 36, 135, 9999999, NULL, 'DESPACHO', 11, '2022-12-30 20:38:31', NULL, NULL),
(223, 36, 104, 9999999, NULL, 'DESPACHO', 13, '2022-12-30 20:38:31', NULL, NULL),
(224, 36, 122, 9999999, NULL, 'DESPACHO', 25, '2022-12-30 20:38:31', NULL, NULL),
(225, 36, 113, 9999999, NULL, 'DESPACHO', 27, '2022-12-30 20:38:31', NULL, NULL),
(226, 36, 506, 9999999, NULL, 'DESPACHO', 12, '2022-12-30 20:38:31', NULL, NULL),
(227, 36, 336, 9999999, NULL, 'DESPACHO', 199, '2022-12-30 20:38:31', NULL, NULL),
(228, 36, 490, 9999999, NULL, 'DESPACHO', 28, '2022-12-30 20:38:31', NULL, NULL),
(229, 36, 503, 9999999, NULL, 'DESPACHO', 115, '2022-12-30 20:38:31', NULL, NULL),
(230, 36, 502, 9999999, NULL, 'DESPACHO', 475, '2022-12-30 20:38:31', NULL, NULL),
(231, 36, 153, 9999999, NULL, 'DESPACHO', 36, '2022-12-30 20:38:31', NULL, NULL),
(232, 36, 498, 9999999, NULL, 'DESPACHO', 9, '2022-12-30 20:38:31', NULL, NULL),
(233, 36, 501, 9999999, NULL, 'DESPACHO', 9, '2022-12-30 20:38:31', NULL, NULL),
(234, 36, 507, 9999999, NULL, 'DESPACHO', 9, '2022-12-30 20:38:31', NULL, NULL),
(235, 36, 499, 9999999, NULL, 'DESPACHO', 44, '2022-12-30 20:38:31', NULL, NULL),
(236, 36, 496, 9999999, NULL, 'DESPACHO', 44, '2022-12-30 20:38:31', NULL, NULL),
(237, 36, 138, 9999999, NULL, 'DESPACHO', 30, '2022-12-30 20:38:31', NULL, NULL),
(238, 36, 118, 9999999, NULL, 'DESPACHO', 30, '2022-12-30 20:38:31', NULL, NULL),
(239, 36, 491, 9999999, NULL, 'DESPACHO', 14, '2022-12-30 20:38:31', NULL, NULL),
(240, 36, 510, 9999999, NULL, 'DESPACHO', 13, '2022-12-30 20:38:31', NULL, NULL),
(241, 36, 493, 9999999, NULL, 'DESPACHO', 3, '2022-12-30 20:38:31', NULL, NULL),
(242, 36, 494, 9999999, NULL, 'DESPACHO', 3, '2022-12-30 20:38:31', NULL, NULL),
(243, 36, 500, 9999999, NULL, 'DESPACHO', 3, '2022-12-30 20:38:31', NULL, NULL),
(244, 36, 505, 9999999, NULL, 'DESPACHO', 3, '2022-12-30 20:38:31', NULL, NULL),
(245, 36, 495, 9999999, NULL, 'DESPACHO', 3, '2022-12-30 20:38:31', NULL, NULL),
(246, 36, 497, 9999999, NULL, 'DESPACHO', 3, '2022-12-30 20:38:31', NULL, NULL),
(247, 36, 504, 9999999, NULL, 'DESPACHO', 3, '2022-12-30 20:38:31', NULL, NULL),
(248, 36, 508, 9999999, NULL, 'DESPACHO', 3, '2022-12-30 20:38:31', NULL, NULL),
(249, 36, 132, 9999999, NULL, 'DESPACHO', 1, '2022-12-30 20:38:31', NULL, NULL),
(250, 36, 120, 9999999, NULL, 'DESPACHO', 1, '2022-12-30 20:38:31', NULL, NULL),
(251, 36, 509, 9999999, NULL, 'DESPACHO', 12, '2022-12-30 20:38:31', NULL, NULL),
(252, 37, 100, 9999999, NULL, 'DESPACHO', 12, '2023-01-02 16:05:41', NULL, NULL),
(253, 38, 45, 9999999, 223, 'INGRESO', 3, '2023-01-02 22:11:05', NULL, NULL),
(254, 38, 37, 9999999, 223, 'INGRESO', 1, '2023-01-02 22:11:06', NULL, NULL),
(255, 38, 31, 9999999, 223, 'INGRESO', 19, '2023-01-02 22:11:06', NULL, NULL),
(256, 38, 35, 9999999, 223, 'INGRESO', 14, '2023-01-02 22:11:06', NULL, NULL),
(257, 38, 51, 9999999, 223, 'INGRESO', 1, '2023-01-02 22:11:06', NULL, NULL),
(258, 38, 99, 9999999, 223, 'INGRESO', 9, '2023-01-02 22:11:06', NULL, NULL),
(259, 38, 57, 9999999, 223, 'INGRESO', 6, '2023-01-02 22:11:06', NULL, NULL),
(260, 38, 30, 9999999, 222, 'INGRESO', 18, '2023-01-02 22:11:06', NULL, NULL),
(261, 38, 34, 9999999, 222, 'INGRESO', 20, '2023-01-02 22:11:06', NULL, NULL),
(262, 38, 15, 9999999, 223, 'INGRESO', 3, '2023-01-02 22:11:06', NULL, NULL),
(263, 38, 16, 9999999, 223, 'INGRESO', 1, '2023-01-02 22:11:06', NULL, NULL),
(264, 38, 38, 9999999, 223, 'INGRESO', 2, '2023-01-02 22:11:06', NULL, NULL),
(265, 38, 97, 9999999, 223, 'INGRESO', 8, '2023-01-02 22:11:06', NULL, NULL),
(266, 38, 39, 9999999, 223, 'INGRESO', 6, '2023-01-02 22:11:06', NULL, NULL),
(267, 38, 27, 9999999, 223, 'INGRESO', 2, '2023-01-02 22:11:06', NULL, NULL),
(268, 38, 12, 9999999, 223, 'INGRESO', 1, '2023-01-02 22:11:06', NULL, NULL),
(269, 38, 47, 9999999, 223, 'INGRESO', 17, '2023-01-02 22:11:06', NULL, NULL),
(270, 38, 17, 9999999, 223, 'INGRESO', 1, '2023-01-02 22:11:06', NULL, NULL),
(271, 38, 56, 9999999, 223, 'INGRESO', 1, '2023-01-02 22:11:06', NULL, NULL),
(272, 39, 350, 9999999, NULL, 'DESPACHO', 24, '2023-01-03 14:03:25', NULL, NULL),
(273, 40, 30, 9999999, NULL, 'DESPACHO', 9, '2023-01-03 14:10:23', NULL, NULL),
(274, 40, 34, 9999999, NULL, 'DESPACHO', 5, '2023-01-03 14:10:23', NULL, NULL),
(275, 40, 31, 9999999, NULL, 'DESPACHO', 9, '2023-01-03 14:10:23', NULL, NULL),
(276, 40, 35, 9999999, NULL, 'DESPACHO', 5, '2023-01-03 14:10:23', NULL, NULL),
(277, 40, 39, 9999999, NULL, 'DESPACHO', 3, '2023-01-03 14:10:23', NULL, NULL),
(278, 40, 47, 9999999, NULL, 'DESPACHO', 8, '2023-01-03 14:10:23', NULL, NULL),
(279, 41, 120, 9999999, NULL, 'DESPACHO', 24, '2023-01-04 16:00:10', NULL, NULL),
(280, 41, 493, 9999999, NULL, 'DESPACHO', 24, '2023-01-04 16:00:10', NULL, NULL),
(281, 41, 505, 9999999, NULL, 'DESPACHO', 36, '2023-01-04 16:00:10', NULL, NULL),
(282, 41, 504, 9999999, NULL, 'DESPACHO', 12, '2023-01-04 16:00:10', NULL, NULL),
(283, 42, 101, 9999999, 157, 'INGRESO', 3, '2023-01-04 16:23:06', '2023-01-04 16:24:16', '2023-01-04 16:24:16'),
(284, 43, 100, 9999999, 79, 'INGRESO', 90, '2023-01-04 18:22:19', NULL, NULL),
(285, 43, 101, 9999999, 157, 'INGRESO', 3, '2023-01-04 18:22:19', NULL, NULL),
(286, 43, 102, 9999999, 82, 'INGRESO', 4, '2023-01-04 18:22:19', NULL, NULL),
(287, 43, 103, 9999999, 82, 'INGRESO', 5, '2023-01-04 18:22:19', NULL, NULL),
(288, 43, 104, 9999999, 82, 'INGRESO', 1, '2023-01-04 18:22:19', NULL, NULL),
(289, 43, 106, 9999999, 102, 'INGRESO', 96, '2023-01-04 18:22:19', NULL, NULL),
(290, 43, 107, 9999999, 80, 'INGRESO', 12, '2023-01-04 18:22:19', NULL, NULL),
(291, 43, 108, 9999999, 81, 'INGRESO', 144, '2023-01-04 18:22:19', NULL, NULL),
(292, 43, 109, 9999999, 80, 'INGRESO', 94, '2023-01-04 18:22:19', NULL, NULL),
(293, 43, 110, 9999999, 80, 'INGRESO', 132, '2023-01-04 18:22:19', NULL, NULL),
(294, 43, 111, 9999999, 80, 'INGRESO', 60, '2023-01-04 18:22:19', NULL, NULL),
(295, 43, 112, 9999999, 82, 'INGRESO', 130, '2023-01-04 18:22:19', NULL, NULL),
(296, 43, 114, 9999999, 80, 'INGRESO', 144, '2023-01-04 18:22:19', NULL, NULL),
(297, 43, 115, 9999999, 80, 'INGRESO', 118, '2023-01-04 18:22:19', NULL, NULL),
(298, 43, 117, 9999999, 80, 'INGRESO', 17, '2023-01-04 18:22:19', NULL, NULL),
(299, 43, 121, 9999999, 81, 'INGRESO', 54, '2023-01-04 18:22:19', NULL, NULL),
(300, 43, 125, 9999999, 83, 'INGRESO', 48, '2023-01-04 18:22:19', NULL, NULL),
(301, 43, 126, 9999999, 82, 'INGRESO', 119, '2023-01-04 18:22:19', NULL, NULL),
(302, 43, 127, 9999999, 83, 'INGRESO', 101, '2023-01-04 18:22:19', NULL, NULL),
(303, 44, 128, 9999999, 338, 'INGRESO', 10, '2023-01-04 19:56:46', NULL, NULL),
(304, 44, 129, 9999999, 157, 'INGRESO', 9, '2023-01-04 19:56:46', NULL, NULL),
(305, 44, 130, 9999999, 83, 'INGRESO', 48, '2023-01-04 19:56:46', NULL, NULL),
(306, 44, 131, 9999999, 83, 'INGRESO', 60, '2023-01-04 19:56:46', NULL, NULL),
(307, 44, 134, 9999999, 81, 'INGRESO', 144, '2023-01-04 19:56:46', NULL, NULL),
(308, 44, 136, 9999999, 84, 'INGRESO', 153, '2023-01-04 19:56:46', NULL, NULL),
(309, 44, 137, 9999999, 84, 'INGRESO', 107, '2023-01-04 19:56:46', NULL, NULL),
(310, 44, 139, 9999999, 101, 'INGRESO', 258, '2023-01-04 19:56:46', NULL, NULL),
(311, 44, 141, 9999999, 83, 'INGRESO', 82, '2023-01-04 19:56:46', NULL, NULL),
(312, 44, 142, 9999999, 84, 'INGRESO', 204, '2023-01-04 19:56:46', NULL, NULL),
(313, 44, 143, 9999999, 84, 'INGRESO', 90, '2023-01-04 19:56:46', NULL, NULL),
(314, 44, 144, 9999999, 84, 'INGRESO', 180, '2023-01-04 19:56:46', NULL, NULL),
(315, 44, 145, 9999999, 84, 'INGRESO', 174, '2023-01-04 19:56:46', NULL, NULL),
(316, 44, 146, 9999999, 82, 'INGRESO', 215, '2023-01-04 19:56:46', NULL, NULL),
(317, 44, 147, 9999999, 80, 'INGRESO', 120, '2023-01-04 19:56:46', NULL, NULL),
(318, 44, 148, 9999999, 81, 'INGRESO', 77, '2023-01-04 19:56:46', NULL, NULL),
(319, 44, 149, 9999999, 81, 'INGRESO', 167, '2023-01-04 19:56:46', NULL, NULL),
(320, 44, 150, 9999999, 80, 'INGRESO', 144, '2023-01-04 19:56:46', NULL, NULL),
(321, 44, 151, 9999999, 80, 'INGRESO', 139, '2023-01-04 19:56:46', NULL, NULL),
(322, 44, 152, 9999999, 82, 'INGRESO', 56, '2023-01-04 19:56:46', NULL, NULL),
(323, 44, 155, 9999999, 156, 'INGRESO', 5, '2023-01-04 19:56:46', NULL, NULL),
(324, 45, 30, 9999999, NULL, 'DESPACHO', 9, '2023-01-05 14:47:51', '2023-01-05 15:34:44', '2023-01-05 15:34:44'),
(325, 45, 34, 9999999, NULL, 'DESPACHO', 5, '2023-01-05 14:47:51', '2023-01-05 15:34:44', '2023-01-05 15:34:44'),
(326, 45, 31, 9999999, NULL, 'DESPACHO', 10, '2023-01-05 14:47:51', '2023-01-05 15:34:44', '2023-01-05 15:34:44'),
(327, 45, 35, 9999999, NULL, 'DESPACHO', 5, '2023-01-05 14:47:51', '2023-01-05 15:34:44', '2023-01-05 15:34:44'),
(328, 45, 39, 9999999, NULL, 'DESPACHO', 3, '2023-01-05 14:47:51', '2023-01-05 15:34:44', '2023-01-05 15:34:44'),
(329, 45, 47, 9999999, NULL, 'DESPACHO', 8, '2023-01-05 14:47:51', '2023-01-05 15:34:44', '2023-01-05 15:34:44'),
(330, 46, 31, 9999999, 222, 'INGRESO', 20, '2023-01-05 15:01:12', NULL, NULL),
(331, 46, 30, 9999999, 222, 'INGRESO', 20, '2023-01-05 15:01:12', NULL, NULL),
(332, 46, 32, 9999999, 222, 'INGRESO', 3, '2023-01-05 15:01:12', NULL, NULL),
(333, 46, 33, 9999999, 222, 'INGRESO', 3, '2023-01-05 15:01:12', NULL, NULL),
(334, 46, 36, 9999999, 222, 'INGRESO', 3, '2023-01-05 15:01:12', NULL, NULL),
(335, 47, 31, 9999999, NULL, 'DESPACHO', 10, '2023-01-05 15:05:07', NULL, NULL),
(336, 47, 35, 9999999, NULL, 'DESPACHO', 3, '2023-01-05 15:05:07', NULL, NULL),
(337, 47, 30, 9999999, NULL, 'DESPACHO', 9, '2023-01-05 15:05:07', NULL, NULL),
(338, 47, 34, 9999999, NULL, 'DESPACHO', 3, '2023-01-05 15:05:07', NULL, NULL),
(339, 47, 39, 9999999, NULL, 'DESPACHO', 2, '2023-01-05 15:05:08', NULL, NULL),
(340, 47, 47, 9999999, NULL, 'DESPACHO', 2, '2023-01-05 15:05:08', NULL, NULL),
(341, 48, 31, 9999999, NULL, 'DESPACHO', 5, '2023-01-05 15:06:23', NULL, NULL),
(342, 48, 30, 9999999, NULL, 'DESPACHO', 5, '2023-01-05 15:06:23', NULL, NULL),
(343, 48, 38, 9999999, NULL, 'DESPACHO', 1, '2023-01-05 15:06:23', NULL, NULL),
(344, 49, 31, 9999999, NULL, 'DESPACHO', 2, '2023-01-05 19:38:29', NULL, NULL),
(345, 49, 35, 9999999, NULL, 'DESPACHO', 4, '2023-01-05 19:38:29', NULL, NULL),
(346, 49, 32, 9999999, NULL, 'DESPACHO', 2, '2023-01-05 19:38:29', NULL, NULL),
(347, 49, 33, 9999999, NULL, 'DESPACHO', 2, '2023-01-05 19:38:29', NULL, NULL),
(348, 49, 30, 9999999, NULL, 'DESPACHO', 2, '2023-01-05 19:38:29', NULL, NULL),
(349, 49, 34, 9999999, NULL, 'DESPACHO', 4, '2023-01-05 19:38:29', NULL, NULL),
(350, 49, 36, 9999999, NULL, 'DESPACHO', 2, '2023-01-05 19:38:29', NULL, NULL),
(351, 49, 39, 9999999, NULL, 'DESPACHO', 1, '2023-01-05 19:38:29', NULL, NULL),
(352, 50, 156, 9999999, 102, 'INGRESO', 127, '2023-01-06 17:02:47', NULL, NULL),
(353, 50, 157, 9999999, 338, 'INGRESO', 4, '2023-01-06 17:02:47', NULL, NULL),
(354, 50, 159, 9999999, 82, 'INGRESO', 132, '2023-01-06 17:02:47', NULL, NULL),
(355, 50, 160, 9999999, 84, 'INGRESO', 34, '2023-01-06 17:02:47', NULL, NULL),
(356, 50, 161, 9999999, 86, 'INGRESO', 106, '2023-01-06 17:02:47', NULL, NULL),
(357, 50, 162, 9999999, 86, 'INGRESO', 89, '2023-01-06 17:02:47', NULL, NULL),
(358, 50, 163, 9999999, 82, 'INGRESO', 83, '2023-01-06 17:02:47', NULL, NULL),
(359, 50, 164, 9999999, 156, 'INGRESO', 71, '2023-01-06 17:02:47', NULL, NULL),
(360, 50, 165, 9999999, 165, 'INGRESO', 36, '2023-01-06 17:02:47', NULL, NULL),
(361, 50, 167, 9999999, 81, 'INGRESO', 180, '2023-01-06 17:02:47', NULL, NULL),
(362, 50, 168, 9999999, 83, 'INGRESO', 132, '2023-01-06 17:02:47', NULL, NULL),
(363, 50, 169, 9999999, 82, 'INGRESO', 120, '2023-01-06 17:02:47', NULL, NULL),
(364, 50, 170, 9999999, 160, 'INGRESO', 60, '2023-01-06 17:02:47', NULL, NULL),
(365, 50, 171, 9999999, 87, 'INGRESO', 150, '2023-01-06 17:02:47', NULL, NULL),
(366, 50, 172, 9999999, 180, 'INGRESO', 196, '2023-01-06 17:02:47', NULL, NULL),
(367, 50, 173, 9999999, 299, 'INGRESO', 288, '2023-01-06 17:02:47', NULL, NULL),
(368, 50, 174, 9999999, 159, 'INGRESO', 18, '2023-01-06 17:02:47', NULL, NULL),
(369, 50, 176, 9999999, 86, 'INGRESO', 96, '2023-01-06 17:02:47', NULL, NULL),
(370, 50, 177, 9999999, 169, 'INGRESO', 194, '2023-01-06 17:02:47', NULL, NULL),
(371, 50, 179, 9999999, 159, 'INGRESO', 30, '2023-01-06 17:02:47', NULL, NULL),
(372, 50, 180, 9999999, 179, 'INGRESO', 425, '2023-01-06 17:02:47', NULL, NULL),
(373, 50, 181, 9999999, 171, 'INGRESO', 22, '2023-01-06 17:02:47', NULL, NULL),
(374, 50, 182, 9999999, 239, 'INGRESO', 272, '2023-01-06 17:02:47', NULL, NULL),
(375, 50, 183, 9999999, 161, 'INGRESO', 376, '2023-01-06 17:02:47', NULL, NULL),
(376, 50, 184, 9999999, 89, 'INGRESO', 331, '2023-01-06 17:02:47', NULL, NULL),
(377, 50, 185, 9999999, 91, 'INGRESO', 678, '2023-01-06 17:02:47', NULL, NULL),
(378, 50, 186, 9999999, 94, 'INGRESO', 711, '2023-01-06 17:02:47', NULL, NULL),
(379, 50, 187, 9999999, 91, 'INGRESO', 378, '2023-01-06 17:02:47', NULL, NULL),
(380, 50, 188, 9999999, 180, 'INGRESO', 64, '2023-01-06 17:02:47', NULL, NULL),
(381, 50, 189, 9999999, 238, 'INGRESO', 240, '2023-01-06 17:02:47', NULL, NULL),
(382, 50, 190, 9999999, 86, 'INGRESO', 270, '2023-01-06 17:02:47', NULL, NULL),
(383, 50, 191, 9999999, 238, 'INGRESO', 249, '2023-01-06 17:02:47', NULL, NULL),
(384, 51, 192, 9999999, 172, 'INGRESO', 159, '2023-01-06 20:38:37', NULL, NULL),
(385, 51, 193, 9999999, 167, 'INGRESO', 12, '2023-01-06 20:38:37', NULL, NULL),
(386, 51, 194, 9999999, 186, 'INGRESO', 439, '2023-01-06 20:38:37', NULL, NULL),
(387, 51, 196, 9999999, 180, 'INGRESO', 401, '2023-01-06 20:38:37', NULL, NULL),
(388, 51, 198, 9999999, 189, 'INGRESO', 156, '2023-01-06 20:38:37', NULL, NULL),
(389, 51, 199, 9999999, 157, 'INGRESO', 72, '2023-01-06 20:38:37', NULL, NULL),
(390, 51, 200, 9999999, 85, 'INGRESO', 277, '2023-01-06 20:38:37', NULL, NULL),
(391, 51, 201, 9999999, 186, 'INGRESO', 624, '2023-01-06 20:38:37', NULL, NULL),
(392, 51, 202, 9999999, 239, 'INGRESO', 752, '2023-01-06 20:38:37', NULL, NULL),
(393, 51, 204, 9999999, 79, 'INGRESO', 330, '2023-01-06 20:38:37', NULL, NULL),
(394, 51, 205, 9999999, 237, 'INGRESO', 648, '2023-01-06 20:38:37', NULL, NULL),
(395, 51, 203, 9999999, 79, 'INGRESO', 330, '2023-01-06 20:38:37', NULL, NULL),
(396, 51, 206, 9999999, 182, 'INGRESO', 521, '2023-01-06 20:38:37', NULL, NULL),
(397, 51, 208, 9999999, 181, 'INGRESO', 927, '2023-01-06 20:38:37', NULL, NULL),
(398, 51, 209, 9999999, 172, 'INGRESO', 445, '2023-01-06 20:38:37', NULL, NULL),
(399, 51, 210, 9999999, 182, 'INGRESO', 57, '2023-01-06 20:38:37', NULL, NULL),
(400, 51, 211, 9999999, 157, 'INGRESO', 46, '2023-01-06 20:38:37', NULL, NULL),
(401, 51, 212, 9999999, 186, 'INGRESO', 26, '2023-01-06 20:38:37', NULL, NULL),
(402, 51, 213, 9999999, 179, 'INGRESO', 381, '2023-01-06 20:38:37', NULL, NULL),
(403, 51, 214, 9999999, 170, 'INGRESO', 186, '2023-01-06 20:38:37', NULL, NULL),
(404, 51, 215, 9999999, 169, 'INGRESO', 197, '2023-01-06 20:38:37', NULL, NULL),
(405, 51, 216, 9999999, 87, 'INGRESO', 150, '2023-01-06 20:38:37', NULL, NULL),
(406, 51, 217, 9999999, 186, 'INGRESO', 163, '2023-01-06 20:38:37', NULL, NULL),
(407, 51, 218, 9999999, 169, 'INGRESO', 110, '2023-01-06 20:38:37', NULL, NULL),
(408, 51, 219, 9999999, 169, 'INGRESO', 473, '2023-01-06 20:38:37', NULL, NULL),
(409, 51, 220, 9999999, 161, 'INGRESO', 46, '2023-01-06 20:38:37', NULL, NULL),
(410, 51, 221, 9999999, 169, 'INGRESO', 402, '2023-01-06 20:38:37', NULL, NULL),
(411, 51, 222, 9999999, 169, 'INGRESO', 374, '2023-01-06 20:38:37', NULL, NULL),
(412, 51, 223, 9999999, 181, 'INGRESO', 51, '2023-01-06 20:38:37', NULL, NULL),
(413, 51, 224, 9999999, 159, 'INGRESO', 18, '2023-01-06 20:38:37', NULL, NULL),
(414, 51, 225, 9999999, 171, 'INGRESO', 390, '2023-01-06 20:38:37', NULL, NULL),
(415, 51, 261, 9999999, 203, 'INGRESO', 33, '2023-01-06 20:38:37', NULL, NULL),
(416, 51, 262, 9999999, 193, 'INGRESO', 62, '2023-01-06 20:38:37', NULL, NULL),
(417, 51, 263, 9999999, 195, 'INGRESO', 478, '2023-01-06 20:38:37', NULL, NULL),
(418, 51, 264, 9999999, 234, 'INGRESO', 24, '2023-01-06 20:38:37', NULL, NULL),
(419, 51, 265, 9999999, 197, 'INGRESO', 209, '2023-01-06 20:38:37', NULL, NULL),
(420, 51, 266, 9999999, 234, 'INGRESO', 80, '2023-01-06 20:38:37', NULL, NULL),
(421, 51, 267, 9999999, 202, 'INGRESO', 314, '2023-01-06 20:38:37', NULL, NULL),
(422, 51, 268, 9999999, 185, 'INGRESO', 180, '2023-01-06 20:38:37', NULL, NULL),
(423, 51, 269, 9999999, 203, 'INGRESO', 222, '2023-01-06 20:38:37', NULL, NULL),
(424, 51, 270, 9999999, 203, 'INGRESO', 35, '2023-01-06 20:38:37', NULL, NULL),
(425, 51, 279, 9999999, 92, 'INGRESO', 1840, '2023-01-06 20:38:37', NULL, NULL),
(426, 51, 280, 9999999, 92, 'INGRESO', 2066, '2023-01-06 20:38:37', NULL, NULL),
(427, 52, 281, 9999999, 92, 'INGRESO', 1101, '2023-01-06 22:22:11', NULL, NULL),
(428, 52, 282, 9999999, 194, 'INGRESO', 85, '2023-01-06 22:22:11', NULL, NULL),
(429, 52, 283, 9999999, 98, 'INGRESO', 222, '2023-01-06 22:22:11', NULL, NULL),
(430, 52, 284, 9999999, 96, 'INGRESO', 288, '2023-01-06 22:22:11', NULL, NULL),
(431, 52, 285, 9999999, 97, 'INGRESO', 35, '2023-01-06 22:22:11', NULL, NULL),
(432, 52, 286, 9999999, 97, 'INGRESO', 273, '2023-01-06 22:22:11', NULL, NULL),
(433, 52, 287, 9999999, 97, 'INGRESO', 114, '2023-01-06 22:22:11', NULL, NULL),
(434, 52, 288, 9999999, 98, 'INGRESO', 24, '2023-01-06 22:22:11', NULL, NULL),
(435, 52, 289, 9999999, 95, 'INGRESO', 84, '2023-01-06 22:22:11', NULL, NULL),
(436, 52, 290, 9999999, 95, 'INGRESO', 309, '2023-01-06 22:22:11', NULL, NULL),
(437, 52, 291, 9999999, 120, 'INGRESO', 576, '2023-01-06 22:22:11', NULL, NULL),
(438, 52, 292, 9999999, 96, 'INGRESO', 720, '2023-01-06 22:22:11', NULL, NULL),
(439, 52, 293, 9999999, 98, 'INGRESO', 231, '2023-01-06 22:22:11', NULL, NULL),
(440, 52, 294, 9999999, 95, 'INGRESO', 204, '2023-01-06 22:22:11', NULL, NULL),
(441, 52, 295, 9999999, 121, 'INGRESO', 430, '2023-01-06 22:22:11', NULL, NULL),
(442, 52, 296, 9999999, 96, 'INGRESO', 972, '2023-01-06 22:22:11', NULL, NULL),
(443, 52, 297, 9999999, 98, 'INGRESO', 87, '2023-01-06 22:22:11', NULL, NULL),
(444, 52, 298, 9999999, 108, 'INGRESO', 179, '2023-01-06 22:22:11', NULL, NULL),
(445, 52, 299, 9999999, 110, 'INGRESO', 1611, '2023-01-06 22:22:11', NULL, NULL),
(446, 52, 300, 9999999, 110, 'INGRESO', 20, '2023-01-06 22:22:11', NULL, NULL),
(447, 52, 301, 9999999, 107, 'INGRESO', 744, '2023-01-06 22:22:11', NULL, NULL),
(448, 52, 302, 9999999, 95, 'INGRESO', 54, '2023-01-06 22:22:11', NULL, NULL),
(449, 52, 303, 9999999, 118, 'INGRESO', 786, '2023-01-06 22:22:11', NULL, NULL),
(450, 52, 304, 9999999, 118, 'INGRESO', 120, '2023-01-06 22:22:11', NULL, NULL),
(451, 52, 308, 9999999, 117, 'INGRESO', 312, '2023-01-06 22:22:11', NULL, NULL),
(452, 52, 309, 9999999, 113, 'INGRESO', 90, '2023-01-06 22:22:11', NULL, NULL),
(453, 53, 311, 9999999, 114, 'INGRESO', 342, '2023-01-07 16:19:56', NULL, NULL),
(454, 53, 312, 9999999, 168, 'INGRESO', 15, '2023-01-07 16:19:56', NULL, NULL),
(455, 53, 313, 9999999, 111, 'INGRESO', 612, '2023-01-07 16:19:56', NULL, NULL),
(456, 53, 314, 9999999, 94, 'INGRESO', 792, '2023-01-07 16:19:56', NULL, NULL),
(457, 53, 315, 9999999, 95, 'INGRESO', 387, '2023-01-07 16:19:56', NULL, NULL),
(458, 53, 316, 9999999, 93, 'INGRESO', 1331, '2023-01-07 16:19:56', NULL, NULL),
(459, 53, 317, 9999999, 187, 'INGRESO', 790, '2023-01-07 16:19:56', NULL, NULL),
(460, 53, 318, 9999999, 174, 'INGRESO', 960, '2023-01-07 16:19:56', NULL, NULL),
(461, 53, 319, 9999999, 160, 'INGRESO', 1440, '2023-01-07 16:19:56', NULL, NULL),
(462, 53, 320, 9999999, 175, 'INGRESO', 702, '2023-01-07 16:19:56', NULL, NULL),
(463, 53, 321, 9999999, 240, 'INGRESO', 433, '2023-01-07 16:19:56', NULL, NULL),
(464, 53, 322, 9999999, 239, 'INGRESO', 234, '2023-01-07 16:19:56', NULL, NULL),
(465, 53, 323, 9999999, 224, 'INGRESO', 969, '2023-01-07 16:19:56', NULL, NULL),
(466, 53, 324, 9999999, 224, 'INGRESO', 143, '2023-01-07 16:19:56', NULL, NULL),
(467, 53, 325, 9999999, 237, 'INGRESO', 192, '2023-01-07 16:19:56', NULL, NULL),
(468, 53, 326, 9999999, 236, 'INGRESO', 99, '2023-01-07 16:19:56', NULL, NULL),
(469, 53, 327, 9999999, 236, 'INGRESO', 744, '2023-01-07 16:19:56', NULL, NULL),
(470, 53, 328, 9999999, 176, 'INGRESO', 160, '2023-01-07 16:19:56', NULL, NULL),
(471, 53, 329, 9999999, 176, 'INGRESO', 508, '2023-01-07 16:19:56', NULL, NULL),
(472, 53, 330, 9999999, 177, 'INGRESO', 397, '2023-01-07 16:19:56', NULL, NULL),
(473, 53, 331, 9999999, 177, 'INGRESO', 112, '2023-01-07 16:19:56', NULL, NULL),
(474, 53, 332, 9999999, 178, 'INGRESO', 341, '2023-01-07 16:19:56', NULL, NULL),
(475, 53, 333, 9999999, 178, 'INGRESO', 146, '2023-01-07 16:19:57', NULL, NULL),
(476, 53, 334, 9999999, 165, 'INGRESO', 249, '2023-01-07 16:19:57', NULL, NULL),
(477, 53, 335, 9999999, 156, 'INGRESO', 15, '2023-01-07 16:19:57', NULL, NULL),
(478, 53, 337, 9999999, 178, 'INGRESO', 186, '2023-01-07 16:19:57', NULL, NULL),
(479, 53, 339, 9999999, 86, 'INGRESO', 61, '2023-01-07 16:19:57', NULL, NULL),
(480, 53, 340, 9999999, 103, 'INGRESO', 53, '2023-01-07 16:19:57', NULL, NULL),
(481, 53, 341, 9999999, 104, 'INGRESO', 96, '2023-01-07 16:19:57', NULL, NULL),
(482, 53, 342, 9999999, 102, 'INGRESO', 88, '2023-01-07 16:19:57', NULL, NULL),
(483, 53, 343, 9999999, 103, 'INGRESO', 238, '2023-01-07 16:19:57', NULL, NULL),
(484, 54, 47, 9999999, 223, 'INGRESO', 28, '2023-01-07 17:21:50', NULL, NULL),
(485, 54, 39, 9999999, 223, 'INGRESO', 14, '2023-01-07 17:21:50', NULL, NULL),
(486, 55, 30, 9999999, NULL, 'DESPACHO', 3, '2023-01-07 17:23:22', NULL, NULL),
(487, 56, 345, 9999999, 102, 'INGRESO', 48, '2023-01-09 18:08:11', NULL, NULL),
(488, 56, 346, 9999999, 116, 'INGRESO', 28, '2023-01-09 18:08:11', NULL, NULL),
(489, 56, 347, 9999999, 99, 'INGRESO', 278, '2023-01-09 18:08:11', NULL, NULL),
(490, 56, 348, 9999999, 101, 'INGRESO', 22, '2023-01-09 18:08:11', NULL, NULL),
(491, 56, 349, 9999999, 99, 'INGRESO', 314, '2023-01-09 18:08:11', NULL, NULL),
(492, 56, 350, 9999999, 101, 'INGRESO', 289, '2023-01-09 18:08:11', NULL, NULL),
(493, 56, 351, 9999999, 101, 'INGRESO', 363, '2023-01-09 18:08:11', NULL, NULL),
(494, 56, 352, 9999999, 156, 'INGRESO', 36, '2023-01-09 18:08:11', NULL, NULL),
(495, 56, 353, 9999999, 81, 'INGRESO', 348, '2023-01-09 18:08:11', NULL, NULL),
(496, 56, 354, 9999999, 116, 'INGRESO', 148, '2023-01-09 18:08:11', NULL, NULL),
(497, 56, 355, 9999999, 100, 'INGRESO', 150, '2023-01-09 18:08:11', NULL, NULL),
(498, 56, 356, 9999999, 116, 'INGRESO', 47, '2023-01-09 18:08:11', NULL, NULL),
(499, 56, 358, 9999999, 83, 'INGRESO', 144, '2023-01-09 18:08:11', NULL, NULL),
(500, 56, 359, 9999999, 86, 'INGRESO', 48, '2023-01-09 18:08:11', NULL, NULL),
(501, 56, 360, 9999999, 100, 'INGRESO', 378, '2023-01-09 18:08:11', NULL, NULL),
(502, 56, 361, 9999999, 100, 'INGRESO', 138, '2023-01-09 18:08:11', NULL, NULL),
(503, 56, 362, 9999999, 86, 'INGRESO', 50, '2023-01-09 18:08:11', NULL, NULL),
(504, 56, 364, 9999999, 116, 'INGRESO', 85, '2023-01-09 18:08:11', NULL, NULL),
(505, 56, 365, 9999999, 91, 'INGRESO', 12, '2023-01-09 18:08:11', NULL, NULL),
(506, 56, 366, 9999999, 94, 'INGRESO', 21, '2023-01-09 18:08:11', NULL, NULL),
(507, 56, 367, 9999999, 100, 'INGRESO', 66, '2023-01-09 18:08:11', NULL, NULL),
(508, 56, 368, 9999999, 88, 'INGRESO', 102, '2023-01-09 18:08:11', NULL, NULL),
(509, 56, 369, 9999999, 166, 'INGRESO', 48, '2023-01-09 18:08:11', NULL, NULL),
(510, 56, 370, 9999999, 88, 'INGRESO', 180, '2023-01-09 18:08:11', NULL, NULL),
(511, 56, 371, 9999999, 88, 'INGRESO', 24, '2023-01-09 18:08:11', NULL, NULL),
(512, 56, 372, 9999999, 88, 'INGRESO', 24, '2023-01-09 18:08:11', NULL, NULL),
(513, 56, 373, 9999999, 88, 'INGRESO', 22, '2023-01-09 18:08:11', NULL, NULL),
(514, 56, 374, 9999999, 88, 'INGRESO', 154, '2023-01-09 18:08:11', NULL, NULL),
(515, 56, 375, 9999999, 116, 'INGRESO', 7, '2023-01-09 18:08:11', NULL, NULL),
(516, 56, 376, 9999999, 104, 'INGRESO', 160, '2023-01-09 18:08:11', NULL, NULL),
(517, 56, 377, 9999999, 166, 'INGRESO', 60, '2023-01-09 18:08:11', NULL, NULL),
(518, 56, 378, 9999999, 183, 'INGRESO', 65, '2023-01-09 18:08:11', NULL, NULL),
(519, 56, 380, 9999999, 165, 'INGRESO', 60, '2023-01-09 18:08:11', NULL, NULL),
(520, 56, 381, 9999999, 105, 'INGRESO', 140, '2023-01-09 18:08:11', NULL, NULL),
(521, 56, 382, 9999999, 79, 'INGRESO', 78, '2023-01-09 18:08:11', NULL, NULL),
(522, 56, 383, 9999999, 105, 'INGRESO', 295, '2023-01-09 18:08:11', NULL, NULL),
(523, 56, 385, 9999999, 166, 'INGRESO', 60, '2023-01-09 18:08:11', NULL, NULL),
(524, 56, 386, 9999999, 106, 'INGRESO', 184, '2023-01-09 18:08:11', NULL, NULL),
(525, 56, 387, 9999999, 104, 'INGRESO', 68, '2023-01-09 18:08:11', NULL, NULL),
(526, 56, 388, 9999999, 103, 'INGRESO', 32, '2023-01-09 18:08:11', NULL, NULL),
(527, 56, 389, 9999999, 104, 'INGRESO', 29, '2023-01-09 18:08:11', NULL, NULL),
(528, 56, 390, 9999999, 85, 'INGRESO', 120, '2023-01-09 18:08:11', NULL, NULL),
(529, 56, 392, 9999999, 105, 'INGRESO', 74, '2023-01-09 18:08:11', NULL, NULL),
(530, 56, 393, 9999999, 88, 'INGRESO', 43, '2023-01-09 18:08:11', NULL, NULL),
(531, 56, 394, 9999999, 88, 'INGRESO', 119, '2023-01-09 18:08:11', NULL, NULL),
(532, 56, 395, 9999999, 106, 'INGRESO', 89, '2023-01-09 18:08:11', NULL, NULL),
(533, 56, 396, 9999999, 153, 'INGRESO', 491, '2023-01-09 18:08:11', NULL, NULL),
(534, 56, 397, 9999999, 153, 'INGRESO', 532, '2023-01-09 18:08:11', NULL, NULL),
(535, 56, 398, 9999999, 153, 'INGRESO', 515, '2023-01-09 18:08:11', NULL, NULL),
(536, 56, 399, 9999999, 153, 'INGRESO', 481, '2023-01-09 18:08:11', NULL, NULL),
(537, 56, 400, 9999999, 153, 'INGRESO', 628, '2023-01-09 18:08:11', NULL, NULL),
(538, 56, 401, 9999999, 153, 'INGRESO', 585, '2023-01-09 18:08:11', NULL, NULL),
(539, 56, 402, 9999999, 153, 'INGRESO', 309, '2023-01-09 18:08:11', NULL, NULL),
(540, 56, 403, 9999999, 153, 'INGRESO', 232, '2023-01-09 18:08:11', NULL, NULL),
(541, 56, 404, 9999999, 153, 'INGRESO', 470, '2023-01-09 18:08:11', NULL, NULL),
(542, 56, 405, 9999999, 153, 'INGRESO', 226, '2023-01-09 18:08:11', NULL, NULL),
(543, 56, 406, 9999999, 153, 'INGRESO', 497, '2023-01-09 18:08:11', NULL, NULL),
(544, 56, 407, 9999999, 153, 'INGRESO', 2450, '2023-01-09 18:08:11', NULL, NULL),
(545, 56, 408, 9999999, 152, 'INGRESO', 1370, '2023-01-09 18:08:11', NULL, NULL),
(546, 56, 409, 9999999, 154, 'INGRESO', 600, '2023-01-09 18:08:11', NULL, NULL),
(547, 56, 410, 9999999, 152, 'INGRESO', 1070, '2023-01-09 18:08:11', NULL, NULL),
(548, 56, 411, 9999999, 152, 'INGRESO', 800, '2023-01-09 18:08:11', NULL, NULL),
(549, 56, 412, 9999999, 152, 'INGRESO', 1288, '2023-01-09 18:08:11', NULL, NULL),
(550, 56, 413, 9999999, 152, 'INGRESO', 1190, '2023-01-09 18:08:11', NULL, NULL),
(551, 56, 414, 9999999, 152, 'INGRESO', 800, '2023-01-09 18:08:11', NULL, NULL),
(552, 56, 415, 9999999, 152, 'INGRESO', 410, '2023-01-09 18:08:11', NULL, NULL),
(553, 56, 416, 9999999, 152, 'INGRESO', 100, '2023-01-09 18:08:11', NULL, NULL),
(554, 56, 417, 9999999, 152, 'INGRESO', 496, '2023-01-09 18:08:11', NULL, NULL),
(555, 56, 418, 9999999, 154, 'INGRESO', 1758, '2023-01-09 18:08:11', NULL, NULL),
(556, 56, 419, 9999999, 154, 'INGRESO', 550, '2023-01-09 18:08:11', NULL, NULL),
(557, 56, 420, 9999999, 155, 'INGRESO', 1089, '2023-01-09 18:08:11', NULL, NULL),
(558, 56, 421, 9999999, 155, 'INGRESO', 950, '2023-01-09 18:08:11', NULL, NULL),
(559, 56, 422, 9999999, 155, 'INGRESO', 470, '2023-01-09 18:08:11', NULL, NULL),
(560, 56, 423, 9999999, 155, 'INGRESO', 1520, '2023-01-09 18:08:11', NULL, NULL),
(561, 56, 424, 9999999, 155, 'INGRESO', 1369, '2023-01-09 18:08:11', NULL, NULL),
(562, 56, 425, 9999999, 155, 'INGRESO', 646, '2023-01-09 18:08:11', NULL, NULL),
(563, 56, 426, 9999999, 155, 'INGRESO', 1000, '2023-01-09 18:08:11', NULL, NULL),
(564, 56, 427, 9999999, 155, 'INGRESO', 1400, '2023-01-09 18:08:11', NULL, NULL),
(565, 56, 428, 9999999, 154, 'INGRESO', 2848, '2023-01-09 18:08:11', NULL, NULL),
(566, 56, 429, 9999999, 154, 'INGRESO', 2869, '2023-01-09 18:08:11', NULL, NULL),
(567, 56, 430, 9999999, 154, 'INGRESO', 1986, '2023-01-09 18:08:11', NULL, NULL),
(568, 56, 431, 9999999, 154, 'INGRESO', 2292, '2023-01-09 18:08:11', NULL, NULL),
(569, 56, 432, 9999999, 154, 'INGRESO', 3310, '2023-01-09 18:08:11', NULL, NULL),
(570, 56, 433, 9999999, 154, 'INGRESO', 795, '2023-01-09 18:08:11', NULL, NULL),
(571, 56, 434, 9999999, 154, 'INGRESO', 1230, '2023-01-09 18:08:11', NULL, NULL),
(572, 56, 435, 9999999, 154, 'INGRESO', 777, '2023-01-09 18:08:11', NULL, NULL);
INSERT INTO `kardex` (`kard_id`, `acta_id`, `prod_id`, `lote_id`, `rc_id`, `tipo_movimiento`, `kard_cantidad`, `created_at`, `updated_at`, `deleted_at`) VALUES
(573, 56, 436, 9999999, 90, 'INGRESO', 1136, '2023-01-09 18:08:11', NULL, NULL),
(574, 56, 437, 9999999, 90, 'INGRESO', 1652, '2023-01-09 18:08:11', NULL, NULL),
(575, 56, 438, 9999999, 90, 'INGRESO', 1170, '2023-01-09 18:08:11', NULL, NULL),
(576, 56, 439, 9999999, 90, 'INGRESO', 958, '2023-01-09 18:08:11', NULL, NULL),
(577, 56, 440, 9999999, 90, 'INGRESO', 1019, '2023-01-09 18:08:11', NULL, NULL),
(578, 56, 441, 9999999, 90, 'INGRESO', 1056, '2023-01-09 18:08:11', NULL, NULL),
(579, 56, 442, 9999999, 90, 'INGRESO', 281, '2023-01-09 18:08:11', NULL, NULL),
(580, 56, 444, 9999999, 90, 'INGRESO', 371, '2023-01-09 18:08:11', NULL, NULL),
(581, 56, 445, 9999999, 90, 'INGRESO', 1698, '2023-01-09 18:08:11', NULL, NULL),
(582, 56, 446, 9999999, 90, 'INGRESO', 754, '2023-01-09 18:08:11', NULL, NULL),
(583, 57, 448, 9999999, 92, 'INGRESO', 2429, '2023-01-09 19:39:32', NULL, NULL),
(584, 57, 449, 9999999, 92, 'INGRESO', 6750, '2023-01-09 19:39:32', NULL, NULL),
(585, 57, 450, 9999999, 92, 'INGRESO', 1696, '2023-01-09 19:39:32', NULL, NULL),
(586, 57, 451, 9999999, 92, 'INGRESO', 1738, '2023-01-09 19:39:32', NULL, NULL),
(587, 57, 452, 9999999, 92, 'INGRESO', 2722, '2023-01-09 19:39:32', NULL, NULL),
(588, 57, 453, 9999999, 92, 'INGRESO', 2512, '2023-01-09 19:39:32', NULL, NULL),
(589, 57, 455, 9999999, 92, 'INGRESO', 2470, '2023-01-09 19:39:32', NULL, NULL),
(590, 57, 456, 9999999, 92, 'INGRESO', 740, '2023-01-09 19:39:32', NULL, NULL),
(591, 57, 457, 9999999, 338, 'INGRESO', 12, '2023-01-09 19:39:32', NULL, NULL),
(592, 57, 458, 9999999, 155, 'INGRESO', 1440, '2023-01-09 19:39:32', NULL, NULL),
(593, 57, 459, 9999999, 155, 'INGRESO', 1770, '2023-01-09 19:39:32', NULL, NULL),
(594, 57, 460, 9999999, 154, 'INGRESO', 1440, '2023-01-09 19:39:32', NULL, NULL),
(595, 57, 461, 9999999, 154, 'INGRESO', 1800, '2023-01-09 19:39:32', NULL, NULL),
(596, 57, 462, 9999999, 154, 'INGRESO', 1790, '2023-01-09 19:39:32', NULL, NULL),
(597, 57, 463, 9999999, 154, 'INGRESO', 1860, '2023-01-09 19:39:32', NULL, NULL),
(598, 57, 465, 9999999, 151, 'INGRESO', 702, '2023-01-09 19:39:32', NULL, NULL),
(599, 57, 466, 9999999, 90, 'INGRESO', 280, '2023-01-09 19:39:32', NULL, NULL),
(600, 57, 467, 9999999, 157, 'INGRESO', 50, '2023-01-09 19:39:32', NULL, NULL),
(601, 57, 469, 9999999, 157, 'INGRESO', 74, '2023-01-09 19:39:32', NULL, NULL),
(602, 57, 470, 9999999, 167, 'INGRESO', 12, '2023-01-09 19:39:32', NULL, NULL),
(603, 57, 471, 9999999, 166, 'INGRESO', 21, '2023-01-09 19:39:32', NULL, NULL),
(604, 57, 472, 9999999, 157, 'INGRESO', 54, '2023-01-09 19:39:32', NULL, NULL),
(605, 57, 473, 9999999, 165, 'INGRESO', 260, '2023-01-09 19:39:32', NULL, NULL),
(606, 57, 474, 9999999, 156, 'INGRESO', 186, '2023-01-09 19:39:32', NULL, NULL),
(607, 57, 475, 9999999, 157, 'INGRESO', 26, '2023-01-09 19:39:32', NULL, NULL),
(608, 57, 476, 9999999, 157, 'INGRESO', 51, '2023-01-09 19:39:32', NULL, NULL),
(609, 57, 477, 9999999, 165, 'INGRESO', 9, '2023-01-09 19:39:32', NULL, NULL),
(610, 57, 480, 9999999, 166, 'INGRESO', 143, '2023-01-09 19:39:32', NULL, NULL),
(611, 57, 481, 9999999, 167, 'INGRESO', 64, '2023-01-09 19:39:32', NULL, NULL),
(612, 57, 482, 9999999, 166, 'INGRESO', 47, '2023-01-09 19:39:32', NULL, NULL),
(613, 57, 483, 9999999, 157, 'INGRESO', 21, '2023-01-09 19:39:32', NULL, NULL),
(614, 57, 484, 9999999, 192, 'INGRESO', 30, '2023-01-09 19:39:32', NULL, NULL),
(615, 57, 485, 9999999, 182, 'INGRESO', 15, '2023-01-09 19:39:32', NULL, NULL),
(616, 58, 270, 9999999, NULL, 'DESPACHO', 1, '2023-01-09 20:35:44', NULL, NULL),
(617, 58, 449, 9999999, NULL, 'DESPACHO', 12, '2023-01-09 20:35:44', NULL, NULL),
(618, 58, 454, 9999999, NULL, 'DESPACHO', 12, '2023-01-09 20:35:44', NULL, NULL),
(619, 58, 448, 9999999, NULL, 'DESPACHO', 12, '2023-01-09 20:35:44', NULL, NULL),
(620, 58, 279, 9999999, NULL, 'DESPACHO', 12, '2023-01-09 20:35:44', NULL, NULL),
(621, 58, 453, 9999999, NULL, 'DESPACHO', 12, '2023-01-09 20:35:44', NULL, NULL),
(622, 58, 264, 9999999, NULL, 'DESPACHO', 1, '2023-01-09 20:35:44', NULL, NULL),
(623, 58, 265, 9999999, NULL, 'DESPACHO', 1, '2023-01-09 20:35:44', NULL, NULL),
(624, 58, 262, 9999999, NULL, 'DESPACHO', 5, '2023-01-09 20:35:44', NULL, NULL),
(625, 58, 431, 9999999, NULL, 'DESPACHO', 6, '2023-01-09 20:35:44', NULL, NULL),
(626, 58, 435, 9999999, NULL, 'DESPACHO', 6, '2023-01-09 20:35:44', NULL, NULL),
(627, 58, 281, 9999999, NULL, 'DESPACHO', 12, '2023-01-09 20:35:44', NULL, NULL),
(628, 58, 434, 9999999, NULL, 'DESPACHO', 6, '2023-01-09 20:35:44', NULL, NULL),
(629, 58, 465, 9999999, NULL, 'DESPACHO', 12, '2023-01-09 20:35:44', NULL, NULL),
(630, 58, 433, 9999999, NULL, 'DESPACHO', 6, '2023-01-09 20:35:44', NULL, NULL),
(631, 58, 268, 9999999, NULL, 'DESPACHO', 1, '2023-01-09 20:35:44', NULL, NULL),
(632, 58, 263, 9999999, NULL, 'DESPACHO', 1, '2023-01-09 20:35:44', NULL, NULL),
(633, 58, 101, 9999999, NULL, 'DESPACHO', 12, '2023-01-09 20:35:44', NULL, NULL),
(634, 58, 444, 9999999, NULL, 'DESPACHO', 24, '2023-01-09 20:35:44', NULL, NULL),
(635, 58, 499, 9999999, NULL, 'DESPACHO', 1, '2023-01-09 20:35:44', NULL, NULL),
(636, 58, 186, 9999999, NULL, 'DESPACHO', 6, '2023-01-09 20:35:44', NULL, NULL),
(637, 59, 31, 9999999, 222, 'INGRESO', 15, '2023-01-09 20:41:25', NULL, NULL),
(638, 59, 35, 9999999, 222, 'INGRESO', 15, '2023-01-09 20:41:25', NULL, NULL),
(639, 59, 30, 9999999, 222, 'INGRESO', 15, '2023-01-09 20:41:25', NULL, NULL),
(640, 59, 34, 9999999, 222, 'INGRESO', 8, '2023-01-09 20:41:25', NULL, NULL),
(641, 60, 31, 9999999, NULL, 'DESPACHO', 10, '2023-01-09 20:43:11', NULL, NULL),
(642, 60, 35, 9999999, NULL, 'DESPACHO', 5, '2023-01-09 20:43:11', NULL, NULL),
(643, 60, 30, 9999999, NULL, 'DESPACHO', 13, '2023-01-09 20:43:11', NULL, NULL),
(644, 60, 34, 9999999, NULL, 'DESPACHO', 5, '2023-01-09 20:43:11', NULL, NULL),
(645, 60, 39, 9999999, NULL, 'DESPACHO', 3, '2023-01-09 20:43:11', NULL, NULL),
(646, 60, 47, 9999999, NULL, 'DESPACHO', 8, '2023-01-09 20:43:11', NULL, NULL),
(647, 61, 106, 9999999, 82, 'INGRESO', 168, '2023-01-09 21:58:54', NULL, NULL),
(648, 61, 110, 9999999, 166, 'INGRESO', 80, '2023-01-09 21:58:54', NULL, NULL),
(649, 61, 111, 9999999, 102, 'INGRESO', 60, '2023-01-09 21:58:54', NULL, NULL),
(650, 61, 144, 9999999, 103, 'INGRESO', 158, '2023-01-09 21:58:54', NULL, NULL),
(651, 61, 149, 9999999, 87, 'INGRESO', 44, '2023-01-09 21:58:54', NULL, NULL),
(652, 61, 152, 9999999, 102, 'INGRESO', 59, '2023-01-09 21:58:54', NULL, NULL),
(653, 61, 165, 9999999, 87, 'INGRESO', 169, '2023-01-09 21:58:54', NULL, NULL),
(654, 61, 168, 9999999, 102, 'INGRESO', 131, '2023-01-09 21:58:54', NULL, NULL),
(655, 61, 169, 9999999, 102, 'INGRESO', 131, '2023-01-09 21:58:54', NULL, NULL),
(656, 61, 170, 9999999, 170, 'INGRESO', 520, '2023-01-09 21:58:54', NULL, NULL),
(657, 61, 171, 9999999, 240, 'INGRESO', 161, '2023-01-09 21:58:54', NULL, NULL),
(658, 61, 173, 9999999, 170, 'INGRESO', 207, '2023-01-09 21:58:55', NULL, NULL),
(659, 61, 189, 9999999, 172, 'INGRESO', 141, '2023-01-09 21:58:55', NULL, NULL),
(660, 61, 201, 9999999, 169, 'INGRESO', 262, '2023-01-09 21:58:55', NULL, NULL),
(661, 61, 203, 9999999, 169, 'INGRESO', 167, '2023-01-09 21:58:55', NULL, NULL),
(662, 61, 204, 9999999, 169, 'INGRESO', 173, '2023-01-09 21:58:55', NULL, NULL),
(663, 61, 205, 9999999, 87, 'INGRESO', 56, '2023-01-09 21:58:55', NULL, NULL),
(664, 61, 216, 9999999, 173, 'INGRESO', 86, '2023-01-09 21:58:55', NULL, NULL),
(665, 61, 264, 9999999, 184, 'INGRESO', 140, '2023-01-09 21:58:55', NULL, NULL),
(666, 61, 266, 9999999, 183, 'INGRESO', 350, '2023-01-09 21:58:55', NULL, NULL),
(667, 61, 284, 9999999, 121, 'INGRESO', 629, '2023-01-09 21:58:55', NULL, NULL),
(668, 61, 291, 9999999, 121, 'INGRESO', 95, '2023-01-09 21:58:55', NULL, NULL),
(669, 61, 295, 9999999, 109, 'INGRESO', 48, '2023-01-09 21:58:55', NULL, NULL),
(670, 61, 292, 9999999, 121, 'INGRESO', 461, '2023-01-09 21:58:55', NULL, NULL),
(671, 61, 304, 9999999, 118, 'INGRESO', 80, '2023-01-09 21:58:55', NULL, NULL),
(672, 61, 327, 9999999, 157, 'INGRESO', 47, '2023-01-09 21:58:55', NULL, NULL),
(673, 61, 341, 9999999, 106, 'INGRESO', 150, '2023-01-09 21:58:55', NULL, NULL),
(674, 61, 343, 9999999, 165, 'INGRESO', 29, '2023-01-09 21:58:55', NULL, NULL),
(675, 61, 344, 9999999, 103, 'INGRESO', 142, '2023-01-09 21:58:55', NULL, NULL),
(676, 61, 358, 9999999, 99, 'INGRESO', 175, '2023-01-09 21:58:55', NULL, NULL),
(677, 61, 366, 9999999, 104, 'INGRESO', 100, '2023-01-09 21:58:55', NULL, NULL),
(678, 61, 368, 9999999, 100, 'INGRESO', 89, '2023-01-09 21:58:55', NULL, NULL),
(679, 61, 369, 9999999, 88, 'INGRESO', 143, '2023-01-09 21:58:55', NULL, NULL),
(680, 61, 377, 9999999, 105, 'INGRESO', 83, '2023-01-09 21:58:55', NULL, NULL),
(681, 61, 380, 9999999, 104, 'INGRESO', 150, '2023-01-09 21:58:55', NULL, NULL),
(682, 61, 385, 9999999, 106, 'INGRESO', 430, '2023-01-09 21:58:55', NULL, NULL),
(683, 61, 391, 9999999, 103, 'INGRESO', 138, '2023-01-09 21:58:55', NULL, NULL),
(684, 61, 409, 9999999, 156, 'INGRESO', 587, '2023-01-09 21:58:55', NULL, NULL),
(685, 61, 410, 9999999, 156, 'INGRESO', 1080, '2023-01-09 21:58:55', NULL, NULL),
(686, 61, 411, 9999999, 156, 'INGRESO', 810, '2023-01-09 21:58:55', NULL, NULL),
(687, 61, 414, 9999999, 156, 'INGRESO', 446, '2023-01-09 21:58:55', NULL, NULL),
(688, 61, 415, 9999999, 156, 'INGRESO', 305, '2023-01-09 21:58:55', NULL, NULL),
(689, 61, 416, 9999999, 156, 'INGRESO', 82, '2023-01-09 21:58:55', NULL, NULL),
(690, 61, 422, 9999999, 156, 'INGRESO', 2109, '2023-01-09 21:58:55', NULL, NULL),
(691, 61, 421, 9999999, 156, 'INGRESO', 999, '2023-01-09 21:58:55', NULL, NULL),
(692, 61, 425, 9999999, 156, 'INGRESO', 500, '2023-01-09 21:58:55', NULL, NULL),
(693, 61, 426, 9999999, 156, 'INGRESO', 989, '2023-01-09 21:58:55', NULL, NULL),
(694, 62, 513, 9999999, 206, 'INGRESO', 7, '2023-01-10 16:23:39', NULL, NULL),
(695, 62, 514, 9999999, 205, 'INGRESO', 82, '2023-01-10 16:23:39', NULL, NULL),
(696, 62, 515, 9999999, 205, 'INGRESO', 22, '2023-01-10 16:23:39', NULL, NULL),
(697, 62, 516, 9999999, 205, 'INGRESO', 1, '2023-01-10 16:23:39', NULL, NULL),
(698, 62, 517, 9999999, 205, 'INGRESO', 1, '2023-01-10 16:23:39', NULL, NULL),
(699, 62, 518, 9999999, 205, 'INGRESO', 2, '2023-01-10 16:23:39', NULL, NULL),
(700, 62, 519, 9999999, 205, 'INGRESO', 1, '2023-01-10 16:23:39', NULL, NULL),
(701, 62, 520, 9999999, 206, 'INGRESO', 8, '2023-01-10 16:23:39', NULL, NULL),
(702, 62, 521, 9999999, 206, 'INGRESO', 1, '2023-01-10 16:23:39', NULL, NULL),
(703, 62, 522, 9999999, 206, 'INGRESO', 55, '2023-01-10 16:23:39', NULL, NULL),
(704, 62, 523, 9999999, 205, 'INGRESO', 18, '2023-01-10 16:23:39', NULL, NULL),
(705, 62, 524, 9999999, 206, 'INGRESO', 6, '2023-01-10 16:23:39', NULL, NULL),
(706, 62, 525, 9999999, 206, 'INGRESO', 1, '2023-01-10 16:23:39', NULL, NULL),
(707, 62, 526, 9999999, 206, 'INGRESO', 6, '2023-01-10 16:23:39', NULL, NULL),
(708, 62, 527, 9999999, 206, 'INGRESO', 3, '2023-01-10 16:23:39', NULL, NULL),
(709, 62, 528, 9999999, 206, 'INGRESO', 2, '2023-01-10 16:23:39', NULL, NULL),
(710, 62, 529, 9999999, 206, 'INGRESO', 1, '2023-01-10 16:23:39', NULL, NULL),
(711, 63, 513, 9999999, 206, 'INGRESO', 7, '2023-01-10 16:23:58', '2023-01-10 16:25:31', '2023-01-10 16:25:31'),
(712, 63, 514, 9999999, 205, 'INGRESO', 82, '2023-01-10 16:23:58', '2023-01-10 16:25:31', '2023-01-10 16:25:31'),
(713, 63, 515, 9999999, 205, 'INGRESO', 22, '2023-01-10 16:23:58', '2023-01-10 16:25:31', '2023-01-10 16:25:31'),
(714, 63, 516, 9999999, 205, 'INGRESO', 1, '2023-01-10 16:23:58', '2023-01-10 16:25:31', '2023-01-10 16:25:31'),
(715, 63, 517, 9999999, 205, 'INGRESO', 1, '2023-01-10 16:23:58', '2023-01-10 16:25:31', '2023-01-10 16:25:31'),
(716, 63, 518, 9999999, 205, 'INGRESO', 2, '2023-01-10 16:23:58', '2023-01-10 16:25:31', '2023-01-10 16:25:31'),
(717, 63, 519, 9999999, 205, 'INGRESO', 1, '2023-01-10 16:23:58', '2023-01-10 16:25:31', '2023-01-10 16:25:31'),
(718, 63, 520, 9999999, 206, 'INGRESO', 8, '2023-01-10 16:23:58', '2023-01-10 16:25:31', '2023-01-10 16:25:31'),
(719, 63, 521, 9999999, 206, 'INGRESO', 1, '2023-01-10 16:23:58', '2023-01-10 16:25:31', '2023-01-10 16:25:31'),
(720, 63, 522, 9999999, 206, 'INGRESO', 55, '2023-01-10 16:23:58', '2023-01-10 16:25:31', '2023-01-10 16:25:31'),
(721, 63, 523, 9999999, 205, 'INGRESO', 18, '2023-01-10 16:23:58', '2023-01-10 16:25:31', '2023-01-10 16:25:31'),
(722, 63, 524, 9999999, 206, 'INGRESO', 6, '2023-01-10 16:23:58', '2023-01-10 16:25:31', '2023-01-10 16:25:31'),
(723, 63, 525, 9999999, 206, 'INGRESO', 1, '2023-01-10 16:23:58', '2023-01-10 16:25:31', '2023-01-10 16:25:31'),
(724, 63, 526, 9999999, 206, 'INGRESO', 6, '2023-01-10 16:23:58', '2023-01-10 16:25:31', '2023-01-10 16:25:31'),
(725, 63, 527, 9999999, 206, 'INGRESO', 3, '2023-01-10 16:23:58', '2023-01-10 16:25:31', '2023-01-10 16:25:31'),
(726, 63, 528, 9999999, 206, 'INGRESO', 2, '2023-01-10 16:23:58', '2023-01-10 16:25:31', '2023-01-10 16:25:31'),
(727, 63, 529, 9999999, 206, 'INGRESO', 1, '2023-01-10 16:23:58', '2023-01-10 16:25:31', '2023-01-10 16:25:31'),
(728, 64, 531, 9999999, 311, 'INGRESO', 5, '2023-01-10 18:17:47', NULL, NULL),
(729, 64, 585, 9999999, 311, 'INGRESO', 17, '2023-01-10 18:17:47', NULL, NULL),
(730, 64, 530, 9999999, 312, 'INGRESO', 71, '2023-01-10 18:17:47', NULL, NULL),
(731, 64, 575, 9999999, 312, 'INGRESO', 1, '2023-01-10 18:17:47', NULL, NULL),
(732, 64, 533, 9999999, 312, 'INGRESO', 1, '2023-01-10 18:17:47', NULL, NULL),
(733, 64, 536, 9999999, 313, 'INGRESO', 20, '2023-01-10 18:17:47', NULL, NULL),
(734, 64, 534, 9999999, 313, 'INGRESO', 6, '2023-01-10 18:17:47', NULL, NULL),
(735, 64, 586, 9999999, 313, 'INGRESO', 4, '2023-01-10 18:17:48', NULL, NULL),
(736, 64, 539, 9999999, 313, 'INGRESO', 19, '2023-01-10 18:17:48', NULL, NULL),
(737, 64, 580, 9999999, 314, 'INGRESO', 4, '2023-01-10 18:17:48', NULL, NULL),
(738, 64, 535, 9999999, 314, 'INGRESO', 3, '2023-01-10 18:17:48', NULL, NULL),
(739, 64, 537, 9999999, 314, 'INGRESO', 20, '2023-01-10 18:17:48', NULL, NULL),
(740, 64, 538, 9999999, 314, 'INGRESO', 8, '2023-01-10 18:17:48', NULL, NULL),
(741, 64, 540, 9999999, 315, 'INGRESO', 40, '2023-01-10 18:17:48', NULL, NULL),
(742, 64, 542, 9999999, 316, 'INGRESO', 86, '2023-01-10 18:17:48', NULL, NULL),
(743, 64, 587, 9999999, 317, 'INGRESO', 5, '2023-01-10 18:17:48', NULL, NULL),
(744, 64, 570, 9999999, 317, 'INGRESO', 2, '2023-01-10 18:17:48', NULL, NULL),
(745, 64, 545, 9999999, 317, 'INGRESO', 1, '2023-01-10 18:17:48', NULL, NULL),
(746, 64, 581, 9999999, 317, 'INGRESO', 6, '2023-01-10 18:17:48', NULL, NULL),
(747, 64, 579, 9999999, 319, 'INGRESO', 55, '2023-01-10 18:17:48', NULL, NULL),
(748, 64, 584, 9999999, 320, 'INGRESO', 12, '2023-01-10 18:17:48', NULL, NULL),
(749, 64, 582, 9999999, 320, 'INGRESO', 5, '2023-01-10 18:17:48', NULL, NULL),
(750, 64, 547, 9999999, 321, 'INGRESO', 48, '2023-01-10 18:17:48', NULL, NULL),
(751, 64, 548, 9999999, 322, 'INGRESO', 22, '2023-01-10 18:17:48', NULL, NULL),
(752, 64, 572, 9999999, 322, 'INGRESO', 1, '2023-01-10 18:17:48', NULL, NULL),
(753, 64, 571, 9999999, 322, 'INGRESO', 2, '2023-01-10 18:17:48', NULL, NULL),
(754, 64, 574, 9999999, 322, 'INGRESO', 1, '2023-01-10 18:17:48', NULL, NULL),
(755, 64, 576, 9999999, 323, 'INGRESO', 28, '2023-01-10 18:17:48', NULL, NULL),
(756, 64, 560, 9999999, 324, 'INGRESO', 30, '2023-01-10 18:17:48', NULL, NULL),
(757, 64, 561, 9999999, 324, 'INGRESO', 4, '2023-01-10 18:17:48', NULL, NULL),
(758, 64, 550, 9999999, 325, 'INGRESO', 24, '2023-01-10 18:17:48', NULL, NULL),
(759, 64, 552, 9999999, 325, 'INGRESO', 5, '2023-01-10 18:17:48', NULL, NULL),
(760, 64, 553, 9999999, 325, 'INGRESO', 1, '2023-01-10 18:17:48', NULL, NULL),
(761, 64, 554, 9999999, 326, 'INGRESO', 15, '2023-01-10 18:17:48', NULL, NULL),
(762, 64, 564, 9999999, 326, 'INGRESO', 2, '2023-01-10 18:17:48', NULL, NULL),
(763, 64, 562, 9999999, 326, 'INGRESO', 6, '2023-01-10 18:17:48', NULL, NULL),
(764, 64, 588, 9999999, 326, 'INGRESO', 5, '2023-01-10 18:17:48', NULL, NULL),
(765, 64, 557, 9999999, 326, 'INGRESO', 5, '2023-01-10 18:17:48', NULL, NULL),
(766, 64, 558, 9999999, 326, 'INGRESO', 10, '2023-01-10 18:17:48', NULL, NULL),
(767, 64, 556, 9999999, 326, 'INGRESO', 10, '2023-01-10 18:17:48', NULL, NULL),
(768, 64, 573, 9999999, 327, 'INGRESO', 2, '2023-01-10 18:17:48', NULL, NULL),
(769, 64, 567, 9999999, 327, 'INGRESO', 5, '2023-01-10 18:17:48', NULL, NULL),
(770, 64, 569, 9999999, 327, 'INGRESO', 25, '2023-01-10 18:17:48', NULL, NULL),
(771, 64, 566, 9999999, 328, 'INGRESO', 70, '2023-01-10 18:17:48', NULL, NULL),
(772, 65, 563, 9999999, 329, 'INGRESO', 26, '2023-01-10 18:20:05', NULL, NULL),
(773, 66, 267, 9999999, NULL, 'DESPACHO', 1, '2023-01-10 22:33:10', NULL, NULL),
(774, 66, 270, 9999999, NULL, 'DESPACHO', 5, '2023-01-10 22:33:10', NULL, NULL),
(775, 66, 298, 9999999, NULL, 'DESPACHO', 48, '2023-01-10 22:33:10', NULL, NULL),
(776, 66, 449, 9999999, NULL, 'DESPACHO', 64, '2023-01-10 22:33:10', NULL, NULL),
(777, 66, 448, 9999999, NULL, 'DESPACHO', 24, '2023-01-10 22:33:10', NULL, NULL),
(778, 66, 279, 9999999, NULL, 'DESPACHO', 24, '2023-01-10 22:33:10', NULL, NULL),
(779, 66, 453, 9999999, NULL, 'DESPACHO', 20, '2023-01-10 22:33:10', NULL, NULL),
(780, 66, 452, 9999999, NULL, 'DESPACHO', 20, '2023-01-10 22:33:10', NULL, NULL),
(781, 66, 280, 9999999, NULL, 'DESPACHO', 24, '2023-01-10 22:33:10', NULL, NULL),
(782, 66, 264, 9999999, NULL, 'DESPACHO', 4, '2023-01-10 22:33:10', NULL, NULL),
(783, 66, 263, 9999999, NULL, 'DESPACHO', 6, '2023-01-10 22:33:10', NULL, NULL),
(784, 66, 262, 9999999, NULL, 'DESPACHO', 7, '2023-01-10 22:33:10', NULL, NULL),
(785, 66, 432, 9999999, NULL, 'DESPACHO', 136, '2023-01-10 22:33:10', NULL, NULL),
(786, 66, 378, 9999999, NULL, 'DESPACHO', 1, '2023-01-10 22:33:10', NULL, NULL),
(787, 66, 309, 9999999, NULL, 'DESPACHO', 12, '2023-01-10 22:33:10', NULL, NULL),
(788, 66, 313, 9999999, NULL, 'DESPACHO', 12, '2023-01-10 22:33:10', NULL, NULL),
(789, 66, 308, 9999999, NULL, 'DESPACHO', 12, '2023-01-10 22:33:10', NULL, NULL),
(790, 66, 431, 9999999, NULL, 'DESPACHO', 36, '2023-01-10 22:33:10', NULL, NULL),
(791, 66, 435, 9999999, NULL, 'DESPACHO', 36, '2023-01-10 22:33:10', NULL, NULL),
(792, 66, 434, 9999999, NULL, 'DESPACHO', 36, '2023-01-10 22:33:10', NULL, NULL),
(793, 66, 433, 9999999, NULL, 'DESPACHO', 36, '2023-01-10 22:33:10', NULL, NULL),
(794, 66, 428, 9999999, NULL, 'DESPACHO', 36, '2023-01-10 22:33:10', NULL, NULL),
(795, 66, 422, 9999999, NULL, 'DESPACHO', 12, '2023-01-10 22:33:10', NULL, NULL),
(796, 66, 420, 9999999, NULL, 'DESPACHO', 12, '2023-01-10 22:33:10', NULL, NULL),
(797, 66, 425, 9999999, NULL, 'DESPACHO', 12, '2023-01-10 22:33:10', NULL, NULL),
(798, 66, 459, 9999999, NULL, 'DESPACHO', 12, '2023-01-10 22:33:10', NULL, NULL),
(799, 66, 427, 9999999, NULL, 'DESPACHO', 12, '2023-01-10 22:33:10', NULL, NULL),
(800, 66, 120, 9999999, NULL, 'DESPACHO', 3, '2023-01-10 22:33:10', NULL, NULL),
(801, 67, 514, 9999999, NULL, 'DESPACHO', 7, '2023-01-10 22:54:49', NULL, NULL),
(802, 68, 31, 9999999, NULL, 'DESPACHO', 15, '2023-01-11 16:41:17', NULL, NULL),
(803, 68, 35, 9999999, NULL, 'DESPACHO', 1, '2023-01-11 16:41:17', NULL, NULL),
(804, 68, 30, 9999999, NULL, 'DESPACHO', 14, '2023-01-11 16:41:17', NULL, NULL),
(805, 68, 34, 9999999, NULL, 'DESPACHO', 7, '2023-01-11 16:41:17', NULL, NULL),
(806, 68, 39, 9999999, NULL, 'DESPACHO', 2, '2023-01-11 16:41:17', NULL, NULL),
(807, 68, 47, 9999999, NULL, 'DESPACHO', 7, '2023-01-11 16:41:17', NULL, NULL),
(808, 68, 97, 9999999, NULL, 'DESPACHO', 8, '2023-01-11 16:41:17', NULL, NULL),
(809, 69, 592, 9999999, 204, 'INGRESO', 50, '2023-01-11 17:56:00', NULL, NULL),
(810, 69, 591, 9999999, 204, 'INGRESO', 9, '2023-01-11 17:56:00', NULL, NULL),
(811, 69, 590, 9999999, 204, 'INGRESO', 10, '2023-01-11 17:56:00', NULL, NULL),
(812, 70, 431, 9999999, NULL, 'DESPACHO', 6, '2023-01-11 22:01:58', NULL, NULL),
(813, 70, 433, 9999999, NULL, 'DESPACHO', 6, '2023-01-11 22:01:58', NULL, NULL),
(814, 70, 434, 9999999, NULL, 'DESPACHO', 6, '2023-01-11 22:01:58', NULL, NULL),
(815, 70, 435, 9999999, NULL, 'DESPACHO', 6, '2023-01-11 22:01:58', NULL, NULL),
(816, 71, 585, 9999999, NULL, 'DESPACHO', 17, '2023-01-11 22:56:32', NULL, NULL),
(817, 71, 540, 9999999, NULL, 'DESPACHO', 20, '2023-01-11 22:56:32', NULL, NULL),
(818, 71, 542, 9999999, NULL, 'DESPACHO', 20, '2023-01-11 22:56:32', NULL, NULL),
(819, 71, 579, 9999999, NULL, 'DESPACHO', 20, '2023-01-11 22:56:32', NULL, NULL),
(820, 71, 547, 9999999, NULL, 'DESPACHO', 5, '2023-01-11 22:56:32', NULL, NULL),
(821, 71, 548, 9999999, NULL, 'DESPACHO', 5, '2023-01-11 22:56:32', NULL, NULL),
(822, 71, 550, 9999999, NULL, 'DESPACHO', 10, '2023-01-11 22:56:32', NULL, NULL),
(823, 71, 556, 9999999, NULL, 'DESPACHO', 5, '2023-01-11 22:56:32', NULL, NULL),
(824, 72, 530, 9999999, NULL, 'DESPACHO', 30, '2023-01-12 19:19:56', NULL, NULL),
(825, 72, 542, 9999999, NULL, 'DESPACHO', 30, '2023-01-12 19:19:56', NULL, NULL),
(826, 72, 579, 9999999, NULL, 'DESPACHO', 25, '2023-01-12 19:19:56', NULL, NULL),
(827, 73, 31, 9999999, NULL, 'DESPACHO', 3, '2023-01-12 19:21:49', NULL, NULL),
(828, 73, 35, 9999999, NULL, 'DESPACHO', 4, '2023-01-12 19:21:49', NULL, NULL),
(829, 73, 34, 9999999, NULL, 'DESPACHO', 4, '2023-01-12 19:21:49', NULL, NULL),
(830, 73, 45, 9999999, NULL, 'DESPACHO', 3, '2023-01-12 19:21:49', NULL, NULL),
(831, 74, 322, 9999999, NULL, 'DESPACHO', 234, '2023-01-12 21:44:13', NULL, NULL),
(832, 74, 282, 9999999, NULL, 'DESPACHO', 1, '2023-01-12 21:44:13', NULL, NULL),
(833, 74, 262, 9999999, NULL, 'DESPACHO', 1, '2023-01-12 21:44:13', NULL, NULL),
(834, 74, 435, 9999999, NULL, 'DESPACHO', 30, '2023-01-12 21:44:13', NULL, NULL),
(835, 74, 434, 9999999, NULL, 'DESPACHO', 30, '2023-01-12 21:44:13', NULL, NULL),
(836, 74, 433, 9999999, NULL, 'DESPACHO', 30, '2023-01-12 21:44:13', NULL, NULL),
(837, 74, 386, 9999999, NULL, 'DESPACHO', 5, '2023-01-12 21:44:13', NULL, NULL),
(838, 74, 485, 9999999, NULL, 'DESPACHO', 1, '2023-01-12 21:44:13', NULL, NULL),
(839, 74, 430, 9999999, NULL, 'DESPACHO', 30, '2023-01-12 21:44:13', NULL, NULL),
(840, 74, 421, 9999999, NULL, 'DESPACHO', 12, '2023-01-12 21:44:13', NULL, NULL),
(841, 74, 426, 9999999, NULL, 'DESPACHO', 12, '2023-01-12 21:44:13', NULL, NULL),
(842, 74, 501, 9999999, NULL, 'DESPACHO', 1, '2023-01-12 21:44:13', NULL, NULL),
(843, 74, 499, 9999999, NULL, 'DESPACHO', 1, '2023-01-12 21:44:13', NULL, NULL),
(844, 74, 504, 9999999, NULL, 'DESPACHO', 1, '2023-01-12 21:44:13', NULL, NULL),
(845, 74, 460, 9999999, NULL, 'DESPACHO', 12, '2023-01-12 21:44:13', NULL, NULL),
(846, 74, 424, 9999999, NULL, 'DESPACHO', 6, '2023-01-12 21:44:13', NULL, NULL),
(847, 74, 423, 9999999, NULL, 'DESPACHO', 12, '2023-01-12 21:44:13', NULL, NULL),
(848, 74, 458, 9999999, NULL, 'DESPACHO', 12, '2023-01-12 21:44:13', NULL, NULL),
(849, 75, 31, 9999999, 222, 'INGRESO', 20, '2023-01-13 22:14:38', NULL, NULL),
(850, 75, 34, 9999999, 222, 'INGRESO', 15, '2023-01-13 22:14:38', NULL, NULL),
(851, 75, 35, 9999999, 222, 'INGRESO', 20, '2023-01-13 22:14:38', NULL, NULL),
(852, 75, 30, 9999999, 222, 'INGRESO', 17, '2023-01-13 22:14:38', NULL, NULL),
(853, 75, 39, 9999999, 223, 'INGRESO', 5, '2023-01-13 22:14:38', NULL, NULL),
(854, 75, 47, 9999999, 223, 'INGRESO', 10, '2023-01-13 22:14:38', NULL, NULL),
(855, 75, 97, 9999999, 223, 'INGRESO', 15, '2023-01-13 22:14:38', NULL, NULL),
(856, 76, 556, 9999999, NULL, 'DESPACHO', 5, '2023-01-20 14:24:49', NULL, NULL),
(857, 76, 533, 9999999, NULL, 'DESPACHO', 1, '2023-01-20 14:24:49', NULL, NULL),
(858, 76, 542, 9999999, NULL, 'DESPACHO', 36, '2023-01-20 14:24:49', NULL, NULL),
(859, 76, 547, 9999999, NULL, 'DESPACHO', 5, '2023-01-20 14:24:49', NULL, NULL),
(860, 76, 548, 9999999, NULL, 'DESPACHO', 5, '2023-01-20 14:24:49', NULL, NULL),
(861, 76, 530, 9999999, NULL, 'DESPACHO', 30, '2023-01-20 14:24:49', NULL, NULL),
(862, 76, 531, 9999999, NULL, 'DESPACHO', 5, '2023-01-20 14:24:49', NULL, NULL),
(863, 76, 557, 9999999, NULL, 'DESPACHO', 5, '2023-01-20 14:24:49', NULL, NULL),
(864, 76, 558, 9999999, NULL, 'DESPACHO', 5, '2023-01-20 14:24:49', NULL, NULL),
(865, 76, 566, 9999999, NULL, 'DESPACHO', 5, '2023-01-20 14:24:49', NULL, NULL),
(866, 76, 584, 9999999, NULL, 'DESPACHO', 6, '2023-01-20 14:24:49', NULL, NULL),
(867, 76, 581, 9999999, NULL, 'DESPACHO', 6, '2023-01-20 14:24:49', NULL, NULL),
(868, 77, 516, 9999999, NULL, 'DESPACHO', 1, '2023-01-27 19:51:06', NULL, NULL),
(869, 77, 590, 9999999, NULL, 'DESPACHO', 1, '2023-01-27 19:51:06', NULL, NULL),
(870, 78, 594, 9999999, 204, 'INGRESO', 26, '2023-01-27 20:00:56', NULL, NULL),
(871, 78, 595, 9999999, 204, 'INGRESO', 30, '2023-01-27 20:00:56', NULL, NULL),
(872, 78, 597, 9999999, 203, 'INGRESO', 100, '2023-01-27 20:00:56', NULL, NULL),
(873, 78, 596, 9999999, 203, 'INGRESO', 100, '2023-01-27 20:00:56', NULL, NULL),
(874, 78, 598, 9999999, 203, 'INGRESO', 1000, '2023-01-27 20:00:56', NULL, NULL),
(875, 79, 31, 9999999, NULL, 'DESPACHO', 13, '2023-01-27 21:38:49', NULL, NULL),
(876, 79, 35, 9999999, NULL, 'DESPACHO', 4, '2023-01-27 21:38:49', NULL, NULL),
(877, 79, 30, 9999999, NULL, 'DESPACHO', 12, '2023-01-27 21:38:49', NULL, NULL),
(878, 79, 34, 9999999, NULL, 'DESPACHO', 4, '2023-01-27 21:38:49', NULL, NULL),
(879, 79, 39, 9999999, NULL, 'DESPACHO', 3, '2023-01-27 21:38:49', NULL, NULL),
(880, 79, 47, 9999999, NULL, 'DESPACHO', 4, '2023-01-27 21:38:49', NULL, NULL),
(881, 80, 31, 9999999, 222, 'INGRESO', 25, '2023-01-27 22:39:39', NULL, NULL),
(882, 80, 30, 9999999, 222, 'INGRESO', 25, '2023-01-27 22:39:39', NULL, NULL),
(883, 80, 34, 9999999, 222, 'INGRESO', 10, '2023-01-27 22:39:39', NULL, NULL),
(884, 81, 31, 9999999, NULL, 'DESPACHO', 8, '2023-01-27 22:42:01', NULL, NULL),
(885, 81, 35, 9999999, NULL, 'DESPACHO', 4, '2023-01-27 22:42:01', NULL, NULL),
(886, 81, 30, 9999999, NULL, 'DESPACHO', 8, '2023-01-27 22:42:01', NULL, NULL),
(887, 81, 34, 9999999, NULL, 'DESPACHO', 4, '2023-01-27 22:42:01', NULL, NULL),
(888, 81, 39, 9999999, NULL, 'DESPACHO', 3, '2023-01-27 22:42:01', NULL, NULL),
(889, 81, 47, 9999999, NULL, 'DESPACHO', 8, '2023-01-27 22:42:01', NULL, NULL),
(890, 82, 31, 9999999, NULL, 'DESPACHO', 3, '2023-01-27 22:43:44', NULL, NULL),
(891, 82, 35, 9999999, NULL, 'DESPACHO', 4, '2023-01-27 22:43:44', NULL, NULL),
(892, 82, 34, 9999999, NULL, 'DESPACHO', 5, '2023-01-27 22:43:44', NULL, NULL),
(893, 82, 39, 9999999, NULL, 'DESPACHO', 2, '2023-01-27 22:43:44', NULL, NULL),
(894, 83, 31, 9999999, NULL, 'DESPACHO', 20, '2023-01-27 22:47:12', NULL, NULL),
(895, 83, 35, 9999999, NULL, 'DESPACHO', 5, '2023-01-27 22:47:12', NULL, NULL),
(896, 83, 30, 9999999, NULL, 'DESPACHO', 19, '2023-01-27 22:47:12', NULL, NULL),
(897, 83, 34, 9999999, NULL, 'DESPACHO', 6, '2023-01-27 22:47:12', NULL, NULL),
(898, 83, 32, 9999999, NULL, 'DESPACHO', 1, '2023-01-27 22:47:12', NULL, NULL),
(899, 83, 33, 9999999, NULL, 'DESPACHO', 1, '2023-01-27 22:47:12', NULL, NULL),
(900, 83, 39, 9999999, NULL, 'DESPACHO', 3, '2023-01-27 22:47:12', NULL, NULL),
(901, 83, 47, 9999999, NULL, 'DESPACHO', 4, '2023-01-27 22:47:12', NULL, NULL),
(902, 83, 36, 9999999, NULL, 'DESPACHO', 1, '2023-01-27 22:47:12', NULL, NULL),
(903, 84, 31, 9999999, 222, 'INGRESO', 12, '2023-01-27 22:49:42', NULL, NULL),
(904, 84, 35, 9999999, 222, 'INGRESO', 10, '2023-01-27 22:49:42', NULL, NULL),
(905, 84, 30, 9999999, 222, 'INGRESO', 12, '2023-01-27 22:49:42', NULL, NULL),
(906, 84, 34, 9999999, 222, 'INGRESO', 10, '2023-01-27 22:49:42', NULL, NULL),
(907, 85, 31, 9999999, NULL, 'DESPACHO', 8, '2023-01-27 22:54:20', NULL, NULL),
(908, 85, 35, 9999999, NULL, 'DESPACHO', 6, '2023-01-27 22:54:20', NULL, NULL),
(909, 85, 30, 9999999, NULL, 'DESPACHO', 8, '2023-01-27 22:54:20', NULL, NULL),
(910, 85, 34, 9999999, NULL, 'DESPACHO', 6, '2023-01-27 22:54:20', NULL, NULL),
(911, 85, 39, 9999999, NULL, 'DESPACHO', 3, '2023-01-27 22:54:20', NULL, NULL),
(912, 85, 47, 9999999, NULL, 'DESPACHO', 8, '2023-01-27 22:54:20', NULL, NULL),
(913, 86, 601, 9999999, 204, 'INGRESO', 2, '2023-01-28 15:21:02', NULL, NULL),
(914, 86, 599, 9999999, 204, 'INGRESO', 6, '2023-01-28 15:21:02', NULL, NULL),
(915, 86, 600, 9999999, 204, 'INGRESO', 4, '2023-01-28 15:21:02', NULL, NULL),
(916, 86, 529, 9999999, 204, 'INGRESO', 2, '2023-01-28 15:21:02', NULL, NULL),
(917, 87, 518, 9999999, NULL, 'DESPACHO', 2, '2023-01-28 15:44:59', NULL, NULL),
(918, 87, 520, 9999999, NULL, 'DESPACHO', 2, '2023-01-28 15:44:59', NULL, NULL),
(919, 88, 531, 9999999, 311, 'INGRESO', 10, '2023-01-28 16:24:26', NULL, NULL),
(920, 88, 530, 9999999, 312, 'INGRESO', 80, '2023-01-28 16:24:26', NULL, NULL),
(921, 88, 541, 9999999, 313, 'INGRESO', 15, '2023-01-28 16:24:26', NULL, NULL),
(922, 88, 542, 9999999, 314, 'INGRESO', 100, '2023-01-28 16:24:26', NULL, NULL),
(923, 88, 544, 9999999, 313, 'INGRESO', 15, '2023-01-28 16:24:26', NULL, NULL),
(924, 89, 540, 9999999, NULL, 'DESPACHO', 5, '2023-01-28 16:34:07', NULL, NULL),
(925, 89, 548, 9999999, NULL, 'DESPACHO', 5, '2023-01-28 16:34:07', NULL, NULL),
(926, 90, 547, 9999999, NULL, 'DESPACHO', 38, '2023-01-28 16:36:02', NULL, NULL),
(927, 91, 530, 9999999, NULL, 'DESPACHO', 20, '2023-01-28 16:49:43', NULL, NULL),
(928, 91, 536, 9999999, NULL, 'DESPACHO', 7, '2023-01-28 16:49:43', NULL, NULL),
(929, 91, 539, 9999999, NULL, 'DESPACHO', 5, '2023-01-28 16:49:43', NULL, NULL),
(930, 91, 542, 9999999, NULL, 'DESPACHO', 10, '2023-01-28 16:49:43', NULL, NULL),
(931, 91, 579, 9999999, NULL, 'DESPACHO', 10, '2023-01-28 16:49:43', NULL, NULL),
(932, 92, 530, 9999999, NULL, 'DESPACHO', 40, '2023-01-28 16:52:52', NULL, NULL),
(933, 92, 540, 9999999, NULL, 'DESPACHO', 5, '2023-01-28 16:52:52', NULL, NULL),
(934, 92, 542, 9999999, NULL, 'DESPACHO', 20, '2023-01-28 16:52:52', NULL, NULL),
(935, 92, 548, 9999999, NULL, 'DESPACHO', 5, '2023-01-28 16:52:52', NULL, NULL),
(936, 92, 550, 9999999, NULL, 'DESPACHO', 5, '2023-01-28 16:52:52', NULL, NULL),
(937, 92, 566, 9999999, NULL, 'DESPACHO', 1, '2023-01-28 16:52:52', NULL, NULL),
(938, 93, 602, 9999999, 229, 'INGRESO', 38, '2023-01-28 16:57:48', NULL, NULL),
(939, 94, 541, 9999999, NULL, 'DESPACHO', 7, '2023-01-28 17:02:14', NULL, NULL),
(940, 94, 544, 9999999, NULL, 'DESPACHO', 7, '2023-01-28 17:02:14', NULL, NULL),
(941, 94, 602, 9999999, NULL, 'DESPACHO', 10, '2023-01-28 17:02:14', NULL, NULL),
(942, 94, 566, 9999999, NULL, 'DESPACHO', 10, '2023-01-28 17:02:14', NULL, NULL),
(943, 95, 515, 9999999, NULL, 'DESPACHO', 2, '2023-01-31 21:45:35', NULL, NULL),
(944, 95, 590, 9999999, NULL, 'DESPACHO', 2, '2023-01-31 21:45:35', NULL, NULL),
(945, 95, 517, 9999999, NULL, 'DESPACHO', 1, '2023-01-31 21:45:35', NULL, NULL),
(946, 95, 597, 9999999, NULL, 'DESPACHO', 1, '2023-01-31 21:45:35', NULL, NULL),
(947, 95, 596, 9999999, NULL, 'DESPACHO', 1, '2023-01-31 21:45:35', NULL, NULL),
(948, 96, 31, 9999999, NULL, 'DESPACHO', 5, '2023-01-31 21:48:45', NULL, NULL),
(949, 96, 35, 9999999, NULL, 'DESPACHO', 6, '2023-01-31 21:48:45', NULL, NULL),
(950, 96, 30, 9999999, NULL, 'DESPACHO', 5, '2023-01-31 21:48:45', NULL, NULL),
(951, 96, 34, 9999999, NULL, 'DESPACHO', 6, '2023-01-31 21:48:45', NULL, NULL),
(952, 97, 31, 9999999, 222, 'INGRESO', 25, '2023-01-31 21:52:55', NULL, NULL),
(953, 97, 35, 9999999, 222, 'INGRESO', 15, '2023-01-31 21:52:55', NULL, NULL),
(954, 97, 30, 9999999, 222, 'INGRESO', 25, '2023-01-31 21:52:55', NULL, NULL),
(955, 97, 34, 9999999, 222, 'INGRESO', 15, '2023-01-31 21:52:55', NULL, NULL),
(956, 97, 39, 9999999, 223, 'INGRESO', 14, '2023-01-31 21:52:55', NULL, NULL),
(957, 97, 47, 9999999, 223, 'INGRESO', 28, '2023-01-31 21:52:55', NULL, NULL),
(958, 98, 30, 9999999, NULL, 'DESPACHO', 3, '2023-01-31 21:54:07', NULL, NULL),
(959, 98, 31, 9999999, NULL, 'DESPACHO', 7, '2023-01-31 21:54:07', NULL, NULL),
(960, 99, 101, 9999999, NULL, 'DESPACHO', 3, '2023-02-02 17:45:50', NULL, NULL),
(961, 99, 112, 9999999, NULL, 'DESPACHO', 4, '2023-02-02 17:45:50', NULL, NULL),
(962, 99, 114, 9999999, NULL, 'DESPACHO', 2, '2023-02-02 17:45:50', NULL, NULL),
(963, 99, 115, 9999999, NULL, 'DESPACHO', 2, '2023-02-02 17:45:50', NULL, NULL),
(964, 99, 120, 9999999, NULL, 'DESPACHO', 1, '2023-02-02 17:45:50', NULL, NULL),
(965, 99, 134, 9999999, NULL, 'DESPACHO', 2, '2023-02-02 17:45:50', NULL, NULL),
(966, 99, 140, 9999999, NULL, 'DESPACHO', 48, '2023-02-02 17:45:50', NULL, NULL),
(967, 99, 146, 9999999, NULL, 'DESPACHO', 7, '2023-02-02 17:45:50', NULL, NULL),
(968, 99, 151, 9999999, NULL, 'DESPACHO', 2, '2023-02-02 17:45:50', NULL, NULL),
(969, 99, 158, 9999999, NULL, 'DESPACHO', 12, '2023-02-02 17:45:50', NULL, NULL),
(970, 99, 159, 9999999, NULL, 'DESPACHO', 48, '2023-02-02 17:45:50', NULL, NULL),
(971, 99, 170, 9999999, NULL, 'DESPACHO', 47, '2023-02-02 17:45:50', NULL, NULL),
(972, 99, 171, 9999999, NULL, 'DESPACHO', 1, '2023-02-02 17:45:50', NULL, NULL),
(973, 99, 172, 9999999, NULL, 'DESPACHO', 1, '2023-02-02 17:45:50', NULL, NULL),
(974, 99, 179, 9999999, NULL, 'DESPACHO', 1, '2023-02-02 17:45:50', NULL, NULL),
(975, 99, 180, 9999999, NULL, 'DESPACHO', 419, '2023-02-02 17:45:50', NULL, NULL),
(976, 99, 202, 9999999, NULL, 'DESPACHO', 12, '2023-02-02 17:45:50', NULL, NULL),
(977, 99, 205, 9999999, NULL, 'DESPACHO', 43, '2023-02-02 17:45:50', NULL, NULL),
(978, 99, 208, 9999999, NULL, 'DESPACHO', 3, '2023-02-02 17:45:50', NULL, NULL),
(979, 99, 212, 9999999, NULL, 'DESPACHO', 3, '2023-02-02 17:45:50', NULL, NULL),
(980, 99, 218, 9999999, NULL, 'DESPACHO', 2, '2023-02-02 17:45:50', NULL, NULL),
(981, 99, 224, 9999999, NULL, 'DESPACHO', 8, '2023-02-02 17:45:50', NULL, NULL),
(982, 99, 225, 9999999, NULL, 'DESPACHO', 150, '2023-02-02 17:45:50', NULL, NULL),
(983, 99, 230, 9999999, NULL, 'DESPACHO', 1, '2023-02-02 17:45:50', NULL, NULL),
(984, 99, 262, 9999999, NULL, 'DESPACHO', 5, '2023-02-02 17:45:50', NULL, NULL),
(985, 99, 264, 9999999, NULL, 'DESPACHO', 1, '2023-02-02 17:45:50', NULL, NULL),
(986, 99, 267, 9999999, NULL, 'DESPACHO', 23, '2023-02-02 17:45:50', NULL, NULL),
(987, 99, 287, 9999999, NULL, 'DESPACHO', 30, '2023-02-02 17:45:50', NULL, NULL),
(988, 99, 298, 9999999, NULL, 'DESPACHO', 32, '2023-02-02 17:45:50', NULL, NULL),
(989, 99, 309, 9999999, NULL, 'DESPACHO', 12, '2023-02-02 17:45:50', NULL, NULL),
(990, 99, 312, 9999999, NULL, 'DESPACHO', 6, '2023-02-02 17:45:50', NULL, NULL),
(991, 99, 315, 9999999, NULL, 'DESPACHO', 22, '2023-02-02 17:45:50', NULL, NULL),
(992, 99, 318, 9999999, NULL, 'DESPACHO', 6, '2023-02-02 17:45:50', NULL, NULL),
(993, 99, 321, 9999999, NULL, 'DESPACHO', 3, '2023-02-02 17:45:50', NULL, NULL),
(994, 99, 333, 9999999, NULL, 'DESPACHO', 4, '2023-02-02 17:45:50', NULL, NULL),
(995, 99, 343, 9999999, NULL, 'DESPACHO', 1, '2023-02-02 17:45:50', NULL, NULL),
(996, 99, 347, 9999999, NULL, 'DESPACHO', 2, '2023-02-02 17:45:50', NULL, NULL),
(997, 99, 350, 9999999, NULL, 'DESPACHO', 1, '2023-02-02 17:45:50', NULL, NULL),
(998, 99, 353, 9999999, NULL, 'DESPACHO', 2, '2023-02-02 17:45:51', NULL, NULL),
(999, 99, 356, 9999999, NULL, 'DESPACHO', 1, '2023-02-02 17:45:51', NULL, NULL),
(1000, 99, 360, 9999999, NULL, 'DESPACHO', 192, '2023-02-02 17:45:51', NULL, NULL),
(1001, 99, 370, 9999999, NULL, 'DESPACHO', 77, '2023-02-02 17:45:51', NULL, NULL),
(1002, 99, 378, 9999999, NULL, 'DESPACHO', 5, '2023-02-02 17:45:51', NULL, NULL),
(1003, 99, 383, 9999999, NULL, 'DESPACHO', 6, '2023-02-02 17:45:51', NULL, NULL),
(1004, 99, 387, 9999999, NULL, 'DESPACHO', 3, '2023-02-02 17:45:51', NULL, NULL),
(1005, 99, 388, 9999999, NULL, 'DESPACHO', 6, '2023-02-02 17:45:51', NULL, NULL),
(1006, 99, 395, 9999999, NULL, 'DESPACHO', 7, '2023-02-02 17:45:51', NULL, NULL),
(1007, 99, 396, 9999999, NULL, 'DESPACHO', 11, '2023-02-02 17:45:51', NULL, NULL),
(1008, 99, 404, 9999999, NULL, 'DESPACHO', 1, '2023-02-02 17:45:51', NULL, NULL),
(1009, 99, 406, 9999999, NULL, 'DESPACHO', 100, '2023-02-02 17:45:51', NULL, NULL),
(1010, 99, 407, 9999999, NULL, 'DESPACHO', 50, '2023-02-02 17:45:51', NULL, NULL),
(1011, 99, 414, 9999999, NULL, 'DESPACHO', 354, '2023-02-02 17:45:51', NULL, NULL),
(1012, 99, 422, 9999999, NULL, 'DESPACHO', 1689, '2023-02-02 17:45:51', NULL, NULL),
(1013, 99, 428, 9999999, NULL, 'DESPACHO', 1, '2023-02-02 17:45:51', NULL, NULL),
(1014, 99, 430, 9999999, NULL, 'DESPACHO', 1, '2023-02-02 17:45:51', NULL, NULL),
(1015, 99, 431, 9999999, NULL, 'DESPACHO', 6, '2023-02-02 17:45:51', NULL, NULL),
(1016, 99, 433, 9999999, NULL, 'DESPACHO', 6, '2023-02-02 17:45:51', NULL, NULL),
(1017, 99, 434, 9999999, NULL, 'DESPACHO', 6, '2023-02-02 17:45:51', NULL, NULL),
(1018, 99, 435, 9999999, NULL, 'DESPACHO', 7, '2023-02-02 17:45:51', NULL, NULL),
(1019, 99, 436, 9999999, NULL, 'DESPACHO', 91, '2023-02-02 17:45:51', NULL, NULL),
(1020, 99, 437, 9999999, NULL, 'DESPACHO', 224, '2023-02-02 17:45:51', NULL, NULL),
(1021, 99, 438, 9999999, NULL, 'DESPACHO', 1, '2023-02-02 17:45:51', NULL, NULL),
(1022, 99, 439, 9999999, NULL, 'DESPACHO', 1, '2023-02-02 17:45:51', NULL, NULL),
(1023, 99, 440, 9999999, NULL, 'DESPACHO', 1, '2023-02-02 17:45:51', NULL, NULL),
(1024, 99, 442, 9999999, NULL, 'DESPACHO', 1, '2023-02-02 17:45:51', NULL, NULL),
(1025, 99, 445, 9999999, NULL, 'DESPACHO', 1, '2023-02-02 17:45:51', NULL, NULL),
(1026, 99, 446, 9999999, NULL, 'DESPACHO', 1, '2023-02-02 17:45:51', NULL, NULL),
(1027, 99, 453, 9999999, NULL, 'DESPACHO', 238, '2023-02-02 17:45:51', NULL, NULL),
(1028, 99, 471, 9999999, NULL, 'DESPACHO', 15, '2023-02-02 17:45:51', NULL, NULL),
(1029, 99, 476, 9999999, NULL, 'DESPACHO', 3, '2023-02-02 17:45:51', NULL, NULL),
(1030, 99, 475, 9999999, NULL, 'DESPACHO', 16, '2023-02-02 17:45:51', NULL, NULL),
(1031, 99, 482, 9999999, NULL, 'DESPACHO', 6, '2023-02-02 17:45:51', NULL, NULL),
(1032, 99, 486, 9999999, NULL, 'DESPACHO', 202, '2023-02-02 17:45:51', NULL, NULL),
(1033, 100, 102, 9999999, 190, 'INGRESO', 2, '2023-02-02 18:10:06', NULL, NULL),
(1034, 100, 144, 9999999, 84, 'INGRESO', 7, '2023-02-02 18:10:06', NULL, NULL),
(1035, 100, 220, 9999999, 161, 'INGRESO', 14, '2023-02-02 18:10:06', NULL, NULL),
(1036, 100, 270, 9999999, 202, 'INGRESO', 2, '2023-02-02 18:10:06', NULL, NULL),
(1037, 100, 324, 9999999, 224, 'INGRESO', 3, '2023-02-02 18:10:06', NULL, NULL),
(1038, 100, 337, 9999999, 178, 'INGRESO', 2, '2023-02-02 18:10:06', NULL, NULL),
(1039, 100, 351, 9999999, 167, 'INGRESO', 1, '2023-02-02 18:10:06', NULL, NULL),
(1040, 100, 357, 9999999, 87, 'INGRESO', 1, '2023-02-02 18:10:06', NULL, NULL),
(1041, 100, 386, 9999999, 106, 'INGRESO', 6, '2023-02-02 18:10:06', NULL, NULL),
(1042, 100, 413, 9999999, 152, 'INGRESO', 354, '2023-02-02 18:10:06', NULL, NULL),
(1043, 100, 420, 9999999, 155, 'INGRESO', 1002, '2023-02-02 18:10:06', NULL, NULL),
(1044, 100, 429, 9999999, 154, 'INGRESO', 431, '2023-02-02 18:10:06', NULL, NULL),
(1045, 100, 443, 9999999, 90, 'INGRESO', 256, '2023-02-02 18:10:06', NULL, NULL),
(1046, 100, 452, 9999999, 92, 'INGRESO', 993, '2023-02-02 18:10:06', NULL, NULL),
(1047, 100, 454, 9999999, 92, 'INGRESO', 300, '2023-02-02 18:10:06', NULL, NULL),
(1048, 100, 455, 9999999, 92, 'INGRESO', 361, '2023-02-02 18:10:06', NULL, NULL),
(1049, 100, 465, 9999999, 92, 'INGRESO', 170, '2023-02-02 18:10:06', NULL, NULL),
(1050, 100, 472, 9999999, 157, 'INGRESO', 30, '2023-02-02 18:10:06', NULL, NULL),
(1051, 100, 484, 9999999, 192, 'INGRESO', 12, '2023-02-02 18:10:06', NULL, NULL),
(1052, 101, 177, 9999999, NULL, 'DESPACHO', 4, '2023-02-02 18:41:23', NULL, NULL),
(1053, 102, 612, 9999999, 4, 'INGRESO', 10, '2023-02-09 13:02:43', NULL, NULL),
(1054, 102, 612, 9999999, 5, 'INGRESO', 5, '2023-02-09 13:02:43', NULL, NULL),
(1055, 102, 607, 9999999, 79, 'INGRESO', 9, '2023-02-09 13:02:43', NULL, NULL),
(1056, 102, 607, 9999999, 4, 'INGRESO', 5, '2023-02-09 13:02:43', NULL, NULL),
(1057, 103, 612, 9999999, 4, 'DESPACHO', -2, '2023-02-09 20:08:40', NULL, NULL),
(1058, 103, 612, 9999999, 5, 'DESPACHO', -1, '2023-02-09 20:08:40', NULL, NULL),
(1059, 103, 607, 9999999, 79, 'DESPACHO', -5, '2023-02-09 20:08:40', NULL, NULL),
(1060, 103, 607, 9999999, 4, 'DESPACHO', -2, '2023-02-09 20:08:40', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lotes`
--

CREATE TABLE `lotes` (
  `lote_id` int NOT NULL,
  `lote_nombre` varchar(45) DEFAULT NULL,
  `lote_fecha_vencimiento` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `lotes`
--

INSERT INTO `lotes` (`lote_id`, `lote_nombre`, `lote_fecha_vencimiento`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '9999999', '2030-12-30', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lote_x_producto`
--

CREATE TABLE `lote_x_producto` (
  `id` int NOT NULL,
  `lote_id` int NOT NULL,
  `prod_id` int NOT NULL,
  `cantidad` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `lote_x_producto`
--

INSERT INTO `lote_x_producto` (`id`, `lote_id`, `prod_id`, `cantidad`, `created_at`, `updated_at`) VALUES
(1, 9999999, 3, 0, '2022-06-22 21:24:55', '2022-06-27 21:45:36'),
(2, 9999999, 2, 0, '2022-06-22 21:24:55', '2022-06-27 21:45:36'),
(3, 9999999, 1, 0, '2022-06-22 21:24:55', '2022-06-27 21:45:34'),
(4, 9999999, 10, 0, '2022-06-27 17:07:50', '2022-08-09 18:36:37'),
(5, 9999999, 15, 3, '2022-06-27 21:42:52', '2023-01-02 22:11:06'),
(6, 9999999, 16, 1, '2022-06-27 21:42:52', '2023-01-02 22:11:06'),
(7, 9999999, 17, 1, '2022-06-27 21:42:52', '2023-01-02 22:11:06'),
(8, 9999999, 27, 2, '2022-06-27 21:42:52', '2023-01-02 22:11:06'),
(9, 9999999, 32, 0, '2022-06-27 21:42:52', '2023-01-27 22:47:12'),
(10, 9999999, 33, 0, '2022-06-27 21:42:52', '2023-01-27 22:47:12'),
(11, 9999999, 34, 19, '2022-06-27 21:42:52', '2023-01-31 21:52:55'),
(12, 9999999, 35, 23, '2022-06-27 21:42:52', '2023-01-31 21:52:55'),
(13, 9999999, 36, 0, '2022-06-27 21:42:52', '2023-01-27 22:47:12'),
(14, 9999999, 37, 1, '2022-06-27 21:42:52', '2023-01-02 22:11:06'),
(15, 9999999, 38, 1, '2022-06-27 21:42:52', '2023-01-05 15:06:23'),
(16, 9999999, 39, 14, '2022-06-27 21:42:52', '2023-01-31 21:52:55'),
(17, 9999999, 45, 0, '2022-06-27 21:42:52', '2023-01-12 19:21:49'),
(18, 9999999, 47, 34, '2022-06-27 21:42:52', '2023-01-31 21:52:55'),
(19, 9999999, 48, 0, '2022-06-27 21:42:52', '2022-08-09 18:36:37'),
(20, 9999999, 51, 1, '2022-06-27 21:42:52', '2023-01-02 22:11:06'),
(21, 9999999, 56, 1, '2022-06-27 21:42:52', '2023-01-02 22:11:06'),
(22, 9999999, 57, 6, '2022-06-27 21:42:52', '2023-01-02 22:11:06'),
(23, 9999999, 58, 0, '2022-06-27 21:42:52', '2022-08-09 18:36:37'),
(24, 9999999, 59, 0, '2022-06-27 21:42:52', '2022-12-30 19:46:12'),
(25, 9999999, 60, 0, '2022-06-27 21:42:52', '2022-08-09 18:36:37'),
(26, 9999999, 61, 0, '2022-06-27 21:42:52', '2022-08-09 18:36:38'),
(27, 9999999, 12, 1, '2022-06-27 21:52:33', '2023-01-02 22:11:06'),
(28, 9999999, 68, 0, '2022-06-27 23:04:58', '2022-07-06 17:42:56'),
(29, 9999999, 79, 0, '2022-06-27 23:04:58', '2022-07-06 17:42:56'),
(30, 9999999, 82, 0, '2022-06-27 23:04:58', '2022-07-06 17:42:56'),
(31, 9999999, 85, 0, '2022-06-27 23:04:58', '2022-07-06 17:42:56'),
(32, 9999999, 86, 0, '2022-06-27 23:04:58', '2022-07-06 17:42:56'),
(33, 9999999, 87, 0, '2022-06-27 23:04:58', '2022-07-06 17:42:56'),
(34, 9999999, 88, 0, '2022-06-27 23:04:58', '2022-07-06 17:42:56'),
(35, 9999999, 89, 0, '2022-06-27 23:04:58', '2022-07-06 17:42:56'),
(36, 9999999, 91, 0, '2022-06-27 23:04:58', '2022-07-06 17:42:56'),
(37, 9999999, 94, 0, '2022-06-27 23:04:58', '2022-07-06 17:42:56'),
(38, 9999999, 95, 0, '2022-07-14 16:40:08', '2022-08-09 18:36:44'),
(39, 9999999, 31, 18, '2022-08-12 00:28:46', '2023-01-31 21:54:07'),
(40, 9999999, 30, 22, '2022-08-12 00:28:46', '2023-01-31 21:54:07'),
(41, 9999999, 97, 15, '2022-08-12 00:35:21', '2023-01-13 22:14:38'),
(42, 9999999, 98, 0, '2022-08-12 00:35:21', '2022-12-30 19:46:10'),
(43, 9999999, 99, 9, '2022-08-12 00:35:21', '2023-01-02 22:11:06'),
(44, 9999999, 207, 0, '2022-08-15 17:52:03', '2022-12-30 19:46:04'),
(45, 9999999, 231, 0, '2022-08-18 18:41:21', '2022-08-18 23:47:55'),
(46, 9999999, 241, 0, '2022-08-18 18:41:21', '2022-08-18 23:47:55'),
(47, 9999999, 228, 0, '2022-08-18 18:41:21', '2022-08-18 23:47:55'),
(48, 9999999, 242, 0, '2022-08-18 18:41:21', '2022-08-18 23:47:55'),
(49, 9999999, 255, 0, '2022-08-18 18:41:21', '2022-08-18 23:47:55'),
(50, 9999999, 135, 89, '2022-08-19 20:37:33', '2022-12-30 20:38:31'),
(51, 9999999, 101, 126, '2022-08-19 20:37:33', '2023-02-02 17:45:50'),
(52, 9999999, 102, 144, '2022-08-19 20:37:33', '2023-02-02 18:10:06'),
(53, 9999999, 103, 5, '2022-08-19 20:37:33', '2023-01-04 18:22:19'),
(54, 9999999, 105, 100, '2022-08-19 20:37:33', '2022-12-28 14:38:04'),
(55, 9999999, 106, 264, '2022-08-19 20:37:33', '2023-01-09 21:58:54'),
(56, 9999999, 107, 262, '2022-08-19 20:37:33', '2023-01-04 18:22:19'),
(57, 9999999, 108, 144, '2022-08-19 20:37:33', '2023-01-04 18:22:19'),
(58, 9999999, 109, 94, '2022-08-19 20:37:33', '2023-01-04 18:22:19'),
(59, 9999999, 110, 212, '2022-08-19 20:37:33', '2023-01-09 21:58:54'),
(60, 9999999, 111, 120, '2022-08-19 20:37:33', '2023-01-09 21:58:54'),
(61, 9999999, 112, 126, '2022-08-19 20:37:33', '2023-02-02 17:45:50'),
(62, 9999999, 114, 142, '2022-08-19 20:37:33', '2023-02-02 17:45:50'),
(63, 9999999, 115, 116, '2022-08-19 20:37:33', '2023-02-02 17:45:50'),
(64, 9999999, 116, 210, '2022-08-19 20:37:33', '2022-12-30 20:38:31'),
(65, 9999999, 118, 220, '2022-08-19 20:37:33', '2022-12-30 20:38:31'),
(66, 9999999, 119, 250, '2022-08-19 20:37:33', '2022-12-28 14:38:05'),
(67, 9999999, 120, 121, '2022-08-19 20:37:33', '2023-02-02 17:45:50'),
(68, 9999999, 121, 54, '2022-08-19 20:37:33', '2023-01-04 18:22:19'),
(69, 9999999, 122, 125, '2022-08-19 20:37:33', '2022-12-30 20:38:31'),
(70, 9999999, 124, 0, '2022-08-19 20:37:33', '2022-12-27 17:59:22'),
(71, 9999999, 125, 48, '2022-08-19 20:37:33', '2023-01-04 18:22:19'),
(72, 9999999, 128, 160, '2022-08-19 20:37:33', '2023-01-04 19:56:46'),
(73, 9999999, 129, 84, '2022-08-19 20:37:33', '2023-01-04 19:56:46'),
(74, 9999999, 130, 93, '2022-08-19 20:37:33', '2023-01-04 19:56:46'),
(75, 9999999, 131, 60, '2022-08-19 20:37:33', '2023-01-04 19:56:46'),
(76, 9999999, 133, 114, '2022-08-19 20:37:33', '2022-12-30 20:38:31'),
(77, 9999999, 134, 142, '2022-08-19 20:37:33', '2023-02-02 17:45:50'),
(78, 9999999, 136, 153, '2022-08-19 20:37:33', '2023-01-04 19:56:46'),
(79, 9999999, 137, 107, '2022-08-19 20:37:33', '2023-01-04 19:56:46'),
(80, 9999999, 138, 220, '2022-08-19 20:37:33', '2022-12-30 20:38:31'),
(81, 9999999, 139, 258, '2022-08-19 20:37:33', '2023-01-04 19:56:46'),
(82, 9999999, 141, 82, '2022-08-19 20:37:33', '2023-01-04 19:56:46'),
(83, 9999999, 28, 0, '2022-12-19 14:45:59', '2022-12-19 14:46:49'),
(84, 9999999, 229, 0, '2022-12-19 22:05:49', '2022-12-27 17:59:38'),
(85, 9999999, 140, 284, '2022-12-27 19:08:38', '2023-02-02 17:45:50'),
(86, 9999999, 132, 149, '2022-12-27 19:08:38', '2022-12-30 20:38:31'),
(87, 9999999, 357, 83, '2022-12-27 19:08:38', '2023-02-02 18:10:06'),
(88, 9999999, 157, 144, '2022-12-27 19:08:38', '2023-01-06 17:02:47'),
(89, 9999999, 488, 100, '2022-12-28 14:38:04', NULL),
(90, 9999999, 489, 75, '2022-12-28 14:38:04', NULL),
(91, 9999999, 490, 52, '2022-12-28 14:38:04', '2022-12-30 20:38:31'),
(92, 9999999, 347, 476, '2022-12-28 14:38:04', '2023-02-02 17:45:50'),
(93, 9999999, 230, 221, '2022-12-28 14:38:04', '2023-02-02 17:45:50'),
(94, 9999999, 506, 288, '2022-12-28 14:38:04', '2022-12-30 20:38:31'),
(95, 9999999, 507, 111, '2022-12-28 14:38:04', '2022-12-30 20:38:31'),
(96, 9999999, 508, 147, '2022-12-28 14:38:04', '2022-12-30 20:38:31'),
(97, 9999999, 509, 0, '2022-12-28 14:38:04', '2022-12-30 20:38:31'),
(98, 9999999, 100, 178, '2022-12-28 14:38:04', '2023-01-04 18:22:19'),
(99, 9999999, 501, 110, '2022-12-28 14:38:04', '2023-01-12 21:44:13'),
(100, 9999999, 504, 44, '2022-12-28 14:38:04', '2023-01-12 21:44:13'),
(101, 9999999, 486, 6, '2022-12-28 14:38:04', '2023-02-02 17:45:51'),
(102, 9999999, 502, 125, '2022-12-28 14:38:04', '2022-12-30 20:38:31'),
(103, 9999999, 505, 21, '2022-12-28 14:38:05', '2023-01-04 16:00:10'),
(104, 9999999, 499, 204, '2022-12-28 14:38:05', '2023-01-12 21:44:13'),
(105, 9999999, 500, 57, '2022-12-28 14:38:05', '2022-12-30 20:38:31'),
(106, 9999999, 363, 200, '2022-12-28 15:01:21', NULL),
(107, 9999999, 368, 251, '2022-12-28 15:01:21', '2023-01-09 21:58:55'),
(108, 9999999, 387, 110, '2022-12-28 15:01:21', '2023-02-02 17:45:51'),
(109, 9999999, 510, 27, '2022-12-28 15:01:21', '2022-12-30 20:38:31'),
(110, 9999999, 154, 75, '2022-12-28 15:01:21', NULL),
(111, 9999999, 384, 78, '2022-12-28 15:01:21', '2022-12-30 20:38:31'),
(112, 9999999, 497, 117, '2022-12-28 15:01:21', '2022-12-30 20:38:31'),
(113, 9999999, 498, 111, '2022-12-28 15:01:21', '2022-12-30 20:38:31'),
(114, 9999999, 117, 267, '2022-12-28 15:01:21', '2023-01-04 18:22:19'),
(115, 9999999, 104, 88, '2022-12-28 15:01:21', '2023-01-04 18:22:19'),
(116, 9999999, 494, 117, '2022-12-28 15:01:21', '2022-12-30 20:38:31'),
(117, 9999999, 495, 117, '2022-12-28 15:01:21', '2022-12-30 20:38:31'),
(118, 9999999, 148, 177, '2022-12-28 15:01:21', '2023-01-04 19:56:46'),
(119, 9999999, 153, 364, '2022-12-28 15:01:21', '2022-12-30 20:38:31'),
(120, 9999999, 350, 324, '2022-12-28 15:01:21', '2023-02-02 17:45:50'),
(121, 9999999, 158, 127, '2022-12-28 15:01:21', '2023-02-02 17:45:50'),
(122, 9999999, 496, 306, '2022-12-28 15:01:21', '2022-12-30 20:38:31'),
(123, 9999999, 113, 223, '2022-12-28 15:01:21', '2022-12-30 20:38:31'),
(124, 9999999, 493, 33, '2022-12-28 15:01:21', '2023-01-04 16:00:10'),
(125, 9999999, 491, 26, '2022-12-28 15:01:21', '2022-12-30 20:38:31'),
(126, 9999999, 492, 150, '2022-12-28 15:01:21', NULL),
(127, 9999999, 160, 184, '2022-12-28 15:01:21', '2023-01-06 17:02:47'),
(128, 9999999, 336, 151, '2022-12-28 15:01:21', '2022-12-30 20:38:31'),
(129, 9999999, 358, 379, '2022-12-28 15:01:21', '2023-01-09 21:58:55'),
(130, 9999999, 362, 95, '2022-12-28 15:01:21', '2023-01-09 18:08:11'),
(131, 9999999, 503, 93, '2022-12-28 18:08:12', '2022-12-30 20:38:31'),
(132, 9999999, 126, 119, '2023-01-04 18:22:19', NULL),
(133, 9999999, 127, 101, '2023-01-04 18:22:19', NULL),
(134, 9999999, 142, 204, '2023-01-04 19:56:46', NULL),
(135, 9999999, 143, 90, '2023-01-04 19:56:46', NULL),
(136, 9999999, 144, 345, '2023-01-04 19:56:46', '2023-02-02 18:10:06'),
(137, 9999999, 145, 174, '2023-01-04 19:56:46', NULL),
(138, 9999999, 146, 208, '2023-01-04 19:56:46', '2023-02-02 17:45:50'),
(139, 9999999, 147, 120, '2023-01-04 19:56:46', NULL),
(140, 9999999, 149, 211, '2023-01-04 19:56:46', '2023-01-09 21:58:54'),
(141, 9999999, 150, 144, '2023-01-04 19:56:46', NULL),
(142, 9999999, 151, 137, '2023-01-04 19:56:46', '2023-02-02 17:45:50'),
(143, 9999999, 152, 115, '2023-01-04 19:56:46', '2023-01-09 21:58:54'),
(144, 9999999, 155, 5, '2023-01-04 19:56:46', NULL),
(145, 9999999, 156, 127, '2023-01-06 17:02:47', NULL),
(146, 9999999, 159, 84, '2023-01-06 17:02:47', '2023-02-02 17:45:50'),
(147, 9999999, 161, 106, '2023-01-06 17:02:47', NULL),
(148, 9999999, 162, 89, '2023-01-06 17:02:47', NULL),
(149, 9999999, 163, 83, '2023-01-06 17:02:47', NULL),
(150, 9999999, 164, 71, '2023-01-06 17:02:47', NULL),
(151, 9999999, 165, 205, '2023-01-06 17:02:47', '2023-01-09 21:58:54'),
(152, 9999999, 167, 180, '2023-01-06 17:02:47', NULL),
(153, 9999999, 168, 263, '2023-01-06 17:02:47', '2023-01-09 21:58:54'),
(154, 9999999, 169, 251, '2023-01-06 17:02:47', '2023-01-09 21:58:54'),
(155, 9999999, 170, 533, '2023-01-06 17:02:47', '2023-02-02 17:45:50'),
(156, 9999999, 171, 310, '2023-01-06 17:02:47', '2023-02-02 17:45:50'),
(157, 9999999, 172, 195, '2023-01-06 17:02:47', '2023-02-02 17:45:50'),
(158, 9999999, 173, 495, '2023-01-06 17:02:47', '2023-01-09 21:58:55'),
(159, 9999999, 174, 18, '2023-01-06 17:02:47', NULL),
(160, 9999999, 176, 96, '2023-01-06 17:02:47', NULL),
(161, 9999999, 177, 190, '2023-01-06 17:02:47', '2023-02-02 18:41:23'),
(162, 9999999, 179, 29, '2023-01-06 17:02:47', '2023-02-02 17:45:50'),
(163, 9999999, 180, 6, '2023-01-06 17:02:47', '2023-02-02 17:45:50'),
(164, 9999999, 181, 22, '2023-01-06 17:02:47', NULL),
(165, 9999999, 182, 272, '2023-01-06 17:02:47', NULL),
(166, 9999999, 183, 376, '2023-01-06 17:02:47', NULL),
(167, 9999999, 184, 331, '2023-01-06 17:02:47', NULL),
(168, 9999999, 185, 678, '2023-01-06 17:02:47', NULL),
(169, 9999999, 186, 705, '2023-01-06 17:02:47', '2023-01-09 20:35:44'),
(170, 9999999, 187, 378, '2023-01-06 17:02:47', NULL),
(171, 9999999, 188, 64, '2023-01-06 17:02:47', NULL),
(172, 9999999, 189, 381, '2023-01-06 17:02:47', '2023-01-09 21:58:55'),
(173, 9999999, 190, 270, '2023-01-06 17:02:47', NULL),
(174, 9999999, 191, 249, '2023-01-06 17:02:47', NULL),
(175, 9999999, 192, 159, '2023-01-06 20:38:37', NULL),
(176, 9999999, 193, 12, '2023-01-06 20:38:37', NULL),
(177, 9999999, 194, 439, '2023-01-06 20:38:37', NULL),
(178, 9999999, 196, 401, '2023-01-06 20:38:37', NULL),
(179, 9999999, 198, 156, '2023-01-06 20:38:37', NULL),
(180, 9999999, 199, 72, '2023-01-06 20:38:37', NULL),
(181, 9999999, 200, 277, '2023-01-06 20:38:37', NULL),
(182, 9999999, 201, 886, '2023-01-06 20:38:37', '2023-01-09 21:58:55'),
(183, 9999999, 202, 740, '2023-01-06 20:38:37', '2023-02-02 17:45:50'),
(184, 9999999, 204, 503, '2023-01-06 20:38:37', '2023-01-09 21:58:55'),
(185, 9999999, 205, 661, '2023-01-06 20:38:37', '2023-02-02 17:45:50'),
(186, 9999999, 203, 497, '2023-01-06 20:38:37', '2023-01-09 21:58:55'),
(187, 9999999, 206, 521, '2023-01-06 20:38:37', NULL),
(188, 9999999, 208, 924, '2023-01-06 20:38:37', '2023-02-02 17:45:50'),
(189, 9999999, 209, 445, '2023-01-06 20:38:37', NULL),
(190, 9999999, 210, 57, '2023-01-06 20:38:37', NULL),
(191, 9999999, 211, 46, '2023-01-06 20:38:37', NULL),
(192, 9999999, 212, 23, '2023-01-06 20:38:37', '2023-02-02 17:45:50'),
(193, 9999999, 213, 381, '2023-01-06 20:38:37', NULL),
(194, 9999999, 214, 186, '2023-01-06 20:38:37', NULL),
(195, 9999999, 215, 197, '2023-01-06 20:38:37', NULL),
(196, 9999999, 216, 236, '2023-01-06 20:38:37', '2023-01-09 21:58:55'),
(197, 9999999, 217, 163, '2023-01-06 20:38:37', NULL),
(198, 9999999, 218, 108, '2023-01-06 20:38:37', '2023-02-02 17:45:50'),
(199, 9999999, 219, 473, '2023-01-06 20:38:37', NULL),
(200, 9999999, 220, 60, '2023-01-06 20:38:37', '2023-02-02 18:10:06'),
(201, 9999999, 221, 402, '2023-01-06 20:38:37', NULL),
(202, 9999999, 222, 374, '2023-01-06 20:38:37', NULL),
(203, 9999999, 223, 51, '2023-01-06 20:38:37', NULL),
(204, 9999999, 224, 10, '2023-01-06 20:38:37', '2023-02-02 17:45:50'),
(205, 9999999, 225, 240, '2023-01-06 20:38:37', '2023-02-02 17:45:50'),
(206, 9999999, 261, 33, '2023-01-06 20:38:37', NULL),
(207, 9999999, 262, 44, '2023-01-06 20:38:37', '2023-02-02 17:45:50'),
(208, 9999999, 263, 471, '2023-01-06 20:38:37', '2023-01-10 22:33:10'),
(209, 9999999, 264, 158, '2023-01-06 20:38:37', '2023-02-02 17:45:50'),
(210, 9999999, 265, 208, '2023-01-06 20:38:37', '2023-01-09 20:35:44'),
(211, 9999999, 266, 430, '2023-01-06 20:38:37', '2023-01-09 21:58:55'),
(212, 9999999, 267, 290, '2023-01-06 20:38:37', '2023-02-02 17:45:50'),
(213, 9999999, 268, 179, '2023-01-06 20:38:37', '2023-01-09 20:35:44'),
(214, 9999999, 269, 222, '2023-01-06 20:38:37', NULL),
(215, 9999999, 270, 31, '2023-01-06 20:38:37', '2023-02-02 18:10:06'),
(216, 9999999, 279, 1804, '2023-01-06 20:38:37', '2023-01-10 22:33:10'),
(217, 9999999, 280, 2042, '2023-01-06 20:38:37', '2023-01-10 22:33:10'),
(218, 9999999, 281, 1089, '2023-01-06 22:22:11', '2023-01-09 20:35:44'),
(219, 9999999, 282, 84, '2023-01-06 22:22:11', '2023-01-12 21:44:13'),
(220, 9999999, 283, 222, '2023-01-06 22:22:11', NULL),
(221, 9999999, 284, 917, '2023-01-06 22:22:11', '2023-01-09 21:58:55'),
(222, 9999999, 285, 35, '2023-01-06 22:22:11', NULL),
(223, 9999999, 286, 273, '2023-01-06 22:22:11', NULL),
(224, 9999999, 287, 84, '2023-01-06 22:22:11', '2023-02-02 17:45:50'),
(225, 9999999, 288, 24, '2023-01-06 22:22:11', NULL),
(226, 9999999, 289, 84, '2023-01-06 22:22:11', NULL),
(227, 9999999, 290, 309, '2023-01-06 22:22:11', NULL),
(228, 9999999, 291, 671, '2023-01-06 22:22:11', '2023-01-09 21:58:55'),
(229, 9999999, 292, 1181, '2023-01-06 22:22:11', '2023-01-09 21:58:55'),
(230, 9999999, 293, 231, '2023-01-06 22:22:11', NULL),
(231, 9999999, 294, 204, '2023-01-06 22:22:11', NULL),
(232, 9999999, 295, 478, '2023-01-06 22:22:11', '2023-01-09 21:58:55'),
(233, 9999999, 296, 972, '2023-01-06 22:22:11', NULL),
(234, 9999999, 297, 87, '2023-01-06 22:22:11', NULL),
(235, 9999999, 298, 99, '2023-01-06 22:22:11', '2023-02-02 17:45:50'),
(236, 9999999, 299, 1611, '2023-01-06 22:22:11', NULL),
(237, 9999999, 300, 20, '2023-01-06 22:22:11', NULL),
(238, 9999999, 301, 744, '2023-01-06 22:22:11', NULL),
(239, 9999999, 302, 54, '2023-01-06 22:22:11', NULL),
(240, 9999999, 303, 786, '2023-01-06 22:22:11', NULL),
(241, 9999999, 304, 200, '2023-01-06 22:22:11', '2023-01-09 21:58:55'),
(242, 9999999, 308, 300, '2023-01-06 22:22:11', '2023-01-10 22:33:10'),
(243, 9999999, 309, 66, '2023-01-06 22:22:11', '2023-02-02 17:45:50'),
(244, 9999999, 311, 342, '2023-01-07 16:19:56', NULL),
(245, 9999999, 312, 9, '2023-01-07 16:19:56', '2023-02-02 17:45:50'),
(246, 9999999, 313, 600, '2023-01-07 16:19:56', '2023-01-10 22:33:10'),
(247, 9999999, 314, 792, '2023-01-07 16:19:56', NULL),
(248, 9999999, 315, 365, '2023-01-07 16:19:56', '2023-02-02 17:45:50'),
(249, 9999999, 316, 1331, '2023-01-07 16:19:56', NULL),
(250, 9999999, 317, 790, '2023-01-07 16:19:56', NULL),
(251, 9999999, 318, 954, '2023-01-07 16:19:56', '2023-02-02 17:45:50'),
(252, 9999999, 319, 1440, '2023-01-07 16:19:56', NULL),
(253, 9999999, 320, 702, '2023-01-07 16:19:56', NULL),
(254, 9999999, 321, 430, '2023-01-07 16:19:56', '2023-02-02 17:45:50'),
(255, 9999999, 322, 0, '2023-01-07 16:19:56', '2023-01-12 21:44:13'),
(256, 9999999, 323, 969, '2023-01-07 16:19:56', NULL),
(257, 9999999, 324, 146, '2023-01-07 16:19:56', '2023-02-02 18:10:06'),
(258, 9999999, 325, 192, '2023-01-07 16:19:56', NULL),
(259, 9999999, 326, 99, '2023-01-07 16:19:56', NULL),
(260, 9999999, 327, 791, '2023-01-07 16:19:56', '2023-01-09 21:58:55'),
(261, 9999999, 328, 160, '2023-01-07 16:19:56', NULL),
(262, 9999999, 329, 508, '2023-01-07 16:19:56', NULL),
(263, 9999999, 330, 397, '2023-01-07 16:19:56', NULL),
(264, 9999999, 331, 112, '2023-01-07 16:19:56', NULL),
(265, 9999999, 332, 341, '2023-01-07 16:19:56', NULL),
(266, 9999999, 333, 142, '2023-01-07 16:19:57', '2023-02-02 17:45:50'),
(267, 9999999, 334, 249, '2023-01-07 16:19:57', NULL),
(268, 9999999, 335, 15, '2023-01-07 16:19:57', NULL),
(269, 9999999, 337, 188, '2023-01-07 16:19:57', '2023-02-02 18:10:06'),
(270, 9999999, 339, 61, '2023-01-07 16:19:57', NULL),
(271, 9999999, 340, 53, '2023-01-07 16:19:57', NULL),
(272, 9999999, 341, 246, '2023-01-07 16:19:57', '2023-01-09 21:58:55'),
(273, 9999999, 342, 88, '2023-01-07 16:19:57', NULL),
(274, 9999999, 343, 266, '2023-01-07 16:19:57', '2023-02-02 17:45:50'),
(275, 9999999, 345, 48, '2023-01-09 18:08:11', NULL),
(276, 9999999, 346, 28, '2023-01-09 18:08:11', NULL),
(277, 9999999, 348, 22, '2023-01-09 18:08:11', NULL),
(278, 9999999, 349, 314, '2023-01-09 18:08:11', NULL),
(279, 9999999, 351, 364, '2023-01-09 18:08:11', '2023-02-02 18:10:06'),
(280, 9999999, 352, 36, '2023-01-09 18:08:11', NULL),
(281, 9999999, 353, 346, '2023-01-09 18:08:11', '2023-02-02 17:45:51'),
(282, 9999999, 354, 148, '2023-01-09 18:08:11', NULL),
(283, 9999999, 355, 150, '2023-01-09 18:08:11', NULL),
(284, 9999999, 356, 46, '2023-01-09 18:08:11', '2023-02-02 17:45:51'),
(285, 9999999, 359, 48, '2023-01-09 18:08:11', NULL),
(286, 9999999, 360, 186, '2023-01-09 18:08:11', '2023-02-02 17:45:51'),
(287, 9999999, 361, 138, '2023-01-09 18:08:11', NULL),
(288, 9999999, 364, 85, '2023-01-09 18:08:11', NULL),
(289, 9999999, 365, 12, '2023-01-09 18:08:11', NULL),
(290, 9999999, 366, 121, '2023-01-09 18:08:11', '2023-01-09 21:58:55'),
(291, 9999999, 367, 66, '2023-01-09 18:08:11', NULL),
(292, 9999999, 369, 191, '2023-01-09 18:08:11', '2023-01-09 21:58:55'),
(293, 9999999, 370, 103, '2023-01-09 18:08:11', '2023-02-02 17:45:51'),
(294, 9999999, 371, 24, '2023-01-09 18:08:11', NULL),
(295, 9999999, 372, 24, '2023-01-09 18:08:11', NULL),
(296, 9999999, 373, 22, '2023-01-09 18:08:11', NULL),
(297, 9999999, 374, 154, '2023-01-09 18:08:11', NULL),
(298, 9999999, 375, 7, '2023-01-09 18:08:11', NULL),
(299, 9999999, 376, 160, '2023-01-09 18:08:11', NULL),
(300, 9999999, 377, 143, '2023-01-09 18:08:11', '2023-01-09 21:58:55'),
(301, 9999999, 378, 59, '2023-01-09 18:08:11', '2023-02-02 17:45:51'),
(302, 9999999, 380, 210, '2023-01-09 18:08:11', '2023-01-09 21:58:55'),
(303, 9999999, 381, 140, '2023-01-09 18:08:11', NULL),
(304, 9999999, 382, 78, '2023-01-09 18:08:11', NULL),
(305, 9999999, 383, 289, '2023-01-09 18:08:11', '2023-02-02 17:45:51'),
(306, 9999999, 385, 490, '2023-01-09 18:08:11', '2023-01-09 21:58:55'),
(307, 9999999, 386, 185, '2023-01-09 18:08:11', '2023-02-02 18:10:06'),
(308, 9999999, 388, 26, '2023-01-09 18:08:11', '2023-02-02 17:45:51'),
(309, 9999999, 389, 29, '2023-01-09 18:08:11', NULL),
(310, 9999999, 390, 120, '2023-01-09 18:08:11', NULL),
(311, 9999999, 392, 74, '2023-01-09 18:08:11', NULL),
(312, 9999999, 393, 43, '2023-01-09 18:08:11', NULL),
(313, 9999999, 394, 119, '2023-01-09 18:08:11', NULL),
(314, 9999999, 395, 82, '2023-01-09 18:08:11', '2023-02-02 17:45:51'),
(315, 9999999, 396, 480, '2023-01-09 18:08:11', '2023-02-02 17:45:51'),
(316, 9999999, 397, 532, '2023-01-09 18:08:11', NULL),
(317, 9999999, 398, 515, '2023-01-09 18:08:11', NULL),
(318, 9999999, 399, 481, '2023-01-09 18:08:11', NULL),
(319, 9999999, 400, 628, '2023-01-09 18:08:11', NULL),
(320, 9999999, 401, 585, '2023-01-09 18:08:11', NULL),
(321, 9999999, 402, 309, '2023-01-09 18:08:11', NULL),
(322, 9999999, 403, 232, '2023-01-09 18:08:11', NULL),
(323, 9999999, 404, 469, '2023-01-09 18:08:11', '2023-02-02 17:45:51'),
(324, 9999999, 405, 226, '2023-01-09 18:08:11', NULL),
(325, 9999999, 406, 397, '2023-01-09 18:08:11', '2023-02-02 17:45:51'),
(326, 9999999, 407, 2400, '2023-01-09 18:08:11', '2023-02-02 17:45:51'),
(327, 9999999, 408, 1370, '2023-01-09 18:08:11', NULL),
(328, 9999999, 409, 1187, '2023-01-09 18:08:11', '2023-01-09 21:58:55'),
(329, 9999999, 410, 2150, '2023-01-09 18:08:11', '2023-01-09 21:58:55'),
(330, 9999999, 411, 1610, '2023-01-09 18:08:11', '2023-01-09 21:58:55'),
(331, 9999999, 412, 1288, '2023-01-09 18:08:11', NULL),
(332, 9999999, 413, 1544, '2023-01-09 18:08:11', '2023-02-02 18:10:06'),
(333, 9999999, 414, 892, '2023-01-09 18:08:11', '2023-02-02 17:45:51'),
(334, 9999999, 415, 715, '2023-01-09 18:08:11', '2023-01-09 21:58:55'),
(335, 9999999, 416, 182, '2023-01-09 18:08:11', '2023-01-09 21:58:55'),
(336, 9999999, 417, 496, '2023-01-09 18:08:11', NULL),
(337, 9999999, 418, 1758, '2023-01-09 18:08:11', NULL),
(338, 9999999, 419, 550, '2023-01-09 18:08:11', NULL),
(339, 9999999, 420, 2079, '2023-01-09 18:08:11', '2023-02-02 18:10:06'),
(340, 9999999, 421, 1937, '2023-01-09 18:08:11', '2023-01-12 21:44:13'),
(341, 9999999, 422, 878, '2023-01-09 18:08:11', '2023-02-02 17:45:51'),
(342, 9999999, 423, 1508, '2023-01-09 18:08:11', '2023-01-12 21:44:13'),
(343, 9999999, 424, 1363, '2023-01-09 18:08:11', '2023-01-12 21:44:13'),
(344, 9999999, 425, 1134, '2023-01-09 18:08:11', '2023-01-10 22:33:10'),
(345, 9999999, 426, 1977, '2023-01-09 18:08:11', '2023-01-12 21:44:13'),
(346, 9999999, 427, 1388, '2023-01-09 18:08:11', '2023-01-10 22:33:10'),
(347, 9999999, 428, 2811, '2023-01-09 18:08:11', '2023-02-02 17:45:51'),
(348, 9999999, 429, 3300, '2023-01-09 18:08:11', '2023-02-02 18:10:06'),
(349, 9999999, 430, 1955, '2023-01-09 18:08:11', '2023-02-02 17:45:51'),
(350, 9999999, 431, 2238, '2023-01-09 18:08:11', '2023-02-02 17:45:51'),
(351, 9999999, 432, 3174, '2023-01-09 18:08:11', '2023-01-10 22:33:10'),
(352, 9999999, 433, 711, '2023-01-09 18:08:11', '2023-02-02 17:45:51'),
(353, 9999999, 434, 1146, '2023-01-09 18:08:11', '2023-02-02 17:45:51'),
(354, 9999999, 435, 692, '2023-01-09 18:08:11', '2023-02-02 17:45:51'),
(355, 9999999, 436, 1045, '2023-01-09 18:08:11', '2023-02-02 17:45:51'),
(356, 9999999, 437, 1428, '2023-01-09 18:08:11', '2023-02-02 17:45:51'),
(357, 9999999, 438, 1169, '2023-01-09 18:08:11', '2023-02-02 17:45:51'),
(358, 9999999, 439, 957, '2023-01-09 18:08:11', '2023-02-02 17:45:51'),
(359, 9999999, 440, 1018, '2023-01-09 18:08:11', '2023-02-02 17:45:51'),
(360, 9999999, 441, 1056, '2023-01-09 18:08:11', NULL),
(361, 9999999, 442, 280, '2023-01-09 18:08:11', '2023-02-02 17:45:51'),
(362, 9999999, 444, 347, '2023-01-09 18:08:11', '2023-01-09 20:35:44'),
(363, 9999999, 445, 1697, '2023-01-09 18:08:11', '2023-02-02 17:45:51'),
(364, 9999999, 446, 753, '2023-01-09 18:08:11', '2023-02-02 17:45:51'),
(365, 9999999, 448, 2393, '2023-01-09 19:39:32', '2023-01-10 22:33:10'),
(366, 9999999, 449, 6674, '2023-01-09 19:39:32', '2023-01-10 22:33:10'),
(367, 9999999, 450, 1696, '2023-01-09 19:39:32', NULL),
(368, 9999999, 451, 1738, '2023-01-09 19:39:32', NULL),
(369, 9999999, 452, 3695, '2023-01-09 19:39:32', '2023-02-02 18:10:06'),
(370, 9999999, 453, 2242, '2023-01-09 19:39:32', '2023-02-02 17:45:51'),
(371, 9999999, 455, 2831, '2023-01-09 19:39:32', '2023-02-02 18:10:06'),
(372, 9999999, 456, 740, '2023-01-09 19:39:32', NULL),
(373, 9999999, 457, 12, '2023-01-09 19:39:32', NULL),
(374, 9999999, 458, 1428, '2023-01-09 19:39:32', '2023-01-12 21:44:13'),
(375, 9999999, 459, 1758, '2023-01-09 19:39:32', '2023-01-10 22:33:10'),
(376, 9999999, 460, 1428, '2023-01-09 19:39:32', '2023-01-12 21:44:13'),
(377, 9999999, 461, 1800, '2023-01-09 19:39:32', NULL),
(378, 9999999, 462, 1790, '2023-01-09 19:39:32', NULL),
(379, 9999999, 463, 1860, '2023-01-09 19:39:32', NULL),
(380, 9999999, 465, 860, '2023-01-09 19:39:32', '2023-02-02 18:10:06'),
(381, 9999999, 466, 280, '2023-01-09 19:39:32', NULL),
(382, 9999999, 467, 50, '2023-01-09 19:39:32', NULL),
(383, 9999999, 469, 74, '2023-01-09 19:39:32', NULL),
(384, 9999999, 470, 12, '2023-01-09 19:39:32', NULL),
(385, 9999999, 471, 6, '2023-01-09 19:39:32', '2023-02-02 17:45:51'),
(386, 9999999, 472, 84, '2023-01-09 19:39:32', '2023-02-02 18:10:06'),
(387, 9999999, 473, 260, '2023-01-09 19:39:32', NULL),
(388, 9999999, 474, 186, '2023-01-09 19:39:32', NULL),
(389, 9999999, 475, 10, '2023-01-09 19:39:32', '2023-02-02 17:45:51'),
(390, 9999999, 476, 48, '2023-01-09 19:39:32', '2023-02-02 17:45:51'),
(391, 9999999, 477, 9, '2023-01-09 19:39:32', NULL),
(392, 9999999, 480, 143, '2023-01-09 19:39:32', NULL),
(393, 9999999, 481, 64, '2023-01-09 19:39:32', NULL),
(394, 9999999, 482, 41, '2023-01-09 19:39:32', '2023-02-02 17:45:51'),
(395, 9999999, 483, 21, '2023-01-09 19:39:32', NULL),
(396, 9999999, 484, 42, '2023-01-09 19:39:32', '2023-02-02 18:10:06'),
(397, 9999999, 485, 14, '2023-01-09 19:39:32', '2023-01-12 21:44:13'),
(398, 9999999, 344, 142, '2023-01-09 21:58:55', NULL),
(399, 9999999, 391, 138, '2023-01-09 21:58:55', NULL),
(400, 9999999, 513, 7, '2023-01-10 16:23:39', '2023-01-10 16:25:31'),
(401, 9999999, 514, 75, '2023-01-10 16:23:39', '2023-01-10 22:54:49'),
(402, 9999999, 515, 20, '2023-01-10 16:23:39', '2023-01-31 21:45:35'),
(403, 9999999, 516, 0, '2023-01-10 16:23:39', '2023-01-27 19:51:06'),
(404, 9999999, 517, 0, '2023-01-10 16:23:39', '2023-01-31 21:45:35'),
(405, 9999999, 518, 0, '2023-01-10 16:23:39', '2023-01-28 15:44:59'),
(406, 9999999, 519, 1, '2023-01-10 16:23:39', '2023-01-10 16:25:31'),
(407, 9999999, 520, 6, '2023-01-10 16:23:39', '2023-01-28 15:44:59'),
(408, 9999999, 521, 1, '2023-01-10 16:23:39', '2023-01-10 16:25:31'),
(409, 9999999, 522, 55, '2023-01-10 16:23:39', '2023-01-10 16:25:31'),
(410, 9999999, 523, 18, '2023-01-10 16:23:39', '2023-01-10 16:25:31'),
(411, 9999999, 524, 6, '2023-01-10 16:23:39', '2023-01-10 16:25:31'),
(412, 9999999, 525, 1, '2023-01-10 16:23:39', '2023-01-10 16:25:31'),
(413, 9999999, 526, 6, '2023-01-10 16:23:39', '2023-01-10 16:25:31'),
(414, 9999999, 527, 3, '2023-01-10 16:23:39', '2023-01-10 16:25:31'),
(415, 9999999, 528, 2, '2023-01-10 16:23:39', '2023-01-10 16:25:31'),
(416, 9999999, 529, 3, '2023-01-10 16:23:39', '2023-01-28 15:21:02'),
(417, 9999999, 531, 10, '2023-01-10 18:17:47', '2023-01-28 16:24:26'),
(418, 9999999, 585, 0, '2023-01-10 18:17:47', '2023-01-11 22:56:32'),
(419, 9999999, 530, 31, '2023-01-10 18:17:47', '2023-01-28 16:52:52'),
(420, 9999999, 575, 1, '2023-01-10 18:17:47', NULL),
(421, 9999999, 533, 0, '2023-01-10 18:17:47', '2023-01-20 14:24:49'),
(422, 9999999, 536, 13, '2023-01-10 18:17:47', '2023-01-28 16:49:43'),
(423, 9999999, 534, 6, '2023-01-10 18:17:47', NULL),
(424, 9999999, 586, 4, '2023-01-10 18:17:48', NULL),
(425, 9999999, 539, 14, '2023-01-10 18:17:48', '2023-01-28 16:49:43'),
(426, 9999999, 580, 4, '2023-01-10 18:17:48', NULL),
(427, 9999999, 535, 3, '2023-01-10 18:17:48', NULL),
(428, 9999999, 537, 20, '2023-01-10 18:17:48', NULL),
(429, 9999999, 538, 8, '2023-01-10 18:17:48', NULL),
(430, 9999999, 540, 10, '2023-01-10 18:17:48', '2023-01-28 16:52:52'),
(431, 9999999, 542, 70, '2023-01-10 18:17:48', '2023-01-28 16:52:52'),
(432, 9999999, 587, 5, '2023-01-10 18:17:48', NULL),
(433, 9999999, 570, 2, '2023-01-10 18:17:48', NULL),
(434, 9999999, 545, 1, '2023-01-10 18:17:48', NULL),
(435, 9999999, 581, 0, '2023-01-10 18:17:48', '2023-01-20 14:24:49'),
(436, 9999999, 579, 0, '2023-01-10 18:17:48', '2023-01-28 16:49:43'),
(437, 9999999, 584, 6, '2023-01-10 18:17:48', '2023-01-20 14:24:49'),
(438, 9999999, 582, 5, '2023-01-10 18:17:48', NULL),
(439, 9999999, 547, 0, '2023-01-10 18:17:48', '2023-01-28 16:36:02'),
(440, 9999999, 548, 2, '2023-01-10 18:17:48', '2023-01-28 16:52:52'),
(441, 9999999, 572, 1, '2023-01-10 18:17:48', NULL),
(442, 9999999, 571, 2, '2023-01-10 18:17:48', NULL),
(443, 9999999, 574, 1, '2023-01-10 18:17:48', NULL),
(444, 9999999, 576, 28, '2023-01-10 18:17:48', NULL),
(445, 9999999, 560, 30, '2023-01-10 18:17:48', NULL),
(446, 9999999, 561, 4, '2023-01-10 18:17:48', NULL),
(447, 9999999, 550, 9, '2023-01-10 18:17:48', '2023-01-28 16:52:52'),
(448, 9999999, 552, 5, '2023-01-10 18:17:48', NULL),
(449, 9999999, 553, 1, '2023-01-10 18:17:48', NULL),
(450, 9999999, 554, 15, '2023-01-10 18:17:48', NULL),
(451, 9999999, 564, 2, '2023-01-10 18:17:48', NULL),
(452, 9999999, 562, 6, '2023-01-10 18:17:48', NULL),
(453, 9999999, 588, 5, '2023-01-10 18:17:48', NULL),
(454, 9999999, 557, 0, '2023-01-10 18:17:48', '2023-01-20 14:24:49'),
(455, 9999999, 558, 5, '2023-01-10 18:17:48', '2023-01-20 14:24:49'),
(456, 9999999, 556, 0, '2023-01-10 18:17:48', '2023-01-20 14:24:49'),
(457, 9999999, 573, 2, '2023-01-10 18:17:48', NULL),
(458, 9999999, 567, 5, '2023-01-10 18:17:48', NULL),
(459, 9999999, 569, 25, '2023-01-10 18:17:48', NULL),
(460, 9999999, 566, 54, '2023-01-10 18:17:48', '2023-01-28 17:02:14'),
(461, 9999999, 563, 26, '2023-01-10 18:20:05', NULL),
(462, 9999999, 592, 50, '2023-01-11 17:56:00', NULL),
(463, 9999999, 591, 9, '2023-01-11 17:56:00', NULL),
(464, 9999999, 590, 7, '2023-01-11 17:56:00', '2023-01-31 21:45:35'),
(465, 9999999, 594, 26, '2023-01-27 20:00:56', NULL),
(466, 9999999, 595, 30, '2023-01-27 20:00:56', NULL),
(467, 9999999, 597, 99, '2023-01-27 20:00:56', '2023-01-31 21:45:35'),
(468, 9999999, 596, 99, '2023-01-27 20:00:56', '2023-01-31 21:45:35'),
(469, 9999999, 598, 1000, '2023-01-27 20:00:56', NULL),
(470, 9999999, 601, 2, '2023-01-28 15:21:02', NULL),
(471, 9999999, 599, 6, '2023-01-28 15:21:02', NULL),
(472, 9999999, 600, 4, '2023-01-28 15:21:02', NULL),
(473, 9999999, 541, 8, '2023-01-28 16:24:26', '2023-01-28 17:02:14'),
(474, 9999999, 544, 8, '2023-01-28 16:24:26', '2023-01-28 17:02:14'),
(475, 9999999, 602, 28, '2023-01-28 16:57:48', '2023-01-28 17:02:14'),
(476, 9999999, 443, 256, '2023-02-02 18:10:06', NULL),
(477, 9999999, 454, 300, '2023-02-02 18:10:06', NULL),
(478, 9999999, 612, 12, '2023-02-09 13:02:43', '2023-02-09 20:08:40'),
(479, 9999999, 607, 7, '2023-02-09 13:02:43', '2023-02-09 20:08:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(90, '2014_10_12_000000_create_users_table', 4),
(91, '2014_10_12_100000_create_password_resets_table', 4),
(92, '2019_08_19_000000_create_failed_jobs_table', 4),
(95, '2020_05_18_181402_create_tasks_table', 4),
(101, '2022_03_16_140808_create_permission_tables', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(1, 'App\\User', 3),
(1, 'App\\User', 29),
(1, 'App\\User', 30),
(2, 'App\\User', 23),
(2, 'App\\User', 32),
(4, 'App\\User', 18),
(4, 'App\\User', 19),
(4, 'App\\User', 20),
(4, 'App\\User', 21),
(4, 'App\\User', 22),
(4, 'App\\User', 26),
(4, 'App\\User', 27),
(4, 'App\\User', 28),
(4, 'App\\User', 31);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

CREATE TABLE `pais` (
  `id` int NOT NULL,
  `pais_nombre` varchar(150) NOT NULL,
  `estado_id` int DEFAULT NULL,
  `pais_estado` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `description`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin.productos.index', 'Listado de Productos', 'web', '2022-07-21 22:27:39', '2022-07-21 22:27:39'),
(2, 'admin.productos.create', 'Crear Producto', 'web', '2022-07-21 22:27:39', '2022-07-21 22:27:39'),
(3, 'admin.productos.edit', 'Editar Producto', 'web', '2022-07-21 22:27:39', '2022-07-21 22:27:39'),
(4, 'admin.productos.destroy', 'Eliminar Producto', 'web', '2022-07-21 22:27:39', '2022-07-21 22:27:39'),
(5, 'admin.recepcion.index', 'Listado de Recepciones', 'web', '2022-07-21 22:27:39', '2022-07-21 22:27:39'),
(6, 'admin.recepcion.create', 'Crear Recepcion', 'web', '2022-07-21 22:27:39', '2022-07-21 22:27:39'),
(7, 'admin.recepcion.destroy', 'Eliminar Recepcion', 'web', '2022-07-21 22:27:39', '2022-07-21 22:27:39'),
(8, 'admin.despacho.index', 'Listado de Despachos', 'web', '2022-07-21 22:27:39', '2022-07-21 22:27:39'),
(9, 'admin.despacho.create', 'Crear Despacho', 'web', '2022-07-21 22:27:39', '2022-07-21 22:27:39'),
(10, 'admin.despacho.destroy', 'Eliminar Despacho', 'web', '2022-07-21 22:27:39', '2022-07-21 22:27:39'),
(11, 'admin.clientes.index', 'Listado de Clientes', 'web', '2022-07-21 22:27:39', '2022-07-21 22:27:39'),
(12, 'admin.clientes.create', 'Crear Cliente', 'web', '2022-07-21 22:27:39', '2022-07-21 22:27:39'),
(13, 'admin.clientes.edit', 'Editar Cliente', 'web', '2022-07-21 22:27:39', '2022-07-21 22:27:39'),
(14, 'admin.clientes.destroy', 'Eliminar Cliente', 'web', '2022-07-21 22:27:39', '2022-07-21 22:27:39'),
(15, 'admin.racks.index', 'Listado de Racks', 'web', '2022-07-21 22:27:39', '2022-07-21 22:27:39'),
(16, 'admin.racks.create', 'Crear Rack', 'web', '2022-07-21 22:27:39', '2022-07-21 22:27:39'),
(17, 'admin.racks.edit', 'Editar Rack', 'web', '2022-07-21 22:27:39', '2022-07-21 22:27:39'),
(18, 'admin.racks.destroy', 'Eliminar Rack', 'web', '2022-07-21 22:27:39', '2022-07-21 22:27:39'),
(19, 'admin.casillas.index', 'Listado de Casillas', 'web', '2022-07-21 22:27:39', '2022-07-21 22:27:39'),
(20, 'admin.casillas.create', 'Crear Casilla', 'web', '2022-07-21 22:27:39', '2022-07-21 22:27:39'),
(21, 'admin.casillas.edit', 'Editar Casilla', 'web', '2022-07-21 22:27:39', '2022-07-21 22:27:39'),
(22, 'admin.casillas.destroy', 'Eliminar Casilla', 'web', '2022-07-21 22:27:40', '2022-07-21 22:27:40'),
(23, 'admin.usuarios.index', 'Listado de Usuarios', 'web', '2022-07-21 22:27:40', '2022-07-21 22:27:40'),
(24, 'admin.usuarios.create', 'Crear Usuario', 'web', '2022-07-21 22:27:40', '2022-07-21 22:27:40'),
(25, 'admin.usuarios.edit', 'Editar Usuario', 'web', '2022-07-21 22:27:40', '2022-07-21 22:27:40'),
(26, 'admin.usuarios.destroy', 'Eliminar Usuario', 'web', '2022-07-21 22:27:40', '2022-07-21 22:27:40'),
(27, 'admin.roles.index', 'Listado de Roles', 'web', '2022-07-21 22:27:40', '2022-07-21 22:27:40'),
(28, 'admin.roles.create', 'Crear Rol', 'web', '2022-07-21 22:27:40', '2022-07-21 22:27:40'),
(29, 'admin.roles.edit', 'Editar Rol', 'web', '2022-07-21 22:27:40', '2022-07-21 22:27:40'),
(30, 'admin.roles.destroy', 'Eliminar Rol', 'web', '2022-07-21 22:27:40', '2022-07-21 22:27:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_x_empresa`
--

CREATE TABLE `productos_x_empresa` (
  `prod_id` int NOT NULL,
  `categoria_id` int DEFAULT NULL,
  `empr_id` int NOT NULL,
  `unidad_id` int NOT NULL,
  `prod_nombre` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `prod_codigo` char(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `prod_sku` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `prod_ean` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `prod_cantidad` smallint DEFAULT NULL,
  `prod_precio` float(10,2) DEFAULT NULL,
  `prod_serie` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `prod_lote` char(12) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `prod_comentario` longtext COLLATE utf8mb4_general_ci,
  `prod_stock` smallint DEFAULT '0',
  `prod_fecha_vencimiento` date DEFAULT NULL,
  `prod_peso` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `prod_estado` char(4) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos_x_empresa`
--

INSERT INTO `productos_x_empresa` (`prod_id`, `categoria_id`, `empr_id`, `unidad_id`, `prod_nombre`, `prod_codigo`, `prod_sku`, `prod_ean`, `prod_cantidad`, `prod_precio`, `prod_serie`, `prod_lote`, `prod_comentario`, `prod_stock`, `prod_fecha_vencimiento`, `prod_peso`, `prod_estado`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, 19, 5, 'Notebook Lenovo Thinkpad L15, 15.6\"', NULL, 'LAPTNLT15', NULL, NULL, NULL, NULL, NULL, 'Notebook Lenovo Thinkpad L15, 15.6\" mode COLOR NEGRO', 0, NULL, '2', NULL, '2022-06-22 21:16:37', '2022-06-25 18:59:07', '2022-06-25 18:59:07'),
(2, NULL, 19, 8, 'Mouse pad ergonómico Teraware', NULL, 'CB-MP802-BLK', NULL, NULL, NULL, NULL, NULL, 'Mouse pad ergonómico Teraware COLOR NEGRO', 0, NULL, '1', NULL, '2022-06-22 21:20:16', '2022-06-25 18:59:04', '2022-06-25 18:59:04'),
(3, NULL, 19, 1, 'Cámara web Radioshack con luz led', NULL, '2604780', NULL, NULL, NULL, NULL, NULL, 'Interfaz:USB 2.0\r\nResolución de videos:1080p\r\nTapa de privacidad:No\r\nIncluye clip:Sí\r\nCorrección de iluminación:brillo automático', 0, NULL, '1', NULL, '2022-06-22 21:21:57', '2022-06-25 18:59:00', '2022-06-25 18:59:00'),
(4, NULL, 21, 8, 'Paprika Pimenton', NULL, 'A102001', NULL, NULL, NULL, NULL, NULL, 'BADIA', 0, NULL, '0', NULL, '2022-06-25 18:58:52', '2022-06-27 16:40:06', NULL),
(5, NULL, 21, 8, 'Cebolla en Polvo Onion Powder', NULL, 'A102002', NULL, NULL, NULL, NULL, NULL, 'BADIA', 0, NULL, '0', NULL, '2022-06-25 19:00:09', '2022-06-27 16:40:16', NULL),
(6, NULL, 21, 8, 'Soya Sauce', NULL, 'A102003', NULL, NULL, NULL, NULL, NULL, 'Sofit Oyster', 0, NULL, '710', NULL, '2022-06-27 16:22:20', '2022-06-27 16:40:49', NULL),
(7, NULL, 21, 8, 'Vinagre Tinto', NULL, 'A102004', NULL, NULL, NULL, NULL, NULL, 'LUREN', 0, NULL, '5', NULL, '2022-06-27 16:23:50', '2022-06-27 16:41:05', NULL),
(8, NULL, 21, 8, 'Pickles', NULL, 'A102005', NULL, NULL, NULL, NULL, NULL, 'OLIVOS DEL SUR', 0, NULL, '1.8', NULL, '2022-06-27 16:24:36', '2022-06-27 16:41:23', NULL),
(9, NULL, 21, 2, 'Leche Entera GLORIA', NULL, 'A102006', NULL, NULL, NULL, NULL, NULL, 'GLORIA', 0, NULL, '900', NULL, '2022-06-27 16:26:59', '2022-06-27 17:57:29', NULL),
(10, NULL, 21, 8, 'Gaseosa BIG COLA', NULL, 'A102007', NULL, NULL, NULL, NULL, NULL, 'BIG COLA', 0, NULL, '3.3', NULL, '2022-06-27 16:33:48', '2022-06-27 16:41:47', NULL),
(11, NULL, 21, 2, 'Harina sin Preparar', NULL, 'A102008', NULL, NULL, NULL, NULL, NULL, 'GRANO DE ORO', 0, NULL, '1', NULL, '2022-06-27 16:42:38', '2022-06-27 16:42:38', NULL),
(12, NULL, 21, 2, 'Sal de Mesa EMSAL', NULL, 'A102009', NULL, NULL, NULL, NULL, NULL, 'EMSAL', 1, NULL, '1', NULL, '2022-06-27 17:15:41', '2022-06-27 17:57:50', NULL),
(13, NULL, 21, 2, 'Pimienta Negra', NULL, 'A102010', NULL, NULL, NULL, NULL, NULL, 'TOÑA', 0, NULL, '1', NULL, '2022-06-27 17:20:20', '2022-06-27 17:23:23', NULL),
(14, NULL, 21, 2, 'Tomillo Entero', NULL, 'A102011', NULL, NULL, NULL, NULL, NULL, 'TOÑA', 0, NULL, '500', NULL, '2022-06-27 17:22:51', '2022-06-27 17:22:51', NULL),
(15, NULL, 21, 8, 'Jabón Liquido Rosas', NULL, 'A102012', NULL, NULL, NULL, NULL, NULL, 'MARTELL', 3, NULL, '0', NULL, '2022-06-27 17:24:30', '2022-06-27 17:24:30', NULL),
(16, NULL, 21, 8, 'Jabón Liquido Talco Bebe', NULL, 'A102013', NULL, NULL, NULL, NULL, NULL, 'MARTELL', 1, NULL, '3.78', NULL, '2022-06-27 17:25:07', '2022-06-27 17:25:07', NULL),
(17, NULL, 21, 8, 'Vasos Colores con Tapa NN', NULL, 'A102014', NULL, NULL, NULL, NULL, NULL, 'NN', 1, NULL, '0', NULL, '2022-06-27 17:27:49', '2022-06-27 17:53:18', NULL),
(18, NULL, 21, 1, 'Foil Papel Aluminio', NULL, 'A102015', NULL, NULL, NULL, NULL, NULL, 'U-THIL', 0, NULL, '304.8', NULL, '2022-06-27 17:28:46', '2022-06-27 17:28:46', NULL),
(19, NULL, 21, 2, 'Papel Toalla Interfoliado SUPREMO', NULL, 'A102016', NULL, NULL, NULL, NULL, NULL, 'SUPREMO', 0, NULL, '200', NULL, '2022-06-27 17:40:02', '2022-06-27 17:40:02', NULL),
(20, NULL, 21, 2, 'Bolsas Plástico Roca FELIX', NULL, 'A102017', NULL, NULL, NULL, NULL, NULL, 'FELIX', 0, NULL, '7', NULL, '2022-06-27 17:41:24', '2022-06-27 17:41:24', NULL),
(21, NULL, 21, 3, 'Bolsas Papel Kraft ARO', NULL, 'A102018', NULL, NULL, NULL, NULL, NULL, 'ARO', 0, NULL, '100', NULL, '2022-06-27 17:42:36', '2022-06-27 17:42:36', NULL),
(22, NULL, 21, 3, 'Bolsas Kraft DJANGO', NULL, 'A102019', NULL, NULL, NULL, NULL, NULL, 'DJANGO', 0, NULL, '26', NULL, '2022-06-27 17:43:40', '2022-06-27 17:43:40', NULL),
(23, NULL, 21, 2, 'Chuño TOÑA', NULL, 'A102023', NULL, NULL, NULL, NULL, NULL, 'TOÑA', 0, NULL, '1', NULL, '2022-06-27 17:44:50', '2022-06-27 17:44:50', NULL),
(24, NULL, 21, 6, 'Kétchup CRISOL', NULL, 'A102021', NULL, NULL, NULL, NULL, NULL, 'CRISOL', 0, NULL, '20', NULL, '2022-06-27 17:45:50', '2022-06-27 17:45:50', NULL),
(25, NULL, 21, 6, 'Aceite Fritura Fina CRISOL', NULL, 'A102022', NULL, NULL, NULL, NULL, NULL, 'CRISOL', 0, NULL, '20', NULL, '2022-06-27 17:46:46', '2022-06-27 17:46:46', NULL),
(26, NULL, 21, 8, 'Ajo en Polvo Garlic Powder BADIA', NULL, 'A102024', NULL, NULL, NULL, NULL, NULL, 'BADIA', 0, NULL, '455', NULL, '2022-06-27 17:48:00', '2022-06-27 17:48:00', NULL),
(27, NULL, 21, 8, 'Pimienta Roja Cayenne Pepper BADIA', NULL, 'A102025', NULL, NULL, NULL, NULL, NULL, 'BADIA', 2, NULL, '455', NULL, '2022-06-27 17:48:49', '2022-06-27 17:48:49', NULL),
(28, NULL, 21, 2, 'Azucara Blanca POMALCA', NULL, 'A102026', NULL, NULL, NULL, NULL, NULL, 'POMALCA', 0, NULL, '1', NULL, '2022-06-27 17:50:36', '2022-06-27 17:50:36', NULL),
(29, NULL, 21, 1, 'Mostaza ALPESA', NULL, 'A102027', NULL, NULL, NULL, NULL, NULL, 'ALPESA', 0, NULL, '4', NULL, '2022-06-27 17:52:17', '2022-06-27 17:52:17', NULL),
(30, NULL, 21, 3, 'Inca Kola', NULL, 'A102028', NULL, NULL, NULL, NULL, NULL, 'Comercial Perú', 22, NULL, '500', NULL, '2022-06-27 17:59:43', '2022-06-27 18:14:12', NULL),
(31, NULL, 21, 3, 'Coca Cola', NULL, 'A102029', NULL, NULL, NULL, NULL, NULL, 'Comercial Perú', 18, NULL, '500', NULL, '2022-06-27 18:00:32', '2022-08-15 17:53:52', NULL),
(32, NULL, 21, 3, 'Fanta Naranja', NULL, 'A102030', NULL, NULL, NULL, NULL, NULL, 'Comercial Perú', 0, NULL, '500', NULL, '2022-06-27 18:01:42', '2022-06-27 18:12:10', NULL),
(33, NULL, 21, 3, 'Fanta Roja', NULL, 'A102031', NULL, NULL, NULL, NULL, NULL, 'Comercial Perú', 0, NULL, '500', NULL, '2022-06-27 18:10:52', '2022-06-27 18:12:28', NULL),
(34, NULL, 21, 3, 'Inca Kola ZERO', NULL, 'A102032', NULL, NULL, NULL, NULL, NULL, 'Comercial Perú', 19, NULL, '500', NULL, '2022-06-27 18:11:29', '2022-06-27 18:15:28', NULL),
(35, NULL, 21, 3, 'Coca Kola ZERO', NULL, 'A102033', NULL, NULL, NULL, NULL, NULL, 'Comercial Perú', 23, NULL, '500', NULL, '2022-06-27 18:15:13', '2022-06-27 18:15:13', NULL),
(36, NULL, 21, 3, 'Sprite', NULL, 'A102034', NULL, NULL, NULL, NULL, NULL, 'Comercial Perú', 0, NULL, '500', NULL, '2022-06-27 18:16:53', '2022-06-27 18:16:53', NULL),
(37, NULL, 21, 1, 'CAJA VARIOS', NULL, 'A102035', NULL, NULL, NULL, NULL, NULL, 'Trapos sucios 3, bolsa abierta papel Kraft, Maskingtape, papel interfoliado, Bolsa de Sal Rota', 1, NULL, '0', NULL, '2022-06-27 18:18:35', '2022-06-27 18:18:35', NULL),
(38, NULL, 21, 1, 'Kétchup HEINZ', NULL, 'A102036', NULL, NULL, NULL, NULL, NULL, 'HEINZ', 1, NULL, '5', NULL, '2022-06-27 18:55:53', '2022-06-27 18:55:53', NULL),
(39, NULL, 21, 3, 'Papel Toalla Soft JUMBO', NULL, 'A102037', NULL, NULL, NULL, NULL, NULL, 'JUMBO', 14, NULL, '120', NULL, '2022-06-27 18:56:52', '2022-06-27 18:56:52', NULL),
(40, NULL, 21, 2, 'Comino Molido TOÑA', NULL, 'A102038', NULL, NULL, NULL, NULL, NULL, 'TOÑA', 0, NULL, '1', NULL, '2022-06-27 18:57:27', '2022-06-27 18:57:27', NULL),
(41, NULL, 21, 1, 'Envases Salseros CMG', NULL, 'A102039', NULL, NULL, NULL, NULL, NULL, 'CMG\r\n5000 X 1onza', 0, NULL, '5000', NULL, '2022-06-27 18:58:26', '2022-06-27 18:59:00', NULL),
(42, NULL, 21, 1, 'Tapas Envases Salseros CMG', NULL, 'A102040', NULL, NULL, NULL, NULL, NULL, 'CMG\r\n5000 Uni x 1 onza', 0, NULL, '5000', NULL, '2022-06-27 19:00:23', '2022-06-27 19:00:23', NULL),
(43, NULL, 21, 3, 'Bolsa Kraft ROTAPEL', NULL, 'A102041', NULL, NULL, NULL, NULL, NULL, 'ROTAPEL', 0, NULL, '10', NULL, '2022-06-27 19:02:29', '2022-06-27 19:02:29', NULL),
(44, NULL, 21, 3, 'Bolsa kraft #12 ROTAPEL', NULL, 'A102042', NULL, NULL, NULL, NULL, NULL, 'ROTAPEL', 0, NULL, '500', NULL, '2022-06-27 19:03:13', '2022-06-27 19:03:13', NULL),
(45, NULL, 21, 3, 'Bolsa Kraft 26x40x16 ROTAPEL', NULL, 'A102043', NULL, NULL, NULL, NULL, NULL, 'ROTAPEL', 0, NULL, '26', NULL, '2022-06-27 19:03:59', '2022-06-27 21:44:53', NULL),
(46, NULL, 21, 3, 'Bolsa kraft #20 DJANGO', NULL, 'A102044', NULL, NULL, NULL, NULL, NULL, 'DJANGO', 0, NULL, '0', NULL, '2022-06-27 19:04:44', '2022-06-27 19:04:44', NULL),
(47, NULL, 21, 3, 'Servilleta Blanca SFOLL', NULL, 'A102045', NULL, NULL, NULL, NULL, NULL, 'SOFL', 34, NULL, '6', NULL, '2022-06-27 19:05:37', '2022-06-27 19:05:37', NULL),
(48, NULL, 21, 2, 'Achiote Entero TOÑA', NULL, 'A102046', NULL, NULL, NULL, NULL, NULL, 'TOÑA', 0, NULL, '1', NULL, '2022-06-27 19:06:22', '2022-06-27 19:06:22', NULL),
(49, NULL, 21, 2, 'Orégano Entero TOÑA', NULL, 'A102047', NULL, NULL, NULL, NULL, NULL, 'TOÑA 500GR', 0, NULL, '500', NULL, '2022-06-27 19:07:57', '2022-06-27 19:07:57', NULL),
(50, NULL, 21, 2, 'Azúcar DULFINA', NULL, 'A102048', NULL, NULL, NULL, NULL, NULL, 'DULFINA 1KG', 0, NULL, '1', NULL, '2022-06-27 19:09:01', '2022-06-27 19:09:01', NULL),
(51, NULL, 21, 8, 'Desengrasante Profesional FACIL', NULL, 'A102049', NULL, NULL, NULL, NULL, NULL, 'FACIL 4LITROS', 1, NULL, '4', NULL, '2022-06-27 19:10:58', '2022-06-27 19:10:58', NULL),
(52, NULL, 21, 1, 'Kétchup WALIBI', NULL, 'A102050', NULL, NULL, NULL, NULL, NULL, 'WALIBI', 0, NULL, '0', NULL, '2022-06-27 19:40:32', '2022-06-27 19:40:32', NULL),
(53, NULL, 21, 3, 'Envase Hamburguesa Ct4 ECOESTRATEGIA', NULL, 'A102051', NULL, NULL, NULL, NULL, NULL, 'ECOESTRATEGIA 15X15 24gr', 0, NULL, '24', NULL, '2022-06-27 19:42:28', '2022-06-27 19:44:18', NULL),
(54, NULL, 21, 3, 'Envase menú Ct5 ECOESTRATEGIA', NULL, 'A102052', NULL, NULL, NULL, NULL, NULL, 'ECOESTRATEGIA 23X15 34gr', 0, NULL, '34', NULL, '2022-06-27 19:43:44', '2022-06-27 19:43:44', NULL),
(55, NULL, 21, 3, 'Papel Toalla Interfoliado LIZ', NULL, 'A102053', NULL, NULL, NULL, NULL, NULL, 'LIZ', 0, NULL, '0', NULL, '2022-06-27 19:46:05', '2022-06-27 19:46:05', NULL),
(56, NULL, 21, 2, 'Vasos Descartables Transparentes NN', NULL, 'A102054', NULL, NULL, NULL, NULL, NULL, '100unid LA BOLSA', 1, NULL, '100', NULL, '2022-06-27 19:47:04', '2022-06-27 19:47:04', NULL),
(57, NULL, 21, 2, 'Estropajo para Limpieza CARMELITAS', NULL, 'A102055', NULL, NULL, NULL, NULL, NULL, 'CARMELITAS', 6, NULL, '0', NULL, '2022-06-27 19:47:51', '2022-06-27 19:47:51', NULL),
(58, NULL, 21, 6, 'Aceite Crisol Frit Intenso CRISOL', NULL, 'A102056', NULL, NULL, NULL, NULL, NULL, 'CRISOL BALDE 20LITROS', 0, NULL, '20', NULL, '2022-06-27 19:48:48', '2022-06-27 19:48:48', NULL),
(59, NULL, 21, 6, 'Aceite Crisol Multiusos CRISOL', NULL, 'A102057', NULL, NULL, NULL, NULL, NULL, 'CRISOL BALDE 20LITROS', 0, NULL, '20', NULL, '2022-06-27 19:49:44', '2022-06-27 19:49:44', NULL),
(60, NULL, 21, 1, 'Mayonesa ALPESA', NULL, 'A102058', NULL, NULL, NULL, NULL, NULL, 'ALPESA 3.8KG', 0, NULL, '3.8', NULL, '2022-06-27 19:51:06', '2022-06-27 19:51:06', NULL),
(61, NULL, 21, 1, 'Kétchup ALPESA', NULL, 'A102059', NULL, NULL, NULL, NULL, NULL, 'ALPESA 3.8KG', 0, NULL, '3.8', NULL, '2022-06-27 19:54:01', '2022-06-27 19:54:01', NULL),
(62, NULL, 21, 3, 'Pasta Nicolini Codo Rayado NICOLINI', NULL, 'A102060', NULL, NULL, NULL, NULL, NULL, 'NICOLINI 5 Kg', 0, NULL, '5', NULL, '2022-06-27 21:25:24', '2022-06-27 21:25:24', NULL),
(63, NULL, 21, 3, 'Pasta Nicolini Plumilla NICOLINI', NULL, 'A102061', NULL, NULL, NULL, NULL, NULL, 'NICOLINI 20 bolsas 250 gr.', 0, NULL, '5', NULL, '2022-06-27 21:27:31', '2022-06-27 21:28:04', NULL),
(64, NULL, 21, 3, 'Pasta Nicolini Spaghetti NICOLINI', NULL, 'A102062', NULL, NULL, NULL, NULL, NULL, 'NICOLINI 20 bolsas 500 gr.', 0, NULL, '5', NULL, '2022-06-27 21:28:41', '2022-06-27 21:28:41', NULL),
(65, NULL, 22, 8, 'Schug Sonoma coast Chardonnay', NULL, 'B114001', NULL, NULL, NULL, NULL, NULL, 'Caja x 12 bot', 0, NULL, '0', NULL, '2022-06-27 22:39:40', '2022-07-06 17:43:27', '2022-07-06 17:43:27'),
(66, NULL, 22, 8, 'Schug Carneros Pinot Noir', NULL, 'B114002', NULL, NULL, NULL, NULL, NULL, 'Caja x 12 bot', 0, NULL, '0', NULL, '2022-06-27 22:40:22', '2022-07-06 17:46:01', '2022-07-06 17:46:01'),
(67, NULL, 22, 8, 'Schug Sonoma coast Pinot Noir', NULL, 'B114003', NULL, NULL, NULL, NULL, NULL, 'Caja x 12 bot', 0, NULL, '0', NULL, '2022-06-27 22:40:55', '2022-07-06 17:46:45', '2022-07-06 17:46:45'),
(68, NULL, 22, 8, 'Pisco Quebranta  x 2lt', NULL, 'B114004', NULL, NULL, NULL, NULL, NULL, 'Caja x 9 bot', 0, NULL, '0', NULL, '2022-06-27 22:41:39', '2022-07-06 17:46:20', '2022-07-06 17:46:20'),
(69, NULL, 22, 8, 'VT  FUEGO BLANCO CONTRAVIENTO BLEND 2018', NULL, 'B114005', NULL, NULL, NULL, NULL, NULL, 'Caja x 6 bot', 0, NULL, '0', NULL, '2022-06-27 22:42:07', '2022-07-06 17:43:48', '2022-07-06 17:43:48'),
(70, NULL, 22, 8, 'VB PETIT BATUCO SAUVIGNON BLANC', NULL, 'B114006', NULL, NULL, NULL, NULL, NULL, 'Caja x 12 bot', 0, NULL, '0', NULL, '2022-06-27 22:42:33', '2022-07-06 17:46:53', '2022-07-06 17:46:53'),
(71, NULL, 22, 8, 'VT PETIT BATUCO CABERNET SAUVIGNON', NULL, 'B114007', NULL, NULL, NULL, NULL, NULL, 'Caja x 12 bot', 0, NULL, '0', NULL, '2022-06-27 22:42:59', '2022-07-06 17:47:01', '2022-07-06 17:47:01'),
(72, NULL, 22, 8, 'VT PETIT BATUCO MERLOT', NULL, 'B114008', NULL, NULL, NULL, NULL, NULL, 'Caja x 12 bot', 0, NULL, '0', NULL, '2022-06-27 22:43:31', '2022-07-06 17:48:14', '2022-07-06 17:48:14'),
(73, NULL, 22, 8, 'VB FUEGO GEWURZTRAMINER 2018', NULL, 'B114009', NULL, NULL, NULL, NULL, NULL, 'Caja x 6 bot', 0, NULL, '0', NULL, '2022-06-27 22:44:01', '2022-07-06 17:46:12', '2022-07-06 17:46:12'),
(74, NULL, 22, 8, 'VB FUEGO SAUVIGNON BLANC 2018', NULL, 'B114010', NULL, NULL, NULL, NULL, NULL, 'Caja x 6 bot', 0, NULL, '0', NULL, '2022-06-27 22:44:44', '2022-07-06 17:46:37', '2022-07-06 17:46:37'),
(75, NULL, 22, 8, 'VT  FUEGO BLANCOCONTRAVIENTO MALBEC 2018', NULL, 'B114011', NULL, NULL, NULL, NULL, NULL, 'Caja x 6 bot', 0, NULL, '0', NULL, '2022-06-27 22:45:08', '2022-07-06 17:48:25', '2022-07-06 17:48:25'),
(76, NULL, 22, 8, 'VT FUEGO FLINTSTONE  CABERNET FRANc 2015', NULL, 'B114012', NULL, NULL, NULL, NULL, NULL, 'Caja x 6 bot', 0, NULL, '0', NULL, '2022-06-27 22:45:41', '2022-07-06 17:46:29', '2022-07-06 17:46:29'),
(77, NULL, 22, 8, 'VT FUEGO FLINTSTONE  MALBEC  2015', NULL, 'B114013', NULL, NULL, NULL, NULL, NULL, 'Caja x 6 bot', 0, NULL, '0', NULL, '2022-06-27 22:46:15', '2022-07-06 17:48:38', '2022-07-06 17:48:38'),
(78, NULL, 22, 8, 'VT FUEGO VALLE SILEX CABERNET FRANK-MALBEC 2016', NULL, 'B114014', NULL, NULL, NULL, NULL, NULL, 'Caja x 6 bot', 0, NULL, '0', NULL, '2022-06-27 22:46:40', '2022-07-06 17:48:47', '2022-07-06 17:48:47'),
(79, NULL, 22, 8, 'VINO BLANCO PISANO CISPLATINO TORRONTES', NULL, 'B114015', NULL, NULL, NULL, NULL, NULL, 'Caja x 6 bot', 0, NULL, '0', NULL, '2022-06-27 22:47:09', '2022-07-06 17:48:56', '2022-07-06 17:48:56'),
(80, NULL, 22, 8, 'VINO ROSADO PISANO CISPLATINO CABERNET FRANC ROSE', NULL, 'B114016', NULL, NULL, NULL, NULL, NULL, 'Caja x 6 bot', 0, NULL, '0', NULL, '2022-06-27 22:47:32', '2022-07-06 17:49:07', '2022-07-06 17:49:07'),
(81, NULL, 22, 8, 'VINO TINTO PISANO CISPLATINO TANNAT MERLOT', NULL, 'B114017', NULL, NULL, NULL, NULL, NULL, 'Caja x 6 bot', 0, NULL, '0', NULL, '2022-06-27 22:48:09', '2022-07-06 17:43:57', '2022-07-06 17:43:57'),
(82, NULL, 22, 8, 'VINO TINTO PISANO CISPLATINO TANNAT', NULL, 'B114018', NULL, NULL, NULL, NULL, NULL, 'Caja x 6 bot', 0, NULL, '0', NULL, '2022-06-27 22:48:46', '2022-07-06 17:44:05', '2022-07-06 17:44:05'),
(83, NULL, 22, 8, 'VINO TINTO PISANO RPF TANNAT', NULL, 'B114019', NULL, NULL, NULL, NULL, NULL, 'Caja x 6 bot', 0, NULL, '0', NULL, '2022-06-27 22:49:26', '2022-07-06 17:44:11', '2022-07-06 17:44:11'),
(84, NULL, 22, 8, 'VINO TINTO PISANO RIO DE LOS PAJAROS TANNAT', NULL, 'B114020', NULL, NULL, NULL, NULL, NULL, 'Caja x 6 bot', 0, NULL, '0', NULL, '2022-06-27 22:49:56', '2022-07-06 17:44:37', '2022-07-06 17:44:37'),
(85, NULL, 22, 8, 'VINO BLANCO SCHUBERT WAIRARAPA SAUVIGNON BLANC SELECTION', NULL, 'B114021', NULL, NULL, NULL, NULL, NULL, 'Caja x 12 bot', 0, NULL, '0', NULL, '2022-06-27 22:50:29', '2022-07-06 17:44:44', '2022-07-06 17:44:44'),
(86, NULL, 22, 8, 'VINO BLANCO SCHUBERT WAIRARAPA SAUVIGNON BLANC', NULL, 'B114022', NULL, NULL, NULL, NULL, NULL, 'Caja x 12 bot', 0, NULL, '0', NULL, '2022-06-27 22:51:43', '2022-07-06 17:44:53', '2022-07-06 17:44:53'),
(87, NULL, 22, 8, 'VINO TINTO SCHUBERT WAIRARAPA PINOT NOIR BLOCK B', NULL, 'B114023', NULL, NULL, NULL, NULL, NULL, 'Caja x 6 bot', 0, NULL, '0', NULL, '2022-06-27 22:52:45', '2022-07-06 17:45:01', '2022-07-06 17:45:01'),
(88, NULL, 22, 8, 'VINO TINTO SCHUBERT WAIRARAPA PINOT NOIR MARIONS VINEYARD', NULL, 'B114024', NULL, NULL, NULL, NULL, NULL, 'Caja x 6 bot', 0, NULL, '0', NULL, '2022-06-27 22:53:56', '2022-07-06 17:45:11', '2022-07-06 17:45:11'),
(89, NULL, 22, 8, 'VINO TINTO SCHUBERT WAIRARAPA PINOT NOIR SELECTION', NULL, 'B114025', NULL, NULL, NULL, NULL, NULL, 'Caja x 12 bot', 0, NULL, '0', NULL, '2022-06-27 22:54:52', '2022-07-06 17:45:20', '2022-07-06 17:45:20'),
(90, NULL, 22, 8, 'VINO BLANCO THE WEDGE CHENIN BLANC/ROUSSANNE', NULL, 'B114026', NULL, NULL, NULL, NULL, NULL, 'Caja x 12 bot', 0, NULL, '0', NULL, '2022-06-27 22:55:26', '2022-07-06 17:45:28', '2022-07-06 17:45:28'),
(91, NULL, 22, 8, 'VINO TINTO THE WEDGE SHIRAZ/MOURVEDRE/VIOGNIER', NULL, 'B114027', NULL, NULL, NULL, NULL, NULL, 'Caja x 12 bot', 0, NULL, '0', NULL, '2022-06-27 22:56:06', '2022-07-06 17:45:35', '2022-07-06 17:45:35'),
(92, NULL, 22, 8, 'VINO BLANCO THE WEDGE CHENIN BLANC', NULL, 'B114028', NULL, NULL, NULL, NULL, NULL, 'Caja x 12 bot', 0, NULL, '0', NULL, '2022-06-27 22:56:25', '2022-07-06 17:45:42', '2022-07-06 17:45:42'),
(93, NULL, 22, 8, 'VINO TINTO THE WEDGE PINOTAGE', NULL, 'B114029', NULL, NULL, NULL, NULL, NULL, 'Caja x 12 bot', 0, NULL, '0', NULL, '2022-06-27 22:56:44', '2022-07-06 17:45:49', '2022-07-06 17:45:49'),
(94, NULL, 22, 8, 'VINO TINTO THE WEDGE GRENACHE', NULL, 'B114030', NULL, NULL, NULL, NULL, NULL, 'Caja x 12 bot', 0, NULL, '0', NULL, '2022-06-27 22:57:19', '2022-07-06 17:44:29', '2022-07-06 17:44:29'),
(95, NULL, 24, 1, 'Monomero 15ml modi', NULL, '021233', NULL, NULL, NULL, NULL, NULL, 'Monomero 15ml Descripción mod', 0, NULL, '2', NULL, '2022-07-14 16:11:00', '2022-07-14 16:38:44', NULL),
(96, NULL, 23, 5, 'DIL DOS CAPUCHON XL', NULL, '6667575', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1', NULL, '2022-07-15 01:20:13', '2022-07-15 01:20:42', '2022-07-15 01:20:42'),
(97, NULL, 21, 3, 'Servilleta Blanca Simple SFOLL', NULL, 'A102063', NULL, NULL, NULL, NULL, NULL, 'Paquete de 15 Unidades', 15, NULL, '0', NULL, '2022-08-12 00:30:21', '2022-08-12 00:30:21', NULL),
(98, NULL, 21, 8, 'Lavavajilla Sapolio', NULL, 'A102064', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '0.8', NULL, '2022-08-12 00:31:04', '2022-08-12 00:31:04', NULL),
(99, NULL, 21, 8, 'Esponja Multiuso Limpia Max', NULL, 'A102065', NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, '0', NULL, '2022-08-12 00:31:33', '2022-08-12 00:31:33', NULL),
(100, NULL, 27, 1, 'DEEP COUPE PLATE 28 CM - CLAY', NULL, 'EADC28CL', NULL, NULL, NULL, NULL, NULL, 'Serie 6294016814872', 178, NULL, '2.65', NULL, '2022-08-12 17:02:04', '2022-08-18 16:54:41', NULL),
(101, NULL, 27, 1, 'BOWL 121CL - CLAY', NULL, 'EABW20CL', NULL, NULL, NULL, NULL, NULL, 'Serie 6294016814919', 126, NULL, '2.84', NULL, '2022-08-12 17:02:57', '2022-08-18 16:55:05', NULL),
(102, NULL, 27, 1, 'BOWL 121CL - COBALTO', NULL, 'EABW20CO', NULL, NULL, NULL, NULL, NULL, 'Serie 6294016814414', 144, NULL, '2.84', NULL, '2022-08-12 17:03:41', '2022-08-18 16:55:35', NULL),
(103, NULL, 27, 1, 'DEEP PLATE 26CM - DUAL OVAL', NULL, 'EAOD26DU', NULL, NULL, NULL, NULL, NULL, 'Serie 6294016832425', 5, NULL, '2.1', NULL, '2022-08-12 17:04:37', '2022-08-18 16:55:55', NULL),
(104, NULL, 27, 1, 'DEEP COUPE PLATE 28 CM - DUAL', NULL, 'EADC28DU', NULL, NULL, NULL, NULL, NULL, 'Serie 6294016814124', 88, NULL, '2.65', NULL, '2022-08-12 17:09:07', '2022-08-18 16:56:16', NULL),
(105, NULL, 27, 1, 'DEEP COUPE PLATE 28 CM - CALDERA', NULL, 'EADC28CA', NULL, NULL, NULL, NULL, NULL, 'Serie 6294016814629', 100, NULL, '2.65', NULL, '2022-08-12 17:09:51', '2022-08-18 16:56:30', NULL),
(106, NULL, 27, 1, '27 CM RIMLESS PLATE - RUBY', NULL, 'RBNNPR27', NULL, NULL, NULL, NULL, NULL, 'Serie 6294009451923', 264, NULL, '8.35', NULL, '2022-08-12 17:10:28', '2022-08-18 16:56:58', NULL),
(107, NULL, 27, 1, 'COUPE PLATE 28 CM - CLAY', NULL, 'EACP28CL', NULL, NULL, NULL, NULL, NULL, 'Serie 6294016814827', 262, NULL, '11.4', NULL, '2022-08-12 17:11:36', '2022-08-18 16:57:30', NULL),
(108, NULL, 27, 1, 'CUP23CL - CLAY', NULL, 'EACU23CL', NULL, NULL, NULL, NULL, NULL, 'Serie 6294016814964', 144, NULL, '2.79', NULL, '2022-08-12 17:12:48', '2022-08-18 16:57:53', NULL),
(109, NULL, 27, 1, 'CUP23CL - COBALTO', NULL, 'EACU23CO', NULL, NULL, NULL, NULL, NULL, 'Serie 6294016814469', 94, NULL, '2.79', NULL, '2022-08-12 17:15:34', '2022-08-18 16:58:21', NULL),
(110, NULL, 27, 1, '24 CM RIMPLESS PLATE - RUBY', NULL, 'RBNNPR24', NULL, NULL, NULL, NULL, NULL, 'Serie 6294009451930', 212, NULL, '6.53', NULL, '2022-08-12 17:16:06', '2022-08-18 16:59:07', NULL),
(111, NULL, 27, 1, 'FLATE COPE PLATE 24 CM - IMPALA', NULL, 'IPNNPR24', NULL, NULL, NULL, NULL, NULL, 'Serie 6294009451152', 120, NULL, '6.53', NULL, '2022-08-12 17:17:06', '2022-08-18 16:59:30', NULL),
(112, NULL, 27, 1, 'SAUCER FOR 09CL CUP - CLAY', NULL, 'EASA13CL', NULL, NULL, NULL, NULL, NULL, 'Serie 6294016814971', 126, NULL, '2.53', NULL, '2022-08-12 17:17:48', '2022-08-18 17:00:05', NULL),
(113, NULL, 27, 1, 'COUPE PLETA 28 CM - CALDERA', NULL, 'EACP28CA', NULL, NULL, NULL, NULL, NULL, 'Serie 6294016814575', 223, NULL, '11.4', NULL, '2022-08-12 17:18:24', '2022-08-18 17:00:37', NULL),
(114, NULL, 27, 1, 'CUP09CL - CLAY', NULL, 'EACU09CL', NULL, NULL, NULL, NULL, NULL, 'Serie 6294016814940', 142, NULL, '1.52', NULL, '2022-08-12 17:21:38', '2022-08-18 17:01:11', NULL),
(115, NULL, 27, 1, 'CUP09CL - COBALTO', NULL, 'EACU09CO', NULL, NULL, NULL, NULL, NULL, 'Serie 6294016814445', 116, NULL, '1.52', NULL, '2022-08-12 17:22:28', '2022-08-18 17:02:34', NULL),
(116, NULL, 27, 1, 'COUPE PLATE 24 CM - CLAY', NULL, 'EACP24CL', NULL, NULL, NULL, NULL, NULL, 'Serie 6294016814810', 210, NULL, '7.9', NULL, '2022-08-12 17:23:17', '2022-08-18 17:03:11', NULL),
(117, NULL, 27, 1, 'COUPE PLATE 28 CM - DUAL', NULL, 'EACP28DU', NULL, NULL, NULL, NULL, NULL, 'Serie 6294016814070', 267, NULL, '11.4', NULL, '2022-08-12 17:25:06', '2022-08-18 17:03:26', NULL),
(118, NULL, 27, 1, 'COUPE PLATE 24 CM - DUAL', NULL, 'EACP24DU', NULL, NULL, NULL, NULL, NULL, 'Serie 6294016814063', 220, NULL, '7.9', NULL, '2022-08-12 17:25:45', '2022-08-18 17:03:42', NULL),
(119, NULL, 27, 1, 'COUPE PLATE 24 CM - COBALTO', NULL, 'EACP24CO', NULL, NULL, NULL, NULL, NULL, 'Serie 6294016814315', 250, NULL, '7.9', NULL, '2022-08-12 17:26:21', '2022-08-18 17:04:23', NULL),
(120, NULL, 27, 1, 'BOWL121CL - DUAL', NULL, 'EABW20DU', NULL, NULL, NULL, NULL, NULL, 'Serie 6294016814162', 121, NULL, '2.84', NULL, '2022-08-12 17:26:58', '2022-08-18 17:04:44', NULL),
(121, NULL, 27, 1, 'DEEP PLATE 26CM - CLAY OVAL', NULL, 'EAOD26CL', NULL, NULL, NULL, NULL, NULL, 'Serie 6294016832401', 54, NULL, '2.1', NULL, '2022-08-12 17:27:46', '2022-08-18 17:05:13', NULL),
(122, NULL, 27, 1, 'BOWL 121CL - CALDERA', NULL, 'EABW20CA', NULL, NULL, NULL, NULL, NULL, 'Serie 6294016814667', 125, NULL, '2.84', NULL, '2022-08-12 17:28:19', '2022-08-18 17:05:34', NULL),
(123, NULL, 27, 1, 'DEEP PLATE 26CM - CALDERA OVAL', NULL, 'EAOD26CA', NULL, NULL, NULL, NULL, NULL, 'Serie 6294016832395', 0, NULL, '2.1', NULL, '2022-08-12 17:29:44', '2022-08-18 17:05:55', NULL),
(124, NULL, 27, 1, 'DEEP PLATE 26CM - COBALTO OVAL', NULL, 'EAOD26CO', NULL, NULL, NULL, NULL, NULL, 'Serie 6294016832418', 0, NULL, '2.1', NULL, '2022-08-12 17:30:14', '2022-08-18 17:06:17', NULL),
(125, NULL, 27, 1, 'RICE BOWL 16 CM - CRUST', NULL, 'GNNNRB16CR', NULL, NULL, NULL, NULL, NULL, 'Serie 6294009478784', 48, NULL, '5.36', NULL, '2022-08-12 17:30:50', '2022-08-18 17:07:12', NULL),
(126, NULL, 27, 1, 'GENESIS COLLECTION - ALMENDRA', NULL, 'GN116CU08AL', NULL, NULL, NULL, NULL, NULL, 'Serie 6294009478449', 119, NULL, '1.8', NULL, '2022-08-12 17:31:30', '2022-12-20 17:46:56', NULL),
(127, NULL, 27, 1, 'GENESIS COLLECTION - CRUST', NULL, 'GN116CU08CR', NULL, NULL, NULL, NULL, NULL, 'Serie 6294009478920', 101, NULL, '1.8', NULL, '2022-08-12 17:32:06', '2022-12-20 17:47:20', NULL),
(128, NULL, 27, 1, 'GENESIS COLLECTION - ALMENDRA', NULL, 'GN116CU23AL', NULL, NULL, NULL, NULL, NULL, 'Serie 6294009478456', 160, NULL, '3.3', NULL, '2022-08-12 17:36:28', '2022-12-20 17:46:13', NULL),
(129, NULL, 27, 1, 'GENESIS COLLECTION - CRUST', NULL, 'GN116CU23CR', NULL, NULL, NULL, NULL, NULL, 'Serie 6294009478937', 84, NULL, '3.3', NULL, '2022-08-12 17:36:58', '2022-12-20 17:48:58', NULL),
(130, NULL, 27, 1, 'OVAL PLATE RIMLESS 36 CM - NEGRO', NULL, 'NFNNOP36BK', NULL, NULL, NULL, NULL, NULL, 'serie 6294009459806', 93, NULL, '7.2', NULL, '2022-08-12 17:50:08', '2022-08-18 17:10:47', NULL),
(131, NULL, 27, 1, '32 CM OVAL PLATE - CORAL', NULL, 'TWNNOP32CO', NULL, NULL, NULL, NULL, NULL, 'Serie 6294009477565', 60, NULL, '5.51', NULL, '2022-08-12 17:50:53', '2022-08-18 17:11:13', NULL),
(132, NULL, 27, 1, '15 CM NOODLE BOWL - NEGRO', NULL, 'NFOPNB15BK', NULL, NULL, NULL, NULL, NULL, 'Serie 6294009459493', 149, NULL, '2.56', NULL, '2022-08-12 17:51:26', '2022-08-18 17:11:45', NULL),
(133, NULL, 27, 1, 'EARED ROUND DISH 16 CM - NEGRO', NULL, 'NFOPRD16BK', NULL, NULL, NULL, NULL, NULL, 'Serie 6294009459677', 114, NULL, '4.84', NULL, '2022-08-12 17:51:58', '2022-08-18 17:12:06', NULL),
(134, NULL, 27, 1, 'SAUCER FOR 20 & 23 CL CUP - CLAY', NULL, 'EASA16CL', NULL, NULL, NULL, NULL, NULL, 'Serie 6294016814988', 142, NULL, '3.73', NULL, '2022-08-12 17:52:29', '2022-08-18 18:03:42', NULL),
(135, NULL, 27, 1, 'DEEP COUPE PLATE 28 CM - COBALTO', NULL, 'EADC28CO', NULL, NULL, NULL, NULL, NULL, 'Serie 6294016814377', 89, NULL, '2.65', NULL, '2022-08-12 17:53:59', '2022-08-18 18:04:04', NULL),
(136, NULL, 27, 1, '27 CM RIMLESS PLATE - IMPALA', NULL, 'IPNNPR27', NULL, NULL, NULL, NULL, NULL, 'Serie 6294009451138', 153, NULL, '8.35', NULL, '2022-08-12 17:54:28', '2022-08-18 18:04:33', NULL),
(137, NULL, 27, 1, '27 CM RIMLESS PLATE - DARK RED', NULL, 'NFNNPR27DR', NULL, NULL, NULL, NULL, NULL, 'Serie 6294009460260', 107, NULL, '8.35', NULL, '2022-08-12 17:54:56', '2022-08-18 18:04:59', NULL),
(138, NULL, 27, 1, 'COUPE PLATE 24 CM - CALDERA', NULL, 'EACP24CA', NULL, NULL, NULL, NULL, NULL, 'Serie 6294016814568', 220, NULL, '7.9', NULL, '2022-08-12 17:55:23', '2022-08-18 18:05:29', NULL),
(139, NULL, 27, 1, 'FLAT COUPE PLATE 28CM - CORAL', NULL, 'TWNNPR28CO', NULL, NULL, NULL, NULL, NULL, 'Serie 6294009451589', 258, NULL, '10.56', NULL, '2022-08-12 17:55:53', '2022-08-18 18:05:57', NULL),
(140, NULL, 27, 1, '27 CM RIMLESS PLATE - NEGRO', NULL, 'NFNNPR27BK', NULL, NULL, NULL, NULL, NULL, 'Serie 6294009459820', 284, NULL, '8.35', NULL, '2022-08-12 17:56:19', '2022-08-18 18:06:20', NULL),
(141, NULL, 27, 1, '23 CM EXTRA DEEP PLATE - LAGOON', NULL, 'TWCLXD23LA', NULL, NULL, NULL, NULL, NULL, 'Serie 6294009477794', 82, NULL, '3.92', NULL, '2022-08-12 17:57:01', '2022-08-18 18:06:48', NULL),
(142, NULL, 27, 1, 'COUPE BOWL 26 CM - LAGOON', NULL, 'TWBUBC26LA', NULL, NULL, NULL, NULL, NULL, 'Serie 6294009477688', 204, NULL, '10.4', NULL, '2022-08-12 17:57:24', '2022-08-18 18:07:12', NULL),
(143, NULL, 27, 1, '23 CM EXTRA DEEP PLATE - BEACH', NULL, 'TWCLXD23BE', NULL, NULL, NULL, NULL, NULL, 'Serie 6294009478005', 90, NULL, '3.92', NULL, '2022-08-12 17:57:51', '2022-08-18 18:07:38', NULL),
(144, NULL, 27, 1, 'FLAT COUPE PLATE 24CM - LAGOON', NULL, 'TWNNPR24LA', NULL, NULL, NULL, NULL, NULL, 'Serie 6294009477732', 345, NULL, '6.53', NULL, '2022-08-12 17:58:19', '2022-08-18 18:12:51', NULL),
(145, NULL, 27, 1, 'FLAT COUPE PLATE 21CM - LAGOON', NULL, 'TWNNPR21LA', NULL, NULL, NULL, NULL, NULL, 'Serie 6294009477725', 174, NULL, '4', NULL, '2022-08-12 17:58:45', '2022-08-18 18:13:11', NULL),
(146, NULL, 27, 1, 'FLAT COUPE PLATE 24CM - BEACH', NULL, 'TWNNPR24BE', NULL, NULL, NULL, NULL, NULL, 'Serie 6294009477947', 208, NULL, '6.53', NULL, '2022-08-12 17:59:10', '2022-08-18 18:13:58', NULL),
(147, NULL, 27, 1, 'FLAT COUPE PLATE 21CM - CORAL', NULL, 'TWNNPR21CO', NULL, NULL, NULL, NULL, NULL, 'Serie 6294009477510', 120, NULL, '4', NULL, '2022-08-12 17:59:43', '2022-08-18 18:14:18', NULL),
(148, NULL, 27, 1, 'RIMLESS PLATE 21CM - BROWN', NULL, 'NFNNPR21BW', NULL, NULL, NULL, NULL, NULL, 'Serie 6294009460727', 177, NULL, '4', NULL, '2022-08-12 18:01:17', '2022-08-18 18:14:41', NULL),
(149, NULL, 27, 1, 'COUPE BOWL 26 CM - CORAL', NULL, 'TWBUBC26CO', NULL, NULL, NULL, NULL, NULL, 'Serie 6294009477473', 211, NULL, '10.4', NULL, '2022-08-12 18:01:39', '2022-08-18 18:15:11', NULL),
(150, NULL, 27, 1, 'FLAT COUPE PLATE 24CM - CORAL', NULL, 'TWNNPR24CO', NULL, NULL, NULL, NULL, NULL, 'Serie 6294009477527', 144, NULL, '6.53', NULL, '2022-08-12 18:02:06', '2022-08-18 18:15:53', NULL),
(151, NULL, 27, 1, 'SAUCER FOR 20 & 23 CL CUP - COBALTO', NULL, 'EASA16CO', NULL, NULL, NULL, NULL, NULL, 'Serie 6294016814483', 137, NULL, '3.73', NULL, '2022-08-12 18:02:33', '2022-08-18 18:16:20', NULL),
(152, NULL, 27, 1, 'COUPE BWOL 26CM - DARK RED', NULL, 'NFBUBC26DR', NULL, NULL, NULL, NULL, NULL, 'Serie 6294009498621', 115, NULL, '10.4', NULL, '2022-08-12 18:02:57', '2022-08-18 18:16:44', NULL),
(153, NULL, 27, 1, '21CM RIMLESS PLATE - NEGRO', NULL, 'NFNNPR21BK', NULL, NULL, NULL, NULL, NULL, 'Serie 6294009459844', 364, NULL, '4', NULL, '2022-08-12 18:03:22', '2022-08-18 18:17:03', NULL),
(154, NULL, 27, 1, '17CM SAUCER FOR COFFE CUP - CRUST', NULL, 'GNCLSA02CR', NULL, NULL, NULL, NULL, NULL, 'Serie 6294009478951', 75, NULL, '3.42', NULL, '2022-08-12 18:03:47', '2022-08-18 18:17:36', NULL),
(155, NULL, 27, 1, '17CM SAUCER FOR COFFE CUP', NULL, 'GNCLSA02CR', NULL, NULL, NULL, NULL, NULL, 'Serie 6294009478951', 5, NULL, '3.42', NULL, '2022-08-12 18:04:07', '2022-08-18 18:18:13', '2022-08-18 18:18:13'),
(156, NULL, 27, 1, '32CM OVAL PLATTER - LAGOON', NULL, 'TWNNOP32LA', NULL, NULL, NULL, NULL, NULL, 'Serie 6294009477770', 127, NULL, '5.51', NULL, '2022-08-12 18:04:31', '2022-08-18 18:18:37', NULL),
(157, NULL, 27, 1, 'FARED OVAL DISH 25CM - NEGRO', NULL, 'NFOPOD25BK', NULL, NULL, NULL, NULL, NULL, 'Serie 6294009459653', 144, NULL, '10', NULL, '2022-08-12 18:05:02', '2022-08-18 18:19:00', NULL),
(158, NULL, 27, 1, 'BUTTER RAMEQUIN 8CM - DARK RED', NULL, 'NFBABR02DR', NULL, NULL, NULL, NULL, NULL, 'Serie 6294009460321', 127, NULL, '1.76', NULL, '2022-08-12 18:05:30', '2022-08-18 18:20:03', NULL),
(159, NULL, 27, 1, '21CM RIMLESS PLATE - DARK RED', NULL, 'NFNNPR21DR', NULL, NULL, NULL, NULL, NULL, 'Serie 6294009460284', 84, NULL, '4', NULL, '2022-08-12 18:06:01', '2022-08-18 18:20:30', NULL),
(160, NULL, 27, 1, '17CM SAUCER FOR COFFE CUP - ALMENDRA', NULL, 'GNCLSA02AL', NULL, NULL, NULL, NULL, NULL, 'Serie 6294009478470', 184, NULL, '3.42', NULL, '2022-08-12 18:06:25', '2022-08-18 18:21:01', NULL),
(161, NULL, 27, 1, 'SAUCER FOR 09CL CUP - COBALTO', NULL, 'EASA13CO', NULL, NULL, NULL, NULL, NULL, 'Serie 6294016814476', 106, NULL, '2.53', NULL, '2022-08-12 18:07:03', '2022-08-18 18:21:23', NULL),
(162, NULL, 27, 1, '13CM SAUCER FOR EXPRESSO CUP - CRUST', NULL, 'GNCLSA13CR', NULL, NULL, NULL, NULL, NULL, 'Serie 6294009478944', 89, NULL, '2', NULL, '2022-08-12 18:07:32', '2022-08-18 18:21:48', NULL),
(163, NULL, 27, 1, '32CM OVAL PLATTER - BEACH', NULL, 'TWNNOP32BE', NULL, NULL, NULL, NULL, NULL, 'Serie 6294009477985', 83, NULL, '5.51', NULL, '2022-08-12 18:07:56', '2022-08-18 18:22:23', NULL),
(164, NULL, 27, 1, '13CM SAUCER FOR EXPRESSO CUP - ALMENDRA', NULL, 'GNCLSA13AL', NULL, NULL, NULL, NULL, NULL, 'Serie 6294009478463', 71, NULL, '2', NULL, '2022-08-12 18:08:20', '2022-08-18 18:22:55', NULL),
(165, NULL, 27, 1, 'COUPE BOWL 26 CM - BEACH', NULL, 'TWBUBC26BE', NULL, NULL, NULL, NULL, NULL, 'Serie 6294009477893', 205, NULL, '10.4', NULL, '2022-08-12 18:08:43', '2023-01-05 15:10:16', '2023-01-05 15:10:16'),
(166, NULL, 27, 1, 'COUPE BOWL 26 CM', NULL, 'TWBUBC26BE', NULL, NULL, NULL, NULL, NULL, 'Serie 6294009477893', 0, NULL, '10.4', NULL, '2022-08-12 18:09:02', '2022-08-18 18:28:44', '2022-08-18 18:28:44'),
(167, NULL, 27, 1, 'FLAT COUPE PLATE 21CM - BEACH', NULL, 'TWNNPR21BE', NULL, NULL, NULL, NULL, NULL, 'Serie 6294009477930', 180, NULL, '4', NULL, '2022-08-12 18:09:29', '2022-08-18 18:29:39', NULL),
(168, NULL, 27, 1, '28CM RIMLESS PLATE - BEACH', NULL, 'TWNNPR28BE', NULL, NULL, NULL, NULL, NULL, 'Serie 6294009451558', 263, NULL, '10.56', NULL, '2022-08-12 18:11:11', '2022-08-18 18:29:54', NULL),
(169, NULL, 27, 1, '28CM RIMLESS PLATE - LAGOON', NULL, 'TWNNPR28LA', NULL, NULL, NULL, NULL, NULL, 'Serie 6294009452180', 251, NULL, '10.56', NULL, '2022-08-12 18:11:34', '2022-08-18 18:30:21', NULL),
(170, NULL, 27, 1, 'FLATE PLATE 21CM', NULL, 'RP0922', NULL, NULL, NULL, NULL, NULL, NULL, 533, NULL, '21.2', NULL, '2022-08-12 18:12:07', '2022-08-12 18:12:07', NULL),
(171, NULL, 27, 1, 'COUPE PLATE PARALLEL 26CM', NULL, 'RP7511', NULL, NULL, NULL, NULL, NULL, 'Serie RP7511', 310, NULL, '8.51', NULL, '2022-08-12 18:12:40', '2022-08-12 18:12:40', NULL),
(172, NULL, 27, 1, 'COUPE PLATE PARALLEL 24CM', NULL, 'RP7512', NULL, NULL, NULL, NULL, NULL, 'Serie RP7512', 195, NULL, '13.6', NULL, '2022-08-12 18:15:02', '2022-08-12 18:15:02', NULL),
(173, NULL, 27, 1, 'COUPE PLATE PARALLEL 21CM', NULL, 'RP7513', NULL, NULL, NULL, NULL, NULL, 'Serie RP7513', 495, NULL, '19.1', NULL, '2022-08-12 18:15:27', '2022-08-12 18:15:27', NULL),
(174, NULL, 27, 1, 'GOURMET PLATE PARALLEL 28CM', NULL, 'RP7521', NULL, NULL, NULL, NULL, NULL, 'Serie RP7521', 18, NULL, '5.51', NULL, '2022-08-12 18:15:51', '2022-08-12 18:15:51', NULL),
(175, NULL, 27, 1, 'STEAK PLATE PARALLEL 28CM', NULL, 'RP7524', NULL, NULL, NULL, NULL, NULL, 'Serie RP7524', 0, NULL, '11.72', NULL, '2022-08-12 18:16:23', '2022-08-12 18:16:23', NULL),
(176, NULL, 27, 1, 'COUPE DEEP PLATE PARALLEL 26.5CM', NULL, 'RP7526', NULL, NULL, NULL, NULL, NULL, 'Serie RP7526', 96, NULL, '5.7', NULL, '2022-08-12 18:16:59', '2022-08-12 18:16:59', NULL),
(177, NULL, 27, 1, 'COFFE CUP SAUCER 15CM', NULL, 'RP0213', NULL, NULL, NULL, NULL, NULL, 'Serie RP0213', 190, NULL, '14.55', NULL, '2022-08-12 18:17:26', '2023-01-03 16:03:10', '2023-01-03 16:03:10'),
(178, NULL, 27, 1, 'COFFE CUP SAUCER 15CM', NULL, 'RP0213', NULL, NULL, NULL, NULL, NULL, 'Serie RP0213', 0, NULL, '14.55', NULL, '2022-08-12 18:17:46', '2022-08-12 18:17:46', NULL),
(179, NULL, 27, 1, 'OVAL PLATTER COUPE 38CM', NULL, 'RP0224', NULL, NULL, NULL, NULL, NULL, 'Serie RP0224', 29, NULL, '17.1', NULL, '2022-08-12 18:18:12', '2022-08-12 18:18:12', NULL),
(180, NULL, 27, 1, 'COFFE CUP (STACKABLE) 0.20L', NULL, 'RP0231', NULL, NULL, NULL, NULL, NULL, 'Serie RP0231', 6, NULL, '15.7', NULL, '2022-08-12 18:18:37', '2022-08-12 18:18:37', NULL),
(181, NULL, 27, 1, 'OVAL PLATE 28CM', NULL, 'RP0285', NULL, NULL, NULL, NULL, NULL, 'Serie RP0285', 22, NULL, '8.6', NULL, '2022-08-12 18:19:03', '2022-08-12 18:19:03', NULL),
(182, NULL, 27, 1, 'CEREAL BOWL 14CM', NULL, 'RP0905', NULL, NULL, NULL, NULL, NULL, 'Serie RP0905', 272, NULL, '14', NULL, '2022-08-12 18:19:25', '2022-08-12 18:19:25', NULL),
(183, NULL, 27, 1, 'SALAD BOWL 16CM', NULL, 'RP0906', NULL, NULL, NULL, NULL, NULL, 'Serie RP0906', 376, NULL, '9.24', NULL, '2022-08-12 18:19:50', '2022-08-12 18:19:50', NULL),
(184, NULL, 27, 1, 'RIM PASTA PLATE 28CM', NULL, 'RP0909', NULL, NULL, NULL, NULL, NULL, 'Serie RP0909', 331, NULL, '6.5', NULL, '2022-08-12 18:20:12', '2022-08-12 18:20:12', NULL),
(185, NULL, 27, 1, 'FLAT PLATE 24CM', NULL, 'RP0921', NULL, NULL, NULL, NULL, NULL, 'Serie RP0921', 678, NULL, '15.32', NULL, '2022-08-12 18:20:39', '2022-08-12 18:20:39', NULL),
(186, NULL, 27, 1, 'FLAT PLATE 18CM', NULL, 'RP0923', NULL, NULL, NULL, NULL, NULL, 'Serie RP0923', 705, NULL, '19.43', NULL, '2022-08-12 18:22:29', '2022-08-12 18:22:29', NULL),
(187, NULL, 27, 1, 'FLAT PLATE 16CM', NULL, 'RP0924', NULL, NULL, NULL, NULL, NULL, 'Serie RP0924', 378, NULL, '14.5', NULL, '2022-08-12 18:22:50', '2022-08-12 18:22:50', NULL),
(188, NULL, 27, 1, 'TEA BOT W/LID 0.80L', NULL, 'RP0934', NULL, NULL, NULL, NULL, NULL, 'Serie RP0934', 64, NULL, '7', NULL, '2022-08-12 23:43:14', '2022-08-12 23:43:14', NULL),
(189, NULL, 27, 1, 'FLAT PLATE 28CM', NULL, 'RP0941', NULL, NULL, NULL, NULL, NULL, 'Serie RP0941', 381, NULL, '11.2', NULL, '2022-08-12 23:43:51', '2022-08-12 23:43:51', NULL),
(190, NULL, 27, 1, 'SUGAR PACK HOLDER 6X9X5,5', NULL, 'RP0944', NULL, NULL, NULL, NULL, NULL, 'Serie RP0944', 270, NULL, '20.72', NULL, '2022-08-12 23:44:16', '2022-08-12 23:44:16', NULL),
(191, NULL, 27, 1, 'OVAL PLATE 32CM', NULL, 'RP0949', NULL, NULL, NULL, NULL, NULL, 'Serie RP0949', 249, NULL, '11.5', NULL, '2022-08-12 23:44:39', '2022-08-12 23:44:39', NULL),
(192, NULL, 27, 1, 'OVAL PLATE 26CM', NULL, 'RP0950', NULL, NULL, NULL, NULL, NULL, 'Serie RP0950', 159, NULL, '7.13', NULL, '2022-08-12 23:45:06', '2022-08-12 23:45:06', NULL),
(193, NULL, 27, 1, 'FLAT PLATE 30CM', NULL, 'RP0954', NULL, NULL, NULL, NULL, NULL, 'Serie RP0954', 12, NULL, '13.5', NULL, '2022-08-12 23:45:29', '2022-08-12 23:45:29', NULL),
(194, NULL, 27, 1, 'BOWL 10CM', NULL, 'RP0983', NULL, NULL, NULL, NULL, NULL, 'Serie RP0983', 439, NULL, '13.13', NULL, '2022-08-12 23:45:54', '2022-08-12 23:45:54', NULL),
(195, NULL, 27, 1, 'RITZ PASTA BOWL 30.3CM', NULL, 'RP0988', NULL, NULL, NULL, NULL, NULL, 'Serie RP0988', 0, NULL, '14.5', NULL, '2022-08-12 23:46:21', '2022-08-12 23:46:21', NULL),
(196, NULL, 27, 1, 'CREAMER 0.10L', NULL, 'RP0992', NULL, NULL, NULL, NULL, NULL, 'Serie RP0992', 401, NULL, '8.35', NULL, '2022-08-12 23:46:47', '2022-08-12 23:46:47', NULL),
(197, NULL, 27, 1, 'PIZZA PLATE 31CM', NULL, 'RP0996', NULL, NULL, NULL, NULL, NULL, 'Serie RP0996', 0, NULL, '15.6', NULL, '2022-08-12 23:47:11', '2022-08-12 23:47:11', NULL),
(198, NULL, 27, 1, 'OVAL PLATTER 23,5X31,5CM', NULL, 'RP4002', NULL, NULL, NULL, NULL, NULL, 'Serie RP4002', 156, NULL, '11.8', NULL, '2022-08-12 23:47:37', '2022-08-12 23:47:37', NULL),
(199, NULL, 27, 1, 'OVAL PLATTER 26X36CM', NULL, 'RP4003', NULL, NULL, NULL, NULL, NULL, 'Serie RP4003', 72, NULL, '15.1', NULL, '2022-08-12 23:48:03', '2022-08-12 23:48:03', NULL),
(200, NULL, 27, 1, 'DEEP BOWL 23.5CM', NULL, 'RP4153', NULL, NULL, NULL, NULL, NULL, 'Serie RP4153', 277, NULL, '22.3', NULL, '2022-08-12 23:48:29', '2022-08-12 23:48:29', NULL),
(201, NULL, 27, 1, 'SQUARE SAUCE DISH 7X7CM', NULL, 'RP4174', NULL, NULL, NULL, NULL, NULL, 'Serie RP4174', 886, NULL, '24.54', NULL, '2022-08-12 23:49:07', '2022-08-12 23:49:07', NULL),
(202, NULL, 27, 1, 'SQUARE SAUCE DISH 6X6CM', NULL, 'RP4175', NULL, NULL, NULL, NULL, NULL, 'Serie RP4175', 740, NULL, '15.7', NULL, '2022-08-12 23:49:32', '2022-08-12 23:49:32', NULL),
(203, NULL, 27, 1, 'SALT SHAKER (898) 6CM', NULL, 'RP5012', NULL, NULL, NULL, NULL, NULL, 'Serie RP5012', 497, NULL, '16.22', NULL, '2022-08-12 23:49:53', '2022-08-12 23:49:53', NULL),
(204, NULL, 27, 1, 'PEPPER SHAKER (898) 6CM', NULL, 'RP5013', NULL, NULL, NULL, NULL, NULL, 'Serie RP5013', 503, NULL, '16.22', NULL, '2022-08-12 23:50:22', '2022-08-12 23:50:22', NULL),
(205, NULL, 27, 1, 'FLAT PLATE 26X30,5CM', NULL, 'RP5601', NULL, NULL, NULL, NULL, NULL, 'Serie RP5601', 661, NULL, '10.1', NULL, '2022-08-12 23:50:43', '2022-08-12 23:50:43', NULL),
(206, NULL, 27, 1, 'FLAT PLATE 19,5X23,5CM', NULL, 'RP5602', NULL, NULL, NULL, NULL, NULL, 'Serie RP5602', 521, NULL, '22.54', NULL, '2022-08-12 23:51:03', '2022-08-12 23:51:03', NULL),
(207, NULL, 21, 6, 'Aceite Delicia de Oro', NULL, 'A102066', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '20', NULL, '2022-08-15 17:51:15', '2022-08-15 17:56:37', NULL),
(208, NULL, 27, 1, 'FLAT PLATE 16X17CM', NULL, 'RP5603', NULL, NULL, NULL, NULL, NULL, 'Serie RP5603', 924, NULL, '18.1', NULL, '2022-08-16 00:22:31', '2022-08-16 00:22:31', NULL),
(209, NULL, 27, 1, 'SOUP PLATE 20,5X22CM', NULL, 'RP5604', NULL, NULL, NULL, NULL, NULL, 'Serie RP5604', 445, NULL, '23.2', NULL, '2022-08-16 00:23:03', '2022-08-16 00:23:03', NULL),
(210, NULL, 27, 1, 'PLAT PLATTER 30X35CM', NULL, 'RP5605', NULL, NULL, NULL, NULL, NULL, 'Serie RP5605', 57, NULL, '13.84', NULL, '2022-08-16 00:45:37', '2022-08-16 00:45:37', NULL),
(211, NULL, 27, 1, 'SNACK PLATE 15,5X25,5CM', NULL, 'RP5606', NULL, NULL, NULL, NULL, NULL, 'Serie RP5606', 46, NULL, '18.6', NULL, '2022-08-16 00:46:05', '2022-08-16 00:46:05', NULL),
(212, NULL, 27, 1, 'OVAL PLATE (L)23,5X41CM', NULL, 'RP5607', NULL, NULL, NULL, NULL, NULL, 'Serie RP5607', 23, NULL, '13.4', NULL, '2022-08-16 00:46:39', '2022-08-16 00:46:39', NULL),
(213, NULL, 27, 1, 'MUG 0.35L', NULL, 'RP5615', NULL, NULL, NULL, NULL, NULL, 'Serie RP5615', 381, NULL, '14.52', NULL, '2022-08-16 00:47:58', '2022-08-16 00:47:58', NULL),
(214, NULL, 27, 1, 'CREAMER 0.18L', NULL, 'RP5617', NULL, NULL, NULL, NULL, NULL, 'Serie RP5617', 186, NULL, '11', NULL, '2022-08-16 00:48:19', '2022-08-16 00:48:19', NULL),
(215, NULL, 27, 1, 'SUGAR BOWL W/LID 0.18L', NULL, 'RP5618', NULL, NULL, NULL, NULL, NULL, 'Serie RP5618', 197, NULL, '18.6', NULL, '2022-08-16 00:48:49', '2022-08-16 00:48:49', NULL),
(216, NULL, 27, 1, 'PASTA BOWL 26X26,5CM', NULL, 'RP5621', NULL, NULL, NULL, NULL, NULL, 'Serie RP5621', 236, NULL, '7.63', NULL, '2022-08-16 00:49:13', '2022-08-16 00:49:13', NULL),
(217, NULL, 27, 1, 'FRUIT BOWL 13X12.5', NULL, 'RP5626', NULL, NULL, NULL, NULL, NULL, 'Serie RP5626', 163, NULL, '15.2', NULL, '2022-08-16 00:49:39', '2022-08-16 00:49:39', NULL),
(218, NULL, 27, 1, 'RICE BOWL 11X11,5CM', NULL, 'RP5627', NULL, NULL, NULL, NULL, NULL, 'Serie RP5627', 108, NULL, '11.5', NULL, '2022-08-16 00:50:02', '2022-08-16 00:50:02', NULL),
(219, NULL, 27, 1, 'DIP DISH 9,5X9,5CM', NULL, 'RP5628', NULL, NULL, NULL, NULL, NULL, 'Serie RP5628', 473, NULL, '28', NULL, '2022-08-16 00:50:23', '2022-08-16 00:50:23', NULL),
(220, NULL, 27, 1, 'LONG TRAY 12X40,5CM', NULL, 'RP5630', NULL, NULL, NULL, NULL, NULL, 'Serie RP5630', 60, NULL, '7.2', NULL, '2022-08-16 00:50:44', '2022-08-16 00:50:44', NULL),
(221, NULL, 27, 1, 'SALT SHAKER 4CM', NULL, 'RP5631', NULL, NULL, NULL, NULL, NULL, 'Serie RP5631', 402, NULL, '10.54', NULL, '2022-08-16 00:51:11', '2022-08-16 00:51:11', NULL),
(222, NULL, 27, 1, 'PEPPER SHAKER 3,5CM', NULL, 'RP5632', NULL, NULL, NULL, NULL, NULL, 'Serie RP5632', 374, NULL, '11.2', NULL, '2022-08-16 00:51:34', '2022-08-16 00:51:34', NULL),
(223, NULL, 27, 1, 'COFFEE POT W/LID 0.9L', NULL, 'RP5634', NULL, NULL, NULL, NULL, NULL, 'Serie RP5634', 51, NULL, '5.42', NULL, '2022-08-16 00:51:55', '2022-08-16 00:51:55', NULL),
(224, NULL, 27, 1, 'SALAS BOWL (TALL) 22,5X24X13,2CM', NULL, 'RP5635', NULL, NULL, NULL, NULL, NULL, 'Serie RP5635', 10, NULL, '6.43', NULL, '2022-08-16 00:52:16', '2022-08-16 00:52:16', NULL),
(225, NULL, 27, 1, 'CEREAL BOWL 16CM', NULL, 'RP5637', NULL, NULL, NULL, NULL, NULL, 'Serie RP5637', 240, NULL, '12.9', NULL, '2022-08-16 00:52:38', '2022-08-16 00:52:38', NULL),
(226, NULL, 27, 1, 'HIDE DROP ULTRA SILVER', NULL, 'UHDDP18S', NULL, NULL, NULL, NULL, NULL, 'Serie UHDDP18S', 0, NULL, '4.8', NULL, '2022-08-16 00:53:05', '2022-08-16 00:53:05', NULL),
(227, NULL, 27, 1, '31 CM ROUND PLATE ULTRA PURE GOLD DESIGN', NULL, 'UGDRP31D5', NULL, NULL, NULL, NULL, NULL, 'Serie UGDRP31D5', 0, NULL, '4.8', NULL, '2022-08-16 00:55:04', '2022-08-16 00:55:04', NULL),
(228, NULL, 27, 1, '15 CM SAUCER ULTRA PURE GOLD DESIGN', NULL, 'UGDSA15D5', NULL, NULL, NULL, NULL, NULL, 'Serie UGDSA15D5', 0, NULL, '4.8', NULL, '2022-08-16 00:57:10', '2022-08-16 00:57:10', NULL),
(229, NULL, 27, 1, '23 CM DEEP PLATE ULTRA PURE GOLD DESIGN', NULL, 'UGDDP23D5', NULL, NULL, NULL, NULL, NULL, 'Serie UGDDP23D5', 0, NULL, '4.8', NULL, '2022-08-17 22:51:59', '2022-08-17 22:51:59', NULL),
(230, NULL, 27, 1, 'DEEP COUPE PLATE', NULL, 'ONDP28A', NULL, NULL, NULL, NULL, NULL, 'Serie ONDP28A', 221, NULL, '4.8', NULL, '2022-08-17 22:54:03', '2022-08-17 22:54:03', NULL),
(231, NULL, 27, 1, '09CL EXPRESSO CUP ULTRA PURE GOLD DESIGN', NULL, 'UGDCU09D5', NULL, NULL, NULL, NULL, NULL, 'Serie UGDCU09D5', 0, NULL, '4.8', NULL, '2022-08-17 22:54:50', '2022-08-17 22:54:50', NULL),
(232, NULL, 27, 1, '29 CM DEEP PLATE ULTRA KING & QUEEN DESIGN', NULL, 'UKQDP29', NULL, NULL, NULL, NULL, NULL, 'Serie UKQDP29', 0, NULL, '4.8', NULL, '2022-08-17 22:56:11', '2022-08-17 22:56:11', NULL),
(233, NULL, 27, 1, '33 CM SCALLOP PLATE ULTRA KING & QUEEN DESIGN', NULL, 'UKQSP33', NULL, NULL, NULL, NULL, NULL, 'Serie UKQSP33', 0, NULL, '4.8', NULL, '2022-08-17 22:56:54', '2022-08-17 22:56:54', NULL),
(234, NULL, 27, 1, '33CM SCALLOP PLATE ULTRA PURE GOLD DESIGN', NULL, 'UGDSP33D5', NULL, NULL, NULL, NULL, NULL, 'Serie UGDSP33D5', 0, NULL, '4.8', NULL, '2022-08-17 23:31:46', '2022-08-17 23:31:46', NULL),
(235, NULL, 27, 1, '29CM DEEP LATE ULTRA PURE GOLD DESIGN', NULL, 'UGDDP29D5', NULL, NULL, NULL, NULL, NULL, 'Serie UGDDP29D5', 0, NULL, '4.8', NULL, '2022-08-17 23:32:10', '2022-08-17 23:32:10', NULL),
(236, NULL, 27, 1, '25CL CREAMER ULTRA PURE GOLD DESIGN', NULL, 'UGDCR25D5', NULL, NULL, NULL, NULL, NULL, 'Serie UGDCR25D5', 0, NULL, '4.8', NULL, '2022-08-17 23:32:39', '2022-08-17 23:32:39', NULL),
(237, NULL, 27, 1, '25CL SUGAR BOWL W.LID ULTRA PURE GOLD', NULL, 'UGDSU25D5', NULL, NULL, NULL, NULL, NULL, 'Serie UGDSU25D5', 0, NULL, '4.8', NULL, '2022-08-17 23:33:00', '2022-08-17 23:33:00', NULL),
(238, NULL, 27, 1, '21CL TEA CUP ULTRA PURE GOLD DESIGN', NULL, 'UGDCU21D5', NULL, NULL, NULL, NULL, NULL, 'Serie UGDCU21D5', 0, NULL, '4.8', NULL, '2022-08-17 23:33:23', '2022-08-17 23:33:23', NULL),
(239, NULL, 27, 1, '33.5CM SQ PLATE ULTRA PURE GOLD DESIGN', NULL, 'UGDSP34D5', NULL, NULL, NULL, NULL, NULL, 'Serie UGDSP34D5', 0, NULL, '4.8', NULL, '2022-08-17 23:33:44', '2022-08-17 23:33:44', NULL),
(240, NULL, 27, 1, '26CM SQUARE PLATE ULTRA PURE GOLD DESIGN', NULL, 'UGDSP26D5', NULL, NULL, NULL, NULL, NULL, 'Serie UGDSP26D5', 0, NULL, '4.8', NULL, '2022-08-17 23:34:04', '2022-08-17 23:34:04', NULL),
(241, NULL, 27, 1, '12CM SAUCER ULTRA PURE GOLD DESIGN', NULL, 'UGDSA12D5', NULL, NULL, NULL, NULL, NULL, 'Serie UGDSA12D5', 0, NULL, '4.8', NULL, '2022-08-17 23:34:24', '2022-08-17 23:34:24', NULL),
(242, NULL, 27, 1, '150CL TEA POT W.LID ULTRA PURE GOLD DSN', NULL, 'UGDTP150D5', NULL, NULL, NULL, NULL, NULL, 'Serie UGDTP150D5', 0, NULL, '4.8', NULL, '2022-08-17 23:34:46', '2022-08-17 23:34:46', NULL),
(243, NULL, 27, 1, 'DROP', NULL, 'HDDP18', NULL, NULL, NULL, NULL, NULL, 'Serie HDDP18', 0, NULL, '4.8', NULL, '2022-08-17 23:35:09', '2022-08-17 23:35:09', NULL),
(244, NULL, 27, 1, 'ASHORE ROUND PLATE WITH HOLLOW CENTRAL SECTION 29CM', NULL, 'ARRP29', NULL, NULL, NULL, NULL, NULL, 'Serie ARRP29', 0, NULL, '4.8', NULL, '2022-08-17 23:35:33', '2022-08-17 23:35:33', NULL),
(245, NULL, 27, 1, 'DEEP ROUND PLATTED 29CM', NULL, 'AMDP29', NULL, NULL, NULL, NULL, NULL, 'Serie AMDP29', 0, NULL, '4.8', NULL, '2022-08-17 23:38:40', '2022-08-17 23:38:40', NULL),
(246, NULL, 27, 1, 'APPEAL CARVED BOWEL 20CM', NULL, 'APCB20', NULL, NULL, NULL, NULL, NULL, 'Serie APCB20', 0, NULL, '4.8', NULL, '2022-08-17 23:39:02', '2022-08-17 23:39:02', NULL),
(247, NULL, 27, 1, 'SKETCHES FINGER MARKED BIG', NULL, 'STEP28A', NULL, NULL, NULL, NULL, NULL, 'Serie STEP28A', 0, NULL, '4.8', NULL, '2022-08-17 23:39:23', '2022-08-17 23:39:23', NULL),
(248, NULL, 27, 1, 'SKETCHES FINGER MARKED DEEPER', NULL, 'STEDP 20', NULL, NULL, NULL, NULL, NULL, 'Serie STEDP 20', 0, NULL, '4.8', NULL, '2022-08-17 23:39:43', '2022-08-17 23:39:43', NULL),
(249, NULL, 27, 1, 'APPEAL ROUND FLAT PLATE 30CM', NULL, 'APRFP30', NULL, NULL, NULL, NULL, NULL, 'Serie APRFP30', 0, NULL, '4.8', NULL, '2022-08-17 23:40:03', '2022-08-17 23:40:03', NULL),
(250, NULL, 27, 1, '32CM DROP PLATE', NULL, 'HDDP32', NULL, NULL, NULL, NULL, NULL, 'Serie HDDP32', 0, NULL, '4.8', NULL, '2022-08-17 23:40:20', '2022-08-17 23:40:20', NULL),
(251, NULL, 27, 1, 'A ROUGH PLATE DEEP WHITE MAT OUT & IV IN', NULL, 'STCD20OC18', NULL, NULL, NULL, NULL, NULL, 'Serie STCD20OC18', 0, NULL, '4.8', NULL, '2022-08-17 23:40:49', '2022-08-17 23:40:49', NULL),
(252, NULL, 27, 1, 'CHILL ROUND DEEP PLATE 29CM', NULL, 'CHDP29', NULL, NULL, NULL, NULL, NULL, 'Serie CHDP29', 0, NULL, '4.8', NULL, '2022-08-17 23:41:53', '2022-08-17 23:41:53', NULL),
(253, NULL, 27, 1, 'CARVED FLAT PLATE WHITE MATT OUTSIDE & IVERY INSIDE', NULL, 'STCP24OC18', NULL, NULL, NULL, NULL, NULL, 'Serie STCP24OC18', 0, NULL, '4.8', NULL, '2022-08-17 23:42:24', '2022-08-17 23:42:24', NULL),
(254, NULL, 27, 1, 'FLAT ROUND TRAY 26CM', NULL, 'AMFLT26', NULL, NULL, NULL, NULL, NULL, 'Serie AMFLT26', 0, NULL, '4.8', NULL, '2022-08-18 00:30:43', '2022-08-18 00:30:43', NULL),
(255, NULL, 27, 1, '15CM PIVOTING BOWL WHITE MATT OUTSIDE AND IVORY INSIDE', NULL, 'STPB15OC18', NULL, NULL, NULL, NULL, NULL, 'Serie STPB15OC18', 0, NULL, '5.4', NULL, '2022-08-18 00:31:22', '2022-08-18 00:31:22', NULL),
(256, NULL, 27, 1, 'SMALL UN EVEN ITEM WHITE MATT', NULL, 'STCD11WHM', NULL, NULL, NULL, NULL, NULL, 'Serie STCD11WHM', 0, NULL, '5.4', NULL, '2022-08-18 00:31:46', '2022-08-18 00:31:46', NULL),
(257, NULL, 27, 1, '20CM EMBOSSED FLAT PLATE', NULL, 'STEP20', NULL, NULL, NULL, NULL, NULL, 'Serie STEP20', 0, NULL, '5.4', NULL, '2022-08-18 00:32:21', '2022-08-18 00:32:21', NULL),
(258, NULL, 27, 1, '25CM EMBOSSED FLAT PLATE', NULL, 'STEP25', NULL, NULL, NULL, NULL, NULL, 'Serie STEP25', 0, NULL, '5.4', NULL, '2022-08-18 00:32:50', '2022-08-18 00:32:50', NULL),
(259, NULL, 27, 1, '20CM PIVOTING BOWL WHITE MATT OUTSIDE AND IVORY INSIDE', NULL, 'STPB20OC18', NULL, NULL, NULL, NULL, NULL, 'Serie STPB20OC18', 0, NULL, '5.4', NULL, '2022-08-18 00:33:18', '2022-08-18 00:33:18', NULL),
(260, NULL, 27, 1, 'CHILL ROUND STAND 13CM', NULL, 'CHRS13', NULL, NULL, NULL, NULL, NULL, 'Serie CHRS13', 0, NULL, '5.4', NULL, '2022-08-18 00:33:40', '2022-08-18 00:33:40', NULL);
INSERT INTO `productos_x_empresa` (`prod_id`, `categoria_id`, `empr_id`, `unidad_id`, `prod_nombre`, `prod_codigo`, `prod_sku`, `prod_ean`, `prod_cantidad`, `prod_precio`, `prod_serie`, `prod_lote`, `prod_comentario`, `prod_stock`, `prod_fecha_vencimiento`, `prod_peso`, `prod_estado`, `created_at`, `updated_at`, `deleted_at`) VALUES
(261, NULL, 27, 1, 'HK770/25', NULL, 'HK770/25', NULL, NULL, NULL, NULL, NULL, 'Serie HK770/25', 33, NULL, '7.4', NULL, '2022-08-18 00:34:06', '2022-08-18 00:34:06', NULL),
(262, NULL, 27, 1, 'HK770A/25', NULL, 'HK770A/25', NULL, NULL, NULL, NULL, NULL, 'Serie HK770A/25', 44, NULL, '8.7', NULL, '2022-08-18 00:34:30', '2022-08-18 00:34:30', NULL),
(263, NULL, 27, 1, 'HK770A/20', NULL, 'HK770A/20', NULL, NULL, NULL, NULL, NULL, 'Serie HK770A/20', 471, NULL, '11', NULL, '2022-08-18 00:34:50', '2022-08-18 00:34:50', NULL),
(264, NULL, 27, 1, 'HKF305', NULL, 'HKF305', NULL, NULL, NULL, NULL, NULL, 'Serie HKF305', 158, NULL, '10.5', NULL, '2022-08-18 00:35:41', '2022-08-18 00:35:41', NULL),
(265, NULL, 27, 1, 'HKW35', NULL, 'HKW35', NULL, NULL, NULL, NULL, NULL, 'Serie HKW35', 208, NULL, '9.2', NULL, '2022-08-18 00:35:59', '2022-08-18 00:35:59', NULL),
(266, NULL, 27, 1, 'HKB20', NULL, 'HKB20', NULL, NULL, NULL, NULL, NULL, 'Serie HKB20', 430, NULL, '7.3', NULL, '2022-08-18 00:36:21', '2022-08-18 00:36:21', NULL),
(267, NULL, 27, 1, 'HKST18', NULL, 'HKST18', NULL, NULL, NULL, NULL, NULL, 'Serie HKST18', 290, NULL, '6', NULL, '2022-08-18 00:36:45', '2022-08-18 00:36:45', NULL),
(268, NULL, 27, 1, 'HK201W', NULL, 'HK201W', NULL, NULL, NULL, NULL, NULL, 'Serie HK201W', 179, NULL, '9.5', NULL, '2022-08-18 00:37:07', '2022-08-18 00:37:07', NULL),
(269, NULL, 27, 1, 'HKT997', NULL, 'HKT997', NULL, NULL, NULL, NULL, NULL, 'Serie HKT997', 222, NULL, '8.2', NULL, '2022-08-18 00:37:28', '2022-08-18 00:37:28', NULL),
(270, NULL, 27, 1, 'HKST924', NULL, 'HKST924', NULL, NULL, NULL, NULL, NULL, 'Serie HKST924', 31, NULL, '6', NULL, '2022-08-18 00:37:45', '2022-08-18 00:37:45', NULL),
(271, NULL, 27, 1, 'TABLE SPOON MADISON', NULL, '011 CM', NULL, NULL, NULL, NULL, NULL, 'Serie 011 CM', 0, NULL, '22', NULL, '2022-08-18 00:38:12', '2023-01-03 15:29:12', '2023-01-03 15:29:12'),
(272, NULL, 27, 1, 'TABLE FORK MADISON', NULL, '011 TM', NULL, NULL, NULL, NULL, NULL, 'Serie 011 TM', 0, NULL, '17', NULL, '2022-08-18 00:38:32', '2023-01-03 15:31:36', '2023-01-03 15:31:36'),
(273, NULL, 27, 1, 'SOLID TABLE KNIFE MADISON', NULL, '011 CHM/M', NULL, NULL, NULL, NULL, NULL, 'Serie 011 CHM/M', 0, NULL, '28', NULL, '2022-08-18 00:38:52', '2023-01-03 15:41:16', '2023-01-03 15:41:16'),
(274, NULL, 27, 1, 'DESSERT SPOON MADISON', NULL, '011 CP', NULL, NULL, NULL, NULL, NULL, 'Serie 011 CP', 0, NULL, '17.6', NULL, '2022-08-18 00:39:16', '2023-01-03 15:32:16', '2023-01-03 15:32:16'),
(275, NULL, 27, 1, 'TEA SPOON MADISON', NULL, '011 CT', NULL, NULL, NULL, NULL, NULL, 'Serie 011 CT', 0, NULL, '19', NULL, '2022-08-18 00:39:41', '2023-01-03 15:37:42', '2023-01-03 15:37:42'),
(276, NULL, 27, 1, 'COFFEE SPOON MADISON', NULL, '011 CC', NULL, NULL, NULL, NULL, NULL, 'Serie 011 CC', 0, NULL, '14.1', NULL, '2022-08-18 00:40:04', '2023-01-03 15:39:47', '2023-01-03 15:39:47'),
(277, NULL, 27, 1, 'SOLID STEAK KNIFE MADISON', NULL, '011 CHA/M', NULL, NULL, NULL, NULL, NULL, 'Serie 011 CHA/M', 0, NULL, '28', NULL, '2022-08-18 00:40:33', '2023-01-03 15:43:10', '2023-01-03 15:43:10'),
(278, NULL, 27, 1, 'BUTTER SPREADER MADISON', NULL, '011 CHB', NULL, NULL, NULL, NULL, NULL, 'Serie 011 CHB', 0, NULL, '26', NULL, '2022-08-18 00:40:55', '2023-01-03 15:43:40', '2023-01-03 15:43:40'),
(279, NULL, 27, 8, 'MADISON TABLE FORK', NULL, '011TM', NULL, NULL, NULL, NULL, NULL, NULL, 1804, NULL, '0', NULL, '2022-12-19 17:27:47', '2022-12-19 17:27:47', NULL),
(280, NULL, 27, 8, 'MADISON TABLE KNIFE (CUCHILLO DE MESA)', NULL, '011CHM/M', NULL, NULL, NULL, NULL, NULL, NULL, 2042, NULL, '0', NULL, '2022-12-19 17:28:34', '2022-12-19 17:28:34', NULL),
(281, NULL, 27, 8, 'MADISON STEAK KNIFE (CUCHILLO DE CARNE)', NULL, '011CHA/M', NULL, NULL, NULL, NULL, NULL, NULL, 1089, NULL, '0', NULL, '2022-12-19 17:28:59', '2022-12-19 17:28:59', NULL),
(282, NULL, 27, 8, 'HKFR520', NULL, 'HKFR520', NULL, NULL, NULL, NULL, NULL, NULL, 84, NULL, '0', NULL, '2022-12-19 17:29:39', '2022-12-19 17:29:39', NULL),
(283, NULL, 27, 8, 'ALASKA SODA CUP 12 1/2oz', NULL, 'P00415', NULL, NULL, NULL, NULL, NULL, NULL, 222, NULL, '0', NULL, '2022-12-19 17:30:08', '2022-12-19 17:30:08', NULL),
(284, NULL, 27, 8, 'METROPOLITAN 210 MASTER', NULL, 'B21307', NULL, NULL, NULL, NULL, NULL, NULL, 917, NULL, '0', NULL, '2022-12-19 17:31:02', '2022-12-19 17:31:02', NULL),
(285, NULL, 27, 8, 'MADISON SHERRY 115 MASTER', NULL, '015P04', NULL, NULL, NULL, NULL, NULL, NULL, 35, NULL, '0', NULL, '2022-12-19 17:31:29', '2022-12-19 17:31:29', NULL),
(286, NULL, 27, 8, 'PILSNER 400 MASTER', NULL, 'B00914', NULL, NULL, NULL, NULL, NULL, NULL, 273, NULL, '0', NULL, '2022-12-19 17:32:08', '2022-12-19 17:32:08', NULL),
(287, NULL, 27, 8, 'MADISON WHITE WINE 350 MASTER', NULL, '015W12', NULL, NULL, NULL, NULL, NULL, NULL, 84, NULL, '0', NULL, '2022-12-19 17:32:31', '2022-12-19 17:32:31', NULL),
(288, NULL, 27, 8, 'BISTRO CARAFE 610 MASTER', NULL, 'V13621', NULL, NULL, NULL, NULL, NULL, NULL, 24, NULL, '0', NULL, '2022-12-19 17:33:35', '2022-12-19 17:33:35', NULL),
(289, NULL, 27, 8, 'METROPOLITAN 400 MASTER', NULL, 'B21314', NULL, NULL, NULL, NULL, NULL, NULL, 84, NULL, '0', NULL, '2022-12-19 17:33:58', '2022-12-19 17:33:58', NULL),
(290, NULL, 27, 8, 'NEW YORK JUICE 205 MASTER', NULL, 'B07807', NULL, NULL, NULL, NULL, NULL, NULL, 309, NULL, '0', NULL, '2022-12-19 17:34:18', '2022-12-19 17:34:18', NULL),
(291, NULL, 27, 8, 'TANGO LONG DRINK 425 MASTER', NULL, 'B13315', NULL, NULL, NULL, NULL, NULL, NULL, 671, NULL, '0', NULL, '2022-12-19 17:35:05', '2022-12-19 17:35:05', NULL),
(292, NULL, 27, 8, 'SOLO SHOT 60 MASTER', NULL, 'P00110', NULL, NULL, NULL, NULL, NULL, NULL, 1181, NULL, '0', NULL, '2022-12-19 17:35:24', '2022-12-19 17:35:24', NULL),
(293, NULL, 27, 8, 'PLAZA HI BALL 320 MASTER', NULL, 'B11011', NULL, NULL, NULL, NULL, NULL, NULL, 231, NULL, '0', NULL, '2022-12-19 17:35:56', '2022-12-19 17:35:56', NULL),
(294, NULL, 27, 8, 'BISTRO CARAFE 290 MASTER', NULL, 'V13610', NULL, NULL, NULL, NULL, NULL, NULL, 204, NULL, '0', NULL, '2022-12-19 17:55:03', '2022-12-19 17:55:03', NULL),
(295, NULL, 27, 8, 'CONNEXION COCKTAIL 215 MASTER', NULL, '527C07', NULL, NULL, NULL, NULL, NULL, NULL, 478, NULL, '0', NULL, '2022-12-19 17:55:27', '2022-12-19 17:55:27', NULL),
(296, NULL, 27, 8, 'PLAZA ROCK 195 MASTER', NULL, 'B11007', NULL, NULL, NULL, NULL, NULL, NULL, 972, NULL, '0', NULL, '2022-12-19 17:55:48', '2022-12-19 17:55:48', NULL),
(297, NULL, 27, 8, 'PLAZA ROCK 295 MASTER', NULL, 'B11010', NULL, NULL, NULL, NULL, NULL, NULL, 87, NULL, '0', NULL, '2022-12-19 17:56:24', '2022-12-19 17:56:24', NULL),
(298, NULL, 27, 8, 'SYRAH 58', NULL, 'SYRAH 58', NULL, NULL, NULL, NULL, NULL, NULL, 99, NULL, '0', NULL, '2022-12-19 17:56:46', '2022-12-19 17:57:52', NULL),
(299, NULL, 27, 8, 'SYRAH 17', NULL, 'SYRAH 17', NULL, NULL, NULL, NULL, NULL, NULL, 1611, NULL, '0', NULL, '2022-12-19 17:58:10', '2022-12-19 17:58:10', NULL),
(300, NULL, 27, 8, 'BELFESTA CHAMPAGNE PURE', NULL, 'SCH112418', NULL, NULL, NULL, NULL, NULL, NULL, 20, NULL, '0', NULL, '2022-12-19 17:58:40', '2022-12-19 17:58:40', NULL),
(301, NULL, 27, 8, 'SYRAH 35', NULL, 'SYRAH 35', NULL, NULL, NULL, NULL, NULL, NULL, 744, NULL, '0', NULL, '2022-12-19 17:58:56', '2022-12-19 17:58:56', NULL),
(302, NULL, 27, 8, 'IRIS ROCK 320', NULL, 'C13011', NULL, NULL, NULL, NULL, NULL, NULL, 54, NULL, '0', NULL, '2022-12-19 17:59:27', '2022-12-19 17:59:27', NULL),
(303, NULL, 27, 8, 'CLASSIC MARGARITA 200', NULL, '501M07', NULL, NULL, NULL, NULL, NULL, NULL, 786, NULL, '0', NULL, '2022-12-19 17:59:55', '2022-12-19 17:59:55', NULL),
(304, NULL, 27, 8, 'MADISON COCKTAIL 285', NULL, '015C10', NULL, NULL, NULL, NULL, NULL, NULL, 200, NULL, '0', NULL, '2022-12-19 18:00:36', '2022-12-19 18:00:36', NULL),
(305, NULL, 27, 8, 'CONVENTION 370', NULL, '175 495', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '0', NULL, '2022-12-19 18:01:09', '2022-12-19 18:01:09', NULL),
(306, NULL, 27, 8, 'IVENTO 633', NULL, 'SCH115588', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '0', NULL, '2022-12-19 18:01:29', '2022-12-19 18:01:29', NULL),
(307, NULL, 27, 8, 'IVENTO 506', NULL, '115 587', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '0', NULL, '2022-12-19 18:02:01', '2022-12-19 18:02:01', NULL),
(308, NULL, 27, 8, 'TASTE 656', NULL, 'SCH115672', NULL, NULL, NULL, NULL, NULL, NULL, 300, NULL, '0', NULL, '2022-12-19 19:26:36', '2022-12-19 19:26:36', NULL),
(309, NULL, 27, 8, 'TASTE 497', NULL, 'SCH115671', NULL, NULL, NULL, NULL, NULL, NULL, 66, NULL, '0', NULL, '2022-12-19 19:27:31', '2022-12-19 19:27:31', NULL),
(310, NULL, 27, 8, 'VASO VIÑA 548', NULL, '8465/79', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '0', NULL, '2022-12-19 19:27:58', '2022-12-19 19:27:58', NULL),
(311, NULL, 27, 8, 'IVENTO CHAMPAGNE 228', NULL, '8740/7', NULL, NULL, NULL, NULL, NULL, NULL, 342, NULL, '0', NULL, '2022-12-19 19:28:30', '2022-12-19 19:28:30', NULL),
(312, NULL, 27, 8, 'SYRAH 47', NULL, 'SYRAH 47', NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, '0', NULL, '2022-12-19 19:28:47', '2022-12-19 19:28:47', NULL),
(313, NULL, 27, 8, 'TASTE 356', NULL, 'SCH115670', NULL, NULL, NULL, NULL, NULL, NULL, 600, NULL, '0', NULL, '2022-12-19 19:29:36', '2022-12-19 19:29:36', NULL),
(314, NULL, 27, 8, 'RP5612', NULL, 'RP5612', NULL, NULL, NULL, NULL, NULL, NULL, 792, NULL, '0', NULL, '2022-12-19 19:30:08', '2022-12-19 19:30:08', NULL),
(315, NULL, 27, 8, 'RP5614', NULL, 'RP5614', NULL, NULL, NULL, NULL, NULL, NULL, 365, NULL, '0', NULL, '2022-12-19 19:30:25', '2022-12-19 19:30:25', NULL),
(316, NULL, 27, 8, 'RP0209', NULL, 'RP0209', NULL, NULL, NULL, NULL, NULL, NULL, 1331, NULL, '0', NULL, '2022-12-19 19:31:07', '2022-12-19 19:31:07', NULL),
(317, NULL, 27, 8, 'RP5610', NULL, 'RP5610', NULL, NULL, NULL, NULL, NULL, NULL, 790, NULL, '0', NULL, '2022-12-19 19:31:35', '2022-12-19 19:31:35', NULL),
(318, NULL, 27, 8, 'RP0920', NULL, 'RP0920', NULL, NULL, NULL, NULL, NULL, NULL, 954, NULL, '0', NULL, '2022-12-19 19:32:18', '2022-12-19 19:32:18', NULL),
(319, NULL, 27, 8, 'RP0264', NULL, 'RP0264', NULL, NULL, NULL, NULL, NULL, NULL, 1440, NULL, '0', NULL, '2022-12-19 19:32:39', '2022-12-19 19:32:39', NULL),
(320, NULL, 27, 8, 'RP0925', NULL, 'RP0925', NULL, NULL, NULL, NULL, NULL, NULL, 702, NULL, '0', NULL, '2022-12-19 19:34:43', '2022-12-19 19:34:43', NULL),
(321, NULL, 27, 8, 'RP7510', NULL, 'RP7510', NULL, NULL, NULL, NULL, NULL, NULL, 430, NULL, '0', NULL, '2022-12-19 19:35:42', '2022-12-19 19:35:42', NULL),
(322, NULL, 27, 8, 'RP0984', NULL, 'RP0984', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '0', NULL, '2022-12-19 19:36:45', '2022-12-19 19:36:45', NULL),
(323, NULL, 27, 8, 'RP4101', NULL, 'RP4101', NULL, NULL, NULL, NULL, NULL, NULL, 969, NULL, '0', NULL, '2022-12-19 19:37:38', '2022-12-19 19:37:38', NULL),
(324, NULL, 27, 8, 'RP4135', NULL, 'RP4135', NULL, NULL, NULL, NULL, NULL, NULL, 146, NULL, '0', NULL, '2022-12-19 19:37:55', '2022-12-19 19:37:55', NULL),
(325, NULL, 27, 8, 'RP5608', NULL, 'RP5608', NULL, NULL, NULL, NULL, NULL, NULL, 192, NULL, '0', NULL, '2022-12-19 19:38:15', '2022-12-19 19:38:15', NULL),
(326, NULL, 27, 8, 'RP4121', NULL, 'RP4121', NULL, NULL, NULL, NULL, NULL, NULL, 99, NULL, '0', NULL, '2022-12-19 19:38:35', '2022-12-19 19:38:35', NULL),
(327, NULL, 27, 8, 'RP4103', NULL, 'RP4103', NULL, NULL, NULL, NULL, NULL, NULL, 791, NULL, '0', NULL, '2022-12-19 19:38:50', '2022-12-19 19:38:50', NULL),
(328, NULL, 27, 8, 'RP4126', NULL, 'RP4126', NULL, NULL, NULL, NULL, NULL, NULL, 160, NULL, '0', NULL, '2022-12-19 19:39:17', '2022-12-19 19:39:17', NULL),
(329, NULL, 27, 8, 'RP4044', NULL, 'RP4044', NULL, NULL, NULL, NULL, NULL, NULL, 508, NULL, '0', NULL, '2022-12-19 19:39:50', '2022-12-19 19:39:50', NULL),
(330, NULL, 27, 8, 'RP5613', NULL, 'RP5613', NULL, NULL, NULL, NULL, NULL, NULL, 397, NULL, '0', NULL, '2022-12-19 19:40:08', '2022-12-19 19:40:08', NULL),
(331, NULL, 27, 8, 'RP5505', NULL, 'RP5505', NULL, NULL, NULL, NULL, NULL, NULL, 112, NULL, '0', NULL, '2022-12-19 19:41:21', '2022-12-19 19:41:21', NULL),
(332, NULL, 27, 8, 'NON STACKABLE CUP 9CL', NULL, 'BANC09', NULL, NULL, NULL, NULL, NULL, NULL, 341, NULL, '0', NULL, '2022-12-19 19:42:19', '2022-12-19 19:42:19', NULL),
(333, NULL, 27, 8, 'COCOA 08CL CUP', NULL, 'GN116CU08CO', NULL, NULL, NULL, NULL, NULL, NULL, 142, NULL, '0', NULL, '2022-12-19 19:42:49', '2022-12-19 19:42:49', NULL),
(334, NULL, 27, 8, 'BEACH FLAT COUPE PLATE 15CM', NULL, 'TWNNPR15BE', NULL, NULL, NULL, NULL, NULL, NULL, 249, NULL, '0', NULL, '2022-12-19 19:43:13', '2022-12-19 19:43:13', NULL),
(335, NULL, 27, 8, 'FLORA MUF 30CL', NULL, 'NFBAFMG30DR', NULL, NULL, NULL, NULL, NULL, NULL, 15, NULL, '0', NULL, '2022-12-19 19:43:48', '2022-12-19 19:43:48', NULL),
(336, NULL, 27, 8, 'ALMOND COUPE BOWL', NULL, 'GNBUBC26AL', NULL, NULL, NULL, NULL, NULL, NULL, 151, NULL, '0', NULL, '2022-12-19 19:44:06', '2022-12-19 19:44:06', NULL),
(337, NULL, 27, 8, 'BOWL STACKABLE', NULL, 'BASB12', NULL, NULL, NULL, NULL, NULL, NULL, 188, NULL, '0', NULL, '2022-12-19 19:44:38', '2022-12-19 19:44:38', NULL),
(338, NULL, 27, 8, 'BOWL STACKABLE', NULL, 'BASB12', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '0', NULL, '2022-12-19 19:44:57', '2023-01-02 22:43:02', '2023-01-02 22:43:02'),
(339, NULL, 27, 8, 'OVAL PLATE RIMLESS 36CM', NULL, 'NFNNOP36DR', NULL, NULL, NULL, NULL, NULL, NULL, 61, NULL, '0', NULL, '2022-12-19 19:45:32', '2022-12-19 19:45:32', NULL),
(340, NULL, 27, 8, 'MUG 30CL', NULL, 'NFBAFMG30GY', NULL, NULL, NULL, NULL, NULL, NULL, 53, NULL, '0', NULL, '2022-12-19 19:46:01', '2022-12-19 19:46:01', NULL),
(341, NULL, 27, 8, 'BEACH RICE BOWL 16CM', NULL, 'TWNNRB16BE', NULL, NULL, NULL, NULL, NULL, NULL, 246, NULL, '0', NULL, '2022-12-19 19:46:22', '2022-12-19 19:46:22', NULL),
(342, NULL, 27, 8, '15CM NOODLE BOWL BROWN', NULL, 'NFOPNB15BW', NULL, NULL, NULL, NULL, NULL, NULL, 88, NULL, '0', NULL, '2022-12-19 22:23:11', '2022-12-19 22:23:11', NULL),
(343, NULL, 27, 8, 'CRUST FLAT COUPE PLATE 27CM', NULL, 'GNNNPR27CR', NULL, NULL, NULL, NULL, NULL, NULL, 266, NULL, '0', NULL, '2022-12-19 22:23:40', '2022-12-19 22:23:40', NULL),
(344, NULL, 27, 8, 'ALMOND FLATE COUPE PLATE 27CM', NULL, 'GNNNPR27AL', NULL, NULL, NULL, NULL, NULL, NULL, 142, NULL, '0', NULL, '2022-12-19 22:24:17', '2022-12-19 22:24:17', NULL),
(345, NULL, 27, 8, 'DARK RED DOUBLE RAMEKIN WITH SPOON', NULL, 'CFDR02DR', NULL, NULL, NULL, NULL, NULL, NULL, 48, NULL, '0', NULL, '2022-12-19 22:24:41', '2022-12-19 22:24:41', NULL),
(346, NULL, 27, 8, 'DARK RED ROUNDED SOUP TUREEN LID D-10.6CM', NULL, 'CFST10DR', NULL, NULL, NULL, NULL, NULL, NULL, 28, NULL, '0', NULL, '2022-12-19 22:25:14', '2022-12-19 22:25:14', NULL),
(347, NULL, 27, 8, '21CM RIMLESS PLATE', NULL, 'ONPR21', NULL, NULL, NULL, NULL, NULL, NULL, 476, NULL, '0', NULL, '2022-12-19 22:25:35', '2022-12-19 22:25:35', NULL),
(348, NULL, 27, 8, 'FLAT PLATE 15CM', NULL, 'BAFP15', NULL, NULL, NULL, NULL, NULL, NULL, 22, NULL, '0', NULL, '2022-12-19 22:26:35', '2022-12-19 22:26:35', NULL),
(349, NULL, 27, 8, 'CORAL RICE BOWL 16CM', NULL, 'TWNNRB16CO', NULL, NULL, NULL, NULL, NULL, NULL, 314, NULL, '0', NULL, '2022-12-19 22:26:51', '2022-12-19 22:26:51', NULL),
(350, NULL, 27, 8, '27CM RIMLESS PLATE', NULL, 'NFNNPR27BW', NULL, NULL, NULL, NULL, NULL, NULL, 324, NULL, '0', NULL, '2022-12-19 22:27:17', '2022-12-19 22:27:17', NULL),
(351, NULL, 27, 8, 'FLAT PLATE 21CM', NULL, 'BAFP21', NULL, NULL, NULL, NULL, NULL, NULL, 364, NULL, '0', NULL, '2022-12-19 22:33:48', '2022-12-19 22:33:48', NULL),
(352, NULL, 27, 8, 'SAUCER 15CM', NULL, 'BASA15', NULL, NULL, NULL, NULL, NULL, NULL, 36, NULL, '0', NULL, '2022-12-20 15:50:45', '2022-12-20 15:50:45', NULL),
(353, NULL, 27, 8, 'SAUCER 13CM', NULL, 'BASA13', NULL, NULL, NULL, NULL, NULL, NULL, 346, NULL, '0', NULL, '2022-12-20 15:51:06', '2022-12-20 15:51:06', NULL),
(354, NULL, 27, 8, 'COCOA 13CM SAUCER FOR EXPRESSO CUP', NULL, 'GNCLSA13CO', NULL, NULL, NULL, NULL, NULL, NULL, 148, NULL, '0', NULL, '2022-12-20 15:51:31', '2022-12-20 15:51:31', NULL),
(355, NULL, 27, 8, 'BOWL STACKABLE 16CM', NULL, 'BASB16', NULL, NULL, NULL, NULL, NULL, NULL, 150, NULL, '0', NULL, '2022-12-20 15:52:17', '2022-12-20 15:52:17', NULL),
(356, NULL, 27, 8, 'EARED ROUND DISH 16CM DARK RED', NULL, 'NFOPRD16DR', NULL, NULL, NULL, NULL, NULL, NULL, 46, NULL, '0', NULL, '2022-12-20 15:52:36', '2022-12-20 15:52:36', NULL),
(357, NULL, 27, 8, '31CM RIMLESS PLATE', NULL, 'NFNNPR31BK', NULL, NULL, NULL, NULL, NULL, NULL, 83, NULL, '0', NULL, '2022-12-20 15:53:09', '2022-12-20 15:53:09', NULL),
(358, NULL, 27, 8, 'ALMOND FLATE COUPE PLATE 31CM', NULL, 'GNNNPR31AL', NULL, NULL, NULL, NULL, NULL, NULL, 379, NULL, '0', NULL, '2022-12-20 15:53:48', '2022-12-20 15:53:48', NULL),
(359, NULL, 27, 8, 'RP4107', NULL, 'RP4107', NULL, NULL, NULL, NULL, NULL, NULL, 48, NULL, '0', NULL, '2022-12-20 15:54:07', '2022-12-20 15:54:07', NULL),
(360, NULL, 27, 8, 'LAGOON RICE BOWL 16CM', NULL, 'TWNNRB16LA', NULL, NULL, NULL, NULL, NULL, NULL, 186, NULL, '0', NULL, '2022-12-20 15:58:06', '2022-12-20 15:58:06', NULL),
(361, NULL, 27, 8, '31CM RIMLESS PLATE DARK RED', NULL, 'NFNNPR31DR', NULL, NULL, NULL, NULL, NULL, NULL, 138, NULL, '0', NULL, '2022-12-20 15:58:24', '2022-12-20 15:58:24', NULL),
(362, NULL, 27, 8, 'ALMOND SALAD BOWL 20CM', NULL, 'GNNNBW20AL', NULL, NULL, NULL, NULL, NULL, NULL, 95, NULL, '0', NULL, '2022-12-20 15:58:40', '2022-12-20 15:58:40', NULL),
(363, NULL, 27, 8, 'CRUST COUPE BOWL', NULL, 'GNBUBC26CR', NULL, NULL, NULL, NULL, NULL, NULL, 200, NULL, '0', NULL, '2022-12-20 15:58:58', '2022-12-20 15:58:58', NULL),
(364, NULL, 27, 8, '24CM SQUARE PLATE', NULL, 'IPAUSP24', NULL, NULL, NULL, NULL, NULL, NULL, 85, NULL, '0', NULL, '2022-12-20 15:59:18', '2022-12-20 15:59:18', NULL),
(365, NULL, 27, 8, '28CM RIMLLESS PLATE', NULL, 'GNNNPR28CO', NULL, NULL, NULL, NULL, NULL, NULL, 12, NULL, '0', NULL, '2022-12-20 15:59:35', '2022-12-20 15:59:35', NULL),
(366, NULL, 27, 8, 'CRUST 36CM OVAL PLATE', NULL, 'GNNNOP36CR', NULL, NULL, NULL, NULL, NULL, NULL, 121, NULL, '0', NULL, '2022-12-20 15:59:55', '2022-12-20 15:59:55', NULL),
(367, NULL, 27, 8, 'CRUST ROUNDED SOUP TUREEN LID D-10.6CM', NULL, 'GNCFST10CR', NULL, NULL, NULL, NULL, NULL, NULL, 66, NULL, '0', NULL, '2022-12-20 16:00:12', '2022-12-20 16:00:12', NULL),
(368, NULL, 27, 8, 'CRUST FLAT COUPE PLATE 31CM', NULL, 'GNNNPR31CR', NULL, NULL, NULL, NULL, NULL, NULL, 251, NULL, '0', NULL, '2022-12-20 16:00:30', '2022-12-20 16:00:30', NULL),
(369, NULL, 27, 8, 'CRUST FLAT COUPE PLATE 21CM', NULL, 'GNNNPR21CR', NULL, NULL, NULL, NULL, NULL, NULL, 191, NULL, '0', NULL, '2022-12-20 16:00:49', '2022-12-20 16:00:49', NULL),
(370, NULL, 27, 8, '30CM SQUARE PLATE', NULL, 'IPAUSP30', NULL, NULL, NULL, NULL, NULL, NULL, 103, NULL, '0', NULL, '2022-12-20 16:01:07', '2022-12-20 16:01:07', NULL),
(371, NULL, 27, 8, 'CRUST NANO BUTTER DISH', NULL, 'GNNNBD07CR', NULL, NULL, NULL, NULL, NULL, NULL, 24, NULL, '0', NULL, '2022-12-20 16:01:23', '2022-12-20 16:01:23', NULL),
(372, NULL, 27, 8, 'ALMOND NANO BUTTER DISH 7CM', NULL, 'GNNNBD07AL', NULL, NULL, NULL, NULL, NULL, NULL, 24, NULL, '0', NULL, '2022-12-20 16:01:41', '2022-12-20 16:01:41', NULL),
(373, NULL, 27, 8, 'ALMOND BUTTER DISH 9CM', NULL, 'GNNNBD09AL', NULL, NULL, NULL, NULL, NULL, NULL, 22, NULL, '0', NULL, '2022-12-20 16:01:57', '2022-12-20 16:01:57', NULL),
(374, NULL, 27, 8, '31CM RIMLESS PLATE GRAY', NULL, 'NFNNPR31GY', NULL, NULL, NULL, NULL, NULL, NULL, 154, NULL, '0', NULL, '2022-12-20 16:02:14', '2022-12-20 16:02:14', NULL),
(375, NULL, 27, 8, 'COCOA 23CL CUP', NULL, 'GN116CU23CO', NULL, NULL, NULL, NULL, NULL, NULL, 7, NULL, '0', NULL, '2022-12-20 16:02:31', '2022-12-20 16:02:31', NULL),
(376, NULL, 27, 8, 'FLAT COUPE PLATE', NULL, 'IPNNPR29', NULL, NULL, NULL, NULL, NULL, NULL, 160, NULL, '0', NULL, '2022-12-20 16:02:48', '2022-12-20 16:02:48', NULL),
(377, NULL, 27, 8, '28CM DEEP COUPE PLATE RUBY', NULL, 'RBNNDP28', NULL, NULL, NULL, NULL, NULL, NULL, 143, NULL, '0', NULL, '2022-12-20 16:03:10', '2022-12-20 16:03:10', NULL),
(378, NULL, 27, 8, 'HKPE254', NULL, 'HKPE254', NULL, NULL, NULL, NULL, NULL, NULL, 59, NULL, '0', NULL, '2022-12-20 16:03:29', '2022-12-20 16:03:29', NULL),
(379, NULL, 27, 8, 'HKLJ22', NULL, 'HKLJ22', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '0', NULL, '2022-12-20 16:03:47', '2022-12-20 16:03:47', NULL),
(380, NULL, 27, 8, 'OVAL PLATE RIMLESS 36CM GRAY', NULL, 'NFNNOP36GY', NULL, NULL, NULL, NULL, NULL, NULL, 210, NULL, '0', NULL, '2022-12-20 16:39:22', '2022-12-20 16:39:22', NULL),
(381, NULL, 27, 8, '23CM DEEP PLATE BROWN', NULL, 'NFGDDP23BW', NULL, NULL, NULL, NULL, NULL, NULL, 140, NULL, '0', NULL, '2022-12-20 16:39:40', '2022-12-20 16:39:40', NULL),
(382, NULL, 27, 8, 'PIZZA PLATE 27CM', NULL, 'BAPP27', NULL, NULL, NULL, NULL, NULL, NULL, 78, NULL, '0', NULL, '2022-12-20 16:41:23', '2022-12-20 16:41:23', NULL),
(383, NULL, 27, 8, '36CM OVAL PLATE BROWN', NULL, 'NFNNOP36BW', NULL, NULL, NULL, NULL, NULL, NULL, 289, NULL, '0', NULL, '2022-12-20 16:41:38', '2022-12-20 16:41:38', NULL),
(384, NULL, 27, 8, 'DEEP COUPE PLATE', NULL, 'IPNNDP28', NULL, NULL, NULL, NULL, NULL, NULL, 78, NULL, '0', NULL, '2022-12-20 16:41:53', '2022-12-20 16:41:53', NULL),
(385, NULL, 27, 8, 'FLAT PLATE 27CM', NULL, 'BAFP27', NULL, NULL, NULL, NULL, NULL, NULL, 490, NULL, '0', NULL, '2022-12-20 16:42:12', '2022-12-20 16:42:12', NULL),
(386, NULL, 27, 8, '30CM SQUARE PLATE', NULL, 'RBAUSP30', NULL, NULL, NULL, NULL, NULL, NULL, 185, NULL, '0', NULL, '2022-12-20 16:42:27', '2022-12-20 16:42:27', NULL),
(387, NULL, 27, 8, 'CRUST SALAD BOWL 20CM', NULL, 'GNNNBW20CR', NULL, NULL, NULL, NULL, NULL, NULL, 110, NULL, '0', NULL, '2022-12-20 16:42:47', '2022-12-20 16:42:47', NULL),
(388, NULL, 27, 8, 'NON STACKABLE CUP 22CL', NULL, 'BANC22', NULL, NULL, NULL, NULL, NULL, NULL, 26, NULL, '0', NULL, '2022-12-20 16:43:05', '2022-12-20 16:43:05', NULL),
(389, NULL, 27, 8, '23CM DEEP PLATE', NULL, 'NFGDDP23BK', NULL, NULL, NULL, NULL, NULL, NULL, 29, NULL, '0', NULL, '2022-12-20 16:43:22', '2022-12-20 16:43:22', NULL),
(390, NULL, 27, 8, 'ALMONT 36 CM OVAL PLATTER', NULL, 'GNNNOP36AL', NULL, NULL, NULL, NULL, NULL, NULL, 120, NULL, '0', NULL, '2022-12-20 16:43:37', '2022-12-20 16:43:37', NULL),
(391, NULL, 27, 8, '29CM RIMLESS PLATE', NULL, 'RBNNPR29', NULL, NULL, NULL, NULL, NULL, NULL, 138, NULL, '0', NULL, '2022-12-20 16:43:54', '2022-12-20 16:43:54', NULL),
(392, NULL, 27, 8, 'FLORA MUF 30CL', NULL, 'NFBAFMG30BK', NULL, NULL, NULL, NULL, NULL, NULL, 74, NULL, '0', NULL, '2022-12-20 16:44:11', '2022-12-20 16:44:11', NULL),
(393, NULL, 27, 8, 'GENESIS 17CM SAUCER FOR COFFEE CUP COCOA', NULL, 'GNCLSA02CO', NULL, NULL, NULL, NULL, NULL, NULL, 43, NULL, '0', NULL, '2022-12-20 16:44:37', '2022-12-20 16:44:37', NULL),
(394, NULL, 27, 8, '24CM SQUARE PLATE', NULL, 'RBAUSP24', NULL, NULL, NULL, NULL, NULL, NULL, 119, NULL, '0', NULL, '2022-12-20 16:44:54', '2022-12-20 16:44:54', NULL),
(395, NULL, 27, 8, 'GENESIS ALMOND ROUNDED SOUP TUREEN LID. D-10.6CM', NULL, 'GNCFST10AL', NULL, NULL, NULL, NULL, NULL, NULL, 82, NULL, '0', NULL, '2022-12-20 16:45:13', '2022-12-20 16:45:13', NULL),
(396, NULL, 27, 8, 'BAGUETTE DESSERT SPOON', NULL, '16CP', NULL, NULL, NULL, NULL, NULL, NULL, 480, NULL, '0', NULL, '2022-12-20 16:45:35', '2023-01-11 22:06:07', NULL),
(397, NULL, 27, 8, 'BAGUETTE DESSERT FORK', NULL, '16TP', NULL, NULL, NULL, NULL, NULL, NULL, 532, NULL, '0', NULL, '2022-12-20 16:46:03', '2023-01-11 22:07:18', NULL),
(398, NULL, 27, 8, 'BAGUETTE DESSERT KNIFE', NULL, '16CHP', NULL, NULL, NULL, NULL, NULL, NULL, 515, NULL, '0', NULL, '2022-12-20 16:46:23', '2023-01-11 22:08:12', NULL),
(399, NULL, 27, 8, 'BAGUETTE BUTTER KNIFE', NULL, '16CHB', NULL, NULL, NULL, NULL, NULL, NULL, 481, NULL, '0', NULL, '2022-12-20 16:46:41', '2023-01-11 22:08:53', NULL),
(400, NULL, 27, 8, 'BAGUETTE TABLE KNIFE', NULL, '16CHM', NULL, NULL, NULL, NULL, NULL, NULL, 628, NULL, '0', NULL, '2022-12-20 16:47:03', '2023-01-11 22:09:16', NULL),
(401, NULL, 27, 8, 'BAGUETTE TABLE SPOON', NULL, '16CM', NULL, NULL, NULL, NULL, NULL, NULL, 585, NULL, '0', NULL, '2022-12-20 16:49:13', '2023-01-11 22:09:55', NULL),
(402, NULL, 27, 8, 'BAGUETTE TABLE FORK', NULL, '16TM', NULL, NULL, NULL, NULL, NULL, NULL, 309, NULL, '0', NULL, '2022-12-20 16:49:24', '2023-01-11 22:10:28', NULL),
(403, NULL, 27, 8, 'BAGUETTE FISH FORK', NULL, '16TMP', NULL, NULL, NULL, NULL, NULL, NULL, 232, NULL, '0', NULL, '2022-12-20 16:50:20', '2023-01-11 22:10:59', NULL),
(404, NULL, 27, 8, 'BAGUETTE STEAK KNIFE', NULL, '16CHA', NULL, NULL, NULL, NULL, NULL, NULL, 469, NULL, '0', NULL, '2022-12-20 16:50:37', '2023-01-11 22:11:31', NULL),
(405, NULL, 27, 8, 'BAGUETTE FISH KNIFE', NULL, '16CHMP', NULL, NULL, NULL, NULL, NULL, NULL, 226, NULL, '0', NULL, '2022-12-20 16:50:55', '2023-01-11 22:12:07', NULL),
(406, NULL, 27, 8, 'BAGUETTE TEA SOOPN', NULL, '16CT', NULL, NULL, NULL, NULL, NULL, NULL, 397, NULL, '0', NULL, '2022-12-20 16:51:19', '2023-01-11 22:17:20', NULL),
(407, NULL, 27, 8, 'BAGUETTE COFFEE SPOON', NULL, '16CC', NULL, NULL, NULL, NULL, NULL, NULL, 2400, NULL, '0', NULL, '2022-12-20 16:51:39', '2023-01-11 22:20:43', NULL),
(408, NULL, 27, 8, 'VECHIO FISH KNIFE', NULL, '27CHMP', NULL, NULL, NULL, NULL, NULL, NULL, 1370, NULL, '0', NULL, '2022-12-20 16:51:58', '2023-01-11 22:21:54', NULL),
(409, NULL, 27, 8, 'VECHIO TABLE KNIFE', NULL, '27CHM/M', NULL, NULL, NULL, NULL, NULL, NULL, 1187, NULL, '0', NULL, '2022-12-20 16:52:31', '2023-01-11 22:22:24', NULL),
(410, NULL, 27, 8, 'VECHIO DESSERT SPOON', NULL, '27CP', NULL, NULL, NULL, NULL, NULL, NULL, 2150, NULL, '0', NULL, '2022-12-20 16:52:49', '2023-01-11 22:23:59', NULL),
(411, NULL, 27, 8, 'VECHIO BUTTER SPREADER', NULL, '27CHB', NULL, NULL, NULL, NULL, NULL, NULL, 1610, NULL, '0', NULL, '2022-12-20 16:53:04', '2023-01-11 22:24:38', NULL),
(412, NULL, 27, 8, 'VECHIO DESSERT KNIFE', NULL, '27CHP/M', NULL, NULL, NULL, NULL, NULL, NULL, 1288, NULL, '0', NULL, '2022-12-20 16:53:19', '2023-01-11 22:27:59', NULL),
(413, NULL, 27, 8, 'VECHIO FISH FORK', NULL, '27TMP', NULL, NULL, NULL, NULL, NULL, NULL, 1544, NULL, '0', NULL, '2022-12-20 16:53:35', '2023-01-11 22:28:23', NULL),
(414, NULL, 27, 8, 'VECHIO DESSERT FORK', NULL, '27TP', NULL, NULL, NULL, NULL, NULL, NULL, 892, NULL, '0', NULL, '2022-12-20 16:53:50', '2023-01-11 22:28:43', NULL),
(415, NULL, 27, 8, 'VECHIO TABLE SPOON (CUCHARA DE MESA)', NULL, '27CM', NULL, NULL, NULL, NULL, NULL, NULL, 715, NULL, '0', NULL, '2022-12-20 16:54:05', '2022-12-20 16:54:05', NULL),
(416, NULL, 27, 8, 'VECHIO TABLE FORK ( TENEDOR DE MESA)', NULL, '27TM', NULL, NULL, NULL, NULL, NULL, NULL, 182, NULL, '0', NULL, '2022-12-20 16:54:20', '2022-12-20 16:54:20', NULL),
(417, NULL, 27, 8, 'VECHIO STEAK KNIFE (CUCHILLO DE CARNE)', NULL, '27CHA', NULL, NULL, NULL, NULL, NULL, NULL, 496, NULL, '0', NULL, '2022-12-20 16:54:36', '2022-12-20 16:54:36', NULL),
(418, NULL, 27, 8, 'VECHIO COFFEE SPOON (CUCHARA DE CAFÉ)', NULL, '27CC', NULL, NULL, NULL, NULL, NULL, NULL, 1758, NULL, '0', NULL, '2022-12-20 16:54:49', '2022-12-20 16:54:49', NULL),
(419, NULL, 27, 8, 'VECHIO TEA SPOON (CUCHARA DE TÉ)', NULL, '27CT', NULL, NULL, NULL, NULL, NULL, NULL, 550, NULL, '0', NULL, '2022-12-20 16:55:05', '2022-12-20 16:55:05', NULL),
(420, NULL, 27, 8, 'ALOA DESSERT FORK (TENEDOR DE POSTRE)', NULL, '017TP', NULL, NULL, NULL, NULL, NULL, NULL, 2079, NULL, '0', NULL, '2022-12-20 16:55:24', '2022-12-20 16:55:24', NULL),
(421, NULL, 27, 8, 'ALOA DESSERT SPOON (CUCHARA DE POSTRE)', NULL, '017CP', NULL, NULL, NULL, NULL, NULL, NULL, 1937, NULL, '0', NULL, '2022-12-20 16:59:37', '2022-12-20 16:59:37', NULL),
(422, NULL, 27, 8, 'ALOA TABLE FORK (TENEDOR DE MESA)', NULL, '017TM', NULL, NULL, NULL, NULL, NULL, NULL, 878, NULL, '0', NULL, '2022-12-20 16:59:57', '2022-12-20 16:59:57', NULL),
(423, NULL, 27, 8, 'ALOA DESSERT KNIFE (CUCHILLO DE POSTRE)', NULL, '017CHP/M', NULL, NULL, NULL, NULL, NULL, NULL, 1508, NULL, '0', NULL, '2022-12-20 17:03:33', '2022-12-20 17:03:33', NULL),
(424, NULL, 27, 8, 'ALOA BUTTER SPREADER (CUCHILLO DE MANTECA)', NULL, '017CHB', NULL, NULL, NULL, NULL, NULL, NULL, 1363, NULL, '0', NULL, '2022-12-20 17:03:47', '2022-12-20 17:03:47', NULL),
(425, NULL, 27, 8, 'ALOA TABLE SPOON (CUCHARA DE MESA)', NULL, '017CM', NULL, NULL, NULL, NULL, NULL, NULL, 1134, NULL, '0', NULL, '2022-12-20 17:04:01', '2022-12-20 17:04:01', NULL),
(426, NULL, 27, 8, 'ALOA COFFEE SPOON (CUCHARITA DE CAFÉ)', NULL, '017CC', NULL, NULL, NULL, NULL, NULL, NULL, 1977, NULL, '0', NULL, '2022-12-20 17:04:23', '2022-12-20 17:04:23', NULL),
(427, NULL, 27, 8, 'ALOA TEA SPOON (CUCHARITA DE TÉ)', NULL, '017CT', NULL, NULL, NULL, NULL, NULL, NULL, 1388, NULL, '0', NULL, '2022-12-20 17:04:38', '2022-12-20 17:04:38', NULL),
(428, NULL, 27, 8, 'VENTO DESSERT SPOON (CUCHARA DE POSTRE)', NULL, '45CP', NULL, NULL, NULL, NULL, NULL, NULL, 2811, NULL, '0', NULL, '2022-12-20 17:04:52', '2022-12-20 17:04:52', NULL),
(429, NULL, 27, 8, 'VENTO DESSERT FORK (TENEDOR DE POSTRE)', NULL, '45TP', NULL, NULL, NULL, NULL, NULL, NULL, 3300, NULL, '0', NULL, '2022-12-20 17:05:10', '2022-12-20 17:05:10', NULL),
(430, NULL, 27, 8, 'VENTO DESSERT KNIFE (CUCHILLO DE POSTRE)', NULL, '45CHP/M', NULL, NULL, NULL, NULL, NULL, NULL, 1955, NULL, '0', NULL, '2022-12-20 17:05:25', '2022-12-20 17:05:25', NULL),
(431, NULL, 27, 8, 'VENTO TEA SPOON (CUCHARA DE TÉ)', NULL, '45CT', NULL, NULL, NULL, NULL, NULL, NULL, 2238, NULL, '0', NULL, '2022-12-20 17:05:51', '2022-12-20 17:05:51', NULL),
(432, NULL, 27, 8, 'VENTO COFFEE SPOON (CUCHARA DE CAFÉ)', NULL, '45CC', NULL, NULL, NULL, NULL, NULL, NULL, 3174, NULL, '0', NULL, '2022-12-20 17:06:07', '2022-12-20 17:06:07', NULL),
(433, NULL, 27, 8, 'VENTO TABLE SPOON (CUCHARA DE MESA)', NULL, '45CM', NULL, NULL, NULL, NULL, NULL, NULL, 711, NULL, '0', NULL, '2022-12-20 17:06:21', '2022-12-20 17:06:21', NULL),
(434, NULL, 27, 8, 'VENTO TABLE KNIFE (CUCHILLO DE MESA)', NULL, '45CHM/M', NULL, NULL, NULL, NULL, NULL, NULL, 1146, NULL, '0', NULL, '2022-12-20 17:06:36', '2022-12-20 17:06:36', NULL),
(435, NULL, 27, 8, 'VENTO TABLE FORK', NULL, '45TM', NULL, NULL, NULL, NULL, NULL, NULL, 692, NULL, '0', NULL, '2022-12-20 17:06:51', '2022-12-20 17:06:51', NULL),
(436, NULL, 27, 8, 'ELEVATION DESSERT FORK (TENEDOR DE POSTRE)', NULL, '26TP', NULL, NULL, NULL, NULL, NULL, NULL, 1045, NULL, '0', NULL, '2022-12-20 17:07:17', '2022-12-20 17:07:17', NULL),
(437, NULL, 27, 8, 'ELEVATION FISH FORK (TENEDOR DE PESCADO)', NULL, '26TMP', NULL, NULL, NULL, NULL, NULL, NULL, 1428, NULL, '0', NULL, '2022-12-20 17:07:31', '2022-12-20 17:07:31', NULL),
(438, NULL, 27, 8, 'ELEVATION FISH KNIFE (CUCHILLO DE PESCADO)', NULL, '26CHMP', NULL, NULL, NULL, NULL, NULL, NULL, 1169, NULL, '0', NULL, '2022-12-20 17:07:46', '2022-12-20 17:07:46', NULL),
(439, NULL, 27, 8, 'ELEVATION DESSERT KNIFE (CUCHILLO DE POSTRE)', NULL, '26CHP/M', NULL, NULL, NULL, NULL, NULL, NULL, 957, NULL, '0', NULL, '2022-12-20 17:08:03', '2022-12-20 17:08:03', NULL),
(440, NULL, 27, 8, 'ELEVATION DESSERT SPOON (CUCHARA DE POSTRE)', NULL, '26CP', NULL, NULL, NULL, NULL, NULL, NULL, 1018, NULL, '0', NULL, '2022-12-20 17:08:20', '2022-12-20 17:08:20', NULL),
(441, NULL, 27, 8, 'ELEVATION BUTTER SPREADER (CUCHILLO DE UNTAR)', NULL, '26CHB', NULL, NULL, NULL, NULL, NULL, NULL, 1056, NULL, '0', NULL, '2022-12-20 17:08:38', '2022-12-20 17:08:38', NULL),
(442, NULL, 27, 8, 'ELEVATION TABLE SPOON (CUCHARA DE MESA)', NULL, '26CM', NULL, NULL, NULL, NULL, NULL, NULL, 280, NULL, '0', NULL, '2022-12-20 17:09:01', '2022-12-20 17:09:01', NULL),
(443, NULL, 27, 8, 'ELEVATION TABLE FORK (TENEDOR DE MESA)', NULL, '26TM', NULL, NULL, NULL, NULL, NULL, NULL, 256, NULL, '0', NULL, '2022-12-20 17:09:19', '2022-12-20 17:09:19', NULL),
(444, NULL, 27, 8, 'ELEVATION TABLE KNIFE (CUCHILLO DE MESA)', NULL, '26CHM/M', NULL, NULL, NULL, NULL, NULL, NULL, 347, NULL, '0', NULL, '2022-12-20 17:09:36', '2022-12-20 17:09:36', NULL),
(445, NULL, 27, 8, 'ELEVATION COFFEE SPOON (CUCHARA DE CAFÉ)', NULL, '26CC', NULL, NULL, NULL, NULL, NULL, NULL, 1697, NULL, '0', NULL, '2022-12-20 17:09:52', '2022-12-20 17:09:52', NULL),
(446, NULL, 27, 8, 'ELEVATION TEA SPOON (CUCHARA DE TÉ)', NULL, '26CT', NULL, NULL, NULL, NULL, NULL, NULL, 753, NULL, '0', NULL, '2022-12-20 17:10:17', '2022-12-20 17:10:17', NULL),
(447, NULL, 27, 8, 'HKB0.8L', NULL, 'HKB0.8L', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '0', NULL, '2022-12-20 17:15:57', '2022-12-20 17:15:57', NULL),
(448, NULL, 27, 8, 'MADISON TABLE SPOON', NULL, '011CM', NULL, NULL, NULL, NULL, NULL, NULL, 2393, NULL, '0', NULL, '2022-12-20 17:16:15', '2023-01-11 22:05:21', NULL),
(449, NULL, 27, 8, 'MADISON DESSERT SPOON (CUCHARA DE POSTRE)', NULL, '011CP', NULL, NULL, NULL, NULL, NULL, NULL, 6674, NULL, '0', NULL, '2022-12-20 17:16:31', '2022-12-20 17:16:31', NULL),
(450, NULL, 27, 8, 'MADISON FISH FORK (TENEDOR DE PESCADO)', NULL, '011TMP', NULL, NULL, NULL, NULL, NULL, NULL, 1696, NULL, '0', NULL, '2022-12-20 17:16:47', '2022-12-20 17:16:47', NULL),
(451, NULL, 27, 8, 'MADISON FISH KNIFE (CUCHILLO DE PESCADO)', NULL, '011CHMP', NULL, NULL, NULL, NULL, NULL, NULL, 1738, NULL, '0', NULL, '2022-12-20 17:17:05', '2022-12-20 17:17:05', NULL),
(452, NULL, 27, 8, 'MADISON COFFEE SPOON (CUCHARA DE CAFÉ)', NULL, '011CC', NULL, NULL, NULL, NULL, NULL, NULL, 3695, NULL, '0', NULL, '2022-12-20 17:18:52', '2022-12-20 17:18:52', NULL),
(453, NULL, 27, 8, 'MADISON TEA SPOON (CUCHARA DE TÉ)', NULL, '011CT', NULL, NULL, NULL, NULL, NULL, NULL, 2242, NULL, '0', NULL, '2022-12-20 17:19:06', '2022-12-20 17:19:06', NULL),
(454, NULL, 27, 8, 'MADISON DESSERT FORK (TENEDOR DE POSTRE)', NULL, '011TP', NULL, NULL, NULL, NULL, NULL, NULL, 288, NULL, '0', NULL, '2022-12-20 17:19:21', '2022-12-20 17:19:21', NULL),
(455, NULL, 27, 8, 'MADISON BUTTER KNIFE (CUCHILLO DE MANTEQUILLA)', NULL, '011CHB', NULL, NULL, NULL, NULL, NULL, NULL, 2831, NULL, '0', NULL, '2022-12-20 17:19:40', '2022-12-20 17:19:40', NULL),
(456, NULL, 27, 8, 'MADISON LONG DRINK SPOON (CUCHARA LARGA)', NULL, '011CR', NULL, NULL, NULL, NULL, NULL, NULL, 740, NULL, '0', NULL, '2022-12-20 17:19:57', '2022-12-20 17:19:57', NULL),
(457, NULL, 27, 8, 'NOUVEAU MUG 200ML', NULL, 'P02040', NULL, NULL, NULL, NULL, NULL, NULL, 12, NULL, '0', NULL, '2022-12-20 17:20:33', '2022-12-20 17:20:33', NULL),
(458, NULL, 27, 8, 'ALOA FISH KNIFE (CUCHILLO DE PESCADO)', NULL, '017CHMP', NULL, NULL, NULL, NULL, NULL, NULL, 1428, NULL, '0', NULL, '2022-12-20 17:21:10', '2022-12-20 17:21:10', NULL),
(459, NULL, 27, 8, 'ALOA TABLE KNIFE (CUCHILLO DE MESA)', NULL, '017CHM/M', NULL, NULL, NULL, NULL, NULL, NULL, 1758, NULL, '0', NULL, '2022-12-20 17:21:30', '2022-12-20 17:21:30', NULL),
(460, NULL, 27, 8, 'ALOA FISH FORK (TENEDOR DE PESCADO)', NULL, '017TMP', NULL, NULL, NULL, NULL, NULL, NULL, 1428, NULL, '0', NULL, '2022-12-20 17:21:47', '2022-12-20 17:21:47', NULL),
(461, NULL, 27, 8, 'VENTO FISH FORK (TENEDOR DE PESCADO)', NULL, '45TMP', NULL, NULL, NULL, NULL, NULL, NULL, 1800, NULL, '0', NULL, '2022-12-20 17:22:41', '2022-12-20 17:22:41', NULL),
(462, NULL, 27, 8, 'VENTO FISH KNIFE (CUCHILLO DE PESCADO)', NULL, '45CHMP', NULL, NULL, NULL, NULL, NULL, NULL, 1790, NULL, '0', NULL, '2022-12-20 17:22:56', '2022-12-20 17:22:56', NULL),
(463, NULL, 27, 8, 'VENTO BUTTER KNIFE (CUCHILLO DE MANTEQUILLA)', NULL, '45CHB', NULL, NULL, NULL, NULL, NULL, NULL, 1860, NULL, '0', NULL, '2022-12-20 17:23:15', '2022-12-20 17:23:15', NULL),
(464, NULL, 27, 8, 'HKS3218', NULL, 'HKS3218', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '0', NULL, '2022-12-20 17:23:31', '2022-12-20 17:23:31', NULL),
(465, NULL, 27, 8, 'MADISON DESSERT KNIFE(CUCHILLO DE POSTRE)', NULL, '011CHP/M', NULL, NULL, NULL, NULL, NULL, NULL, 860, NULL, '0', NULL, '2022-12-20 17:24:03', '2022-12-20 17:24:03', NULL),
(466, NULL, 27, 8, 'ELEVATION STEAK KNIFE', NULL, '26CHA', NULL, NULL, NULL, NULL, NULL, NULL, 280, NULL, '0', NULL, '2022-12-20 17:24:21', '2022-12-20 17:24:21', NULL),
(467, NULL, 27, 8, 'RP7306', NULL, 'RP7306', NULL, NULL, NULL, NULL, NULL, NULL, 50, NULL, '0', NULL, '2022-12-20 17:24:41', '2022-12-20 17:24:41', NULL),
(468, NULL, 27, 8, 'RP0960', NULL, 'RP0960', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '0', NULL, '2022-12-20 17:25:06', '2022-12-20 17:25:06', NULL),
(469, NULL, 27, 8, 'RP4119', NULL, 'RP4119', NULL, NULL, NULL, NULL, NULL, NULL, 74, NULL, '0', NULL, '2022-12-20 17:25:22', '2022-12-20 17:25:22', NULL),
(470, NULL, 27, 8, 'RP4184', NULL, 'RP4184', NULL, NULL, NULL, NULL, NULL, NULL, 12, NULL, '0', NULL, '2022-12-20 17:26:08', '2022-12-20 17:26:08', NULL),
(471, NULL, 27, 8, 'LASAGNERA 20CM GRIS', NULL, 'NFOPOD20GY', NULL, NULL, NULL, NULL, NULL, NULL, 6, NULL, '0', NULL, '2022-12-20 17:26:32', '2022-12-20 17:26:32', NULL),
(472, NULL, 27, 8, 'BOWL CORTEZA', NULL, 'GNNNBW12CR', NULL, NULL, NULL, NULL, NULL, NULL, 84, NULL, '0', NULL, '2022-12-20 17:26:54', '2022-12-20 17:26:54', NULL),
(473, NULL, 27, 8, 'PLATO 15CM CORAL', NULL, 'TWNNPR15CO', NULL, NULL, NULL, NULL, NULL, NULL, 260, NULL, '0', NULL, '2022-12-20 17:27:09', '2022-12-20 17:27:09', NULL),
(474, NULL, 27, 8, 'PLATO 15CM LAGUNA', NULL, 'TWNNPR15LA', NULL, NULL, NULL, NULL, NULL, NULL, 186, NULL, '0', NULL, '2022-12-20 17:27:27', '2022-12-20 17:27:27', NULL),
(475, NULL, 27, 8, 'BOWL 20CM LAGUNA', NULL, 'TWNNBW20LA', NULL, NULL, NULL, NULL, NULL, NULL, 10, NULL, '0', NULL, '2022-12-20 17:27:44', '2022-12-20 17:27:44', NULL),
(476, NULL, 27, 8, 'BOWL 20CM ARENA', NULL, 'TWNNBW20BE', NULL, NULL, NULL, NULL, NULL, NULL, 48, NULL, '0', NULL, '2022-12-20 17:28:04', '2022-12-20 17:28:04', NULL),
(477, NULL, 27, 8, 'PLATO CUADRADO DE 30CM', NULL, 'RBUSP30', NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, '0', NULL, '2022-12-20 17:28:21', '2022-12-20 17:28:21', NULL),
(478, NULL, 27, 8, 'PLATO HONDO DE 28CM ROJO', NULL, 'RBNNF28', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '0', NULL, '2022-12-20 17:28:39', '2022-12-20 17:28:39', NULL),
(479, NULL, 27, 8, 'PLATO DE CORTEZA', NULL, 'GNCSAS02CR', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '0', NULL, '2022-12-20 17:29:05', '2022-12-20 17:29:05', NULL),
(480, NULL, 27, 8, 'PLATO 21CM ALMENDRA', NULL, 'GNNNPR21AL', NULL, NULL, NULL, NULL, NULL, NULL, 143, NULL, '0', NULL, '2022-12-20 17:41:19', '2022-12-20 17:41:19', NULL),
(481, NULL, 27, 8, 'PLATO GRIS 21CM', NULL, 'NFNNPR21GY', NULL, NULL, NULL, NULL, NULL, NULL, 64, NULL, '0', NULL, '2022-12-20 17:41:35', '2022-12-20 17:41:35', NULL),
(482, NULL, 27, 8, 'PLATO HONDO 23CM GRIS', NULL, 'NFGDDP23GY', NULL, NULL, NULL, NULL, NULL, NULL, 41, NULL, '0', NULL, '2022-12-20 17:41:52', '2022-12-20 17:41:52', NULL),
(483, NULL, 27, 8, 'CORAL 23CM EXTRA DEEP PLATE', NULL, 'TWCLXD23CO', NULL, NULL, NULL, NULL, NULL, NULL, 21, NULL, '0', NULL, '2022-12-20 17:42:07', '2022-12-20 17:42:07', NULL),
(484, NULL, 27, 8, 'MADISON FLUTE CHAMPAGNE 210', NULL, '015F07', NULL, NULL, NULL, NULL, NULL, NULL, 42, NULL, '0', NULL, '2022-12-20 17:42:24', '2022-12-20 17:42:24', NULL),
(485, NULL, 27, 8, 'Decantador Classic Medium 750ml Schott', NULL, 'SCH115262', NULL, NULL, NULL, NULL, NULL, NULL, 14, NULL, '0', NULL, '2022-12-20 17:42:40', '2023-01-11 22:04:15', NULL),
(486, NULL, 27, 8, 'SARTEN 24 ROJA OSCURA', NULL, 'CFPN24DR', NULL, NULL, NULL, NULL, NULL, NULL, 6, NULL, '0', NULL, '2022-12-20 17:43:07', '2022-12-20 17:43:07', NULL),
(487, NULL, 27, 8, 'PLAZA VASO 405 ML', NULL, 'B11014', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '0', NULL, '2022-12-20 17:43:25', '2022-12-20 17:43:25', NULL),
(488, NULL, 27, 1, 'NEO FUSION BLACK OVAL DISH 2OCM', NULL, 'NFOPOD20BK', NULL, NULL, NULL, NULL, NULL, NULL, 100, NULL, '0', NULL, '2022-12-27 19:16:12', '2022-12-27 19:16:12', NULL),
(489, NULL, 27, 1, 'NEO FUSION BLACK SQ JUG', NULL, 'NFOPSD03BK', NULL, NULL, NULL, NULL, NULL, NULL, 75, NULL, '0', NULL, '2022-12-27 19:17:15', '2022-12-27 19:17:15', NULL),
(490, NULL, 27, 1, 'NEO FUSION BLACK RECT PLATE 35CM', NULL, 'NFOPSP35BK', NULL, NULL, NULL, NULL, NULL, NULL, 52, NULL, '0', NULL, '2022-12-27 19:18:15', '2022-12-27 19:18:15', NULL),
(491, NULL, 27, 1, 'GENESIS ALMOND ANNA JUG 100CL', NULL, 'GNANJ100AL', NULL, NULL, NULL, NULL, NULL, NULL, 26, NULL, '0', NULL, '2022-12-27 19:22:05', '2022-12-27 19:22:05', NULL),
(492, NULL, 27, 1, 'GENESIS ALMOND NON STACKABLE BOWL 12CM', NULL, 'GNNNBW12AL', NULL, NULL, NULL, NULL, NULL, NULL, 150, NULL, '0', NULL, '2022-12-27 19:23:36', '2022-12-27 19:23:36', NULL),
(493, NULL, 27, 1, 'EASE CALDERA RAMEQUIN 10 CL', NULL, 'EABR08CA', NULL, NULL, NULL, NULL, NULL, NULL, 33, NULL, '0', NULL, '2022-12-27 19:25:06', '2022-12-27 19:25:06', NULL),
(494, NULL, 27, 1, 'KARBON SHAPED SALAD BOWL 28CM', NULL, 'KRSHSB28A', NULL, NULL, NULL, NULL, NULL, NULL, 117, NULL, '0', NULL, '2022-12-27 19:26:26', '2022-12-27 19:26:26', NULL),
(495, NULL, 27, 1, 'KRUSH CELADON ROUND DEEP COUPE PLATE', NULL, 'KSDP26CL', NULL, NULL, NULL, NULL, NULL, NULL, 117, NULL, '0', NULL, '2022-12-27 19:27:09', '2022-12-27 19:27:09', NULL),
(496, NULL, 27, 1, 'NEO FUSION BLACK COUP BOWL 26CM', NULL, 'NFBUBC26BK', NULL, NULL, NULL, NULL, NULL, NULL, 306, NULL, '0', NULL, '2022-12-27 19:28:39', '2022-12-27 19:28:39', NULL),
(497, NULL, 27, 1, 'KERRAZZO 21CM FLAT PLATE', NULL, 'KELUFP21', NULL, NULL, NULL, NULL, NULL, NULL, 117, NULL, '0', NULL, '2022-12-27 19:36:40', '2022-12-27 19:36:40', NULL),
(498, NULL, 27, 1, 'KERRAZZO 27CM FLAT PLATE', NULL, 'KELUFP27', NULL, NULL, NULL, NULL, NULL, NULL, 111, NULL, '0', NULL, '2022-12-27 19:37:58', '2022-12-27 19:37:58', NULL),
(499, NULL, 27, 1, 'EASE COBALT COUPE PLATE 28CM', NULL, 'EACP28CO', NULL, NULL, NULL, NULL, NULL, NULL, 204, NULL, '0', NULL, '2022-12-27 19:41:01', '2022-12-27 19:41:01', NULL),
(500, NULL, 27, 1, 'EASE CLAY RAMEQUIN 10 CL', NULL, 'EABR08CL', NULL, NULL, NULL, NULL, NULL, NULL, 57, NULL, '0', NULL, '2022-12-27 19:42:01', '2022-12-27 19:42:01', NULL),
(501, NULL, 27, 1, 'COBBLES 27CM RIMLESS PLATE', NULL, 'CBNNPR27', NULL, NULL, NULL, NULL, NULL, NULL, 110, NULL, '0', NULL, '2022-12-27 19:43:48', '2022-12-27 19:43:48', NULL),
(502, NULL, 27, 1, 'BLACK DOUBLE RAMEKIN 10 CL', NULL, 'CFDR02BK', NULL, NULL, NULL, NULL, NULL, NULL, 125, NULL, '0', NULL, '2022-12-27 19:44:34', '2022-12-27 19:44:34', NULL),
(503, NULL, 27, 1, 'BLACK PAN D-24CM', NULL, 'CFPN24BK', NULL, NULL, NULL, NULL, NULL, NULL, 93, NULL, '0', NULL, '2022-12-27 19:45:15', '2022-12-27 19:45:15', NULL),
(504, NULL, 27, 1, 'CREATE EMBOSSED ROUND PLATE', NULL, 'CRERP30', NULL, NULL, NULL, NULL, NULL, NULL, 44, NULL, '0', NULL, '2022-12-27 19:46:03', '2022-12-27 19:46:03', NULL),
(505, NULL, 27, 1, 'EASE COBALT RAMEKIN 10 CL', NULL, 'EABR08CO', NULL, NULL, NULL, NULL, NULL, NULL, 21, NULL, '0', NULL, '2022-12-27 19:46:41', '2022-12-27 19:46:41', NULL),
(506, NULL, 27, 1, 'ORION 27CM FLAT PLATE-A GRADE', NULL, 'ONPR27', NULL, NULL, NULL, NULL, NULL, NULL, 288, NULL, '0', NULL, '2022-12-27 19:49:54', '2022-12-27 19:49:54', NULL),
(507, NULL, 27, 1, 'ROKS 25CM OVAL PLATE-A GRADE', NULL, 'RKOP25', NULL, NULL, NULL, NULL, NULL, NULL, 111, NULL, '0', NULL, '2022-12-27 19:50:34', '2022-12-27 19:50:34', NULL),
(508, NULL, 27, 1, 'SPOT PERIDOT FLAVOUR DEEP BOWL 18CM', NULL, 'SPTFLDB52', NULL, NULL, NULL, NULL, NULL, NULL, 147, NULL, '0', NULL, '2022-12-27 19:51:28', '2022-12-27 19:51:28', NULL),
(509, NULL, 27, 1, 'HIDE DROP ULTRA GOLD-A GRADE', NULL, 'UHDDP18G', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '0', NULL, '2022-12-27 19:52:16', '2022-12-27 19:52:16', NULL),
(510, NULL, 27, 1, 'GENESIS CRUST ANNA JUG 100CL', NULL, 'GNANJ100CR', NULL, NULL, NULL, NULL, NULL, NULL, 27, NULL, '0', NULL, '2022-12-28 14:41:35', '2022-12-28 14:41:35', NULL),
(511, NULL, 27, 8, 'PLAZA VASO 405 ML', NULL, 'B11014', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '0', NULL, '2023-01-03 17:19:12', '2023-01-12 21:56:31', '2023-01-12 21:56:31'),
(512, NULL, 27, 8, 'COUPE BOWL 26 CM - BEACH', NULL, 'TWBUBC26BE', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '0', NULL, '2023-01-05 15:12:16', '2023-01-05 15:12:16', NULL),
(513, NULL, 23, 8, 'CABLES DE PODER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, NULL, '0', NULL, '2023-01-10 16:12:05', '2023-01-10 16:12:05', NULL),
(514, NULL, 23, 8, 'GRP2601P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 75, NULL, '0', NULL, '2023-01-10 16:12:41', '2023-01-10 16:12:41', NULL),
(515, NULL, 23, 8, 'GRP2602W', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, NULL, '0', NULL, '2023-01-10 16:13:01', '2023-01-10 16:13:01', NULL),
(516, NULL, 23, 8, 'GRP2603', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '0', NULL, '2023-01-10 16:13:16', '2023-01-10 16:13:16', NULL),
(517, NULL, 23, 8, 'GRP2670', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '0', NULL, '2023-01-10 16:13:35', '2023-01-10 16:13:35', NULL),
(518, NULL, 23, 8, 'GXW4248', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '0', NULL, '2023-01-10 16:13:50', '2023-01-10 16:13:50', NULL),
(519, NULL, 23, 8, 'M800B-ESBC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '0', NULL, '2023-01-10 16:14:11', '2023-01-10 16:14:11', NULL),
(520, NULL, 23, 8, 'ONE2501 2Gb6T', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, NULL, '0', NULL, '2023-01-10 16:14:25', '2023-01-10 16:14:25', NULL),
(521, NULL, 23, 8, 'ONE2560 4Gb10T', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '0', NULL, '2023-01-10 16:14:46', '2023-01-10 16:14:46', NULL),
(522, NULL, 23, 8, 'ONE421 Gb5T', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 55, NULL, '0', NULL, '2023-01-10 16:15:00', '2023-01-10 16:15:00', NULL),
(523, NULL, 23, 8, 'ONE521 Gb5T', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, NULL, '0', NULL, '2023-01-10 16:15:14', '2023-01-10 16:15:14', NULL),
(524, NULL, 23, 8, 'ONE531 Gb5T', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, NULL, '0', NULL, '2023-01-10 16:15:29', '2023-01-10 16:15:29', NULL),
(525, NULL, 23, 8, 'OS6560-P24Z8-US', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '0', NULL, '2023-01-10 16:15:42', '2023-01-10 16:15:42', NULL),
(526, NULL, 23, 8, 'PD-3501G/AC-NC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, NULL, '0', NULL, '2023-01-10 16:16:07', '2023-01-10 16:16:07', NULL),
(527, NULL, 23, 8, 'PS-300W-AC-P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, '0', NULL, '2023-01-10 16:16:20', '2023-01-10 16:16:20', NULL),
(528, NULL, 23, 8, 'PS-920W-AC-POE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, '0', NULL, '2023-01-10 16:16:32', '2023-01-10 16:16:32', NULL),
(529, NULL, 23, 8, 'UMG 104 KHOMP (RJ) EXPORTACAO', NULL, '34300002', NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, '0', NULL, '2023-01-10 16:16:47', '2023-01-28 15:12:16', NULL),
(530, NULL, 30, 1, 'APEROL 750ML', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, NULL, '0', NULL, '2023-01-10 17:10:45', '2023-01-10 17:10:45', NULL),
(531, NULL, 30, 1, 'AE SIGNATURE 750ML', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, NULL, '0', NULL, '2023-01-10 17:11:10', '2023-01-10 17:11:10', NULL),
(532, NULL, 30, 1, 'GIN BICKENS 700ML', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '0', NULL, '2023-01-10 17:11:32', '2023-01-10 17:11:32', NULL),
(533, NULL, 30, 1, 'BOLS AMARETTO 700ML', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '0', NULL, '2023-01-10 17:11:50', '2023-01-10 17:11:50', NULL),
(534, NULL, 30, 1, 'BOLS CHERRY 700ML', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, NULL, '0', NULL, '2023-01-10 17:12:10', '2023-01-10 17:12:10', NULL),
(535, NULL, 30, 1, 'BOLS MELON 700ML', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, '0', NULL, '2023-01-10 17:12:26', '2023-01-10 17:12:26', NULL),
(536, NULL, 30, 1, 'BOLS BLUE 700ML', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, NULL, '0', NULL, '2023-01-10 17:30:53', '2023-01-10 17:30:53', NULL),
(537, NULL, 30, 1, 'BOLS PASSION FRUIT 700ML', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, NULL, '0', NULL, '2023-01-10 17:31:11', '2023-01-10 17:31:11', NULL),
(538, NULL, 30, 1, 'BOLS PEPPERMINT 700ML', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL, '0', NULL, '2023-01-10 17:31:25', '2023-01-10 17:31:25', NULL),
(539, NULL, 30, 1, 'BOLS CUR TRIPLE DRY 700ML', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, NULL, '0', NULL, '2023-01-10 17:31:45', '2023-01-10 17:31:45', NULL),
(540, NULL, 30, 1, 'BULLDOG GIN 750ML', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, NULL, '0', NULL, '2023-01-10 17:32:01', '2023-01-10 17:32:01', NULL),
(541, NULL, 30, 1, 'CAMPARI 750ML', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL, '0', NULL, '2023-01-10 17:32:19', '2023-01-10 17:32:19', NULL),
(542, NULL, 30, 1, 'CINZANO TO SPRITZ 750ML', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 70, NULL, '0', NULL, '2023-01-10 17:32:35', '2023-01-10 17:32:35', NULL),
(543, NULL, 30, 1, 'CINZANO PROSECCO 750ML', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '0', NULL, '2023-01-10 17:32:50', '2023-01-10 17:32:50', NULL),
(544, NULL, 30, 1, 'CINZANO VERMOUTH ROSSO 750ML', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL, '0', NULL, '2023-01-10 17:34:04', '2023-01-10 17:34:04', NULL),
(545, NULL, 30, 1, 'CYNAR 700ML', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '0', NULL, '2023-01-10 17:34:18', '2023-01-10 17:34:18', NULL),
(546, NULL, 30, 1, 'FRANGELICO 700ML', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '0', NULL, '2023-01-10 17:34:33', '2023-01-10 17:34:33', NULL),
(547, NULL, 30, 1, 'KINGSTON62 WHITE 1000ML', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '0', NULL, '2023-01-10 17:34:49', '2023-01-10 17:34:49', NULL),
(548, NULL, 30, 1, 'KINGSTON62 WHITE 750ML', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, '0', NULL, '2023-01-10 17:35:03', '2023-01-10 17:35:03', NULL),
(549, NULL, 30, 1, 'RICCADONA ASTI 200ML', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '0', NULL, '2023-01-10 17:35:19', '2023-01-10 17:35:19', NULL),
(550, NULL, 30, 1, 'RICCADONA ASTI 750ML', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, '0', NULL, '2023-01-10 17:35:33', '2023-01-10 17:35:33', NULL);
INSERT INTO `productos_x_empresa` (`prod_id`, `categoria_id`, `empr_id`, `unidad_id`, `prod_nombre`, `prod_codigo`, `prod_sku`, `prod_ean`, `prod_cantidad`, `prod_precio`, `prod_serie`, `prod_lote`, `prod_comentario`, `prod_stock`, `prod_fecha_vencimiento`, `prod_peso`, `prod_estado`, `created_at`, `updated_at`, `deleted_at`) VALUES
(551, NULL, 30, 1, 'RICCADONA MOSCATO ROSE 750ML', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '0', NULL, '2023-01-10 17:35:50', '2023-01-10 17:35:50', NULL),
(552, NULL, 30, 1, 'RICCADONA PROSECCO 200ML', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, '0', NULL, '2023-01-10 17:36:05', '2023-01-10 17:36:05', NULL),
(553, NULL, 30, 1, 'RICCADONA PROSECCO 750ML', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '0', NULL, '2023-01-10 17:36:19', '2023-01-10 17:36:19', NULL),
(554, NULL, 30, 1, 'RICCADONA RUBY 200ML', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, NULL, '0', NULL, '2023-01-10 17:36:32', '2023-01-10 17:36:32', NULL),
(555, NULL, 30, 1, 'RICCADONA RUBY 750ML', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '0', NULL, '2023-01-10 17:36:46', '2023-01-10 17:36:46', NULL),
(556, NULL, 30, 1, 'SKYY VODKA 750ML', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '0', NULL, '2023-01-10 17:36:59', '2023-01-10 17:36:59', NULL),
(557, NULL, 30, 1, 'SKYY INF CITRU 750ML', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '0', NULL, '2023-01-10 17:37:13', '2023-01-10 17:37:13', NULL),
(558, NULL, 30, 1, 'SKYY INF RASP 750ML', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, '0', NULL, '2023-01-10 17:37:26', '2023-01-10 17:37:26', NULL),
(559, NULL, 30, 1, 'WT 750ML', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '0', NULL, '2023-01-10 17:38:14', '2023-01-10 17:38:14', NULL),
(560, NULL, 30, 1, 'PISCO PANCHO FIERRO QUEBRANTA 2LT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, NULL, '0', NULL, '2023-01-10 17:38:38', '2023-01-10 17:38:38', NULL),
(561, NULL, 30, 1, 'PISCO PURO ITALIA 700ML', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, '0', NULL, '2023-01-10 17:38:55', '2023-01-10 17:38:55', NULL),
(562, NULL, 30, 1, 'RON MANDATARIO SOLERA 700ML', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, NULL, '0', NULL, '2023-01-10 17:39:10', '2023-01-10 17:39:10', NULL),
(563, NULL, 30, 1, 'VINO TINTO SEMI SECO E.COPELLO 2LT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 26, NULL, '0', NULL, '2023-01-10 17:39:24', '2023-01-10 17:39:24', NULL),
(564, NULL, 30, 1, 'RON MANDATARIO 6 AÑOS 700ML', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, '0', NULL, '2023-01-10 17:39:41', '2023-01-10 17:39:41', NULL),
(565, NULL, 30, 1, 'VIÑA DE ORO QUEBRANTA X4000ML', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '0', NULL, '2023-01-10 17:40:13', '2023-01-10 17:40:13', NULL),
(566, NULL, 30, 1, 'VIÑA DE ORO QUEBRANTA X750ML', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 54, NULL, '0', NULL, '2023-01-10 17:40:28', '2023-01-10 17:40:28', NULL),
(567, NULL, 30, 1, 'VIÑA DE ORO ACHOLADO 750ML', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, '0', NULL, '2023-01-10 17:40:50', '2023-01-10 17:40:50', NULL),
(568, NULL, 30, 1, 'VIÑA DE ORO MOSTO VERDE TORONTEL 500ML', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '0', NULL, '2023-01-10 17:41:21', '2023-01-10 17:41:21', NULL),
(569, NULL, 30, 1, 'VIÑA DE ORO MOSTO VERDE QUEBRANTA 500ML', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 25, NULL, '0', NULL, '2023-01-10 17:46:01', '2023-01-10 17:46:01', NULL),
(570, NULL, 30, 1, 'CURACAO AZUL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, '0', NULL, '2023-01-10 17:46:44', '2023-01-10 17:46:44', NULL),
(571, NULL, 30, 1, 'LICOR DE MANZANA DUBOUCHETT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, '0', NULL, '2023-01-10 17:47:00', '2023-01-10 17:47:00', NULL),
(572, NULL, 30, 1, 'LICOR DE BANANA DUBOUCHETT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '0', NULL, '2023-01-10 17:47:18', '2023-01-10 17:47:18', NULL),
(573, NULL, 30, 1, 'TRIPLESEC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, '0', NULL, '2023-01-10 17:47:33', '2023-01-10 17:47:33', NULL),
(574, NULL, 30, 1, 'MENTA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '0', NULL, '2023-01-10 17:47:46', '2023-01-10 17:47:46', NULL),
(575, NULL, 30, 1, 'APRICOT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '0', NULL, '2023-01-10 17:48:10', '2023-01-10 17:48:10', NULL),
(576, NULL, 30, 1, 'OCUCAJE 4LT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, NULL, '0', NULL, '2023-01-10 17:48:24', '2023-01-10 17:48:24', NULL),
(577, NULL, 30, 1, 'VODKA SMIRNOFF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '0', NULL, '2023-01-10 17:48:38', '2023-01-10 17:48:38', NULL),
(578, NULL, 30, 1, 'JW JOHNNIE WALKER ETIQUETA NEGRA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '0', NULL, '2023-01-10 17:48:54', '2023-01-10 17:48:54', NULL),
(579, NULL, 30, 1, 'GINGER ALE EVERVESS 500ML', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '0', NULL, '2023-01-10 17:49:10', '2023-01-10 17:49:10', NULL),
(580, NULL, 30, 1, 'BOLS KIWI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, '0', NULL, '2023-01-10 17:49:29', '2023-01-10 17:49:29', NULL),
(581, NULL, 30, 1, 'FLOR DE CAÑA 7 AÑOS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '0', NULL, '2023-01-10 17:49:53', '2023-01-10 17:49:53', NULL),
(582, NULL, 30, 1, 'JIMADOR TEQUILA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, '0', NULL, '2023-01-10 17:50:08', '2023-01-10 17:50:08', NULL),
(583, NULL, 30, 1, 'FLOR DE CAÑA 4 AÑOS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '0', NULL, '2023-01-10 17:50:25', '2023-01-10 17:50:25', NULL),
(584, NULL, 30, 1, 'JACK DANIELS OLD #7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, NULL, '0', NULL, '2023-01-10 17:50:38', '2023-01-10 17:50:38', NULL),
(585, NULL, 30, 1, 'APEROL + PROSPRITZ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '0', NULL, '2023-01-10 17:50:52', '2023-01-10 17:50:52', NULL),
(586, NULL, 30, 1, 'BOLS CR DE CACAO BROWN LIQUEUR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, '0', NULL, '2023-01-10 17:52:10', '2023-01-10 17:52:10', NULL),
(587, NULL, 30, 1, 'CINZANO VERMOUTH BLANCO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, '0', NULL, '2023-01-10 17:52:23', '2023-01-10 17:52:23', NULL),
(588, NULL, 30, 1, 'SKY PINEAPPLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, '0', NULL, '2023-01-10 17:52:45', '2023-01-10 17:52:45', NULL),
(589, NULL, 30, 1, 'VINO TINTO SEMI SECO E.COPELLO 2LT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '0', NULL, '2023-01-10 18:18:10', '2023-01-10 18:19:11', '2023-01-10 18:19:11'),
(590, NULL, 23, 8, 'GRP2615', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, NULL, '0', NULL, '2023-01-11 17:52:33', '2023-01-11 17:52:33', NULL),
(591, NULL, 23, 8, 'GRP2613', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, '0', NULL, '2023-01-11 17:52:53', '2023-01-11 17:52:53', NULL),
(592, NULL, 23, 8, 'CABLES DE PODER CON CARGADOR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50, NULL, '0', NULL, '2023-01-11 17:53:33', '2023-01-11 17:53:33', NULL),
(594, NULL, 23, 8, 'OMNIACCESS STELLAR INDOOR AP 1351', NULL, 'OAW-AP1351-RW', NULL, NULL, NULL, NULL, NULL, NULL, 26, NULL, '0', NULL, '2023-01-27 19:53:02', '2023-01-27 19:58:13', NULL),
(595, NULL, 23, 8, 'AP WALL AND CEILING MOUNT KIT', NULL, 'OAW-AP-MNT-W-10', NULL, NULL, NULL, NULL, NULL, NULL, 30, NULL, '0', NULL, '2023-01-27 19:54:05', '2023-01-27 19:54:05', NULL),
(596, NULL, 23, 8, 'POE', NULL, 'POE', NULL, NULL, NULL, NULL, NULL, NULL, 99, NULL, '0', NULL, '2023-01-27 19:55:00', '2023-01-27 19:55:00', NULL),
(597, NULL, 23, 8, 'CABLE DE PODER', NULL, 'POE CABLE PODER', NULL, NULL, NULL, NULL, NULL, NULL, 99, NULL, '0', NULL, '2023-01-27 19:55:24', '2023-01-27 19:55:24', NULL),
(598, NULL, 23, 8, 'ADAPTADOR DE PODER', NULL, 'POWER ADAPTER', NULL, NULL, NULL, NULL, NULL, NULL, 1000, NULL, '0', NULL, '2023-01-27 19:57:11', '2023-01-27 19:57:11', NULL),
(599, NULL, 23, 8, 'KMG 200 ONE 2E1 (RJ)', NULL, '26000010', NULL, NULL, NULL, NULL, NULL, NULL, 6, NULL, '0', NULL, '2023-01-28 15:14:19', '2023-01-28 15:14:19', NULL),
(600, NULL, 23, 8, 'KMG 200 ONE SBC', NULL, '26000006', NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, '0', NULL, '2023-01-28 15:16:51', '2023-01-28 15:16:51', NULL),
(601, NULL, 23, 8, 'FONTE UMG / ITG 200 - EXPORTACAO', NULL, '20500002', NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, '0', NULL, '2023-01-28 15:18:41', '2023-01-28 15:18:41', NULL),
(602, NULL, 30, 1, 'KINGSTON62 GOLD 1000ML', NULL, '000001', NULL, NULL, NULL, NULL, NULL, NULL, 28, NULL, '0', NULL, '2023-01-28 16:54:26', '2023-01-28 16:54:26', NULL),
(603, NULL, 27, 8, 'CRUST BUTTER DISH 9CM', NULL, 'GNNNBD09CR', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '0', NULL, '2023-02-02 16:16:36', '2023-02-02 16:16:36', NULL),
(607, NULL, 27, 1, 'CHIRIMOYA ROJA', NULL, '27CHIMRJ', NULL, NULL, NULL, NULL, NULL, NULL, 7, NULL, '10', NULL, '2023-02-03 18:01:14', '2023-02-24 12:32:08', NULL),
(612, NULL, 27, 1, 'CHIRIMOYA AZUL', NULL, '27CHIMAZ', NULL, NULL, NULL, NULL, NULL, NULL, 12, NULL, '10', NULL, '2023-02-03 20:04:47', '2023-02-24 12:30:37', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `racks`
--

CREATE TABLE `racks` (
  `rack_id` int NOT NULL,
  `rack_nombre` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `racks`
--

INSERT INTO `racks` (`rack_id`, `rack_nombre`, `created_at`, `updated_at`, `deleted_at`) VALUES
(6, 'TORRE A', '2022-06-14 23:44:34', '2022-06-14 23:44:34', NULL),
(7, 'TORRE B', '2022-06-14 23:45:05', '2022-06-14 23:45:05', NULL),
(8, 'TORRE C', '2022-06-14 23:45:24', '2022-06-14 23:45:24', NULL),
(9, 'TORRE D', '2022-06-14 23:45:48', '2022-06-14 23:45:48', NULL),
(10, 'TORRE E', '2022-06-25 18:07:18', '2022-06-25 18:07:18', NULL),
(11, 'TORRE F', '2022-06-25 18:07:27', '2022-06-25 18:07:27', NULL),
(12, 'PISO', '2022-12-27 18:03:53', '2022-12-27 18:03:53', NULL),
(13, 'STAND', '2023-01-04 19:06:14', '2023-01-04 19:06:14', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `racks_casillas`
--

CREATE TABLE `racks_casillas` (
  `rc_id` int NOT NULL,
  `rack_id` int NOT NULL,
  `rc_nombre` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `racks_casillas`
--

INSERT INTO `racks_casillas` (`rc_id`, `rack_id`, `rc_nombre`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, 6, '101', '2022-04-25 20:50:25', '2022-06-24 22:49:48', NULL),
(5, 6, '102', '2022-04-25 20:50:44', '2022-06-24 22:49:54', NULL),
(6, 6, '103', '2022-04-25 20:50:56', '2022-06-24 22:50:01', NULL),
(7, 6, '104', '2022-05-04 17:24:06', '2022-06-24 22:50:08', NULL),
(8, 6, '105', '2022-05-04 17:24:56', '2022-06-24 22:50:17', NULL),
(9, 6, '106', '2022-05-04 17:25:11', '2022-06-24 22:50:24', NULL),
(10, 6, '113', '2022-06-14 23:51:59', '2022-06-24 22:52:02', NULL),
(11, 6, '107', '2022-06-14 23:52:18', '2022-06-24 22:50:33', NULL),
(12, 6, '108', '2022-06-14 23:56:57', '2022-06-24 22:50:45', NULL),
(13, 6, '109', '2022-06-14 23:57:13', '2022-06-24 22:51:21', NULL),
(14, 6, '111', '2022-06-14 23:59:36', '2022-06-14 23:59:36', NULL),
(15, 6, '112', '2022-06-14 23:59:47', '2022-06-14 23:59:47', NULL),
(16, 6, '110', '2022-06-15 00:00:01', '2022-06-24 22:51:46', NULL),
(17, 6, '114', '2022-06-15 00:00:13', '2022-06-15 00:00:13', NULL),
(18, 6, '115', '2022-06-24 22:43:49', '2022-06-24 22:48:31', NULL),
(19, 6, '201', '2022-06-24 22:48:47', '2022-06-24 22:52:16', NULL),
(20, 6, '202', '2022-06-24 22:48:56', '2022-06-24 22:52:23', NULL),
(21, 6, '203', '2022-06-24 22:49:05', '2022-06-24 22:52:31', NULL),
(22, 6, '204', '2022-06-24 22:55:19', '2022-06-24 22:55:19', NULL),
(23, 6, '205', '2022-06-24 22:55:27', '2022-06-24 22:55:27', NULL),
(24, 6, '206', '2022-06-24 22:55:35', '2022-06-24 22:55:35', NULL),
(25, 6, '207', '2022-06-24 22:55:43', '2022-06-24 22:55:43', NULL),
(26, 6, '208', '2022-06-24 22:55:52', '2022-06-24 22:55:52', NULL),
(27, 6, '209', '2022-06-24 22:56:00', '2022-06-24 22:56:00', NULL),
(28, 6, '210', '2022-06-24 22:56:07', '2022-06-24 22:56:07', NULL),
(29, 6, '211', '2022-06-24 22:56:17', '2022-06-24 22:56:17', NULL),
(30, 6, '212', '2022-06-24 22:56:25', '2022-06-24 22:56:25', NULL),
(31, 6, '213', '2022-06-24 22:56:33', '2022-06-24 22:56:33', NULL),
(32, 6, '214', '2022-06-24 22:56:42', '2022-06-24 22:56:42', NULL),
(33, 6, '215', '2022-06-24 22:56:50', '2022-06-24 22:56:50', NULL),
(34, 6, '301', '2022-06-24 22:57:11', '2022-06-24 22:57:11', NULL),
(35, 6, '302', '2022-06-24 22:57:23', '2022-06-24 22:57:23', NULL),
(36, 6, '303', '2022-06-24 22:57:32', '2022-06-24 22:57:32', NULL),
(37, 6, '304', '2022-06-24 22:57:42', '2022-06-24 22:57:42', NULL),
(38, 6, '305', '2022-06-24 22:57:50', '2022-06-24 22:57:50', NULL),
(39, 6, '306', '2022-06-24 22:57:59', '2022-06-24 22:57:59', NULL),
(40, 6, '307', '2022-06-24 22:58:09', '2022-06-24 22:58:09', NULL),
(41, 6, '308', '2022-06-24 22:58:17', '2022-06-24 22:58:17', NULL),
(42, 6, '309', '2022-06-24 22:58:24', '2022-06-24 22:58:24', NULL),
(43, 6, '310', '2022-06-24 22:58:32', '2022-06-24 22:58:32', NULL),
(44, 6, '311', '2022-06-24 22:58:40', '2022-06-24 22:58:40', NULL),
(45, 6, '312', '2022-06-24 22:58:49', '2022-06-24 22:58:49', NULL),
(46, 6, '313', '2022-06-24 22:59:15', '2022-06-24 22:59:15', NULL),
(47, 6, '314', '2022-06-24 22:59:23', '2022-06-24 22:59:23', NULL),
(48, 6, '315', '2022-06-24 22:59:31', '2022-06-24 22:59:31', NULL),
(49, 6, '401', '2022-06-24 23:07:06', '2022-06-24 23:07:06', NULL),
(50, 6, '402', '2022-06-24 23:07:15', '2022-06-24 23:07:15', NULL),
(51, 6, '403', '2022-06-24 23:07:22', '2022-06-24 23:07:22', NULL),
(52, 6, '404', '2022-06-24 23:10:45', '2022-06-24 23:10:45', NULL),
(53, 6, '405', '2022-06-24 23:10:54', '2022-06-24 23:10:54', NULL),
(54, 6, '406', '2022-06-24 23:11:01', '2022-06-24 23:11:01', NULL),
(55, 6, '407', '2022-06-24 23:11:09', '2022-06-24 23:11:09', NULL),
(56, 6, '408', '2022-06-24 23:11:17', '2022-06-24 23:11:17', NULL),
(57, 6, '409', '2022-06-24 23:11:25', '2022-06-24 23:11:25', NULL),
(58, 6, '410', '2022-06-24 23:11:33', '2022-06-24 23:11:33', NULL),
(59, 6, '411', '2022-06-24 23:11:42', '2022-06-24 23:11:42', NULL),
(60, 6, '412', '2022-06-24 23:11:49', '2022-06-24 23:11:49', NULL),
(61, 6, '413', '2022-06-24 23:11:58', '2022-06-24 23:11:58', NULL),
(62, 6, '414', '2022-06-24 23:12:05', '2022-06-24 23:12:05', NULL),
(63, 6, '415', '2022-06-24 23:12:16', '2022-06-24 23:12:16', NULL),
(64, 6, '501', '2022-06-24 23:13:12', '2022-06-24 23:13:12', NULL),
(65, 6, '502', '2022-06-24 23:13:21', '2022-06-24 23:13:21', NULL),
(66, 6, '503', '2022-06-24 23:13:28', '2022-06-24 23:13:28', NULL),
(67, 6, '504', '2022-06-24 23:13:37', '2022-06-24 23:13:37', NULL),
(68, 6, '505', '2022-06-24 23:13:45', '2022-06-24 23:13:45', NULL),
(69, 6, '506', '2022-06-24 23:13:51', '2022-06-24 23:13:51', NULL),
(70, 6, '507', '2022-06-24 23:13:58', '2022-06-24 23:13:58', NULL),
(71, 6, '508', '2022-06-24 23:14:05', '2022-06-24 23:14:05', NULL),
(72, 6, '509', '2022-06-24 23:14:13', '2022-06-24 23:14:13', NULL),
(73, 6, '510', '2022-06-24 23:14:21', '2022-06-24 23:14:21', NULL),
(74, 6, '511', '2022-06-24 23:14:28', '2022-06-24 23:14:28', NULL),
(75, 6, '512', '2022-06-24 23:14:37', '2022-06-24 23:14:37', NULL),
(76, 6, '513', '2022-06-24 23:14:45', '2022-06-24 23:14:45', NULL),
(77, 6, '514', '2022-06-24 23:14:53', '2022-06-24 23:14:53', NULL),
(78, 6, '515', '2022-06-24 23:15:02', '2022-06-24 23:15:02', NULL),
(79, 7, '101', '2022-06-24 23:15:15', '2022-06-24 23:15:15', NULL),
(80, 7, '102', '2022-06-24 23:15:22', '2022-06-24 23:15:22', NULL),
(81, 7, '103', '2022-06-24 23:15:30', '2022-06-24 23:15:30', NULL),
(82, 7, '104', '2022-06-24 23:15:38', '2022-06-24 23:15:38', NULL),
(83, 7, '105', '2022-06-24 23:25:41', '2022-06-24 23:25:41', NULL),
(84, 7, '106', '2022-06-24 23:25:51', '2022-06-24 23:25:51', NULL),
(85, 7, '107', '2022-06-24 23:25:59', '2022-06-24 23:25:59', NULL),
(86, 7, '108', '2022-06-24 23:26:07', '2022-06-24 23:26:07', NULL),
(87, 7, '109', '2022-06-24 23:26:15', '2022-06-24 23:26:15', NULL),
(88, 7, '110', '2022-06-24 23:26:26', '2022-06-24 23:26:26', NULL),
(89, 7, '111', '2022-06-24 23:26:35', '2022-06-24 23:26:35', NULL),
(90, 7, '112', '2022-06-24 23:27:05', '2022-06-24 23:27:05', NULL),
(91, 7, '113', '2022-06-24 23:27:14', '2022-06-24 23:27:14', NULL),
(92, 7, '114', '2022-06-24 23:27:23', '2022-06-24 23:27:23', NULL),
(93, 7, '201', '2022-06-24 23:28:09', '2022-06-24 23:28:09', NULL),
(94, 7, '202', '2022-06-24 23:28:16', '2022-06-24 23:28:16', NULL),
(95, 7, '203', '2022-06-24 23:28:24', '2022-06-24 23:28:24', NULL),
(96, 7, '204', '2022-06-24 23:28:33', '2022-06-24 23:28:33', NULL),
(97, 7, '205', '2022-06-24 23:28:41', '2022-06-24 23:28:41', NULL),
(98, 7, '206', '2022-06-24 23:28:49', '2022-06-24 23:28:49', NULL),
(99, 7, '207', '2022-06-24 23:28:56', '2022-06-24 23:28:56', NULL),
(100, 7, '208', '2022-06-24 23:29:04', '2022-06-24 23:29:04', NULL),
(101, 7, '209', '2022-06-24 23:29:13', '2022-06-24 23:29:13', NULL),
(102, 7, '210', '2022-06-24 23:29:21', '2022-06-24 23:29:21', NULL),
(103, 7, '211', '2022-06-24 23:29:29', '2022-06-24 23:29:29', NULL),
(104, 7, '212', '2022-06-24 23:29:38', '2022-06-24 23:29:38', NULL),
(105, 7, '213', '2022-06-24 23:29:46', '2022-06-24 23:29:46', NULL),
(106, 7, '214', '2022-06-24 23:29:54', '2022-06-24 23:29:54', NULL),
(107, 7, '301', '2022-06-24 23:33:57', '2022-06-24 23:33:57', NULL),
(108, 7, '302', '2022-06-24 23:34:06', '2022-06-24 23:34:06', NULL),
(109, 7, '303', '2022-06-24 23:34:14', '2022-06-24 23:34:14', NULL),
(110, 7, '304', '2022-06-24 23:34:21', '2022-06-24 23:34:21', NULL),
(111, 7, '305', '2022-06-24 23:34:28', '2022-06-24 23:34:28', NULL),
(112, 7, '306', '2022-06-24 23:34:35', '2022-06-24 23:34:35', NULL),
(113, 7, '307', '2022-06-24 23:36:10', '2022-06-24 23:36:10', NULL),
(114, 7, '307', '2022-06-24 23:36:44', '2022-06-24 23:36:44', NULL),
(115, 7, '308', '2022-06-24 23:36:50', '2022-06-24 23:36:50', NULL),
(116, 7, '309', '2022-06-24 23:36:59', '2022-06-24 23:36:59', NULL),
(117, 7, '310', '2022-06-24 23:37:06', '2022-06-24 23:37:06', NULL),
(118, 7, '311', '2022-06-24 23:37:13', '2022-06-24 23:37:13', NULL),
(119, 7, '312', '2022-06-24 23:37:20', '2022-06-24 23:37:20', NULL),
(120, 7, '313', '2022-06-24 23:37:28', '2022-06-24 23:37:28', NULL),
(121, 7, '314', '2022-06-24 23:37:36', '2022-06-24 23:37:36', NULL),
(122, 7, '401', '2022-06-24 23:37:44', '2022-06-24 23:37:44', NULL),
(123, 7, '402', '2022-06-24 23:37:51', '2022-06-24 23:37:51', NULL),
(124, 7, '403', '2022-06-24 23:37:59', '2022-06-24 23:37:59', NULL),
(125, 7, '404', '2022-06-24 23:38:06', '2022-06-24 23:38:06', NULL),
(126, 7, '405', '2022-06-24 23:38:14', '2022-06-24 23:38:14', NULL),
(127, 7, '406', '2022-06-24 23:38:22', '2022-06-24 23:38:22', NULL),
(128, 7, '407', '2022-06-24 23:38:28', '2022-06-24 23:38:28', NULL),
(129, 7, '408', '2022-06-24 23:38:38', '2022-06-24 23:38:38', NULL),
(130, 7, '409', '2022-06-24 23:38:46', '2022-06-24 23:38:46', NULL),
(131, 7, '410', '2022-06-24 23:38:53', '2022-06-24 23:38:53', NULL),
(132, 7, '411', '2022-06-24 23:39:00', '2022-06-24 23:39:00', NULL),
(133, 7, '412', '2022-06-24 23:39:08', '2022-06-24 23:39:08', NULL),
(134, 7, '413', '2022-06-24 23:39:16', '2022-06-24 23:39:16', NULL),
(135, 7, '414', '2022-06-24 23:39:23', '2022-06-24 23:39:23', NULL),
(136, 7, '501', '2022-06-24 23:39:36', '2022-06-24 23:39:36', NULL),
(137, 7, '502', '2022-06-24 23:39:46', '2022-06-24 23:39:46', NULL),
(138, 7, '503', '2022-06-24 23:39:53', '2022-06-24 23:39:53', NULL),
(139, 7, '504', '2022-06-24 23:40:00', '2022-06-24 23:40:00', NULL),
(140, 7, '505', '2022-06-24 23:40:07', '2022-06-24 23:40:07', NULL),
(141, 7, '506', '2022-06-24 23:40:15', '2022-06-24 23:40:15', NULL),
(142, 7, '507', '2022-06-24 23:40:22', '2022-06-24 23:40:22', NULL),
(143, 7, '508', '2022-06-24 23:40:30', '2022-06-24 23:40:30', NULL),
(144, 7, '509', '2022-06-24 23:40:39', '2022-06-24 23:40:39', NULL),
(145, 7, '510', '2022-06-24 23:40:46', '2022-06-24 23:40:46', NULL),
(146, 7, '511', '2022-06-24 23:40:58', '2022-06-24 23:40:58', NULL),
(147, 7, '512', '2022-06-24 23:41:06', '2022-06-24 23:41:06', NULL),
(148, 7, '513', '2022-06-24 23:41:14', '2022-06-24 23:41:14', NULL),
(149, 7, '514', '2022-06-24 23:41:22', '2022-06-24 23:41:22', NULL),
(150, 8, '101', '2022-06-25 17:47:42', '2022-06-25 17:47:42', NULL),
(151, 8, '102', '2022-06-25 17:47:51', '2022-06-25 17:47:51', NULL),
(152, 8, '103', '2022-06-25 17:47:59', '2022-06-25 17:47:59', NULL),
(153, 8, '104', '2022-06-25 17:48:06', '2022-06-25 17:48:06', NULL),
(154, 8, '105', '2022-06-25 17:48:14', '2022-06-25 17:48:14', NULL),
(155, 8, '106', '2022-06-25 17:48:22', '2022-06-25 17:48:22', NULL),
(156, 8, '107', '2022-06-25 17:48:36', '2022-06-25 17:48:36', NULL),
(157, 8, '108', '2022-06-25 17:48:43', '2022-06-25 17:48:43', NULL),
(158, 8, '109', '2022-06-25 17:48:51', '2022-06-25 17:48:51', NULL),
(159, 8, '110', '2022-06-25 17:49:03', '2022-06-25 17:49:03', NULL),
(160, 8, '111', '2022-06-25 17:49:12', '2022-06-25 17:49:12', NULL),
(161, 8, '112', '2022-06-25 17:49:21', '2022-06-25 17:49:21', NULL),
(162, 8, '113', '2022-06-25 17:49:29', '2022-06-25 17:49:29', NULL),
(163, 8, '114', '2022-06-25 17:49:39', '2022-06-25 17:49:39', NULL),
(164, 8, '114', '2022-06-25 17:49:56', '2022-06-25 17:49:56', NULL),
(165, 8, '201', '2022-06-25 17:50:04', '2022-06-25 17:50:04', NULL),
(166, 8, '202', '2022-06-25 17:50:11', '2022-06-25 17:50:11', NULL),
(167, 8, '203', '2022-06-25 17:50:18', '2022-06-25 17:50:18', NULL),
(168, 8, '204', '2022-06-25 17:50:26', '2022-06-25 17:50:26', NULL),
(169, 8, '205', '2022-06-25 17:50:33', '2022-06-25 17:50:33', NULL),
(170, 8, '206', '2022-06-25 17:50:42', '2022-06-25 17:50:42', NULL),
(171, 8, '207', '2022-06-25 17:50:50', '2022-06-25 17:50:50', NULL),
(172, 8, '208', '2022-06-25 17:50:58', '2022-06-25 17:50:58', NULL),
(173, 8, '209', '2022-06-25 17:51:08', '2022-06-25 17:51:33', NULL),
(174, 8, '210', '2022-06-25 17:51:50', '2022-06-25 17:51:50', NULL),
(175, 8, '211', '2022-06-25 17:58:38', '2022-06-25 17:58:38', NULL),
(176, 8, '212', '2022-06-25 17:58:45', '2022-06-25 17:58:45', NULL),
(177, 8, '213', '2022-06-25 17:58:52', '2022-06-25 17:58:52', NULL),
(178, 8, '214', '2022-06-25 17:59:08', '2022-06-25 17:59:08', NULL),
(179, 8, '301', '2022-06-25 17:59:50', '2022-06-25 17:59:50', NULL),
(180, 8, '302', '2022-06-25 18:00:02', '2022-06-25 18:00:02', NULL),
(181, 8, '303', '2022-06-25 18:00:14', '2022-06-25 18:00:14', NULL),
(182, 8, '304', '2022-06-25 18:00:20', '2022-06-25 18:00:20', NULL),
(183, 8, '305', '2022-06-25 18:00:28', '2022-06-25 18:00:28', NULL),
(184, 8, '306', '2022-06-25 18:00:37', '2022-06-25 18:01:05', NULL),
(185, 8, '307', '2022-06-25 18:00:46', '2022-06-25 18:01:14', NULL),
(186, 8, '308', '2022-06-25 18:01:23', '2022-06-25 18:01:23', NULL),
(187, 8, '309', '2022-06-25 18:01:30', '2022-06-25 18:01:30', NULL),
(188, 8, '310', '2022-06-25 18:01:37', '2022-06-25 18:01:37', NULL),
(189, 8, '311', '2022-06-25 18:01:45', '2022-06-25 18:01:45', NULL),
(190, 8, '312', '2022-06-25 18:01:51', '2022-06-25 18:01:51', NULL),
(191, 8, '313', '2022-06-25 18:02:00', '2022-06-25 18:02:00', NULL),
(192, 8, '314', '2022-06-25 18:02:06', '2022-06-25 18:02:06', NULL),
(193, 8, '401', '2022-06-25 18:02:34', '2022-06-25 18:02:34', NULL),
(194, 8, '402', '2022-06-25 18:02:41', '2022-06-25 18:02:41', NULL),
(195, 8, '403', '2022-06-25 18:02:48', '2022-06-25 18:02:48', NULL),
(196, 8, '404', '2022-06-25 18:02:54', '2022-06-25 18:02:54', NULL),
(197, 8, '405', '2022-06-25 18:03:01', '2022-06-25 18:03:01', NULL),
(198, 8, '406', '2022-06-25 18:03:08', '2022-06-25 18:03:08', NULL),
(199, 8, '407', '2022-06-25 18:03:14', '2022-06-25 18:03:14', NULL),
(200, 8, '408', '2022-06-25 18:03:20', '2022-06-25 18:03:20', NULL),
(201, 8, '409', '2022-06-25 18:03:26', '2022-06-25 18:03:26', NULL),
(202, 8, '410', '2022-06-25 18:03:32', '2022-06-25 18:03:32', NULL),
(203, 8, '411', '2022-06-25 18:03:38', '2022-06-25 18:03:38', NULL),
(204, 8, '412', '2022-06-25 18:03:45', '2022-06-25 18:03:45', NULL),
(205, 8, '413', '2022-06-25 18:03:53', '2022-06-25 18:03:53', NULL),
(206, 8, '414', '2022-06-25 18:04:00', '2022-06-25 18:04:00', NULL),
(207, 8, '501', '2022-06-25 18:04:14', '2022-06-25 18:04:14', NULL),
(208, 8, '502', '2022-06-25 18:04:22', '2022-06-25 18:04:22', NULL),
(209, 8, '503', '2022-06-25 18:04:29', '2022-06-25 18:04:29', NULL),
(210, 8, '504', '2022-06-25 18:04:37', '2022-06-25 18:04:37', NULL),
(211, 8, '505', '2022-06-25 18:04:44', '2022-06-25 18:04:44', NULL),
(212, 8, '506', '2022-06-25 18:04:51', '2022-06-25 18:04:51', NULL),
(213, 8, '507', '2022-06-25 18:04:59', '2022-06-25 18:04:59', NULL),
(214, 8, '508', '2022-06-25 18:05:05', '2022-06-25 18:05:05', NULL),
(215, 8, '509', '2022-06-25 18:05:12', '2022-06-25 18:05:12', NULL),
(216, 8, '510', '2022-06-25 18:05:19', '2022-06-25 18:05:19', NULL),
(217, 8, '511', '2022-06-25 18:05:27', '2022-06-25 18:05:27', NULL),
(218, 8, '512', '2022-06-25 18:05:34', '2022-06-25 18:05:34', NULL),
(219, 8, '513', '2022-06-25 18:05:40', '2022-06-25 18:05:40', NULL),
(220, 8, '514', '2022-06-25 18:05:51', '2022-06-25 18:05:51', NULL),
(221, 11, '101', '2022-06-25 18:07:42', '2022-06-25 18:07:42', NULL),
(222, 11, '102', '2022-06-25 18:07:50', '2022-06-25 18:07:50', NULL),
(223, 11, '103', '2022-06-25 18:07:56', '2022-06-25 18:07:56', NULL),
(224, 11, '104', '2022-06-25 18:08:05', '2022-06-25 18:08:05', NULL),
(225, 11, '105', '2022-06-25 18:08:12', '2022-06-25 18:08:12', NULL),
(226, 11, '106', '2022-06-25 18:08:22', '2022-06-25 18:08:22', NULL),
(227, 11, '107', '2022-06-25 18:08:29', '2022-06-25 18:08:29', NULL),
(228, 11, '108', '2022-06-25 18:08:36', '2022-06-25 18:08:36', NULL),
(229, 11, '109', '2022-06-25 18:08:44', '2022-06-25 18:08:44', NULL),
(230, 11, '110', '2022-06-25 18:08:55', '2022-06-25 18:08:55', NULL),
(231, 11, '111', '2022-06-25 18:09:01', '2022-06-25 18:09:01', NULL),
(232, 11, '112', '2022-06-25 18:09:10', '2022-06-25 18:09:10', NULL),
(233, 11, '113', '2022-06-25 18:09:17', '2022-06-25 18:09:17', NULL),
(234, 11, '114', '2022-06-25 18:09:26', '2022-06-25 18:09:26', NULL),
(235, 11, '115', '2022-06-25 18:09:34', '2022-06-25 18:09:34', NULL),
(236, 11, '201', '2022-06-25 18:10:05', '2022-06-25 18:10:05', NULL),
(237, 11, '202', '2022-06-25 18:10:14', '2022-06-25 18:10:14', NULL),
(238, 11, '203', '2022-06-25 18:10:20', '2022-06-25 18:10:20', NULL),
(239, 11, '204', '2022-06-25 18:10:27', '2022-06-25 18:10:27', NULL),
(240, 11, '205', '2022-06-25 18:10:37', '2022-06-25 18:10:37', NULL),
(241, 11, '206', '2022-06-25 18:10:47', '2022-06-25 18:10:47', NULL),
(242, 11, '207', '2022-06-25 18:10:54', '2022-06-25 18:10:54', NULL),
(243, 11, '208', '2022-06-25 18:11:00', '2022-06-25 18:11:00', NULL),
(244, 11, '209', '2022-06-25 18:11:07', '2022-06-25 18:11:07', NULL),
(245, 11, '210', '2022-06-25 18:11:15', '2022-06-25 18:11:15', NULL),
(246, 11, '211', '2022-06-25 18:11:22', '2022-06-25 18:11:22', NULL),
(247, 11, '212', '2022-06-25 18:11:30', '2022-06-25 18:11:30', NULL),
(248, 11, '213', '2022-06-25 18:11:37', '2022-06-25 18:11:37', NULL),
(249, 11, '214', '2022-06-25 18:11:44', '2022-06-25 18:11:44', NULL),
(250, 11, '215', '2022-06-25 18:11:51', '2022-06-25 18:11:51', NULL),
(251, 11, '301', '2022-06-25 18:12:10', '2022-06-25 18:12:10', NULL),
(252, 11, '302', '2022-06-25 18:12:16', '2022-06-25 18:12:16', NULL),
(253, 11, '303', '2022-06-25 18:12:25', '2022-06-25 18:12:25', NULL),
(254, 11, '304', '2022-06-25 18:12:33', '2022-06-25 18:12:33', NULL),
(255, 11, '305', '2022-06-25 18:12:40', '2022-06-25 18:12:40', NULL),
(256, 11, '306', '2022-06-25 18:12:47', '2022-06-25 18:12:47', NULL),
(257, 11, '307', '2022-06-25 18:12:53', '2022-06-25 18:12:53', NULL),
(258, 11, '308', '2022-06-25 18:13:01', '2022-06-25 18:13:01', NULL),
(259, 11, '309', '2022-06-25 18:13:08', '2022-06-25 18:13:08', NULL),
(260, 11, '310', '2022-06-25 18:13:14', '2022-06-25 18:13:14', NULL),
(261, 11, '311', '2022-06-25 18:13:22', '2022-06-25 18:13:22', NULL),
(262, 11, '312', '2022-06-25 18:13:30', '2022-06-25 18:13:30', NULL),
(263, 11, '313', '2022-06-25 18:13:37', '2022-06-25 18:13:37', NULL),
(264, 11, '314', '2022-06-25 18:13:46', '2022-06-25 18:13:46', NULL),
(265, 11, '315', '2022-06-25 18:13:54', '2022-06-25 18:13:54', NULL),
(266, 11, '401', '2022-06-25 18:14:25', '2022-06-25 18:14:25', NULL),
(267, 11, '402', '2022-06-25 18:14:32', '2022-06-25 18:14:32', NULL),
(268, 11, '403', '2022-06-25 18:14:40', '2022-06-25 18:14:40', NULL),
(269, 11, '404', '2022-06-25 18:37:37', '2022-06-25 18:37:37', NULL),
(270, 11, '405', '2022-06-25 18:37:45', '2022-06-25 18:37:45', NULL),
(271, 11, '406', '2022-06-25 18:37:53', '2022-06-25 18:37:53', NULL),
(272, 11, '407', '2022-06-25 18:38:01', '2022-06-25 18:38:01', NULL),
(273, 11, '408', '2022-06-25 18:38:08', '2022-06-25 18:38:08', NULL),
(274, 11, '409', '2022-06-25 18:38:15', '2022-06-25 18:38:15', NULL),
(275, 11, '410', '2022-06-25 18:38:23', '2022-06-25 18:38:23', NULL),
(276, 11, '411', '2022-06-25 18:38:31', '2022-06-25 18:38:31', NULL),
(277, 11, '412', '2022-06-25 18:38:38', '2022-06-25 18:38:38', NULL),
(278, 11, '413', '2022-06-25 18:38:46', '2022-06-25 18:38:46', NULL),
(279, 11, '414', '2022-06-25 18:38:55', '2022-06-25 18:38:55', NULL),
(280, 11, '415', '2022-06-25 18:39:02', '2022-06-25 18:39:02', NULL),
(281, 11, '501', '2022-06-25 18:39:27', '2022-06-25 18:39:27', NULL),
(282, 11, '502', '2022-06-25 18:39:35', '2022-06-25 18:39:35', NULL),
(283, 11, '503', '2022-06-25 18:39:45', '2022-06-25 18:39:45', NULL),
(284, 11, '504', '2022-06-25 18:39:53', '2022-06-25 18:39:53', NULL),
(285, 11, '505', '2022-06-25 18:40:00', '2022-06-25 18:40:00', NULL),
(286, 11, '506', '2022-06-25 18:40:07', '2022-06-25 18:40:07', NULL),
(287, 11, '507', '2022-06-25 18:40:15', '2022-06-25 18:40:15', NULL),
(288, 11, '508', '2022-06-25 18:40:23', '2022-06-25 18:40:23', NULL),
(289, 11, '509', '2022-06-25 18:40:31', '2022-06-25 18:40:31', NULL),
(290, 11, '510', '2022-06-25 18:40:39', '2022-06-25 18:40:39', NULL),
(291, 11, '511', '2022-06-25 18:40:48', '2022-06-25 18:40:48', NULL),
(292, 11, '512', '2022-06-25 18:40:57', '2022-06-25 18:40:57', NULL),
(293, 11, '513', '2022-06-25 18:41:04', '2022-06-25 18:41:04', NULL),
(294, 11, '514', '2022-06-25 18:41:11', '2022-06-25 18:41:11', NULL),
(295, 11, '515', '2022-06-25 18:41:19', '2022-06-25 18:41:19', NULL),
(296, 9, '101', '2022-08-09 18:48:36', '2022-08-09 18:48:36', NULL),
(297, 9, '102', '2022-08-09 18:48:46', '2022-08-09 18:48:46', NULL),
(298, 9, '103', '2022-08-09 18:48:53', '2022-08-09 18:48:53', NULL),
(299, 9, '104', '2022-08-09 18:49:04', '2022-08-09 18:49:04', NULL),
(300, 9, '105', '2022-08-09 18:49:11', '2022-08-09 18:49:11', NULL),
(301, 9, '106', '2022-08-09 18:49:19', '2022-08-09 18:49:19', NULL),
(302, 9, '107', '2022-08-09 18:49:27', '2022-08-09 18:49:27', NULL),
(303, 9, '108', '2022-08-09 18:49:34', '2022-08-09 18:49:34', NULL),
(304, 9, '109', '2022-08-09 18:49:48', '2022-08-09 18:49:48', NULL),
(305, 9, '110', '2022-08-09 18:49:56', '2022-08-09 18:49:56', NULL),
(306, 9, '111', '2022-08-09 18:50:03', '2022-08-09 18:50:03', NULL),
(307, 9, '112', '2022-08-09 18:50:13', '2022-08-09 18:50:13', NULL),
(308, 9, '113', '2022-08-09 18:50:21', '2022-08-09 18:50:21', NULL),
(309, 9, '114', '2022-08-09 18:50:33', '2022-08-09 18:50:33', NULL),
(310, 9, '115', '2022-08-09 18:50:39', '2022-08-09 18:50:39', NULL),
(311, 12, 'PALLET 1', '2022-12-27 18:04:14', '2022-12-27 18:04:14', NULL),
(312, 12, 'PALLET 2', '2022-12-27 18:04:36', '2022-12-27 18:04:36', NULL),
(313, 12, 'PALLET 3', '2022-12-27 18:04:48', '2022-12-27 18:04:48', NULL),
(314, 12, 'PALLET 4', '2022-12-27 18:05:00', '2022-12-27 18:05:00', NULL),
(315, 12, 'PALLET 5', '2022-12-27 18:05:12', '2022-12-27 18:05:12', NULL),
(316, 12, 'PALLET 6', '2022-12-27 18:05:22', '2022-12-27 18:05:22', NULL),
(317, 12, 'PALLET 7', '2022-12-27 18:05:34', '2022-12-27 18:05:34', NULL),
(318, 12, 'PALLET 21', '2022-12-27 18:05:47', '2022-12-27 18:10:41', NULL),
(319, 12, 'PALLET 8', '2022-12-27 18:06:02', '2022-12-27 18:06:02', NULL),
(320, 12, 'PALLET 9', '2022-12-27 18:06:14', '2022-12-27 18:06:14', NULL),
(321, 12, 'PALLET 10', '2022-12-27 18:06:24', '2022-12-27 18:06:24', NULL),
(322, 12, 'PALLET 11', '2022-12-27 18:06:34', '2022-12-27 18:06:34', NULL),
(323, 12, 'PALLET 12', '2022-12-27 18:06:47', '2022-12-27 18:06:47', NULL),
(324, 12, 'PALLET 13', '2022-12-27 18:06:57', '2022-12-27 18:06:57', NULL),
(325, 12, 'PALLET 14', '2022-12-27 18:07:09', '2022-12-27 18:07:09', NULL),
(326, 12, 'PALLET 15', '2022-12-27 18:07:21', '2022-12-27 18:07:21', NULL),
(327, 12, 'PALLET 16', '2022-12-27 18:07:30', '2022-12-27 18:07:30', NULL),
(328, 12, 'PALLET 17', '2022-12-27 18:07:39', '2022-12-27 18:07:39', NULL),
(329, 12, 'PALLET 18', '2022-12-27 18:07:50', '2022-12-27 18:07:50', NULL),
(330, 12, 'PALLET 19', '2022-12-27 18:08:04', '2022-12-27 18:08:04', NULL),
(331, 12, 'PALLET 20', '2022-12-27 18:08:14', '2022-12-27 18:08:14', NULL),
(332, 13, 'A-1', '2023-01-04 19:07:25', '2023-01-04 19:07:25', NULL),
(333, 13, 'A-2', '2023-01-04 19:07:34', '2023-01-04 19:07:34', NULL),
(334, 13, 'A-3', '2023-01-04 19:07:43', '2023-01-04 19:07:43', NULL),
(335, 13, 'B-1', '2023-01-04 19:07:53', '2023-01-04 19:07:53', NULL),
(336, 13, 'B-2', '2023-01-04 19:08:02', '2023-01-04 19:08:02', NULL),
(337, 13, 'B-3', '2023-01-04 19:08:11', '2023-01-04 19:08:11', NULL),
(338, 13, 'X-1', '2023-01-04 19:08:37', '2023-01-04 19:08:37', NULL),
(339, 13, 'X-2', '2023-01-04 19:08:44', '2023-01-04 19:08:44', NULL),
(340, 13, 'X-3', '2023-01-04 19:08:57', '2023-01-04 19:08:57', NULL),
(341, 13, 'Y-1', '2023-01-04 19:09:05', '2023-01-04 19:09:05', NULL),
(342, 13, 'Y-2', '2023-01-04 19:09:15', '2023-01-04 19:09:15', NULL),
(343, 13, 'Y-3', '2023-01-04 19:09:23', '2023-01-04 19:09:23', NULL),
(344, 13, 'Z-1', '2023-01-04 19:09:36', '2023-01-04 19:09:36', NULL),
(345, 13, 'Z-2', '2023-01-04 19:09:44', '2023-01-04 19:09:44', NULL),
(346, 13, 'Z-3', '2023-01-04 19:09:53', '2023-01-04 19:09:53', NULL),
(347, 13, 'W-1', '2023-01-04 19:10:06', '2023-01-04 19:10:06', NULL),
(348, 13, 'W-2', '2023-01-04 19:10:17', '2023-01-04 19:10:17', NULL),
(349, 13, 'W-3', '2023-01-04 19:10:28', '2023-01-04 19:10:28', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro_detalle`
--

CREATE TABLE `registro_detalle` (
  `rd_id` int NOT NULL,
  `regi_id` int NOT NULL,
  `pe_id` int DEFAULT NULL,
  `rd_cantidad` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `rd_precio` float DEFAULT NULL,
  `rd_unidad_medida` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `rd_fabricante` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `rd_lote` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `rd_serie` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `rd_comentario` longtext COLLATE utf8mb4_general_ci,
  `rd_estado` char(4) COLLATE utf8mb4_general_ci DEFAULT 'ACTI',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='	';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'ADMIN', 'web', '2022-07-21 22:27:39', '2022-07-21 22:27:39'),
(2, 'OPERADOR', 'web', '2022-07-21 22:27:39', '2022-07-21 22:27:39'),
(3, 'ASISTENTE', 'web', '2022-07-21 22:27:39', '2022-07-21 22:27:39'),
(4, 'CLIENTE', 'web', '2022-07-21 22:27:39', '2022-07-21 22:27:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 1),
(2, 2),
(3, 1),
(4, 1),
(5, 1),
(5, 2),
(5, 3),
(6, 1),
(6, 2),
(7, 1),
(8, 1),
(8, 2),
(8, 3),
(9, 1),
(9, 2),
(10, 1),
(11, 1),
(11, 2),
(12, 1),
(12, 2),
(13, 1),
(14, 1),
(15, 1),
(15, 2),
(16, 1),
(16, 2),
(17, 1),
(17, 2),
(18, 1),
(19, 1),
(19, 2),
(20, 1),
(20, 2),
(21, 1),
(21, 2),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint UNSIGNED NOT NULL,
  `keep` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tasks`
--

INSERT INTO `tasks` (`id`, `keep`, `created_at`, `updated_at`) VALUES
(1, 'Dignissimos ipsum sit et voluptas dignissimos vero maiores aut.', '2022-03-17 18:10:27', '2022-03-17 18:10:27'),
(2, 'Dolorem voluptatem non pariatur delectus molestias.', '2022-03-17 18:10:27', '2022-03-17 18:10:27'),
(3, 'Voluptas non qui omnis omnis nemo totam.', '2022-03-17 18:10:27', '2022-03-17 18:10:27'),
(4, 'Natus optio ipsum eligendi aut reprehenderit sed ut.', '2022-03-17 18:10:27', '2022-03-17 18:10:27'),
(5, 'Minima corrupti eos est ab.', '2022-03-17 18:10:27', '2022-03-17 18:10:27'),
(6, 'Est sunt libero enim dolorem aut dignissimos qui laborum.', '2022-03-17 18:15:33', '2022-03-17 18:15:33'),
(7, 'Voluptatibus cupiditate qui minus assumenda sint.', '2022-03-17 18:15:33', '2022-03-17 18:15:33'),
(8, 'Sed voluptates est non et.', '2022-03-17 18:15:33', '2022-03-17 18:15:33'),
(9, 'Dolorum ut vel laboriosam mollitia eos et.', '2022-03-17 18:15:33', '2022-03-17 18:15:33'),
(10, 'Aut ut ad sed dolor.', '2022-03-17 18:15:33', '2022-03-17 18:15:33'),
(11, 'Quia amet est illo ut accusantium.', '2022-04-22 14:34:00', '2022-04-22 14:34:00'),
(12, 'Totam et voluptatem dolorum et.', '2022-04-22 14:34:01', '2022-04-22 14:34:01'),
(13, 'Nam ab sapiente deleniti voluptatem accusantium natus.', '2022-04-22 14:34:01', '2022-04-22 14:34:01'),
(14, 'Est dolor dolor tempora fugit saepe a.', '2022-04-22 14:34:01', '2022-04-22 14:34:01'),
(15, 'Sit animi cum aut dolor hic excepturi.', '2022-04-22 14:34:01', '2022-04-22 14:34:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_documentos`
--

CREATE TABLE `tipo_documentos` (
  `tipo_docu_id` int NOT NULL,
  `tipo_docu_nombre` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tipo_docu_estado` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_documentos`
--

INSERT INTO `tipo_documentos` (`tipo_docu_id`, `tipo_docu_nombre`, `tipo_docu_estado`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'DNI', 'ACTI', NULL, NULL, NULL),
(2, 'BREVETE', 'ACTI', NULL, NULL, NULL),
(3, 'CARNET EXTRANJERIA', 'ACTI', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_movimiento`
--

CREATE TABLE `tipo_movimiento` (
  `tm_id` int NOT NULL,
  `tm_nombre` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tm_codigo` char(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tm_estado` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_movimiento`
--

INSERT INTO `tipo_movimiento` (`tm_id`, `tm_nombre`, `tm_codigo`, `tm_estado`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'INGRESO', 'INGRESO', NULL, NULL, NULL, NULL),
(2, 'DESPACHO', 'DESPACHO', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidad_medida`
--

CREATE TABLE `unidad_medida` (
  `id` int NOT NULL,
  `unid_codigo` char(5) COLLATE utf8mb4_general_ci NOT NULL,
  `unid_nombre` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `unid_orden` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `unidad_medida`
--

INSERT INTO `unidad_medida` (`id`, `unid_codigo`, `unid_nombre`, `unid_orden`, `created_at`, `deleted_at`, `updated_at`) VALUES
(1, 'CAJAS', 'CAJAS', 1, '2022-03-17 05:00:00', NULL, NULL),
(2, 'BOLSA', 'BOLSAS', 2, '2022-03-17 05:00:00', NULL, NULL),
(3, 'PAQUE', 'PAQUETES', 3, '2022-03-17 05:00:00', NULL, NULL),
(4, 'BARRI', 'BARRILES', 4, '2022-03-17 05:00:00', NULL, NULL),
(5, 'CONO', 'CONO', 1, '2022-04-22 05:00:00', NULL, NULL),
(6, 'BALDE', 'BALDES', NULL, '2021-02-26 00:22:30', NULL, NULL),
(7, 'TANQU', 'TANQUES', NULL, '2021-02-26 00:18:58', NULL, NULL),
(8, 'UNI', 'UNIDADES', 1, '2022-06-22 20:27:19', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estado` char(9) COLLATE utf8mb4_unicode_ci DEFAULT 'ACTI',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `estado`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Test Adminisrador', 'saavedraphp@gmail.com', NULL, '$2y$10$BU5NWnrdlt.RJDJfodtove0DuF1GcL3XNLP4/SxKuqKY4x4Ux.2Xi', 'DF8PTrszTkWEOHUWDu6XU3mcSZqEqU98am7zv8svB0dDaqIJLKfAOoljiGvt', 'ACTI', '2022-02-24 16:10:10', '2022-08-01 20:11:34', NULL),
(3, 'Eduardo Grillo', 'egrillo@almagri.com', NULL, '$2y$10$yqJ/6zF1.kpUUuIpWX208uudTDgNMM5HK.4sz2xVe5Nmnxl2mlMg.', 'KQ3Ie48mQL7RsryS0KsHiqXXT04PErS1g005OnrshsM2V95BMvtvX5QbDTC8', 'ACTI', '2022-02-26 05:22:30', '2022-08-01 20:10:56', NULL),
(18, 'EMPRESA TES', 'empresates@gmail.com', NULL, '$2y$10$qYHujhwwqKML9RzVG1pgzu67dVSt2we1JYKDxUHbSy0Gd7CJbCVqu', NULL, 'ACTI', '2022-06-22 17:17:57', '2022-07-13 22:13:11', '2022-07-13 22:13:11'),
(19, 'VOLF PERU SAC', 'martin@volfperu.com', NULL, '$2y$10$SRUVdI3AUm8qY7ZRWUFJcu.NIs.ked85PQNl3.Qzp2sFjM.9zXk4G', NULL, 'ACTI', '2022-06-24 23:05:57', '2022-07-16 18:29:21', '2022-07-16 18:29:21'),
(20, 'MERQHATU HORECA SAC', 'empresas@merqhatuperu.com', NULL, '$2y$10$4zTWu.7a.gI0/JXTTmQC/Ov.UKtZCCthtImWfaPkYvUB90gXdCAO6', NULL, 'ACTI', '2022-06-25 18:52:11', '2022-12-19 15:45:46', NULL),
(21, 'ANDANA REPRESENTACIONES SAC', 'lbacigalupo@andana.com.pe', NULL, '$2y$10$SXOa.c879ff.Ll3M1eDSCOjCUtzBGFFwq0zOuSd0d23k9GjHCHY5q', NULL, 'ACTI', '2022-06-27 22:18:43', '2022-07-16 18:34:09', '2022-07-16 18:34:09'),
(22, 'INNOVA INFORMATION TECHNOLOGY & COMMUNICATIONS SAC', 'roy.rodriguez@innova-itc.com', NULL, '$2y$10$0oGc8JQQ9pKymkh05v4H7O2OVVgfCLwQRPvFsC/9/.5UBTAjnKlgG', NULL, 'ACTI', '2022-06-27 23:38:01', '2022-06-27 23:38:01', NULL),
(23, 'EMPRESA-TEST23', 'empresa-test@gmail.com', NULL, '$2y$10$FAKB597pWCNh9HMpPMRKE.eMNPn4Fzsw67euw2IIFvgpl95X7LjK2', NULL, 'ACTI', '2022-07-13 22:53:55', '2022-08-15 20:03:20', '2022-08-15 20:03:20'),
(26, 'VOLF PERU SAC', 'martin@volfperu.com', NULL, '$2y$10$dJfvBUYzhIpPYtKVXL7NuuiPd/257HJ/dZUoysPPKDuk5yU/FUtbq', NULL, 'ACTI', '2022-07-16 18:30:37', '2022-12-12 16:12:49', NULL),
(27, 'TRADING VENTURES SAC', 'almacen@itvperu.com', NULL, '$2y$10$UO2MnLmel9tWt4FOKH/lM.un6OwL6a9nAeIXB0f/wku7pXqjXo0a2', NULL, 'ACTI', '2022-07-16 18:43:41', '2022-07-16 18:43:41', NULL),
(28, 'KBM SERVICIOS GENERALES S.A.C', 'prueba@prueba.com', NULL, '$2y$10$orzDe4MHH0Tapz1j3Om0qemEbbcUIVTfMLEzip5ilO9oluxnHu7WS', NULL, 'ACTI', '2022-07-16 18:52:30', '2022-07-16 18:53:47', '2022-07-16 18:53:47'),
(29, 'Frank Bautista', 'fcueva@almagri.com', NULL, '$2y$10$nkQGWsI9MoEOKsqJZ0ZId.reETgkNQ12ERi6RyT4RYNIiLXZNoHeu', NULL, 'ACTI', '2022-08-01 20:05:57', '2022-08-01 20:05:57', NULL),
(30, 'Renzo Grillo', 'rgrillo@almagri.com', NULL, '$2y$10$YtLKLFRCIn5FZfhwTUFKB.YbRnWlaMFm3sBOamlIOIQ7PWm5XhMgq', NULL, 'ACTI', '2022-08-01 20:10:32', '2022-08-01 20:10:32', NULL),
(31, 'THE SPIRIT COMPANY SAC', 'gabriel.hurtado@probaar.co', NULL, '$2y$10$kjFMaz9gsmvQqhz5Ffq5meXp1BTz2bkCIEIGSsJvFYTC9Abp9M4ge', NULL, 'ACTI', '2023-01-10 16:50:04', '2023-01-10 16:50:04', NULL),
(32, 'Edwar Justo Miraval', 'ejusto@almagri.com', NULL, '$2y$10$ogZcze6ul1JuHI1IypqaseugitUd1uVB2mtfTiTDNk7rjpKsHIgo6', NULL, 'ACTI', '2023-01-27 21:41:55', '2023-01-27 21:41:55', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `usua_id` int UNSIGNED NOT NULL,
  `usua_nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `usua_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `usua_f_nacimiento` datetime DEFAULT NULL,
  `pais_id` int DEFAULT NULL,
  `estado_id` int DEFAULT NULL,
  `ciudad_id` int DEFAULT NULL,
  `usua_direccion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `usua_code_zip` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actas`
--
ALTER TABLE `actas`
  ADD PRIMARY KEY (`acta_id`),
  ADD KEY `fk_empresas_idx` (`empr_id`),
  ADD KEY `fk_servicios_x_acta_idx` (`tipo_movimiento_codigo`),
  ADD KEY `fk_tipo_documentos_x_acta_idx` (`tipo_docu_id`);

--
-- Indices de la tabla `casillas_empresas`
--
ALTER TABLE `casillas_empresas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_casillas` (`rc_id`),
  ADD KEY `fk_empresa_casilla` (`empr_id`);

--
-- Indices de la tabla `categoria_producto`
--
ALTER TABLE `categoria_producto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ciudades`
--
ALTER TABLE `ciudades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `contactos_x_empresa`
--
ALTER TABLE `contactos_x_empresa`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`empr_id`),
  ADD KEY `fk_user_id` (`user_id`);

--
-- Indices de la tabla `entidades`
--
ALTER TABLE `entidades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estados`
--
ALTER TABLE `estados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `kardex`
--
ALTER TABLE `kardex`
  ADD PRIMARY KEY (`kard_id`),
  ADD KEY `fk_kardex_idx` (`prod_id`),
  ADD KEY `fk_actas_idx` (`acta_id`),
  ADD KEY `fk_lote_idx` (`lote_id`);

--
-- Indices de la tabla `lotes`
--
ALTER TABLE `lotes`
  ADD PRIMARY KEY (`lote_id`);

--
-- Indices de la tabla `lote_x_producto`
--
ALTER TABLE `lote_x_producto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_COUNTRIES_NAME` (`pais_nombre`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`(191));

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `productos_x_empresa`
--
ALTER TABLE `productos_x_empresa`
  ADD PRIMARY KEY (`prod_id`),
  ADD KEY `fk_presentaciones_idx` (`unidad_id`),
  ADD KEY `fk_empresas_idx` (`empr_id`),
  ADD KEY `fk_categoria_producto_idx` (`categoria_id`);

--
-- Indices de la tabla `racks`
--
ALTER TABLE `racks`
  ADD PRIMARY KEY (`rack_id`);

--
-- Indices de la tabla `racks_casillas`
--
ALTER TABLE `racks_casillas`
  ADD PRIMARY KEY (`rc_id`),
  ADD KEY `fk_rack_idx` (`rack_id`);

--
-- Indices de la tabla `registro_detalle`
--
ALTER TABLE `registro_detalle`
  ADD PRIMARY KEY (`rd_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_documentos`
--
ALTER TABLE `tipo_documentos`
  ADD PRIMARY KEY (`tipo_docu_id`);

--
-- Indices de la tabla `tipo_movimiento`
--
ALTER TABLE `tipo_movimiento`
  ADD PRIMARY KEY (`tm_id`);

--
-- Indices de la tabla `unidad_medida`
--
ALTER TABLE `unidad_medida`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usua_id`),
  ADD KEY `usuarios_pais_id_foreign` (`pais_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actas`
--
ALTER TABLE `actas`
  MODIFY `acta_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT de la tabla `casillas_empresas`
--
ALTER TABLE `casillas_empresas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `contactos_x_empresa`
--
ALTER TABLE `contactos_x_empresa`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `empresas`
--
ALTER TABLE `empresas`
  MODIFY `empr_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `entidades`
--
ALTER TABLE `entidades`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `kardex`
--
ALTER TABLE `kardex`
  MODIFY `kard_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1061;

--
-- AUTO_INCREMENT de la tabla `lotes`
--
ALTER TABLE `lotes`
  MODIFY `lote_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `lote_x_producto`
--
ALTER TABLE `lote_x_producto`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=480;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `productos_x_empresa`
--
ALTER TABLE `productos_x_empresa`
  MODIFY `prod_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=613;

--
-- AUTO_INCREMENT de la tabla `racks`
--
ALTER TABLE `racks`
  MODIFY `rack_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `racks_casillas`
--
ALTER TABLE `racks_casillas`
  MODIFY `rc_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=350;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `tipo_documentos`
--
ALTER TABLE `tipo_documentos`
  MODIFY `tipo_docu_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipo_movimiento`
--
ALTER TABLE `tipo_movimiento`
  MODIFY `tm_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `unidad_medida`
--
ALTER TABLE `unidad_medida`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `usua_id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `casillas_empresas`
--
ALTER TABLE `casillas_empresas`
  ADD CONSTRAINT `fk_casillas` FOREIGN KEY (`rc_id`) REFERENCES `racks_casillas` (`rc_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_empresa_casilla` FOREIGN KEY (`empr_id`) REFERENCES `empresas` (`empr_id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `productos_x_empresa`
--
ALTER TABLE `productos_x_empresa`
  ADD CONSTRAINT `fk_categoria_producto` FOREIGN KEY (`categoria_id`) REFERENCES `categoria_producto` (`id`),
  ADD CONSTRAINT `fk_empresa_producto` FOREIGN KEY (`empr_id`) REFERENCES `empresas` (`empr_id`),
  ADD CONSTRAINT `fk_unidad_medida` FOREIGN KEY (`unidad_id`) REFERENCES `unidad_medida` (`id`);

--
-- Filtros para la tabla `racks_casillas`
--
ALTER TABLE `racks_casillas`
  ADD CONSTRAINT `fk_rack` FOREIGN KEY (`rack_id`) REFERENCES `racks` (`rack_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
