-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 22-08-2020 a las 17:32:17
-- Versión del servidor: 8.0.18
-- Versión de PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sgi`
--
CREATE DATABASE IF NOT EXISTS `sgi` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sgi`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `computadoras`
--
-- Creación: 17-07-2020 a las 22:19:39
--

DROP TABLE IF EXISTS `computadoras`;
CREATE TABLE IF NOT EXISTS `computadoras` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `hostname` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `descripcion` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `capacidad_disco` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `memoria_ram` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `tcomputadora_id` int(10) UNSIGNED NOT NULL,
  `marca_id` int(10) UNSIGNED NOT NULL,
  `modelo_id` int(10) UNSIGNED NOT NULL,
  `Procesador_id` int(10) UNSIGNED NOT NULL,
  `sistema_operativo_id` int(10) UNSIGNED NOT NULL,
  `usuario_id` int(10) UNSIGNED NOT NULL,
  `serial` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `estado_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_dispositvo_Procesador1` (`Procesador_id`),
  KEY `fk_computadoras_sistema_operativo1` (`sistema_operativo_id`),
  KEY `fk_computadoras_marca1` (`marca_id`),
  KEY `fk_computadoras_estado1` (`estado_id`),
  KEY `fk_computadoras_tcomputadora1` (`tcomputadora_id`),
  KEY `fk_computadoras_usuario1_idx` (`usuario_id`),
  KEY `fk_computadoras_modelo1_idx` (`modelo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `computadoras`
--

INSERT INTO `computadoras` (`id`, `hostname`, `descripcion`, `capacidad_disco`, `memoria_ram`, `tcomputadora_id`, `marca_id`, `modelo_id`, `Procesador_id`, `sistema_operativo_id`, `usuario_id`, `serial`, `estado_id`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'stirdy06', 'Sin comentarios', '700 Gb', '1 Tb', 2, 1, 14, 20, 6, 32, '5KQFFV1', 1, '2017-08-01 16:48:00', '0000-00-00 00:00:00', 6, 0),
(2, 'stirdy02', 'Sin comentarios', '700 Gb', '8 Gb', 2, 8, 10, 29, 4, 33, '2D116247Q', 1, '2017-08-01 16:53:12', '0000-00-00 00:00:00', 6, 0),
(4, 'stigdd06', 'Sin comentarios', '1 TB', '16 Gb', 2, 1, 12, 19, 3, 2, '18TZQY1', 1, '2017-08-01 18:23:33', '0000-00-00 00:00:00', 6, 0),
(5, 'stirdy11', 'Sin comentarios', '1 TB', '8 Gb', 2, 1, 12, 19, 3, 49, 'JXFZQY1', 1, '2017-08-01 18:29:43', '0000-00-00 00:00:00', 6, 0),
(6, 'stirdy09', 'Sin comentarios', '700 Gb', '8 Gb', 2, 1, 13, 30, 3, 38, 'F7XPRQ1', 1, '2017-08-01 18:33:23', '0000-00-00 00:00:00', 6, 0),
(7, 'stirdy07', 'Sin comentarios', '1 TB', '8 Gb', 2, 1, 14, 20, 5, 35, '5VDFHV1', 1, '2017-08-01 18:40:01', '0000-00-00 00:00:00', 6, 0),
(10, 'stirdy08', 'Sin comentarios', '1 TB', '12 Gb', 2, 8, 11, 29, 5, 36, '3D131345Q', 1, '2017-08-01 18:44:44', '0000-00-00 00:00:00', 6, 0),
(13, 'stirdy04', 'Sin comentarios', '1 TB', '16 Gb', 2, 2, 16, 22, 3, 31, '2CE1462SB0', 1, '2017-08-01 18:51:20', '0000-00-00 00:00:00', 6, 0),
(15, 'stirdy10', 'Sin comentarios', '1 TB', '12 Gb', 2, 2, 15, 22, 3, 34, '2CE1462SB1', 1, '2017-08-01 18:55:32', '0000-00-00 00:00:00', 6, 0),
(16, 'stisrv05', 'Sin comentarios', '1 TB', '8 Gb', 2, 2, 15, 22, 3, 42, '5CD512BB01', 1, '2017-08-01 18:58:22', '0000-00-00 00:00:00', 6, 0),
(17, 'stiadmg02', 'Sin comentarios', '1 TB', '8 Gb', 2, 1, 12, 19, 3, 11, '7XZXQY1', 1, '2017-08-01 19:00:04', '0000-00-00 00:00:00', 6, 0),
(18, 'stigdd07', 'Sin comentarios', '700 Gb', '8 Gb', 2, 1, 19, 22, 3, 39, 'GSRJ2S1', 1, '2017-08-01 19:14:07', '0000-00-00 00:00:00', 6, 0),
(19, 'stigdd01', 'Sin comentarios', '1 TB', '16 Gb', 2, 2, 16, 21, 3, 3, '5CD512B9ZY', 1, '2017-08-01 19:45:57', '0000-00-00 00:00:00', 6, 0),
(20, 'stimer01', 'Sin comentarios', '700 Gb', '8 Gb', 2, 8, 20, 22, 3, 23, '1C185944K', 1, '2017-08-01 19:48:21', '0000-00-00 00:00:00', 6, 0),
(21, 'stimer02', 'Sin comentarios', '700 Gb', '8 Gb', 2, 8, 20, 22, 3, 24, '1C185416K', 1, '2017-08-01 19:49:18', '0000-00-00 00:00:00', 6, 0),
(22, 'stirrh01', 'Sin comentarios', '500 Gb', '4 Gb', 2, 25, 22, 25, 6, 7, 'B2N0BC02017506', 1, '2017-08-01 20:25:04', '0000-00-00 00:00:00', 6, 0),
(23, 'stirrh02', 'Sin comentarios', '500 Gb', '4 Gb', 2, 25, 23, 25, 3, 8, 'B2N0BC00443005', 1, '2017-08-01 20:26:04', '0000-00-00 00:00:00', 6, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--
-- Creación: 17-07-2020 a las 22:18:26
--

DROP TABLE IF EXISTS `departamento`;
CREATE TABLE IF NOT EXISTS `departamento` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `observacion` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish2_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `descripcion_UNIQUE` (`descripcion`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`id`, `descripcion`, `observacion`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'System', 'Grupo de Sistemas', '2017-06-14 00:58:38', '2017-06-13 20:58:38', 1, 0),
(2, 'Gestion de Disponibilidad', 'Coordinador Juan Carlos Ramos', '2017-06-15 02:14:04', '0000-00-00 00:00:00', 1, 0),
(3, 'Gestión de Capacidad', 'Gestión de Capacidad', '2017-07-03 16:11:07', '2020-03-09 16:40:08', 3, 1),
(4, 'Gestión de Procesos', 'Gestión de Procesos', '2017-07-03 16:11:20', '2020-03-09 16:10:05', 3, 1),
(5, 'Administración', 'Administración', '2017-07-03 16:11:29', '2020-03-09 16:07:45', 3, 1),
(6, 'Mercadeo', 'Mercadeo', '2017-07-03 16:14:23', '0000-00-00 00:00:00', 3, 0),
(7, 'Talento Humano', 'Talento Humano', '2017-07-03 16:14:34', '0000-00-00 00:00:00', 3, 0),
(8, 'Servicios Generales', 'Servicios Generales', '2017-07-03 16:14:49', '0000-00-00 00:00:00', 3, 0),
(9, 'Gestion de Bigdata', 'Gestion de Bigdata', '2017-07-03 16:15:27', '0000-00-00 00:00:00', 3, 0),
(10, 'Gestión de ITSM', 'Gestión de ITSM', '2017-07-03 16:15:39', '2020-03-09 16:40:48', 3, 1),
(11, 'Servicios', 'Servicios', '2017-07-03 16:15:51', '0000-00-00 00:00:00', 3, 0),
(12, 'Ventas', 'Ventas', '2017-07-03 16:15:57', '0000-00-00 00:00:00', 3, 0),
(13, 'Gestión de Mainframe', 'Gestión de Mainframe', '2017-07-03 17:39:04', '2020-03-09 16:41:18', 3, 1),
(14, 'Procura', 'Compras', '2020-03-09 21:09:12', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direccion_ip`
--
-- Creación: 17-07-2020 a las 22:19:44
--

DROP TABLE IF EXISTS `direccion_ip`;
CREATE TABLE IF NOT EXISTS `direccion_ip` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `computadoras_id` int(10) UNSIGNED NOT NULL,
  `direccion_ip` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `observaciones` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish2_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_direccion_ip_computadoras1` (`computadoras_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `direccion_ip`
--

INSERT INTO `direccion_ip` (`id`, `computadoras_id`, `direccion_ip`, `observaciones`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 1, '10.0.3.100', NULL, '2017-08-01 16:48:00', '0000-00-00 00:00:00', 6, 0),
(2, 2, '10.0.3.103', NULL, '2017-08-01 16:53:12', '0000-00-00 00:00:00', 6, 0),
(4, 4, '10.0.3.83', NULL, '2017-08-01 18:23:33', '0000-00-00 00:00:00', 6, 0),
(5, 5, '10.0.3.117', NULL, '2017-08-01 18:29:43', '0000-00-00 00:00:00', 6, 0),
(6, 6, '10.0.3.99', NULL, '2017-08-01 18:33:23', '0000-00-00 00:00:00', 6, 0),
(7, 7, '10.0.3.112', NULL, '2017-08-01 18:40:02', '0000-00-00 00:00:00', 6, 0),
(8, 10, '10.0.3.98', NULL, '2017-08-01 18:44:44', '0000-00-00 00:00:00', 6, 0),
(9, 13, '10.0.3.102', NULL, '2017-08-01 18:51:20', '0000-00-00 00:00:00', 6, 0),
(10, 15, '10.0.3.101', NULL, '2017-08-01 18:55:32', '0000-00-00 00:00:00', 6, 0),
(11, 16, '10.0.3.115', NULL, '2017-08-01 18:58:22', '0000-00-00 00:00:00', 6, 0),
(12, 17, '10.0.4.3', NULL, '2017-08-01 19:00:04', '0000-00-00 00:00:00', 6, 0),
(13, 18, '10.0.3.70', NULL, '2017-08-01 19:14:07', '0000-00-00 00:00:00', 6, 0),
(14, 19, '10.0.3.77', NULL, '2017-08-01 19:45:57', '0000-00-00 00:00:00', 6, 0),
(15, 20, '10.0.4.91', NULL, '2017-08-01 19:48:21', '0000-00-00 00:00:00', 6, 0),
(16, 21, '10.0.4.88', NULL, '2017-08-01 19:49:18', '0000-00-00 00:00:00', 6, 0),
(17, 22, '10.0.4.73', NULL, '2017-08-01 20:25:04', '0000-00-00 00:00:00', 6, 0),
(18, 23, '10.0.4.66', NULL, '2017-08-01 20:26:05', '0000-00-00 00:00:00', 6, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `esolicitud`
--
-- Creación: 17-07-2020 a las 22:17:24
--

DROP TABLE IF EXISTS `esolicitud`;
CREATE TABLE IF NOT EXISTS `esolicitud` (
  `id` int(11) NOT NULL,
  `estado` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Estado de la Solicitud',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Campo de auditoria que permite realizar el seguimiento de los registros',
  `updated_at` datetime NOT NULL COMMENT 'Campo de auditoria que permite realizar el seguimiento de los registros',
  `created_by` int(10) UNSIGNED NOT NULL COMMENT 'Campo de auditoria que permite realizar el seguimiento de los registros',
  `updated_by` int(10) UNSIGNED NOT NULL COMMENT 'Campo de auditoria que permite realizar el seguimiento de los registros',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `esolicitud`
--

INSERT INTO `esolicitud` (`id`, `estado`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(0, 'Abierta', '2017-07-06 18:11:22', '0000-00-00 00:00:00', 0, 0),
(1, 'En Curso', '2017-07-06 18:11:22', '0000-00-00 00:00:00', 0, 0),
(2, 'Cerrada', '2017-07-06 18:11:53', '0000-00-00 00:00:00', 0, 0),
(3, 'Resuelta', '2017-07-06 18:11:53', '0000-00-00 00:00:00', 0, 0),
(4, 'Cancelada', '2017-07-06 18:12:16', '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--
-- Creación: 17-07-2020 a las 22:18:32
--

DROP TABLE IF EXISTS `estado`;
CREATE TABLE IF NOT EXISTS `estado` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`id`, `descripcion`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'Asignado', '2017-06-21 22:33:34', '0000-00-00 00:00:00', 1, 0),
(2, 'Prestamo', '2017-06-21 22:33:44', '0000-00-00 00:00:00', 1, 0),
(3, 'Depósito', '2017-07-12 19:08:51', '2020-07-13 16:57:24', 0, 1),
(4, 'Disponible', '2017-07-12 19:08:51', '0000-00-00 00:00:00', 0, 0),
(5, 'En Stock', '2017-07-12 19:09:48', '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--
-- Creación: 17-07-2020 a las 22:18:35
--

DROP TABLE IF EXISTS `marca`;
CREATE TABLE IF NOT EXISTS `marca` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `descripcion_UNIQUE` (`descripcion`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `marca`
--

INSERT INTO `marca` (`id`, `descripcion`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'DELL', '2017-06-21 21:56:22', '0000-00-00 00:00:00', 1, 0),
(2, 'Hewlett-Packard', '2017-06-21 21:56:52', '0000-00-00 00:00:00', 1, 0),
(3, 'Intell', '2017-06-22 01:44:25', '0000-00-00 00:00:00', 1, 0),
(8, 'TOSHIBA', '2017-07-12 17:19:42', '0000-00-00 00:00:00', 6, 0),
(9, 'Microsoft', '2017-07-13 15:10:20', '0000-00-00 00:00:00', 6, 0),
(10, 'Targus', '2017-07-13 15:14:53', '0000-00-00 00:00:00', 6, 0),
(11, 'Delux', '2017-07-13 15:15:07', '0000-00-00 00:00:00', 6, 0),
(12, 'Logitech', '2017-07-13 15:15:19', '0000-00-00 00:00:00', 6, 0),
(13, 'Masell', '2017-07-13 15:15:30', '0000-00-00 00:00:00', 6, 0),
(14, 'Lenovo', '2017-07-13 15:15:43', '0000-00-00 00:00:00', 6, 0),
(15, 'Inalambrico', '2017-07-13 18:10:43', '0000-00-00 00:00:00', 6, 0),
(16, 'Alambrico', '2017-07-13 18:11:19', '0000-00-00 00:00:00', 6, 0),
(17, 'Genius', '2017-07-13 18:49:40', '0000-00-00 00:00:00', 6, 0),
(18, 'Samsung', '2017-07-13 20:21:34', '0000-00-00 00:00:00', 6, 0),
(19, 'Hp', '2017-07-13 20:21:38', '0000-00-00 00:00:00', 6, 0),
(20, 'Sandisk', '2017-07-13 20:24:06', '0000-00-00 00:00:00', 6, 0),
(21, 'Seagate', '2017-07-13 20:30:22', '0000-00-00 00:00:00', 6, 0),
(22, 'Usa-net', '2017-07-14 19:27:09', '0000-00-00 00:00:00', 6, 0),
(23, 'DVDwriter', '2017-07-14 19:27:20', '0000-00-00 00:00:00', 6, 0),
(24, 'SUN microsystem', '2017-07-14 19:34:04', '0000-00-00 00:00:00', 6, 0),
(25, 'ASUSTeK Computer Inc', '2017-08-01 20:22:22', '0000-00-00 00:00:00', 6, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--
-- Creación: 17-07-2020 a las 22:19:48
--

DROP TABLE IF EXISTS `menu`;
CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `tipo_menu_id` int(10) UNSIGNED NOT NULL,
  `etiqueta` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `posicion` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `icono` varchar(35) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_menu_menu1` (`menu_id`),
  KEY `fk_menu_tipo_menu1` (`tipo_menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `menu`
--

INSERT INTO `menu` (`id`, `menu_id`, `tipo_menu_id`, `etiqueta`, `url`, `posicion`, `icono`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, NULL, 1, 'Registros', 'http://sgi.sti.com.ve/', 1, 'fa fa-exchange', '2017-06-21 22:52:36', '2017-07-13 14:01:11', 1, 1),
(2, NULL, 1, 'Navegacion', 'http://sgi.sti.com.ve/', 3, 'fa fa-bars', '2017-06-21 22:52:57', '0000-00-00 00:00:00', 1, 0),
(3, NULL, 1, 'Inventario', 'http://sgi.sti.com.ve/', 4, 'fa fa-desktop', '2017-06-21 22:56:04', '2017-06-21 18:56:23', 1, 1),
(4, NULL, 1, 'Seguridad', 'http://sgi.sti.com.ve/', 5, 'fa fa-lock', '2017-06-21 22:58:43', '0000-00-00 00:00:00', 1, 0),
(5, 1, 1, 'Estados', 'admin/generales/estado', 1, 'fa fa-tags', '2017-06-21 23:00:52', '2017-06-21 19:46:14', 1, 1),
(6, 1, 1, 'Sistema Operativo', 'admin/generales/sistema_operativo', 2, 'fa fa-windows', '2017-06-21 23:02:41', '2017-06-21 19:46:23', 1, 1),
(7, 2, 1, 'Lista Menu', 'admin/navegacion/menu/ ', 2, 'fa fa-maxcdn', '2017-06-21 23:04:11', '2017-06-21 19:46:38', 1, 1),
(8, 2, 1, 'Tipo Menu', 'admin/navegacion/tipo-menu/', 1, 'fa fa-maxcdn', '2017-06-21 23:04:58', '2017-06-21 19:46:31', 1, 1),
(9, 1, 1, 'Marcas', 'admin/inventario/marca', 4, 'fa  fa-registered', '2017-06-21 23:09:04', '2017-06-21 19:46:46', 1, 1),
(10, 1, 1, 'Modelos', 'admin/inventario/modelo', 5, 'fa  fa-registered', '2017-06-21 23:09:37', '2017-06-21 19:46:55', 1, 1),
(11, 1, 1, 'Tipos de Perifericos', 'admin/inventario/tperiferico', 7, 'fa fa-plug', '2017-06-21 23:11:11', '2017-06-21 19:47:03', 1, 1),
(12, 1, 1, 'Dispositivos de Red', 'admin/inventario/tred', 8, 'fa fa-sitemap', '2017-06-21 23:14:03', '2017-06-21 19:47:12', 1, 1),
(13, 1, 1, 'Tipos de Computadoras', 'admin/inventario/tcomputadora', 6, 'fa fa-server', '2017-06-21 23:15:16', '2017-06-21 19:47:21', 1, 1),
(14, 4, 1, 'Departamentos', 'admin/seguridad/departamento', 2, 'fa fa-institution', '2017-06-21 23:17:00', '2020-07-21 17:11:02', 1, 1),
(15, 4, 1, 'Usuarios', 'admin/seguridad/usuario', 3, 'fa fa-user-plus', '2017-06-21 23:17:46', '2017-06-21 19:47:37', 1, 1),
(16, 4, 1, 'Permisos', 'admin/seguridad/permiso', 4, 'fa fa-user-secret', '2017-06-21 23:18:38', '2017-06-21 19:47:47', 1, 1),
(17, 4, 1, 'Roles', 'admin/seguridad/rol', 5, 'fa fa-users', '2017-06-21 23:19:22', '2017-06-21 19:47:55', 1, 1),
(18, 4, 1, 'Asignar Permisos', 'admin/seguridad/permiso_rol', 6, 'fa fa-user-secret', '2017-06-21 23:20:11', '2017-06-21 19:48:04', 1, 1),
(19, 4, 1, 'Asignar Menu', 'admin/navegacion/menu_rol', 7, 'fa fa-user-plus', '2017-06-21 23:20:55', '2017-06-21 19:48:12', 1, 1),
(20, 4, 1, 'Crear Menu', 'admin/navegacion/menu/crear-archivos', 8, 'fa fa-history', '2017-06-21 23:21:59', '2017-06-21 19:48:20', 1, 1),
(21, 4, 1, 'Crear Permisos', 'admin/seguridad/permiso/crear_archivos', 9, 'fa  fa-unlock', '2017-06-21 23:27:08', '2017-06-21 19:48:29', 1, 1),
(22, 1, 1, 'Procesador', 'admin/generales/Procesador', 3, 'fa  fa-cube', '2017-06-22 01:55:59', '2017-07-13 14:02:17', 1, 1),
(23, 3, 1, 'Computadoras', 'dashboard/computadoras', 1, 'fa fa-desktop', '2017-06-22 21:40:46', '0000-00-00 00:00:00', 1, 0),
(24, 3, 1, 'Perifericos', 'dashboard/periferico/', 2, 'fa fa-plug', '2017-06-23 01:12:24', '2017-06-22 21:12:33', 1, 1),
(25, 3, 1, 'Dispositivo de Red', 'dashboard/red', 3, 'fa fa-exchange', '2017-06-23 17:25:33', '0000-00-00 00:00:00', 1, 0),
(26, NULL, 1, 'Solicitudes', 'dashboard/solicitudes', 2, 'fa fa-clipboard', '2017-07-06 17:54:00', '0000-00-00 00:00:00', 1, 0),
(27, 26, 1, 'Crear Solicitud', 'dashboard/solicitudes/crear', 1, 'fa fa-check-square-o', '2017-07-06 17:55:25', '0000-00-00 00:00:00', 1, 0),
(28, 4, 1, 'Preguntas', 'admin/seguridad/preguntas/', 1, 'fa fa-key', '2020-07-21 21:09:53', '2020-07-27 13:05:23', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu_rol`
--
-- Creación: 17-07-2020 a las 22:19:51
--

DROP TABLE IF EXISTS `menu_rol`;
CREATE TABLE IF NOT EXISTS `menu_rol` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `rol_id` int(10) UNSIGNED NOT NULL,
  `estado` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_menu_rol_rol1` (`rol_id`),
  KEY `fk_menu_rol_menu1_idx` (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `menu_rol`
--

INSERT INTO `menu_rol` (`id`, `menu_id`, `rol_id`, `estado`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 1, 1, 1, '2017-06-21 23:23:08', '0000-00-00 00:00:00', 1, 0),
(2, 5, 1, 1, '2017-06-21 23:23:09', '0000-00-00 00:00:00', 1, 0),
(3, 6, 1, 1, '2017-06-21 23:23:12', '0000-00-00 00:00:00', 1, 0),
(4, 2, 1, 1, '2017-06-21 23:23:13', '0000-00-00 00:00:00', 1, 0),
(5, 8, 1, 1, '2017-06-21 23:23:14', '0000-00-00 00:00:00', 1, 0),
(6, 7, 1, 1, '2017-06-21 23:23:15', '0000-00-00 00:00:00', 1, 0),
(7, 3, 1, 1, '2017-06-21 23:23:16', '0000-00-00 00:00:00', 1, 0),
(8, 9, 1, 1, '2017-06-21 23:23:17', '0000-00-00 00:00:00', 1, 0),
(9, 10, 1, 1, '2017-06-21 23:23:20', '0000-00-00 00:00:00', 1, 0),
(10, 11, 1, 1, '2017-06-21 23:23:22', '0000-00-00 00:00:00', 1, 0),
(11, 12, 1, 1, '2017-06-21 23:23:23', '0000-00-00 00:00:00', 1, 0),
(12, 13, 1, 1, '2017-06-21 23:23:25', '0000-00-00 00:00:00', 1, 0),
(13, 4, 1, 1, '2017-06-21 23:23:26', '0000-00-00 00:00:00', 1, 0),
(14, 14, 1, 1, '2017-06-21 23:23:26', '0000-00-00 00:00:00', 1, 0),
(15, 15, 1, 1, '2017-06-21 23:23:27', '0000-00-00 00:00:00', 1, 0),
(16, 16, 1, 1, '2017-06-21 23:23:28', '0000-00-00 00:00:00', 1, 0),
(17, 17, 1, 1, '2017-06-21 23:23:29', '0000-00-00 00:00:00', 1, 0),
(18, 18, 1, 1, '2017-06-21 23:23:30', '0000-00-00 00:00:00', 1, 0),
(19, 19, 1, 1, '2017-06-21 23:23:31', '0000-00-00 00:00:00', 1, 0),
(20, 20, 1, 1, '2017-06-21 23:23:32', '0000-00-00 00:00:00', 1, 0),
(21, 21, 1, 1, '2017-06-22 01:56:27', '0000-00-00 00:00:00', 1, 0),
(22, 22, 1, 1, '2017-06-22 01:58:45', '0000-00-00 00:00:00', 1, 0),
(23, 23, 1, 1, '2017-06-22 21:41:22', '0000-00-00 00:00:00', 1, 0),
(24, 24, 1, 1, '2017-06-23 01:12:46', '0000-00-00 00:00:00', 1, 0),
(25, 25, 1, 1, '2017-06-23 17:26:28', '0000-00-00 00:00:00', 1, 0),
(26, 1, 2, 0, '2017-06-30 21:03:23', '2017-06-30 17:03:23', 1, 1),
(27, 3, 2, 0, '2017-06-30 21:03:28', '2017-07-06 13:59:19', 1, 1),
(28, 23, 2, 0, '2017-06-30 21:03:28', '2017-07-06 13:59:20', 1, 1),
(29, 24, 2, 0, '2017-06-30 21:03:30', '2017-07-06 13:59:21', 1, 1),
(30, 25, 2, 1, '2017-06-30 21:03:31', '0000-00-00 00:00:00', 1, 0),
(31, 26, 1, 1, '2017-07-06 17:55:49', '0000-00-00 00:00:00', 1, 0),
(32, 26, 2, 1, '2017-07-06 17:55:50', '0000-00-00 00:00:00', 1, 0),
(33, 27, 2, 1, '2017-07-06 17:56:03', '0000-00-00 00:00:00', 1, 0),
(34, 27, 1, 1, '2017-07-06 17:56:04', '0000-00-00 00:00:00', 1, 0),
(35, 28, 1, 1, '2020-07-21 21:37:14', '2020-07-27 13:00:39', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--
-- Creación: 17-07-2020 a las 22:16:56
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modelo`
--
-- Creación: 17-07-2020 a las 22:18:44
--

DROP TABLE IF EXISTS `modelo`;
CREATE TABLE IF NOT EXISTS `modelo` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `marca_id` int(10) UNSIGNED NOT NULL,
  `descripcion` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `descripcion_UNIQUE` (`descripcion`),
  KEY `fk_modelo_marca2_idx` (`marca_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `modelo`
--

INSERT INTO `modelo` (`id`, `marca_id`, `descripcion`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 1, 'Inspiron', '2017-06-21 22:04:20', '0000-00-00 00:00:00', 1, 0),
(2, 3, 'Celeron', '2017-06-22 01:44:38', '0000-00-00 00:00:00', 1, 0),
(4, 15, 'inalambrico', '2017-07-13 18:12:54', '0000-00-00 00:00:00', 6, 0),
(5, 16, 'Alambrico', '2017-07-13 18:13:04', '0000-00-00 00:00:00', 6, 0),
(6, 19, '8 Gb', '2017-07-13 20:23:22', '0000-00-00 00:00:00', 6, 0),
(7, 18, '128 Gb', '2017-07-13 20:23:50', '0000-00-00 00:00:00', 6, 0),
(8, 20, '16 Gb', '2017-07-13 20:24:24', '0000-00-00 00:00:00', 6, 0),
(9, 8, '1 Tb', '2017-07-13 20:30:05', '0000-00-00 00:00:00', 6, 0),
(10, 8, 'Satellite L855', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(11, 8, 'Satellite L850', '0000-00-00 00:00:00', '0000-00-00 00:00:01', 1, 0),
(12, 1, 'Inspiron 5537', '0000-00-00 00:00:00', '0000-00-00 00:00:02', 1, 0),
(13, 1, 'Dell XPS L502X', '0000-00-00 00:00:00', '0000-00-00 00:00:03', 1, 0),
(14, 1, 'Inspiron 5520', '0000-00-00 00:00:00', '0000-00-00 00:00:04', 1, 0),
(15, 2, ' pavilion DV6', '0000-00-00 00:00:00', '0000-00-00 00:00:05', 1, 0),
(16, 2, ' Notebook 15', '0000-00-00 00:00:00', '0000-00-00 00:00:06', 1, 0),
(17, 26, 'Clon', '0000-00-00 00:00:00', '0000-00-00 00:00:07', 1, 0),
(18, 8, 'Satellite L645 D', '0000-00-00 00:00:00', '0000-00-00 00:00:08', 1, 0),
(19, 1, 'Inspiron N7110', '0000-00-00 00:00:00', '0000-00-00 00:00:09', 1, 0),
(20, 8, 'Satellite P755', '0000-00-00 00:00:00', '0000-00-00 00:00:10', 1, 0),
(21, 2, 'Pavilion G4', '0000-00-00 00:00:00', '0000-00-00 00:00:11', 1, 0),
(22, 25, 'K52F', '0000-00-00 00:00:00', '0000-00-00 00:00:12', 1, 0),
(23, 25, 'K52JT', '0000-00-00 00:00:00', '0000-00-00 00:00:13', 1, 0),
(24, 14, '1024DRU', '0000-00-00 00:00:00', '0000-00-00 00:00:14', 1, 0),
(25, 1, 'Inspiron 5110', '0000-00-00 00:00:00', '0000-00-00 00:00:15', 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `periferico`
--
-- Creación: 17-07-2020 a las 22:19:55
--

DROP TABLE IF EXISTS `periferico`;
CREATE TABLE IF NOT EXISTS `periferico` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `tipo_periferico_id` int(10) UNSIGNED NOT NULL,
  `marca_id` int(10) UNSIGNED NOT NULL,
  `modelo_id` int(10) UNSIGNED NOT NULL,
  `serial` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `estado_id` int(10) UNSIGNED NOT NULL,
  `usuario_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `serial_UNIQUE` (`serial`),
  KEY `fk_periferico_tipo_periferico1` (`tipo_periferico_id`),
  KEY `fk_periferico_marca1` (`marca_id`),
  KEY `fk_periferico_estado1` (`estado_id`),
  KEY `fk_periferico_usuario1_idx` (`usuario_id`),
  KEY `fk_periferico_modelo1` (`modelo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `periferico`
--

INSERT INTO `periferico` (`id`, `nombre`, `tipo_periferico_id`, `marca_id`, `modelo_id`, `serial`, `estado_id`, `usuario_id`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(4, 'Mouse', 1, 9, 4, '1204004652', 1, 33, '2017-07-13 15:11:13', '2017-07-13 14:16:01', 6, 6),
(5, 'Mouse', 1, 9, 5, 'X822087', 1, 38, '2017-07-13 15:14:39', '2017-07-13 14:15:52', 6, 6),
(6, 'Mouse', 1, 9, 4, '610300537395/X874958-009', 1, 32, '2017-07-13 15:18:10', '2017-07-13 14:15:38', 6, 6),
(7, 'Mouse', 1, 11, 5, 'WZ8DLFAM800', 1, 35, '2017-07-13 15:19:16', '2017-07-13 14:15:26', 6, 6),
(8, 'Mouse', 1, 12, 4, '810-001550', 1, 36, '2017-07-13 15:20:53', '2017-07-13 14:13:49', 6, 6),
(9, 'Mouse', 1, 9, 4, 'X874958-002 061035233523353679201334', 1, 31, '2017-07-13 15:21:38', '2017-07-13 14:16:08', 6, 6),
(10, 'Mouse', 1, 9, 4, 'X73040300961', 1, 34, '2017-07-13 18:18:04', '0000-00-00 00:00:00', 6, 0),
(11, 'Mouse', 1, 13, 4, '3200261256967', 1, 11, '2017-07-13 18:25:42', '0000-00-00 00:00:00', 6, 0),
(12, 'Mouse', 1, 10, 4, '3760A-00030', 1, 17, '2017-07-13 18:26:18', '0000-00-00 00:00:00', 6, 0),
(13, 'Mouse', 1, 9, 5, 'sin comentarios', 1, 15, '2017-07-13 18:26:55', '0000-00-00 00:00:00', 6, 0),
(14, 'Mouse', 1, 9, 5, '204606561900.', 5, 48, '2017-07-13 18:46:22', '2017-07-13 16:19:24', 6, 6),
(15, 'Mouse', 1, 9, 5, '264648656190361000', 1, 16, '2017-07-13 18:47:12', '2017-07-13 16:19:39', 6, 6),
(16, 'Mouse', 1, 9, 5, '204606561889', 1, 13, '2017-07-13 18:48:10', '0000-00-00 00:00:00', 6, 0),
(17, 'Mouse', 1, 10, 4, '3760A-00030.', 1, 14, '2017-07-13 18:49:05', '0000-00-00 00:00:00', 6, 0),
(18, 'Mouse', 1, 17, 5, 'AX80529204814', 1, 12, '2017-07-13 18:50:19', '0000-00-00 00:00:00', 6, 0),
(19, 'Mouse', 1, 9, 4, 'X821325-002', 5, 48, '2017-07-13 18:53:33', '2017-07-13 16:20:47', 6, 6),
(20, 'Mouse', 1, 9, 4, 'X874968-009', 1, 39, '2017-07-13 18:54:52', '0000-00-00 00:00:00', 6, 0),
(21, 'Mouse', 1, 9, 4, 'X874958009', 1, 3, '2017-07-13 18:55:15', '0000-00-00 00:00:00', 6, 0),
(22, 'Mouse', 1, 14, 5, '440222', 1, 23, '2017-07-13 18:55:55', '0000-00-00 00:00:00', 6, 0),
(23, 'Mouse', 1, 9, 5, '204606127890', 1, 24, '2017-07-13 18:56:22', '0000-00-00 00:00:00', 6, 0),
(24, 'Mouse', 1, 9, 5, '204606561902', 1, 25, '2017-07-13 18:56:49', '0000-00-00 00:00:00', 6, 0),
(25, 'Mouse', 1, 12, 4, 'L2040A9', 1, 7, '2017-07-13 18:58:22', '0000-00-00 00:00:00', 6, 0),
(26, 'Mouse', 1, 9, 5, 'X822087-001/modelo 1484', 1, 8, '2017-07-13 18:58:58', '0000-00-00 00:00:00', 6, 0),
(27, 'Mouse', 1, 17, 5, 'YB17C1040517', 1, 9, '2017-07-13 19:00:02', '0000-00-00 00:00:00', 6, 0),
(28, 'Mouse', 1, 9, 5, '352701145286', 1, 20, '2017-07-13 19:00:42', '0000-00-00 00:00:00', 6, 0),
(29, 'Mouse', 1, 9, 5, '204606561901', 1, 21, '2017-07-13 19:01:18', '0000-00-00 00:00:00', 6, 0),
(30, 'Mouse', 1, 9, 5, 'X821909-003', 1, 30, '2017-07-13 19:01:51', '2017-07-13 16:13:34', 6, 6),
(31, 'Mouse', 1, 9, 4, 'X874958-002/06103-523-3536961-01334', 1, 29, '2017-07-13 20:08:47', '0000-00-00 00:00:00', 6, 0),
(32, 'Mouse', 1, 9, 5, '03527-486-1452896-11319', 1, 27, '2017-07-13 20:09:27', '0000-00-00 00:00:00', 6, 0),
(33, 'Mouse', 1, 9, 5, '822087/03527', 1, 28, '2017-07-13 20:09:58', '0000-00-00 00:00:00', 6, 0),
(34, 'Mouse', 1, 10, 5, '1204004750', 4, 40, '2017-07-13 20:10:32', '2017-07-14 15:25:19', 6, 6),
(35, 'Mouse', 1, 10, 5, '1301007988', 1, 22, '2017-07-13 20:10:58', '0000-00-00 00:00:00', 6, 0),
(36, 'Mouse', 1, 9, 5, '352701145282', 1, 6, '2017-07-13 20:11:17', '0000-00-00 00:00:00', 6, 0),
(37, 'Mouse', 1, 14, 5, '4439062', 1, 45, '2017-07-13 20:12:05', '0000-00-00 00:00:00', 6, 0),
(38, 'Mouse', 1, 17, 5, '161263102510', 1, 43, '2017-07-13 20:12:47', '0000-00-00 00:00:00', 6, 0),
(39, 'Mouse', 1, 9, 5, '1405', 1, 44, '2017-07-13 20:13:13', '0000-00-00 00:00:00', 6, 0),
(40, 'Mouse', 1, 9, 5, 'X821909-003.', 1, 46, '2017-07-13 20:14:37', '0000-00-00 00:00:00', 6, 0),
(41, 'Mouse', 1, 9, 5, 'X821909-001', 1, 48, '2017-07-13 20:15:24', '0000-00-00 00:00:00', 6, 0),
(42, 'Mouse', 1, 9, 5, 'X821909-004', 5, 48, '2017-07-13 20:15:57', '2017-07-13 16:19:46', 6, 6),
(43, 'Mouse', 1, 9, 5, 'X821909-005', 1, 48, '2017-07-13 20:16:26', '0000-00-00 00:00:00', 6, 0),
(44, 'Mouse', 1, 9, 5, 'X821909-006', 5, 48, '2017-07-13 20:16:55', '2017-07-13 16:19:57', 6, 6),
(45, 'Mouse', 1, 9, 5, 'X821909-007', 5, 48, '2017-07-13 20:17:27', '2017-07-13 16:20:06', 6, 6),
(46, 'Mouse', 1, 9, 5, 'X821909-008', 1, 48, '2017-07-13 20:17:49', '0000-00-00 00:00:00', 6, 0),
(47, 'Mouse', 1, 9, 5, 'X821909-009', 5, 48, '2017-07-13 20:18:05', '2017-07-13 16:20:31', 6, 6),
(48, 'Mouse', 1, 9, 5, 'X821909-0010', 5, 48, '2017-07-13 20:18:31', '0000-00-00 00:00:00', 6, 0),
(49, 'Mouse', 1, 9, 5, '352701145286.', 1, 10, '2017-07-13 20:19:00', '0000-00-00 00:00:00', 6, 0),
(50, 'Pendrive', 3, 20, 8, '01', 4, 48, '2017-07-13 20:25:17', '2017-07-13 16:25:59', 6, 6),
(51, 'Pendrive', 3, 19, 6, '02', 4, 48, '2017-07-13 20:25:48', '0000-00-00 00:00:00', 6, 0),
(52, 'Pendrive', 3, 18, 7, '03', 4, 48, '2017-07-13 20:26:20', '0000-00-00 00:00:00', 6, 0),
(53, 'Seagate', 5, 21, 9, 'NA52MAWWJ', 4, 48, '2017-07-13 20:31:16', '2017-07-13 16:33:15', 6, 6),
(54, 'Toshiba', 5, 8, 9, 'Z2ANPAIETTV2', 4, 48, '2017-07-13 20:34:18', '0000-00-00 00:00:00', 6, 0),
(55, 'Mouse', 1, 10, 4, '1204004745', 1, 48, '2017-07-14 19:25:06', '0000-00-00 00:00:00', 6, 0),
(56, 'Mouse', 1, 10, 4, '1208000843', 4, 48, '2017-07-14 19:26:02', '0000-00-00 00:00:00', 6, 0),
(57, 'Mouse', 1, 10, 4, '1208000815', 4, 48, '2017-07-14 19:26:37', '2017-07-14 15:26:52', 6, 6),
(58, 'Mouse', 1, 22, 5, 'NA', 4, 48, '2017-07-14 19:27:53', '0000-00-00 00:00:00', 6, 0),
(59, 'DVDwriter', 6, 23, 5, 'SE-208DB/TSBS', 4, 48, '2017-07-14 19:29:12', '2017-07-14 15:29:22', 6, 6),
(60, 'Teclado', 2, 9, 5, '0200704841815', 4, 48, '2017-07-14 19:32:42', '0000-00-00 00:00:00', 6, 0),
(61, 'Teclado', 2, 14, 5, '0353036', 4, 48, '2017-07-14 19:33:27', '0000-00-00 00:00:00', 6, 0),
(62, 'Teclado', 2, 24, 5, '3201271-01', 4, 48, '2017-07-14 19:34:44', '0000-00-00 00:00:00', 6, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permiso`
--
-- Creación: 17-07-2020 a las 22:18:52
--

DROP TABLE IF EXISTS `permiso`;
CREATE TABLE IF NOT EXISTS `permiso` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nombre_a_mostrar` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `observacion` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre_UNIQUE` (`nombre`),
  UNIQUE KEY `nombre_a_mostrar_UNIQUE` (`nombre_a_mostrar`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `permiso`
--

INSERT INTO `permiso` (`id`, `nombre`, `nombre_a_mostrar`, `observacion`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'dashboard/computadoras@index', 'Mostrar Computadora', 'Mostrar Computadora', '2017-06-30 21:11:53', '2017-06-30 17:47:22', 1, 1),
(2, 'dashboard/computadoras@crear', 'Crear Computadora', 'Crear Computadora', '2017-06-30 21:12:19', '2017-07-06 15:36:03', 1, 2),
(3, 'solicitudes@index', 'Mostrar Solicitudes', 'Mostrar Solicitudes', '2017-07-06 17:46:15', '2017-07-06 15:36:19', 1, 2),
(4, 'solicitudes@crear', 'Crear Solicitudes', 'Crear Solicitudes', '2017-07-06 17:51:01', '2017-07-06 15:36:12', 1, 2),
(5, 'solicitudes@getdato', 'Obtener Solicitudes', 'Obtener Solicitudes', '2017-07-26 21:07:46', '2017-07-26 17:08:52', 1, 1),
(6, 'admin/seguridad/usuario@actualizar', 'Modificar Perfil', 'Modificar Perfil', '2017-07-26 23:44:43', '2017-07-26 20:05:11', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permiso_rol`
--
-- Creación: 17-07-2020 a las 22:18:55
--

DROP TABLE IF EXISTS `permiso_rol`;
CREATE TABLE IF NOT EXISTS `permiso_rol` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `permiso_id` int(10) UNSIGNED NOT NULL,
  `rol_id` int(10) UNSIGNED NOT NULL,
  `estado` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_permiso_rol_rol1` (`rol_id`),
  KEY `fk_rolo_permiso_permisos1_idx` (`permiso_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `permiso_rol`
--

INSERT INTO `permiso_rol` (`id`, `permiso_id`, `rol_id`, `estado`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 2, 1, 1, '2017-06-30 21:12:30', '2017-06-30 17:47:30', 1, 1),
(2, 2, 2, 1, '2017-06-30 21:12:31', '0000-00-00 00:00:00', 1, 0),
(3, 1, 2, 1, '2017-06-30 21:12:32', '0000-00-00 00:00:00', 1, 0),
(4, 1, 1, 1, '2017-06-30 21:47:31', '0000-00-00 00:00:00', 1, 0),
(5, 4, 2, 1, '2017-07-06 17:51:12', '2017-07-06 14:04:28', 1, 1),
(6, 3, 2, 1, '2017-07-06 17:51:15', '2017-07-06 14:04:30', 1, 1),
(7, 3, 1, 1, '2017-07-06 17:51:15', '0000-00-00 00:00:00', 1, 0),
(8, 4, 1, 1, '2017-07-06 17:51:16', '0000-00-00 00:00:00', 1, 0),
(9, 5, 2, 1, '2017-07-26 21:08:30', '0000-00-00 00:00:00', 1, 0),
(10, 6, 2, 0, '2017-07-26 23:45:42', '2020-03-21 14:54:34', 1, 1),
(11, 6, 1, 1, '2020-03-21 19:24:29', '0000-00-00 00:00:00', 1, 0),
(12, 5, 1, 0, '2020-03-21 19:24:42', '2020-03-21 14:54:45', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `procesador`
--
-- Creación: 17-07-2020 a las 22:18:59
--

DROP TABLE IF EXISTS `procesador`;
CREATE TABLE IF NOT EXISTS `procesador` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `marca_id` int(10) UNSIGNED NOT NULL,
  `descripcion` varchar(35) CHARACTER SET armscii8 COLLATE armscii8_general_ci DEFAULT NULL,
  `procesadores_logicos` int(11) NOT NULL,
  `cores` int(11) NOT NULL,
  `velocidad` varchar(10) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Procesador_marca1_idx` (`marca_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `procesador`
--

INSERT INTO `procesador` (`id`, `marca_id`, `descripcion`, `procesadores_logicos`, `cores`, `velocidad`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 3, 'Celeron', 4, 2, '2.6 GHz', '2017-06-22 01:51:34', '2017-06-21 21:53:30', 1, 1),
(14, 3, 'Intel(R) Xeon(R) CPU E3110', 2, 2, '3.0 GHz', '2017-07-11 20:43:58', '0000-00-00 00:00:00', 6, 0),
(16, 3, 'Intel(R) Xeon(R) CPU X3470', 1, 1, '2.93 GHz', '2017-07-12 14:38:08', '0000-00-00 00:00:00', 6, 0),
(17, 3, 'Intel(R) Xeon(TM) CPU', 2, 1, '2.80 GHz', '2017-07-12 14:39:09', '0000-00-00 00:00:00', 6, 0),
(18, 3, 'Intel(R) Pentium(R) Dual-Core', 2, 2, '2.70 GHz', '2017-07-12 14:40:34', '0000-00-00 00:00:00', 6, 0),
(19, 3, 'Intel(R) Core(TM) i7', 4, 2, '1.80 GHz', '2017-07-12 14:41:34', '2017-07-12 13:28:37', 6, 6),
(20, 3, 'Intel(R) Core(TM) i7', 8, 4, '2.10 GHz', '2017-07-12 14:42:18', '2017-07-12 13:28:30', 6, 6),
(21, 3, 'Intel(R) Core(TM) i7', 8, 4, '2.60 GHz', '2017-07-12 14:43:01', '2017-07-12 13:28:50', 6, 6),
(22, 3, 'Intel(R) Core(TM) i7', 8, 4, '2.20 GHz', '2017-07-12 14:43:36', '2017-07-12 13:24:47', 6, 6),
(23, 3, 'intel(R) Xeon(R) CPU X3430', 2, 2, '2.40 GHz', '2017-07-12 14:44:51', '0000-00-00 00:00:00', 6, 0),
(24, 3, 'Intel(R) Pentium(R) Dual ', 2, 2, '2.0 GHz', '2017-07-12 14:46:00', '2017-07-12 13:28:58', 6, 6),
(25, 3, 'Intel(R) Core(TM) i3', 4, 2, '2.53 GHz', '2017-07-12 14:48:20', '0000-00-00 00:00:00', 6, 0),
(26, 3, 'Intel(R) Core(TM) i5', 4, 2, '2.67 GHz', '2017-07-12 14:49:01', '0000-00-00 00:00:00', 6, 0),
(27, 3, 'Intel(R) Core(TM) i5', 4, 2, '2.30 GHz', '2017-07-12 14:50:14', '0000-00-00 00:00:00', 6, 0),
(28, 3, 'Intel(R) Core(TM) i5', 4, 2, '2.40 GHz', '2017-07-12 14:56:17', '0000-00-00 00:00:00', 6, 0),
(29, 3, 'Intel(R) Core(TM) i7', 8, 4, '2.40 GHz', '2017-08-01 16:51:20', '0000-00-00 00:00:00', 6, 0),
(30, 3, 'Intel(R) Core(TM) i7', 4, 2, '2.70 GHz', '2017-08-01 18:32:24', '2017-08-01 14:33:55', 6, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `red`
--
-- Creación: 17-07-2020 a las 22:19:03
--

DROP TABLE IF EXISTS `red`;
CREATE TABLE IF NOT EXISTS `red` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `hostname` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `descripcion` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `tred_id` int(10) UNSIGNED NOT NULL,
  `serial` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `marca_id_marca` int(10) UNSIGNED NOT NULL,
  `modelo_id` int(10) UNSIGNED NOT NULL,
  `usuario_id` int(10) UNSIGNED NOT NULL,
  `estado_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `serial_UNIQUE` (`serial`),
  KEY `fk_Redes_marca1` (`marca_id_marca`),
  KEY `fk_Red_tred1` (`tred_id`),
  KEY `fk_Red_estado1` (`estado_id`),
  KEY `fk_Red_usuario1_idx` (`usuario_id`),
  KEY `fk_Red_modelo1_idx` (`modelo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--
-- Creación: 17-07-2020 a las 22:19:08
--

DROP TABLE IF EXISTS `rol`;
CREATE TABLE IF NOT EXISTS `rol` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `observacion` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `descripcion_UNIQUE` (`descripcion`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id`, `descripcion`, `observacion`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'Super Administrador', 'Rol Con todos los privilegios de la plataforma y admin/*.', '2017-06-02 16:10:06', '2020-03-21 14:56:47', 1, 1),
(2, 'Operador', 'Permite a los usuarios Manipular las acciones de Operador', '2017-06-02 16:10:06', '2017-06-13 20:35:45', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sgi_session`
--
-- Creación: 17-07-2020 a las 22:17:57
-- Última actualización: 22-08-2020 a las 17:05:47
--

DROP TABLE IF EXISTS `sgi_session`;
CREATE TABLE IF NOT EXISTS `sgi_session` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sgi_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `sgi_session`
--

INSERT INTO `sgi_session` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('0893b5c7e1c337ac0ce2920797ab5b43328f5280', '127.0.0.1', 1598111042, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539383131313034323b757365725f6c6f67696e7c623a313b7573756172696f5f69647c733a313a2231223b7573756172696f7c733a353a2261646d696e223b726f6c5f69647c733a313a2231223b726f6c7c733a31393a2253757065722041646d696e6973747261646f72223b6e6f6d6272657c733a353a225375706572223b6170656c6c69646f7c733a31333a2241646d696e6973747261646f72223b63726561646f7c733a31393a22323031372d30362d30322031323a31303a3036223b6176617461727c733a393a2261646d696e2e6a7067223b656d61696c7c733a32303a22726f6d72616d6972657a40676d61696c2e636f6d223b74776f5f666163746f725f7065726d697373696f6e7c733a313a2231223b),
('128306e6ff79a9ced569f72fed5b400674e374e4', '127.0.0.1', 1598111972, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539383131313937313b757365725f6c6f67696e7c623a313b7573756172696f5f69647c733a313a2231223b7573756172696f7c733a353a2261646d696e223b726f6c5f69647c733a313a2231223b726f6c7c733a31393a2253757065722041646d696e6973747261646f72223b6e6f6d6272657c733a353a225375706572223b6170656c6c69646f7c733a31333a2241646d696e6973747261646f72223b63726561646f7c733a31393a22323031372d30362d30322031323a31303a3036223b6176617461727c733a393a2261646d696e2e6a7067223b656d61696c7c733a32303a22726f6d72616d6972657a40676d61696c2e636f6d223b74776f5f666163746f725f7065726d697373696f6e7c733a313a2231223b),
('14cf04a820b492f3aab3ffb04b3a628aa95dc66f', '127.0.0.1', 1598108050, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539383130383035303b),
('1d19f5ce306be00b9625701591a49dd617c363ef', '127.0.0.1', 1598110690, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539383131303639303b757365725f6c6f67696e7c623a313b7573756172696f5f69647c733a313a2231223b7573756172696f7c733a353a2261646d696e223b726f6c5f69647c733a313a2231223b726f6c7c733a31393a2253757065722041646d696e6973747261646f72223b6e6f6d6272657c733a353a225375706572223b6170656c6c69646f7c733a31333a2241646d696e6973747261646f72223b63726561646f7c733a31393a22323031372d30362d30322031323a31303a3036223b6176617461727c733a393a2261646d696e2e6a7067223b656d61696c7c733a32303a22726f6d72616d6972657a40676d61696c2e636f6d223b74776f5f666163746f725f7065726d697373696f6e7c733a313a2231223b),
('25715f1476b0227f0ff45e339bfb44d40d17d97b', '127.0.0.1', 1598102621, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539383130323632313b7065746963696f6e5f75726c7c733a31393a22687474703a2f2f7367692e7374692e636f6d2f223b757365726e616d657c4e3b6c6f676765645f696e7c623a313b),
('2aa298a2f354172bd6f8948769b0777bf55d370b', '127.0.0.1', 1598111353, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539383131313335333b757365725f6c6f67696e7c623a313b7573756172696f5f69647c733a313a2231223b7573756172696f7c733a353a2261646d696e223b726f6c5f69647c733a313a2231223b726f6c7c733a31393a2253757065722041646d696e6973747261646f72223b6e6f6d6272657c733a353a225375706572223b6170656c6c69646f7c733a31333a2241646d696e6973747261646f72223b63726561646f7c733a31393a22323031372d30362d30322031323a31303a3036223b6176617461727c733a393a2261646d696e2e6a7067223b656d61696c7c733a32303a22726f6d72616d6972657a40676d61696c2e636f6d223b74776f5f666163746f725f7065726d697373696f6e7c733a313a2231223b),
('38fa2ba678fa017eabfa87166e9870a29d42febe', '127.0.0.1', 1598115084, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539383131353038343b757365725f6c6f67696e7c623a313b7573756172696f5f69647c733a313a2231223b7573756172696f7c733a353a2261646d696e223b726f6c5f69647c733a313a2231223b726f6c7c733a31393a2253757065722041646d696e6973747261646f72223b6e6f6d6272657c733a353a225375706572223b6170656c6c69646f7c733a31333a2241646d696e6973747261646f72223b63726561646f7c733a31393a22323031372d30362d30322031323a31303a3036223b6176617461727c733a393a2261646d696e2e6a7067223b656d61696c7c733a32303a22726f6d72616d6972657a40676d61696c2e636f6d223b74776f5f666163746f725f7065726d697373696f6e7c733a313a2231223b),
('4c4a21177d295557b52900f719506c7e8efa7b88', '127.0.0.1', 1598105582, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539383130353538323b),
('63e9b833da00f959a34b170d1f2d81f1b8bc1aea', '127.0.0.1', 1598114688, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539383131343638383b757365725f6c6f67696e7c623a313b7573756172696f5f69647c733a313a2231223b7573756172696f7c733a353a2261646d696e223b726f6c5f69647c733a313a2231223b726f6c7c733a31393a2253757065722041646d696e6973747261646f72223b6e6f6d6272657c733a353a225375706572223b6170656c6c69646f7c733a31333a2241646d696e6973747261646f72223b63726561646f7c733a31393a22323031372d30362d30322031323a31303a3036223b6176617461727c733a393a2261646d696e2e6a7067223b656d61696c7c733a32303a22726f6d72616d6972657a40676d61696c2e636f6d223b74776f5f666163746f725f7065726d697373696f6e7c733a313a2231223b6d656e73616a657c733a3139303a223c64697620636c6173733d22616c65727420616c6572742d7375636365737320616c6572742d6469736d69737361626c65223e3c627574746f6e20747970653d22627574746f6e2220636c6173733d22636c6f73652220646174612d6469736d6973733d22616c6572742220617269612d68696464656e3d2274727565223e2674696d65733b3c2f627574746f6e3e456c20726567697374726f206675652061637475616c697a61646f20657869746f73616d656e74652e3c2f6469763e223b5f5f63695f766172737c613a313a7b733a373a226d656e73616a65223b733a333a226f6c64223b7d),
('88a23fd76f82fc08d6232788a5b569d760741e76', '127.0.0.1', 1598111658, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539383131313635373b757365725f6c6f67696e7c623a313b7573756172696f5f69647c733a313a2231223b7573756172696f7c733a353a2261646d696e223b726f6c5f69647c733a313a2231223b726f6c7c733a31393a2253757065722041646d696e6973747261646f72223b6e6f6d6272657c733a353a225375706572223b6170656c6c69646f7c733a31333a2241646d696e6973747261646f72223b63726561646f7c733a31393a22323031372d30362d30322031323a31303a3036223b6176617461727c733a393a2261646d696e2e6a7067223b656d61696c7c733a32303a22726f6d72616d6972657a40676d61696c2e636f6d223b74776f5f666163746f725f7065726d697373696f6e7c733a313a2231223b),
('a398ca2785658640dcbcbd029cf515ca4817122f', '127.0.0.1', 1598115947, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539383131353933363b757365725f6c6f67696e7c623a313b7573756172696f5f69647c733a313a2231223b7573756172696f7c733a353a2261646d696e223b726f6c5f69647c733a313a2231223b726f6c7c733a31393a2253757065722041646d696e6973747261646f72223b6e6f6d6272657c733a353a225375706572223b6170656c6c69646f7c733a31333a2241646d696e6973747261646f72223b63726561646f7c733a31393a22323031372d30362d30322031323a31303a3036223b6176617461727c733a393a2261646d696e2e6a7067223b656d61696c7c733a32303a22726f6d72616d6972657a40676d61696c2e636f6d223b74776f5f666163746f725f7065726d697373696f6e7c733a313a2230223b),
('b3af01b372530ccdbfce23b5b4c10b598d6762b3', '127.0.0.1', 1598112983, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539383131323938333b757365725f6c6f67696e7c623a313b7573756172696f5f69647c733a313a2231223b7573756172696f7c733a353a2261646d696e223b726f6c5f69647c733a313a2231223b726f6c7c733a31393a2253757065722041646d696e6973747261646f72223b6e6f6d6272657c733a353a225375706572223b6170656c6c69646f7c733a31333a2241646d696e6973747261646f72223b63726561646f7c733a31393a22323031372d30362d30322031323a31303a3036223b6176617461727c733a393a2261646d696e2e6a7067223b656d61696c7c733a32303a22726f6d72616d6972657a40676d61696c2e636f6d223b74776f5f666163746f725f7065726d697373696f6e7c733a313a2231223b),
('b5c76c4fbbed5f319cd5ed02a04098ba19ea8b33', '127.0.0.1', 1598103523, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539383130333532333b7065746963696f6e5f75726c7c733a31393a22687474703a2f2f7367692e7374692e636f6d2f223b757365726e616d657c4e3b6c6f676765645f696e7c623a313b757365725f6c6f67696e7c623a313b7573756172696f5f69647c733a313a2231223b7573756172696f7c733a353a2261646d696e223b726f6c5f69647c733a313a2231223b726f6c7c733a31393a2253757065722041646d696e6973747261646f72223b6e6f6d6272657c733a353a225375706572223b6170656c6c69646f7c733a31333a2241646d696e6973747261646f72223b63726561646f7c733a31393a22323031372d30362d30322031323a31303a3036223b6176617461727c733a393a2261646d696e2e6a7067223b656d61696c7c733a32303a22726f6d72616d6972657a40676d61696c2e636f6d223b74776f5f666163746f725f7065726d697373696f6e7c733a313a2231223b),
('b937653d3ee74019bdb574e44d759ad431cafae6', '127.0.0.1', 1598106316, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539383130363331363b74776f5f666163746f725f7065726d697373696f6e7c4e3b757365725f6c6f67696e7c623a313b),
('e809310df9561f5320ca0c70cce802146fee15bb', '127.0.0.1', 1598104430, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539383130343433303b757365725f6c6f67696e7c623a313b7573756172696f5f69647c733a313a2231223b7573756172696f7c733a353a2261646d696e223b726f6c5f69647c733a313a2231223b726f6c7c733a31393a2253757065722041646d696e6973747261646f72223b6e6f6d6272657c733a353a225375706572223b6170656c6c69646f7c733a31333a2241646d696e6973747261646f72223b63726561646f7c733a31393a22323031372d30362d30322031323a31303a3036223b6176617461727c733a393a2261646d696e2e6a7067223b656d61696c7c733a32303a22726f6d72616d6972657a40676d61696c2e636f6d223b74776f5f666163746f725f7065726d697373696f6e7c733a313a2231223b),
('ef31deb045b1c558def5702b352adad8ecba6689', '127.0.0.1', 1598114345, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539383131343334353b757365725f6c6f67696e7c623a313b7573756172696f5f69647c733a313a2231223b7573756172696f7c733a353a2261646d696e223b726f6c5f69647c733a313a2231223b726f6c7c733a31393a2253757065722041646d696e6973747261646f72223b6e6f6d6272657c733a353a225375706572223b6170656c6c69646f7c733a31333a2241646d696e6973747261646f72223b63726561646f7c733a31393a22323031372d30362d30322031323a31303a3036223b6176617461727c733a393a2261646d696e2e6a7067223b656d61696c7c733a32303a22726f6d72616d6972657a40676d61696c2e636f6d223b74776f5f666163746f725f7065726d697373696f6e7c733a313a2231223b),
('efa5a417ac0bd759f1ec29916a58cb3236fb980b', '127.0.0.1', 1598112673, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539383131323637333b757365725f6c6f67696e7c623a313b7573756172696f5f69647c733a313a2231223b7573756172696f7c733a353a2261646d696e223b726f6c5f69647c733a313a2231223b726f6c7c733a31393a2253757065722041646d696e6973747261646f72223b6e6f6d6272657c733a353a225375706572223b6170656c6c69646f7c733a31333a2241646d696e6973747261646f72223b63726561646f7c733a31393a22323031372d30362d30322031323a31303a3036223b6176617461727c733a393a2261646d696e2e6a7067223b656d61696c7c733a32303a22726f6d72616d6972657a40676d61696c2e636f6d223b74776f5f666163746f725f7065726d697373696f6e7c733a313a2231223b),
('f1b468453aaa3a0e18c67f093f6822c96cfb79e5', '127.0.0.1', 1598102976, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539383130323937363b7065746963696f6e5f75726c7c733a31393a22687474703a2f2f7367692e7374692e636f6d2f223b757365726e616d657c4e3b6c6f676765645f696e7c623a313b757365725f6c6f67696e7c623a313b7573756172696f5f69647c733a313a2231223b7573756172696f7c733a353a2261646d696e223b726f6c5f69647c733a313a2231223b726f6c7c733a31393a2253757065722041646d696e6973747261646f72223b6e6f6d6272657c733a353a225375706572223b6170656c6c69646f7c733a31333a2241646d696e6973747261646f72223b63726561646f7c733a31393a22323031372d30362d30322031323a31303a3036223b6176617461727c733a393a2261646d696e2e6a7067223b656d61696c7c733a32303a22726f6d72616d6972657a40676d61696c2e636f6d223b74776f5f666163746f725f7065726d697373696f6e7c733a313a2231223b);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sistema_operativo`
--
-- Creación: 17-07-2020 a las 22:19:12
--

DROP TABLE IF EXISTS `sistema_operativo`;
CREATE TABLE IF NOT EXISTS `sistema_operativo` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `sistema_operativo`
--

INSERT INTO `sistema_operativo` (`id`, `descripcion`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'Linux RedHat 6.0', '2017-06-21 22:28:51', '0000-00-00 00:00:00', 1, 0),
(2, 'Windows Server 2012 R2', '2017-06-21 22:29:02', '0000-00-00 00:00:00', 1, 0),
(3, 'Windows 10 ', '2017-06-21 22:29:08', '0000-00-00 00:00:00', 1, 0),
(4, 'Windows 8', '2017-07-06 19:57:22', '0000-00-00 00:00:00', 6, 0),
(5, 'Windows 8.1', '2017-07-06 19:57:34', '0000-00-00 00:00:00', 6, 0),
(6, 'Windows 7', '2017-07-06 19:57:47', '0000-00-00 00:00:00', 6, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitudes`
--
-- Creación: 17-07-2020 a las 22:19:15
--

DROP TABLE IF EXISTS `solicitudes`;
CREATE TABLE IF NOT EXISTS `solicitudes` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Campo clave de la tabla solicitud, Indice principal que no puede ser nulo y sin asignar.',
  `tsolicitud_id` int(11) NOT NULL,
  `usuario_id` int(10) UNSIGNED NOT NULL,
  `descripcion` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'DescripciÃ³n de la solicitud',
  `Esolicitud_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Campo de auditoria que permite realizar el seguimiento de los registros',
  `updated_at` datetime NOT NULL COMMENT 'Campo de auditoria que permite realizar el seguimiento de los registros',
  `created_by` int(10) UNSIGNED NOT NULL COMMENT 'Campo de auditoria que permite realizar el seguimiento de los registros',
  `updated_by` int(10) UNSIGNED NOT NULL COMMENT 'Campo de auditoria que permite realizar el seguimiento de los registros',
  PRIMARY KEY (`id`),
  KEY `fk_solicitud_usuario1_idx` (`usuario_id`),
  KEY `fk_esolicitud_solicitudes1_idx` (`Esolicitud_id`),
  KEY `fk_tsolicitud_solicitudes1_idx` (`tsolicitud_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `solicitudes`
--

INSERT INTO `solicitudes` (`id`, `tsolicitud_id`, `usuario_id`, `descripcion`, `Esolicitud_id`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(14, 1, 51, '<p>Falla con monitor</p>', 0, '2020-07-13 22:05:08', '0000-00-00 00:00:00', 51, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tcomputadora`
--
-- Creación: 17-07-2020 a las 22:19:19
--

DROP TABLE IF EXISTS `tcomputadora`;
CREATE TABLE IF NOT EXISTS `tcomputadora` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `tcomputadora`
--

INSERT INTO `tcomputadora` (`id`, `descripcion`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'Servidor', '2017-06-21 22:12:52', '0000-00-00 00:00:00', 1, 0),
(2, 'Laptop', '2017-06-21 22:13:02', '0000-00-00 00:00:00', 1, 0),
(3, 'Desktop', '2017-06-21 22:13:10', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_menu`
--
-- Creación: 17-07-2020 a las 22:19:21
--

DROP TABLE IF EXISTS `tipo_menu`;
CREATE TABLE IF NOT EXISTS `tipo_menu` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `descripcion_UNIQUE` (`descripcion`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `tipo_menu`
--

INSERT INTO `tipo_menu` (`id`, `descripcion`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'Principal', '2017-06-21 22:42:50', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tperiferico`
--
-- Creación: 17-07-2020 a las 22:19:24
--

DROP TABLE IF EXISTS `tperiferico`;
CREATE TABLE IF NOT EXISTS `tperiferico` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `tperiferico`
--

INSERT INTO `tperiferico` (`id`, `descripcion`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'Mouse', '2017-06-21 22:14:34', '0000-00-00 00:00:00', 1, 0),
(2, 'Teclado', '2017-06-21 22:14:42', '0000-00-00 00:00:00', 1, 0),
(3, 'Pendrive', '2017-06-21 22:14:49', '0000-00-00 00:00:00', 1, 0),
(4, 'Monitor', '2017-07-11 19:22:33', '0000-00-00 00:00:00', 1, 0),
(5, 'Disco duro externo', '2017-07-13 20:27:50', '0000-00-00 00:00:00', 6, 0),
(6, 'Lector externo', '2017-07-14 19:28:12', '0000-00-00 00:00:00', 6, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tred`
--
-- Creación: 17-07-2020 a las 22:19:27
--

DROP TABLE IF EXISTS `tred`;
CREATE TABLE IF NOT EXISTS `tred` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `tred`
--

INSERT INTO `tred` (`id`, `descripcion`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'Router', '2017-06-21 22:15:03', '0000-00-00 00:00:00', 1, 0),
(2, 'switch', '2017-06-21 22:15:16', '0000-00-00 00:00:00', 1, 0),
(3, 'Modem Wifi', '2020-07-13 21:39:19', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tsolicitud`
--
-- Creación: 17-07-2020 a las 22:19:30
--

DROP TABLE IF EXISTS `tsolicitud`;
CREATE TABLE IF NOT EXISTS `tsolicitud` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Campo clave de la tabla tsolicitud, Indice principal que no puede ser nulo y sin asignar.',
  `nombre` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'nombre del tipo de solicitud',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Campo de auditoria que permite realizar el seguimiento de los registros',
  `updated_at` datetime NOT NULL COMMENT 'Campo de auditoria que permite realizar el seguimiento de los registros',
  `created_by` int(10) UNSIGNED NOT NULL COMMENT 'Campo de auditoria que permite realizar el seguimiento de los registros',
  `updated_by` int(10) UNSIGNED NOT NULL COMMENT 'Campo de auditoria que permite realizar el seguimiento de los registros',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `tsolicitud`
--

INSERT INTO `tsolicitud` (`id`, `nombre`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'Requerimiento', '2017-07-06 18:10:29', '0000-00-00 00:00:00', 0, 0),
(2, 'Incidencia', '2017-07-06 18:08:09', '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--
-- Creación: 20-08-2020 a las 06:27:11
-- Última actualización: 22-08-2020 a las 16:58:56
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `departamento_id` int(10) UNSIGNED NOT NULL,
  `avatar` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish2_ci DEFAULT NULL,
  `usuario` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nombre` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish2_ci DEFAULT NULL,
  `apellido` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish2_ci DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `estado` tinyint(3) UNSIGNED NOT NULL,
  `email` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish2_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  `two_factor_permission` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `usuario_UNIQUE` (`usuario`),
  KEY `fk_usuario_departamento1` (`departamento_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `departamento_id`, `avatar`, `usuario`, `nombre`, `apellido`, `password`, `estado`, `email`, `created_at`, `updated_at`, `created_by`, `updated_by`, `two_factor_permission`) VALUES
(1, 1, 'admin.jpg', 'admin', 'Super', 'Administrador', '2197a8b6336e2e1296d06505326cce857f65b4f1f6bfd5dc5fdfdce5373c0989', 1, 'romramirez@gmail.com', '2017-06-02 16:10:06', '2020-08-22 13:05:08', 1, 2, 0),
(2, 2, 'operador.jpg', 'lvillegas', 'Luis', 'Villegas', '8ce6cc2bd0e075b42a180eacef7802cb8858b5380f69dce44ddbe074d02cbd5b', 1, 'lvillegas@sti.com.ve', '2017-06-15 02:14:46', '2020-08-22 12:54:54', 1, 1, 0),
(3, 2, 'admin.jpg', 'jcramos', 'Juan Carlos', 'Ramos', '54971b18f16c09cc84540ac00f310f66e820c784a9af5ed5de1c3c84c5beb49b', 1, 'jcramos@sti.com.ve', '2017-06-22 23:40:13', '2017-07-03 12:02:25', 1, 3, 0),
(6, 2, 'admin.jpg', 'crios', 'Carlos', 'Rios', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'crios@sti.com.ve', '2017-07-03 16:10:35', '0000-00-00 00:00:00', 3, 0, 0),
(7, 7, 'operador.jpg', 'amaiuetia', 'Anamir', 'Maiquetia', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'amaiquetia@sti.com.ve', '2017-07-12 19:32:22', '0000-00-00 00:00:00', 6, 0, 0),
(8, 7, 'operador.jpg', 'aguzman', 'Andrea', 'Guzman', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'aguzman@sti.com.ve', '2017-07-12 19:37:00', '0000-00-00 00:00:00', 6, 0, 0),
(9, 7, 'operador.jpg', 'vrios', 'Valentina', 'Rios', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'vrios@sti.com.ve', '2017-07-12 19:37:55', '0000-00-00 00:00:00', 6, 0, 0),
(10, 7, 'operador.jpg', 'fmendoza', 'Florangel', 'Mendoza', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'fmendoza@sti.com.ve', '2017-07-12 19:38:32', '0000-00-00 00:00:00', 6, 0, 0),
(11, 5, 'operador.jpg', 'jlara', 'Jose', 'Lara', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'jlara@sti.com.ve', '2017-07-12 19:45:02', '2017-07-12 15:46:00', 6, 6, 0),
(12, 5, 'operador.jpg', 'jramirez', 'Jesus', 'Ramirez', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'jramirez@sti.com.ve', '2017-07-12 19:45:45', '2017-07-12 16:07:48', 6, 6, 0),
(13, 5, 'operador.jpg', 'lescobar', 'Lisgreiby', 'Escobar', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 0, 'lescobar@sti.com.ve', '2017-07-12 19:46:41', '2020-03-09 15:41:23', 6, 1, 0),
(14, 5, 'operador.jpg', 'aseijas', 'Alejandra', 'Seijas', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'aseijas@sti.com.ve', '2017-07-12 19:47:44', '2020-07-13 17:25:26', 6, 1, 0),
(15, 5, 'operador.jpg', 'rguerrero', 'Ruben', 'Guerrero', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'rguerrero@sti.com.ve', '2017-07-12 19:48:22', '2017-07-12 16:07:57', 6, 6, 0),
(16, 5, 'operador.jpg', 'aluquez', 'Anabel', 'Luquez', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'aluquez@sti.com.ve', '2017-07-12 19:48:58', '0000-00-00 00:00:00', 6, 0, 0),
(17, 5, 'operador.jpg', 'dcampelo', 'Diana', 'Campelo', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'dcampelo@sti.com.ve', '2017-07-12 19:50:13', '0000-00-00 00:00:00', 6, 0, 0),
(18, 12, 'operador.jpg', 'malvarez', 'Manuel', 'Alvarez', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'malvarez@sti.com.ve', '2017-07-12 19:54:05', '0000-00-00 00:00:00', 6, 0, 0),
(19, 12, 'operador.jpg', 'asalazar', 'Alicia', 'Salazar', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'asalazar@sti.com.ve', '2017-07-12 19:54:38', '0000-00-00 00:00:00', 6, 0, 0),
(20, 11, 'operador.jpg', 'rmontoya', 'Ronny', 'Montoya', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'rmontoya@sti.com.ve', '2017-07-12 19:55:23', '0000-00-00 00:00:00', 6, 0, 0),
(21, 11, 'operador.jpg', 'ddiaz', 'Danayeli', 'Diaz', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'ddiaz@sti.com.ve', '2017-07-12 19:58:28', '0000-00-00 00:00:00', 6, 0, 0),
(22, 6, 'operador.jpg', 'vcavallo', 'Vivian', 'Cavallo', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'vcavallo@sti.com.ve', '2017-07-12 20:00:26', '0000-00-00 00:00:00', 6, 0, 0),
(23, 6, 'operador.jpg', 'dsosa', 'Daniela', 'Sosa', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'dsosa@sti.com.ve', '2017-07-12 20:00:54', '0000-00-00 00:00:00', 6, 0, 0),
(24, 6, 'operador.jpg', 'gramos', 'Gabriela', 'Ramos', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'gramos@sti.com.ve', '2017-07-12 20:01:36', '0000-00-00 00:00:00', 6, 0, 0),
(25, 6, 'operador.jpg', 'mgramos', 'Maria', 'Ramos', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'mramos@sti.com.ve', '2017-07-12 20:02:12', '0000-00-00 00:00:00', 6, 0, 0),
(26, 2, 'operador.jpg', 'jmedina', 'Jose Luis', 'Medina', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'jmedina@sti.com.ve', '2017-07-12 20:03:01', '0000-00-00 00:00:00', 6, 0, 0),
(27, 4, 'operador.jpg', 'emedina', 'Eva', 'Medina', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'emedina@sti.com.ve', '2017-07-12 20:03:41', '0000-00-00 00:00:00', 6, 0, 0),
(28, 4, 'operador.jpg', 'ctovar', 'Carlos', 'Tovar', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'ctovar@sti.com.ve', '2017-07-12 20:04:13', '0000-00-00 00:00:00', 6, 0, 0),
(29, 13, 'operador.jpg', 'rortega', 'Raul', 'Ortega', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'rortega@sti.com.ve', '2017-07-12 20:05:31', '0000-00-00 00:00:00', 6, 0, 0),
(30, 13, 'operador.jpg', 'rfernandez', 'Rimsky', 'FernÃ¡ndez', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'rfernandez@sti.com.ve', '2017-07-12 20:06:21', '2017-07-26 17:11:06', 6, 1, 0),
(31, 10, 'operador.jpg', 'yviloria', 'Yelitza', 'Viloria', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'yviloria@sti.com.ve', '2017-07-12 20:07:39', '0000-00-00 00:00:00', 6, 0, 0),
(32, 10, 'operador.jpg', 'epabon', 'Evelin', 'Pavon', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'epabon@sti.com.ve', '2017-07-12 20:09:01', '0000-00-00 00:00:00', 6, 0, 0),
(33, 10, 'operador.jpg', 'rsanoja', 'Roxenis', 'Sanoja', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'rsanoja@sti.com.ve', '2017-07-12 20:09:50', '0000-00-00 00:00:00', 6, 0, 0),
(34, 10, 'operador.jpg', 'robregon', 'Rafael', 'Obregon', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'robregon@sti.com.ve', '2017-07-12 20:10:24', '0000-00-00 00:00:00', 6, 0, 0),
(35, 10, 'operador.jpg', 'darias', 'Deiry', 'Arias', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'darias@sti.com.ve', '2017-07-12 20:11:14', '0000-00-00 00:00:00', 6, 0, 0),
(36, 10, 'operador.jpg', 'prequena', 'Pedro', 'Requena', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'prequena@sti.com.ve', '2017-07-12 20:11:48', '0000-00-00 00:00:00', 6, 0, 0),
(38, 10, 'operador.jpg', 'ngarcia', 'Naylin', 'GarcÃ­a', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'ngarcia@sti.com.ve', '2017-07-12 20:13:15', '0000-00-00 00:00:00', 6, 0, 0),
(39, 2, 'operador.jpg', 'jgavidia', 'Jesus', 'Gavidia', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'jgavidia@sti.com.ve', '2017-07-12 20:13:50', '2020-03-21 14:49:31', 6, 1, 0),
(40, 9, 'operador.jpg', 'hnaranjo', 'Hector', 'Naranjo', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'hnaranjo@sti.com.ve', '2017-07-12 20:14:29', '0000-00-00 00:00:00', 6, 0, 0),
(41, 9, 'operador.jpg', 'jparada', 'Jesus', 'Parada', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'jparada@sti.com.ve', '2017-07-12 20:15:00', '0000-00-00 00:00:00', 6, 0, 0),
(42, 11, 'operador.jpg', 'asandoval', 'Alexis', 'Sandoval', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'asandoval@sti.com.ve', '2017-07-12 20:15:38', '0000-00-00 00:00:00', 6, 0, 0),
(43, 4, 'operador.jpg', 'imarcano', 'Iben', 'Marcano', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'imarcano@sti.com.ve', '2017-07-12 20:16:05', '2017-07-12 16:17:34', 6, 6, 0),
(44, 4, 'operador.jpg', 'cruiz', 'Cristiel', 'Ruiz', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'cruiz@sti.com.ve', '2017-07-12 20:16:39', '2017-07-12 16:17:25', 6, 6, 0),
(45, 3, 'operador.jpg', 'jperozo', 'Jackeline', 'Perozo', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'jperozo@sti.com.ve', '2017-07-12 20:17:11', '0000-00-00 00:00:00', 6, 0, 0),
(46, 3, 'operador.jpg', 'jadan', 'Jesus', 'Adan', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'jadan@sti.com.ve', '2017-07-12 20:18:00', '0000-00-00 00:00:00', 6, 0, 0),
(47, 3, 'operador.jpg', 'jcolina', 'Julio', 'Colina', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'jcolina@sti.com.ve', '2017-07-12 20:19:31', '0000-00-00 00:00:00', 6, 0, 0),
(48, 2, 'operador.jpg', 'Disponibilidad', 'Gestión', 'Disponibilidad', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'gdisponibilidad@sti.com.ve', '2017-07-13 18:52:54', '2020-03-21 14:48:57', 6, 1, 0),
(49, 10, 'operador.jpg', 'jrangel', 'Jarvis', 'Rangel', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'jrangel@sti.com.ve', '2017-08-01 18:27:26', '0000-00-00 00:00:00', 6, 0, 0),
(50, 10, 'operador.jpg', 'sespinoza', 'Steven', 'Espinoza', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'sespinoza@sti.com.ve', '2017-08-01 18:28:03', '0000-00-00 00:00:00', 6, 0, 0),
(51, 1, 'operador.jpg', 'romramirez', 'Rommel', 'Ramirez', '47e4a94856f92f4f59ef47cabfdd027b8aa79cb6d39f68ad95975ef04594082b', 1, 'romramirez@gmail.com', '2020-07-13 22:03:14', '0000-00-00 00:00:00', 1, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_rol`
--
-- Creación: 17-07-2020 a las 22:19:35
-- Última actualización: 22-08-2020 a las 16:58:56
--

DROP TABLE IF EXISTS `usuario_rol`;
CREATE TABLE IF NOT EXISTS `usuario_rol` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `usuario_id` int(10) UNSIGNED NOT NULL,
  `rol_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_usuario_rol_usuario` (`usuario_id`),
  KEY `fk_usuario_rol_rol_idx` (`rol_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `usuario_rol`
--

INSERT INTO `usuario_rol` (`id`, `usuario_id`, `rol_id`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 1, 1, '2017-06-02 16:10:06', '2020-08-22 13:04:58', 1, 2),
(2, 2, 1, '2017-06-15 02:14:46', '2020-08-22 12:54:54', 1, 1),
(3, 3, 1, '2017-06-22 23:40:13', '2017-07-03 12:02:25', 1, 3),
(6, 6, 1, '2017-07-03 16:10:35', '0000-00-00 00:00:00', 3, 0),
(7, 7, 2, '2017-07-12 19:32:22', '0000-00-00 00:00:00', 6, 0),
(8, 8, 2, '2017-07-12 19:37:00', '0000-00-00 00:00:00', 6, 0),
(9, 9, 2, '2017-07-12 19:37:55', '0000-00-00 00:00:00', 6, 0),
(10, 10, 2, '2017-07-12 19:38:32', '0000-00-00 00:00:00', 6, 0),
(11, 11, 2, '2017-07-12 19:45:02', '2017-07-12 15:46:00', 6, 6),
(12, 12, 2, '2017-07-12 19:45:45', '2017-07-12 16:07:48', 6, 6),
(13, 13, 2, '2017-07-12 19:46:41', '0000-00-00 00:00:00', 6, 0),
(14, 14, 2, '2017-07-12 19:47:44', '0000-00-00 00:00:00', 6, 0),
(15, 15, 2, '2017-07-12 19:48:22', '2017-07-12 16:07:57', 6, 6),
(16, 16, 2, '2017-07-12 19:48:58', '0000-00-00 00:00:00', 6, 0),
(17, 17, 2, '2017-07-12 19:50:13', '0000-00-00 00:00:00', 6, 0),
(18, 18, 2, '2017-07-12 19:54:05', '0000-00-00 00:00:00', 6, 0),
(19, 19, 2, '2017-07-12 19:54:38', '0000-00-00 00:00:00', 6, 0),
(20, 20, 2, '2017-07-12 19:55:23', '0000-00-00 00:00:00', 6, 0),
(21, 21, 2, '2017-07-12 19:58:28', '0000-00-00 00:00:00', 6, 0),
(22, 22, 2, '2017-07-12 20:00:26', '0000-00-00 00:00:00', 6, 0),
(23, 23, 2, '2017-07-12 20:00:54', '0000-00-00 00:00:00', 6, 0),
(24, 24, 2, '2017-07-12 20:01:36', '0000-00-00 00:00:00', 6, 0),
(25, 25, 2, '2017-07-12 20:02:12', '0000-00-00 00:00:00', 6, 0),
(26, 26, 2, '2017-07-12 20:03:01', '0000-00-00 00:00:00', 6, 0),
(27, 27, 2, '2017-07-12 20:03:41', '0000-00-00 00:00:00', 6, 0),
(28, 28, 2, '2017-07-12 20:04:13', '0000-00-00 00:00:00', 6, 0),
(29, 29, 2, '2017-07-12 20:05:31', '0000-00-00 00:00:00', 6, 0),
(30, 30, 2, '2017-07-12 20:06:21', '2017-07-26 17:11:06', 6, 1),
(31, 31, 2, '2017-07-12 20:07:40', '0000-00-00 00:00:00', 6, 0),
(32, 32, 2, '2017-07-12 20:09:01', '0000-00-00 00:00:00', 6, 0),
(33, 33, 2, '2017-07-12 20:09:50', '0000-00-00 00:00:00', 6, 0),
(34, 34, 2, '2017-07-12 20:10:24', '0000-00-00 00:00:00', 6, 0),
(35, 35, 2, '2017-07-12 20:11:14', '0000-00-00 00:00:00', 6, 0),
(36, 36, 2, '2017-07-12 20:11:48', '0000-00-00 00:00:00', 6, 0),
(38, 38, 2, '2017-07-12 20:13:15', '0000-00-00 00:00:00', 6, 0),
(39, 39, 2, '2017-07-12 20:13:50', '0000-00-00 00:00:00', 6, 0),
(40, 40, 2, '2017-07-12 20:14:29', '0000-00-00 00:00:00', 6, 0),
(41, 41, 2, '2017-07-12 20:15:00', '0000-00-00 00:00:00', 6, 0),
(42, 42, 2, '2017-07-12 20:15:38', '0000-00-00 00:00:00', 6, 0),
(43, 43, 2, '2017-07-12 20:16:06', '2017-07-12 16:17:34', 6, 6),
(44, 44, 2, '2017-07-12 20:16:39', '2017-07-12 16:17:25', 6, 6),
(45, 45, 2, '2017-07-12 20:17:11', '0000-00-00 00:00:00', 6, 0),
(46, 46, 2, '2017-07-12 20:18:00', '0000-00-00 00:00:00', 6, 0),
(47, 47, 2, '2017-07-12 20:19:31', '0000-00-00 00:00:00', 6, 0),
(48, 48, 2, '2017-07-13 18:52:54', '2020-03-21 14:48:57', 6, 1),
(49, 49, 2, '2017-08-01 18:27:26', '0000-00-00 00:00:00', 6, 0),
(50, 50, 2, '2017-08-01 18:28:03', '0000-00-00 00:00:00', 6, 0),
(51, 51, 2, '2020-07-13 22:03:14', '0000-00-00 00:00:00', 1, 0);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `computadoras`
--
ALTER TABLE `computadoras`
  ADD CONSTRAINT `fk_computadoras_estado1` FOREIGN KEY (`estado_id`) REFERENCES `estado` (`id`),
  ADD CONSTRAINT `fk_computadoras_marca1` FOREIGN KEY (`marca_id`) REFERENCES `marca` (`id`),
  ADD CONSTRAINT `fk_computadoras_modelo1` FOREIGN KEY (`modelo_id`) REFERENCES `modelo` (`id`),
  ADD CONSTRAINT `fk_computadoras_sistema_operativo1` FOREIGN KEY (`sistema_operativo_id`) REFERENCES `sistema_operativo` (`id`),
  ADD CONSTRAINT `fk_computadoras_tcomputadora1` FOREIGN KEY (`tcomputadora_id`) REFERENCES `tcomputadora` (`id`),
  ADD CONSTRAINT `fk_computadoras_usuario1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`),
  ADD CONSTRAINT `fk_dispositvo_Procesador1` FOREIGN KEY (`Procesador_id`) REFERENCES `procesador` (`id`);

--
-- Filtros para la tabla `direccion_ip`
--
ALTER TABLE `direccion_ip`
  ADD CONSTRAINT `fk_direccion_ip_computadoras1` FOREIGN KEY (`computadoras_id`) REFERENCES `computadoras` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `fk_menu_menu1` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`),
  ADD CONSTRAINT `fk_menu_tipo_menu1` FOREIGN KEY (`tipo_menu_id`) REFERENCES `tipo_menu` (`id`);

--
-- Filtros para la tabla `menu_rol`
--
ALTER TABLE `menu_rol`
  ADD CONSTRAINT `fk_menu_rol_menu1` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`),
  ADD CONSTRAINT `fk_menu_rol_rol1` FOREIGN KEY (`rol_id`) REFERENCES `rol` (`id`);

--
-- Filtros para la tabla `periferico`
--
ALTER TABLE `periferico`
  ADD CONSTRAINT `fk_periferico_estado1` FOREIGN KEY (`estado_id`) REFERENCES `estado` (`id`),
  ADD CONSTRAINT `fk_periferico_marca1` FOREIGN KEY (`marca_id`) REFERENCES `marca` (`id`),
  ADD CONSTRAINT `fk_periferico_modelo1` FOREIGN KEY (`modelo_id`) REFERENCES `modelo` (`id`),
  ADD CONSTRAINT `fk_periferico_tipo_periferico1` FOREIGN KEY (`tipo_periferico_id`) REFERENCES `tperiferico` (`id`),
  ADD CONSTRAINT `fk_periferico_usuario1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
