-- phpMyAdmin SQL Dump
-- version 4.4.4
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 02-08-2017 a las 13:28:42
-- Versión del servidor: 5.6.24
-- Versión de PHP: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `sgi`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `computadoras`
--

CREATE TABLE IF NOT EXISTS `computadoras` (
  `id` int(10) unsigned NOT NULL,
  `hostname` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `descripcion` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `capacidad_disco` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `memoria_ram` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `tcomputadora_id` int(10) unsigned NOT NULL,
  `marca_id` int(10) unsigned NOT NULL,
  `modelo_id` int(10) unsigned NOT NULL,
  `Procesador_id` int(10) unsigned NOT NULL,
  `sistema_operativo_id` int(10) unsigned NOT NULL,
  `usuario_id` int(10) unsigned NOT NULL,
  `serial` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `estado_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE IF NOT EXISTS `departamento` (
  `id` int(10) unsigned NOT NULL,
  `descripcion` varchar(30) CHARACTER SET utf8 NOT NULL,
  `observacion` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`id`, `descripcion`, `observacion`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'System', 'Grupo de Sistemas', '2017-06-14 00:58:38', '2017-06-13 20:58:38', 1, 0),
(2, 'Gestion de Disponibilidad', 'Coordinador Rommel Ramirez', '2017-06-15 02:14:04', '0000-00-00 00:00:00', 1, 0),
(3, 'Gestión de Capacidad', 'Gestión de Capacidad', '2017-07-03 16:11:07', '0000-00-00 00:00:00', 3, 0),
(4, 'Gestión de Procesos', 'Gestión de Procesos', '2017-07-03 16:11:20', '0000-00-00 00:00:00', 3, 0),
(5, 'Administración', 'Administración', '2017-07-03 16:11:29', '0000-00-00 00:00:00', 3, 0),
(6, 'Mercadeo', 'Mercadeo', '2017-07-03 16:14:23', '0000-00-00 00:00:00', 3, 0),
(7, 'Talento Humano', 'Talento Humano', '2017-07-03 16:14:34', '0000-00-00 00:00:00', 3, 0),
(8, 'Servicios Generales', 'Servicios Generales', '2017-07-03 16:14:49', '0000-00-00 00:00:00', 3, 0),
(9, 'Gestion de Bigdata', 'Gestion de Bigdata', '2017-07-03 16:15:27', '0000-00-00 00:00:00', 3, 0),
(10, 'Gestión de ITSM', 'Gestión de ITSM', '2017-07-03 16:15:39', '0000-00-00 00:00:00', 3, 0),
(11, 'Servicios', 'Servicios', '2017-07-03 16:15:51', '0000-00-00 00:00:00', 3, 0),
(12, 'Ventas', 'Ventas', '2017-07-03 16:15:57', '0000-00-00 00:00:00', 3, 0),
(13, 'Gestión de Mainframe', 'Gestión de Mainframe', '2017-07-03 17:39:04', '0000-00-00 00:00:00', 3, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direccion_ip`
--

CREATE TABLE IF NOT EXISTS `direccion_ip` (
  `id` int(10) unsigned NOT NULL,
  `computadoras_id` int(10) unsigned NOT NULL,
  `direccion_ip` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `observaciones` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `esolicitud`
--

CREATE TABLE IF NOT EXISTS `esolicitud` (
  `id` int(11) NOT NULL,
  `estado` varchar(45) CHARACTER SET utf8 NOT NULL COMMENT 'Estado de la Solicitud',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Campo de auditoria que permite realizar el seguimiento de los registros',
  `updated_at` datetime NOT NULL COMMENT 'Campo de auditoria que permite realizar el seguimiento de los registros',
  `created_by` int(10) unsigned NOT NULL COMMENT 'Campo de auditoria que permite realizar el seguimiento de los registros',
  `updated_by` int(10) unsigned NOT NULL COMMENT 'Campo de auditoria que permite realizar el seguimiento de los registros'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;



-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE IF NOT EXISTS `estado` (
  `id` int(10) unsigned NOT NULL,
  `descripcion` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;



-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE IF NOT EXISTS `marca` (
  `id` int(10) unsigned NOT NULL,
  `descripcion` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(10) unsigned NOT NULL,
  `menu_id` int(10) unsigned DEFAULT NULL,
  `tipo_menu_id` int(10) unsigned NOT NULL,
  `etiqueta` varchar(25) CHARACTER SET utf8 NOT NULL,
  `url` varchar(100) CHARACTER SET utf8 NOT NULL,
  `posicion` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `icono` varchar(35) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu_rol`
--

CREATE TABLE IF NOT EXISTS `menu_rol` (
  `id` int(10) unsigned NOT NULL,
  `menu_id` int(10) unsigned NOT NULL,
  `rol_id` int(10) unsigned NOT NULL,
  `estado` tinyint(3) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modelo`
--

CREATE TABLE IF NOT EXISTS `modelo` (
  `id` int(10) unsigned NOT NULL,
  `marca_id` int(10) unsigned NOT NULL,
  `descripcion` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `periferico`
--

CREATE TABLE IF NOT EXISTS `periferico` (
  `id` int(10) unsigned NOT NULL,
  `nombre` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `tipo_periferico_id` int(10) unsigned NOT NULL,
  `marca_id` int(10) unsigned NOT NULL,
  `modelo_id` int(10) unsigned NOT NULL,
  `serial` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `estado_id` int(10) unsigned NOT NULL,
  `usuario_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permiso`
--

CREATE TABLE IF NOT EXISTS `permiso` (
  `id` int(10) unsigned NOT NULL,
  `nombre` varchar(50) CHARACTER SET utf8 NOT NULL,
  `nombre_a_mostrar` varchar(45) CHARACTER SET utf8 NOT NULL,
  `observacion` varchar(200) CHARACTER SET utf8 NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(10) unsigned NOT NULL
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

CREATE TABLE IF NOT EXISTS `permiso_rol` (
  `id` int(10) unsigned NOT NULL,
  `permiso_id` int(10) unsigned NOT NULL,
  `rol_id` int(10) unsigned NOT NULL,
  `estado` tinyint(3) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

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
(10, 6, 2, 1, '2017-07-26 23:45:42', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Procesador`
--

CREATE TABLE IF NOT EXISTS `Procesador` (
  `id` int(10) unsigned NOT NULL,
  `marca_id` int(10) unsigned NOT NULL,
  `descripcion` varchar(35) CHARACTER SET armscii8 DEFAULT NULL,
  `procesadores_logicos` int(11) NOT NULL,
  `cores` int(11) NOT NULL,
  `velocidad` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `red`
--

CREATE TABLE IF NOT EXISTS `red` (
  `id` int(10) unsigned NOT NULL,
  `hostname` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `descripcion` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `tred_id` int(10) unsigned NOT NULL,
  `serial` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `marca_id_marca` int(10) unsigned NOT NULL,
  `modelo_id` int(10) unsigned NOT NULL,
  `usuario_id` int(10) unsigned NOT NULL,
  `estado_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE IF NOT EXISTS `rol` (
  `id` int(10) unsigned NOT NULL,
  `descripcion` varchar(20) CHARACTER SET utf8 NOT NULL,
  `observacion` varchar(200) CHARACTER SET utf8 NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id`, `descripcion`, `observacion`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'SuperAdministrador', 'Rol Con todos los privilegios de la plataforma y admin/*.', '2017-06-02 16:10:06', '2017-06-12 11:50:03', 1, 0),
(2, 'Operador', 'Permite a los usuarios Manipular las acciones de Operador', '2017-06-02 16:10:06', '2017-06-13 20:35:45', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sgi_session`
--

CREATE TABLE IF NOT EXISTS `sgi_session` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sistema_operativo`
--

CREATE TABLE IF NOT EXISTS `sistema_operativo` (
  `id` int(10) unsigned NOT NULL,
  `descripcion` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitudes`
--

CREATE TABLE IF NOT EXISTS `solicitudes` (
  `id` int(11) NOT NULL COMMENT 'Campo clave de la tabla solicitud, Indice principal que no puede ser nulo y sin asignar.',
  `tsolicitud_id` int(11) NOT NULL,
  `usuario_id` int(10) unsigned NOT NULL,
  `descripcion` varchar(45) CHARACTER SET utf8 NOT NULL COMMENT 'Descripción de la solicitud',
  `Esolicitud_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Campo de auditoria que permite realizar el seguimiento de los registros',
  `updated_at` datetime NOT NULL COMMENT 'Campo de auditoria que permite realizar el seguimiento de los registros',
  `created_by` int(10) unsigned NOT NULL COMMENT 'Campo de auditoria que permite realizar el seguimiento de los registros',
  `updated_by` int(10) unsigned NOT NULL COMMENT 'Campo de auditoria que permite realizar el seguimiento de los registros'
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tcomputadora`
--

CREATE TABLE IF NOT EXISTS `tcomputadora` (
  `id` int(10) unsigned NOT NULL,
  `descripcion` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_menu`
--

CREATE TABLE IF NOT EXISTS `tipo_menu` (
  `id` int(10) unsigned NOT NULL,
  `descripcion` varchar(30) CHARACTER SET utf8 NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL
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

CREATE TABLE IF NOT EXISTS `tperiferico` (
  `id` int(10) unsigned NOT NULL,
  `descripcion` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tred`
--

CREATE TABLE IF NOT EXISTS `tred` (
  `id` int(10) unsigned NOT NULL,
  `descripcion` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tsolicitud`
--

CREATE TABLE IF NOT EXISTS `tsolicitud` (
  `id` int(11) NOT NULL COMMENT 'Campo clave de la tabla tsolicitud, Indice principal que no puede ser nulo y sin asignar.',
  `nombre` varchar(45) CHARACTER SET utf8 NOT NULL COMMENT 'nombre del tipo de solicitud',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Campo de auditoria que permite realizar el seguimiento de los registros',
  `updated_at` datetime NOT NULL COMMENT 'Campo de auditoria que permite realizar el seguimiento de los registros',
  `created_by` int(10) unsigned NOT NULL COMMENT 'Campo de auditoria que permite realizar el seguimiento de los registros',
  `updated_by` int(10) unsigned NOT NULL COMMENT 'Campo de auditoria que permite realizar el seguimiento de los registros'
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

CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(10) unsigned NOT NULL,
  `departamento_id` int(10) unsigned NOT NULL,
  `avatar` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `usuario` varchar(20) CHARACTER SET utf8 NOT NULL,
  `nombre` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `apellido` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8 NOT NULL,
  `estado` tinyint(3) unsigned NOT NULL,
  `email` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `departamento_id`, `avatar`, `usuario`, `nombre`, `apellido`, `password`, `estado`, `email`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 1, 'admin.jpg', 'admin', 'Super', 'Administrador', '54971b18f16c09cc84540ac00f310f66e820c784a9af5ed5de1c3c84c5beb49b', 1, 'tebasde@gmail.com', '2017-06-02 16:10:06', '2017-07-26 19:39:23', 1, 1),
(2, 2, 'operador.jpg', 'lvillegas', 'Luis', 'Villegas', '5a4a3b5d38b8a42928e9e46e849083a2383b7421c9c57411b38e8c1a9af267c7', 1, 'lvillegas@sti.com.ve', '2017-06-15 02:14:46', '2017-07-26 16:56:02', 1, 2),
(3, 2, 'admin.jpg', 'Romramirez', 'Juan Carlos', 'Ramos', '54971b18f16c09cc84540ac00f310f66e820c784a9af5ed5de1c3c84c5beb49b', 1, 'Romramirez@sti.com.ve', '2017-06-22 23:40:13', '2017-07-03 12:02:25', 1, 3),
(6, 2, 'admin.jpg', 'crios', 'Carlos', 'Rios', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'crios@sti.com.ve', '2017-07-03 16:10:35', '0000-00-00 00:00:00', 3, 0),
(7, 7, 'operador.jpg', 'amaiuetia', 'Anamir', 'Maiquetia', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'amaiquetia@sti.com.ve', '2017-07-12 19:32:22', '0000-00-00 00:00:00', 6, 0),
(8, 7, 'operador.jpg', 'aguzman', 'Andrea', 'Guzman', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'aguzman@sti.com.ve', '2017-07-12 19:37:00', '0000-00-00 00:00:00', 6, 0),
(9, 7, 'operador.jpg', 'vrios', 'Valentina', 'Rios', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'vrios@sti.com.ve', '2017-07-12 19:37:55', '0000-00-00 00:00:00', 6, 0),
(10, 7, 'operador.jpg', 'fmendoza', 'Florangel', 'Mendoza', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'fmendoza@sti.com.ve', '2017-07-12 19:38:32', '0000-00-00 00:00:00', 6, 0),
(11, 5, 'operador.jpg', 'jlara', 'Jose', 'Lara', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'jlara@sti.com.ve', '2017-07-12 19:45:02', '2017-07-12 15:46:00', 6, 6),
(12, 5, 'operador.jpg', 'jramirez', 'Jesus', 'Ramirez', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'jramirez@sti.com.ve', '2017-07-12 19:45:45', '2017-07-12 16:07:48', 6, 6),
(13, 5, 'operador.jpg', 'lescobar', 'Lisgreiby', 'Escobar', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'lescobar@sti.com.ve', '2017-07-12 19:46:41', '0000-00-00 00:00:00', 6, 0),
(14, 5, 'operador.jpg', 'aseijas', 'Alejandra', 'Seijas', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'aseijas@sti.com.ve', '2017-07-12 19:47:44', '0000-00-00 00:00:00', 6, 0),
(15, 5, 'operador.jpg', 'rguerrero', 'Ruben', 'Guerrero', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'rguerrero@sti.com.ve', '2017-07-12 19:48:22', '2017-07-12 16:07:57', 6, 6),
(16, 5, 'operador.jpg', 'aluquez', 'Anabel', 'Luquez', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'aluquez@sti.com.ve', '2017-07-12 19:48:58', '0000-00-00 00:00:00', 6, 0),
(17, 5, 'operador.jpg', 'dcampelo', 'Diana', 'Campelo', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'dcampelo@sti.com.ve', '2017-07-12 19:50:13', '0000-00-00 00:00:00', 6, 0),
(18, 12, 'operador.jpg', 'malvarez', 'Manuel', 'Alvarez', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'malvarez@sti.com.ve', '2017-07-12 19:54:05', '0000-00-00 00:00:00', 6, 0),
(19, 12, 'operador.jpg', 'asalazar', 'Alicia', 'Salazar', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'asalazar@sti.com.ve', '2017-07-12 19:54:38', '0000-00-00 00:00:00', 6, 0),
(20, 11, 'operador.jpg', 'rmontoya', 'Ronny', 'Montoya', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'rmontoya@sti.com.ve', '2017-07-12 19:55:23', '0000-00-00 00:00:00', 6, 0),
(21, 11, 'operador.jpg', 'ddiaz', 'Danayeli', 'Diaz', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'ddiaz@sti.com.ve', '2017-07-12 19:58:28', '0000-00-00 00:00:00', 6, 0),
(22, 6, 'operador.jpg', 'vcavallo', 'Vivian', 'Cavallo', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'vcavallo@sti.com.ve', '2017-07-12 20:00:26', '0000-00-00 00:00:00', 6, 0),
(23, 6, 'operador.jpg', 'dsosa', 'Daniela', 'Sosa', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'dsosa@sti.com.ve', '2017-07-12 20:00:54', '0000-00-00 00:00:00', 6, 0),
(24, 6, 'operador.jpg', 'gramos', 'Gabriela', 'Ramos', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'gramos@sti.com.ve', '2017-07-12 20:01:36', '0000-00-00 00:00:00', 6, 0),
(25, 6, 'operador.jpg', 'mgramos', 'Maria', 'Ramos', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'mramos@sti.com.ve', '2017-07-12 20:02:12', '0000-00-00 00:00:00', 6, 0),
(26, 2, 'operador.jpg', 'jmedina', 'Jose Luis', 'Medina', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'jmedina@sti.com.ve', '2017-07-12 20:03:01', '0000-00-00 00:00:00', 6, 0),
(27, 4, 'operador.jpg', 'emedina', 'Eva', 'Medina', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'emedina@sti.com.ve', '2017-07-12 20:03:41', '0000-00-00 00:00:00', 6, 0),
(28, 4, 'operador.jpg', 'ctovar', 'Carlos', 'Tovar', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'ctovar@sti.com.ve', '2017-07-12 20:04:13', '0000-00-00 00:00:00', 6, 0),
(29, 13, 'operador.jpg', 'rortega', 'Raul', 'Ortega', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'rortega@sti.com.ve', '2017-07-12 20:05:31', '0000-00-00 00:00:00', 6, 0),
(30, 13, 'operador.jpg', 'rfernandez', 'Rimsky', 'Fernández', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'rfernandez@sti.com.ve', '2017-07-12 20:06:21', '2017-07-26 17:11:06', 6, 1),
(31, 10, 'operador.jpg', 'yviloria', 'Yelitza', 'Viloria', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'yviloria@sti.com.ve', '2017-07-12 20:07:39', '0000-00-00 00:00:00', 6, 0),
(32, 10, 'operador.jpg', 'epabon', 'Evelin', 'Pavon', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'epabon@sti.com.ve', '2017-07-12 20:09:01', '0000-00-00 00:00:00', 6, 0),
(33, 10, 'operador.jpg', 'rsanoja', 'Roxenis', 'Sanoja', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'rsanoja@sti.com.ve', '2017-07-12 20:09:50', '0000-00-00 00:00:00', 6, 0),
(34, 10, 'operador.jpg', 'robregon', 'Rafael', 'Obregon', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'robregon@sti.com.ve', '2017-07-12 20:10:24', '0000-00-00 00:00:00', 6, 0),
(35, 10, 'operador.jpg', 'darias', 'Deiry', 'Arias', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'darias@sti.com.ve', '2017-07-12 20:11:14', '0000-00-00 00:00:00', 6, 0),
(36, 10, 'operador.jpg', 'prequena', 'Pedro', 'Requena', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'prequena@sti.com.ve', '2017-07-12 20:11:48', '0000-00-00 00:00:00', 6, 0),
(38, 10, 'operador.jpg', 'ngarcia', 'Naylin', 'García', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'ngarcia@sti.com.ve', '2017-07-12 20:13:15', '0000-00-00 00:00:00', 6, 0),
(39, 2, 'operador.jpg', 'jgavidia', 'Jesus', 'Gavidia', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'jgavidia@sti.com.ve', '2017-07-12 20:13:50', '0000-00-00 00:00:00', 6, 0),
(40, 9, 'operador.jpg', 'hnaranjo', 'Hector', 'Naranjo', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'hnaranjo@sti.com.ve', '2017-07-12 20:14:29', '0000-00-00 00:00:00', 6, 0),
(41, 9, 'operador.jpg', 'jparada', 'Jesus', 'Parada', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'jparada@sti.com.ve', '2017-07-12 20:15:00', '0000-00-00 00:00:00', 6, 0),
(42, 11, 'operador.jpg', 'asandoval', 'Alexis', 'Sandoval', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'asandoval@sti.com.ve', '2017-07-12 20:15:38', '0000-00-00 00:00:00', 6, 0),
(43, 4, 'operador.jpg', 'imarcano', 'Iben', 'Marcano', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'imarcano@sti.com.ve', '2017-07-12 20:16:05', '2017-07-12 16:17:34', 6, 6),
(44, 4, 'operador.jpg', 'cruiz', 'Cristiel', 'Ruiz', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'cruiz@sti.com.ve', '2017-07-12 20:16:39', '2017-07-12 16:17:25', 6, 6),
(45, 3, 'operador.jpg', 'jperozo', 'Jackeline', 'Perozo', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'jperozo@sti.com.ve', '2017-07-12 20:17:11', '0000-00-00 00:00:00', 6, 0),
(46, 3, 'operador.jpg', 'jadan', 'Jesus', 'Adan', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'jadan@sti.com.ve', '2017-07-12 20:18:00', '0000-00-00 00:00:00', 6, 0),
(47, 3, 'operador.jpg', 'jcolina', 'Julio', 'Colina', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'jcolina@sti.com.ve', '2017-07-12 20:19:31', '0000-00-00 00:00:00', 6, 0),
(48, 2, 'operador.jpg', 'Disponibilidad', 'Gestión', 'Disponibilidad', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'gdisponibilidad@sti.com.ve', '2017-07-13 18:52:54', '0000-00-00 00:00:00', 6, 0),
(49, 10, 'operador.jpg', 'jrangel', 'Jarvis', 'Rangel', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'jrangel@sti.com.ve', '2017-08-01 18:27:26', '0000-00-00 00:00:00', 6, 0),
(50, 10, 'operador.jpg', 'sespinoza', 'Steven', 'Espinoza', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'sespinoza@sti.com.ve', '2017-08-01 18:28:03', '0000-00-00 00:00:00', 6, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_rol`
--

CREATE TABLE IF NOT EXISTS `usuario_rol` (
  `id` int(10) unsigned NOT NULL,
  `usuario_id` int(10) unsigned NOT NULL,
  `rol_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `usuario_rol`
--

INSERT INTO `usuario_rol` (`id`, `usuario_id`, `rol_id`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 1, 1, '2017-06-02 16:10:06', '2017-07-26 19:39:23', 1, 1),
(2, 2, 2, '2017-06-15 02:14:46', '2017-07-26 16:56:02', 1, 2),
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
(48, 48, 2, '2017-07-13 18:52:54', '0000-00-00 00:00:00', 6, 0),
(49, 49, 2, '2017-08-01 18:27:26', '0000-00-00 00:00:00', 6, 0),
(50, 50, 2, '2017-08-01 18:28:03', '0000-00-00 00:00:00', 6, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `computadoras`
--
ALTER TABLE `computadoras`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD KEY `fk_dispositvo_Procesador1` (`Procesador_id`),
  ADD KEY `fk_computadoras_sistema_operativo1` (`sistema_operativo_id`),
  ADD KEY `fk_computadoras_marca1` (`marca_id`),
  ADD KEY `fk_computadoras_estado1` (`estado_id`),
  ADD KEY `fk_computadoras_tcomputadora1` (`tcomputadora_id`),
  ADD KEY `fk_computadoras_usuario1_idx` (`usuario_id`),
  ADD KEY `fk_computadoras_modelo1_idx` (`modelo_id`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `descripcion_UNIQUE` (`descripcion`);

--
-- Indices de la tabla `direccion_ip`
--
ALTER TABLE `direccion_ip`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_direccion_ip_computadoras1` (`computadoras_id`);

--
-- Indices de la tabla `esolicitud`
--
ALTER TABLE `esolicitud`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `descripcion_UNIQUE` (`descripcion`);

--
-- Indices de la tabla `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_menu_menu1` (`menu_id`),
  ADD KEY `fk_menu_tipo_menu1` (`tipo_menu_id`);

--
-- Indices de la tabla `menu_rol`
--
ALTER TABLE `menu_rol`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_menu_rol_rol1` (`rol_id`),
  ADD KEY `fk_menu_rol_menu1_idx` (`menu_id`);

--
-- Indices de la tabla `modelo`
--
ALTER TABLE `modelo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `descripcion_UNIQUE` (`descripcion`),
  ADD KEY `fk_modelo_marca2_idx` (`marca_id`);

--
-- Indices de la tabla `periferico`
--
ALTER TABLE `periferico`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `serial_UNIQUE` (`serial`),
  ADD KEY `fk_periferico_tipo_periferico1` (`tipo_periferico_id`),
  ADD KEY `fk_periferico_marca1` (`marca_id`),
  ADD KEY `fk_periferico_estado1` (`estado_id`),
  ADD KEY `fk_periferico_usuario1_idx` (`usuario_id`),
  ADD KEY `fk_periferico_modelo1` (`modelo_id`);

--
-- Indices de la tabla `permiso`
--
ALTER TABLE `permiso`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre_UNIQUE` (`nombre`),
  ADD UNIQUE KEY `nombre_a_mostrar_UNIQUE` (`nombre_a_mostrar`);

--
-- Indices de la tabla `permiso_rol`
--
ALTER TABLE `permiso_rol`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_permiso_rol_rol1` (`rol_id`),
  ADD KEY `fk_rolo_permiso_permisos1_idx` (`permiso_id`);

--
-- Indices de la tabla `Procesador`
--
ALTER TABLE `Procesador`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Procesador_marca1_idx` (`marca_id`);

--
-- Indices de la tabla `red`
--
ALTER TABLE `red`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD UNIQUE KEY `serial_UNIQUE` (`serial`),
  ADD KEY `fk_Redes_marca1` (`marca_id_marca`),
  ADD KEY `fk_Red_tred1` (`tred_id`),
  ADD KEY `fk_Red_estado1` (`estado_id`),
  ADD KEY `fk_Red_usuario1_idx` (`usuario_id`),
  ADD KEY `fk_Red_modelo1_idx` (`modelo_id`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `descripcion_UNIQUE` (`descripcion`);

--
-- Indices de la tabla `sgi_session`
--
ALTER TABLE `sgi_session`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sgi_sessions_timestamp` (`timestamp`);

--
-- Indices de la tabla `sistema_operativo`
--
ALTER TABLE `sistema_operativo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `solicitudes`
--
ALTER TABLE `solicitudes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_solicitud_usuario1_idx` (`usuario_id`),
  ADD KEY `fk_esolicitud_solicitudes1_idx` (`Esolicitud_id`),
  ADD KEY `fk_tsolicitud_solicitudes1_idx` (`tsolicitud_id`);

--
-- Indices de la tabla `tcomputadora`
--
ALTER TABLE `tcomputadora`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_menu`
--
ALTER TABLE `tipo_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `descripcion_UNIQUE` (`descripcion`);

--
-- Indices de la tabla `tperiferico`
--
ALTER TABLE `tperiferico`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tred`
--
ALTER TABLE `tred`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tsolicitud`
--
ALTER TABLE `tsolicitud`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuario_UNIQUE` (`usuario`),
  ADD KEY `fk_usuario_departamento1` (`departamento_id`);

--
-- Indices de la tabla `usuario_rol`
--
ALTER TABLE `usuario_rol`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_usuario_rol_usuario` (`usuario_id`),
  ADD KEY `fk_usuario_rol_rol_idx` (`rol_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `computadoras`
--
ALTER TABLE `computadoras`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de la tabla `direccion_ip`
--
ALTER TABLE `direccion_ip`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT de la tabla `estado`
--
ALTER TABLE `estado`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `marca`
--
ALTER TABLE `marca`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT de la tabla `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT de la tabla `menu_rol`
--
ALTER TABLE `menu_rol`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT de la tabla `modelo`
--
ALTER TABLE `modelo`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT de la tabla `periferico`
--
ALTER TABLE `periferico`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT de la tabla `permiso`
--
ALTER TABLE `permiso`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `permiso_rol`
--
ALTER TABLE `permiso_rol`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `Procesador`
--
ALTER TABLE `Procesador`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT de la tabla `red`
--
ALTER TABLE `red`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `sistema_operativo`
--
ALTER TABLE `sistema_operativo`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `solicitudes`
--
ALTER TABLE `solicitudes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Campo clave de la tabla solicitud, Indice principal que no puede ser nulo y sin asignar.',AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de la tabla `tcomputadora`
--
ALTER TABLE `tcomputadora`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `tipo_menu`
--
ALTER TABLE `tipo_menu`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `tperiferico`
--
ALTER TABLE `tperiferico`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `tred`
--
ALTER TABLE `tred`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `tsolicitud`
--
ALTER TABLE `tsolicitud`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Campo clave de la tabla tsolicitud, Indice principal que no puede ser nulo y sin asignar.',AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT de la tabla `usuario_rol`
--
ALTER TABLE `usuario_rol`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `computadoras`
--
ALTER TABLE `computadoras`
  ADD CONSTRAINT `fk_computadoras_estado1` FOREIGN KEY (`estado_id`) REFERENCES `estado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_computadoras_marca1` FOREIGN KEY (`marca_id`) REFERENCES `marca` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_computadoras_modelo1` FOREIGN KEY (`modelo_id`) REFERENCES `modelo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_computadoras_sistema_operativo1` FOREIGN KEY (`sistema_operativo_id`) REFERENCES `sistema_operativo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_computadoras_tcomputadora1` FOREIGN KEY (`tcomputadora_id`) REFERENCES `tcomputadora` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_computadoras_usuario1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_dispositvo_Procesador1` FOREIGN KEY (`Procesador_id`) REFERENCES `Procesador` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
-- Filtros para la tabla `modelo`
--
 ALTER TABLE `modelo`
 ADD CONSTRAINT `fk_modelo_marca1` FOREIGN KEY (`marca_id`) REFERENCES `marca` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `periferico`
--
ALTER TABLE `periferico`
  ADD CONSTRAINT `fk_periferico_estado1` FOREIGN KEY (`estado_id`) REFERENCES `estado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_periferico_marca1` FOREIGN KEY (`marca_id`) REFERENCES `marca` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_periferico_modelo1` FOREIGN KEY (`modelo_id`) REFERENCES `modelo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_periferico_tipo_periferico1` FOREIGN KEY (`tipo_periferico_id`) REFERENCES `tperiferico` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_periferico_usuario1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `permiso_rol`
--
ALTER TABLE `permiso_rol`
  ADD CONSTRAINT `fk_permiso_rol_rol1` FOREIGN KEY (`rol_id`) REFERENCES `rol` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_rolo_permiso_permisos1` FOREIGN KEY (`permiso_id`) REFERENCES `permiso` (`id`);

--
-- Filtros para la tabla `Procesador`
--
ALTER TABLE `Procesador`
  ADD CONSTRAINT `fk_Procesador_marca1` FOREIGN KEY (`marca_id`) REFERENCES `marca` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `red`
--
ALTER TABLE `red`
  ADD CONSTRAINT `fk_Red_estado1` FOREIGN KEY (`estado_id`) REFERENCES `estado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Red_modelo1` FOREIGN KEY (`modelo_id`) REFERENCES `modelo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Red_tred1` FOREIGN KEY (`tred_id`) REFERENCES `tred` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Red_usuario1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Redes_marca1` FOREIGN KEY (`marca_id_marca`) REFERENCES `marca` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `solicitudes`
--
ALTER TABLE `solicitudes`
  ADD CONSTRAINT `fk_esolicitud_solicitudes1` FOREIGN KEY (`Esolicitud_id`) REFERENCES `esolicitud` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_solicitud_usuario1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tsolicitud_solicitudes1` FOREIGN KEY (`tsolicitud_id`) REFERENCES `tsolicitud` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_usuario_departamento1` FOREIGN KEY (`departamento_id`) REFERENCES `departamento` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usuario_rol`
--
ALTER TABLE `usuario_rol`
  ADD CONSTRAINT `fk_usuario_rol_rol` FOREIGN KEY (`rol_id`) REFERENCES `rol` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_usuario_rol_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
