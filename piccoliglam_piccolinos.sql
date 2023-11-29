-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-11-2023 a las 05:37:14
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `piccoliglam_piccolinos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calzado`
--

CREATE TABLE `calzado` (
  `id_calzado` int(11) NOT NULL,
  `calzado` varchar(255) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `precio` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `color` varchar(50) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `id_categoria_calzado` int(11) DEFAULT NULL,
  `id_marca_calzado` int(11) DEFAULT NULL,
  `id_talla_calzado` int(11) DEFAULT NULL,
  `id_sucursal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `calzado`
--

INSERT INTO `calzado` (`id_calzado`, `calzado`, `descripcion`, `precio`, `stock`, `estado`, `color`, `imagen`, `id_categoria_calzado`, `id_marca_calzado`, `id_talla_calzado`, `id_sucursal`) VALUES
(1, 'Calzado A', 'Descripción calzado A', 49.00, 10, '0', 'Rojo', 'images/Calzado_A.jpg', 1, 1, 1, 1),
(2, 'Calzado B', 'Descripción calzado B', 59.00, 8, '0', 'Negro', 'images/Calzado_B.jpg', 2, 2, 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_calzado`
--

CREATE TABLE `categoria_calzado` (
  `id_categoria_calzado` int(11) NOT NULL,
  `categoria_calzado` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categoria_calzado`
--

INSERT INTO `categoria_calzado` (`id_categoria_calzado`, `categoria_calzado`) VALUES
(1, 'Categoria Calzado A'),
(2, 'Categoria Calzado B');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_juguete`
--

CREATE TABLE `categoria_juguete` (
  `id_categoria_juguete` int(11) NOT NULL,
  `categoria_juguete` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categoria_juguete`
--

INSERT INTO `categoria_juguete` (`id_categoria_juguete`, `categoria_juguete`) VALUES
(1, 'Categoria Juguete A'),
(2, 'Categoria Juguete B');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_ropa`
--

CREATE TABLE `categoria_ropa` (
  `id_categoria_ropa` int(11) NOT NULL,
  `categoria_ropa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categoria_ropa`
--

INSERT INTO `categoria_ropa` (`id_categoria_ropa`, `categoria_ropa`) VALUES
(1, 'Categoria Ropa A'),
(2, 'Categoria Ropa B');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido_paterno` varchar(255) NOT NULL,
  `apellido_materno` varchar(255) DEFAULT NULL,
  `RFC` varchar(13) NOT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nombre`, `apellido_paterno`, `apellido_materno`, `RFC`, `direccion`, `telefono`, `fecha_nacimiento`, `id_usuario`) VALUES
(5, 'Cliente A', 'Apellido Cliente A', 'Apellido Materno Cliente A', 'RFC111', 'Dirección Cliente A', '5551234567', '1995-03-10', 7),
(6, 'Cliente B', 'Apellido Cliente B', 'Apellido Materno Cliente B', 'RFC222', 'Dirección Cliente B', '5559876543', '1988-07-25', 8),
(7, 'Vero', 'Garcia', 'Belman', '', 'Avenida 15', '4611781612', '2023-11-17', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentario_calzado`
--

CREATE TABLE `comentario_calzado` (
  `id_comentario_calzado` int(11) NOT NULL,
  `comentario_calzado` text NOT NULL,
  `fecha_comentario` date NOT NULL,
  `id_calzado` int(11) DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `comentario_calzado`
--

INSERT INTO `comentario_calzado` (`id_comentario_calzado`, `comentario_calzado`, `fecha_comentario`, `id_calzado`, `id_cliente`) VALUES
(1, 'Comentario calzado 1', '2023-02-05', 1, 5),
(2, 'Comentario calzado 2', '2023-02-06', 2, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentario_juguete`
--

CREATE TABLE `comentario_juguete` (
  `id_comentario_juguete` int(11) NOT NULL,
  `comentario_juguete` text NOT NULL,
  `fecha_comentario` date NOT NULL,
  `id_juguete` int(11) DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `comentario_juguete`
--

INSERT INTO `comentario_juguete` (`id_comentario_juguete`, `comentario_juguete`, `fecha_comentario`, `id_juguete`, `id_cliente`) VALUES
(7, 'Comentario juguete 1', '2023-02-03', 1, 5),
(8, 'Comentario juguete 2', '2023-02-04', 2, 6),
(9, 'Buen producto', '2023-11-28', 1, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentario_ropa`
--

CREATE TABLE `comentario_ropa` (
  `id_comentario_ropa` int(11) NOT NULL,
  `comentario_ropa` text NOT NULL,
  `fecha_comentario` date NOT NULL,
  `id_ropa` int(11) DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `comentario_ropa`
--

INSERT INTO `comentario_ropa` (`id_comentario_ropa`, `comentario_ropa`, `fecha_comentario`, `id_ropa`, `id_cliente`) VALUES
(6, 'La talla viene reducida', '2023-11-28', 3, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedido_calzado`
--

CREATE TABLE `detalle_pedido_calzado` (
  `id_detalle_pedido_calzado` int(11) NOT NULL,
  `id_pedido` int(11) DEFAULT NULL,
  `id_calzado` int(11) DEFAULT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_pedido_calzado`
--

INSERT INTO `detalle_pedido_calzado` (`id_detalle_pedido_calzado`, `id_pedido`, `id_calzado`, `cantidad`) VALUES
(1, 3, 1, 1),
(2, 4, 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedido_juguete`
--

CREATE TABLE `detalle_pedido_juguete` (
  `id_detalle_pedido_juguete` int(11) NOT NULL,
  `id_pedido` int(11) DEFAULT NULL,
  `id_juguete` int(11) DEFAULT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_pedido_juguete`
--

INSERT INTO `detalle_pedido_juguete` (`id_detalle_pedido_juguete`, `id_pedido`, `id_juguete`, `cantidad`) VALUES
(5, 3, 1, 3),
(6, 4, 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedido_ropa`
--

CREATE TABLE `detalle_pedido_ropa` (
  `id_detalle_pedido_ropa` int(11) NOT NULL,
  `id_pedido` int(11) DEFAULT NULL,
  `id_ropa` int(11) DEFAULT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_pedido_ropa`
--

INSERT INTO `detalle_pedido_ropa` (`id_detalle_pedido_ropa`, `id_pedido`, `id_ropa`, `cantidad`) VALUES
(3, 3, 3, 2),
(4, 4, 4, 1),
(5, 5, 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `id_empleado` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido_paterno` varchar(255) NOT NULL,
  `apellido_materno` varchar(255) DEFAULT NULL,
  `RFC` varchar(13) NOT NULL,
  `CURP` varchar(18) NOT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`id_empleado`, `nombre`, `apellido_paterno`, `apellido_materno`, `RFC`, `CURP`, `direccion`, `telefono`, `fecha_nacimiento`, `id_usuario`) VALUES
(1, 'Empleado A', 'Apellido A', 'Apellido Materno A', 'RFC789', 'CURP123', 'Dirección Empleado A', '987654321', '1990-01-15', 1),
(2, 'Empleado B', 'Apellido B', 'Apellido Materno B', 'RFC987', 'CURP456', 'Dirección Empleado B', '123456789', '1985-05-20', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juguete`
--

CREATE TABLE `juguete` (
  `id_juguete` int(11) NOT NULL,
  `juguete` varchar(255) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `precio` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `edad_recomendada` int(11) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `id_categoria_juguete` int(11) DEFAULT NULL,
  `id_marca_juguete` int(11) DEFAULT NULL,
  `id_sucursal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `juguete`
--

INSERT INTO `juguete` (`id_juguete`, `juguete`, `descripcion`, `precio`, `stock`, `estado`, `edad_recomendada`, `imagen`, `id_categoria_juguete`, `id_marca_juguete`, `id_sucursal`) VALUES
(1, 'Juguete 1', 'Juguete educativo', 15.00, 20, '0', 5, 'images/Juguete_1.jpg', 1, 1, 1),
(2, 'Juguete 2', 'Juguete de construcción', 24.00, 15, '0', 8, 'images/Juguete_2.jpg', 2, 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca_calzado`
--

CREATE TABLE `marca_calzado` (
  `id_marca_calzado` int(11) NOT NULL,
  `marca_calzado` varchar(255) NOT NULL,
  `id_proveedor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `marca_calzado`
--

INSERT INTO `marca_calzado` (`id_marca_calzado`, `marca_calzado`, `id_proveedor`) VALUES
(1, 'Marca E', 1),
(2, 'Marca F', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca_juguete`
--

CREATE TABLE `marca_juguete` (
  `id_marca_juguete` int(11) NOT NULL,
  `marca_juguete` varchar(255) NOT NULL,
  `id_proveedor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `marca_juguete`
--

INSERT INTO `marca_juguete` (`id_marca_juguete`, `marca_juguete`, `id_proveedor`) VALUES
(1, 'Marca C', 1),
(2, 'Marca D', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca_ropa`
--

CREATE TABLE `marca_ropa` (
  `id_marca_ropa` int(11) NOT NULL,
  `marca_ropa` varchar(255) NOT NULL,
  `id_proveedor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `marca_ropa`
--

INSERT INTO `marca_ropa` (`id_marca_ropa`, `marca_ropa`, `id_proveedor`) VALUES
(1, 'Marca A', 1),
(2, 'Marca B', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `metodo_pago`
--

CREATE TABLE `metodo_pago` (
  `id_metodo_pago` int(11) NOT NULL,
  `metodo_pago` varchar(50) NOT NULL,
  `estatus` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `metodo_pago`
--

INSERT INTO `metodo_pago` (`id_metodo_pago`, `metodo_pago`, `estatus`) VALUES
(1, 'Tarjeta', 1),
(2, 'Efectivo', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago`
--

CREATE TABLE `pago` (
  `id_pago` int(11) NOT NULL,
  `id_pedido` int(11) DEFAULT NULL,
  `id_metodo_pago` int(11) DEFAULT NULL,
  `monto` decimal(10,2) NOT NULL,
  `folio` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pago`
--

INSERT INTO `pago` (`id_pago`, `id_pedido`, `id_metodo_pago`, `monto`, `folio`) VALUES
(5, 3, 1, 29.99, 'FOLIO123'),
(6, 4, 2, 39.99, 'FOLIO456'),
(7, 5, 2, 29.00, 'ASDASD123212');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `id_pedido` int(11) NOT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `fecha_pedido` date NOT NULL,
  `fecha_entrega` date NOT NULL,
  `pagado` tinyint(1) NOT NULL,
  `entregado` tinyint(1) NOT NULL,
  `direccion_entrega` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`id_pedido`, `id_cliente`, `fecha_pedido`, `fecha_entrega`, `pagado`, `entregado`, `direccion_entrega`) VALUES
(3, 5, '2023-01-01', '2023-01-10', 1, 0, 'Dirección de entrega 1'),
(4, 6, '2023-01-02', '2023-01-12', 0, 0, 'Dirección de entrega 2'),
(5, 7, '2023-11-28', '2023-12-01', 1, 0, 'Mi avenida de entrega xd');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `privilegio`
--

CREATE TABLE `privilegio` (
  `id_privilegio` int(11) NOT NULL,
  `privilegio` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `privilegio`
--

INSERT INTO `privilegio` (`id_privilegio`, `privilegio`) VALUES
(1, 'Acceso total'),
(2, 'Lectura'),
(4, 'Calzado leer'),
(7, 'Calzado editar'),
(8, 'Calzado eliminar'),
(9, 'Calzado crear'),
(10, 'Ropa leer'),
(11, 'Ropa editar'),
(12, 'Ropa eliminar'),
(13, 'Ropa crear'),
(14, 'Calzado leer'),
(15, 'Categoria calzado leer'),
(16, 'Categoria juguete leer'),
(17, 'Categoria ropa leer'),
(18, 'Cliente leer'),
(19, 'Comentario calzado leer'),
(20, 'Comentario juguete leer'),
(21, 'Comentario ropa leer'),
(22, 'Detalle calzado leer'),
(23, 'Detalle juguete leer'),
(24, 'Detalle pedido ropa leer'),
(25, 'Empleado leer'),
(26, 'Juguete leer'),
(27, 'Marca calzado leer'),
(28, 'Marca juguete leer'),
(29, 'Marca ropa leer'),
(30, 'Metodo pago leer'),
(31, 'Pago leer'),
(32, 'Pedido leer'),
(33, 'Privilegio leer'),
(34, 'Proveedor leer'),
(35, 'Respuesta ropa leer'),
(36, 'Rol leer'),
(37, 'Rol privilegio leer'),
(38, 'Ropa leer'),
(39, 'Sucursal leer'),
(40, 'Talla calzado leer'),
(41, 'Talla ropa leer'),
(42, 'Usuario leer'),
(43, 'Usuario rol leer'),
(45, 'Calzado crear'),
(46, 'Categoria calzado crear'),
(47, 'Categoria juguete crear'),
(48, 'Categoria ropa crear'),
(49, 'Cliente crear'),
(50, 'Comentario calzado crear'),
(51, 'Comentario juguete crear'),
(52, 'Comentario ropa crear'),
(53, 'Detalle pedido calzado crear'),
(54, 'Detalle pedido juguete crear'),
(55, 'Detalle pedido ropa crear'),
(56, 'Empleado crear'),
(57, 'Juguete crear'),
(58, 'Marca calzado crear'),
(59, 'Marca juguete crear'),
(60, 'Marca ropa crear'),
(61, 'Metodo pago crear'),
(62, 'Pago crear'),
(63, 'Pedido crear'),
(64, 'Privilegio crear'),
(65, 'Proveedor crear'),
(66, 'Respuesta ropa crear'),
(67, 'Rol crear'),
(68, 'Rol privilegio crear'),
(69, 'Ropa crear'),
(70, 'Sucursal crear'),
(71, 'Talla calzado crear'),
(72, 'Talla ropa crear'),
(73, 'Usuario crear'),
(74, 'Usuario rol crear'),
(76, 'Calzado editar'),
(77, 'Categoria calzado editar'),
(78, 'Categoria juguete editar'),
(79, 'Categoria ropa editar'),
(80, 'Cliente editar'),
(81, 'Comentario calzado editar'),
(82, 'Comentario juguete editar'),
(83, 'Comentario ropa editar'),
(84, 'Detalle pedido calzado editar'),
(85, 'Detalle pedido juguete editar'),
(86, 'Detalle pedido ropa editar'),
(87, 'Empleado editar'),
(88, 'Juguete editar'),
(89, 'Marca calzado editar'),
(90, 'Marca juguete editar'),
(91, 'Marca ropa editar'),
(92, 'Metodo pago editar'),
(93, 'Pago editar'),
(94, 'Pedido editar'),
(95, 'Privilegio editar'),
(96, 'Proveedor editar'),
(97, 'Respuesta ropa editar'),
(98, 'Rol editar'),
(99, 'Rol privilegio editar'),
(100, 'Ropa editar'),
(101, 'Sucursal editar'),
(102, 'Talla calzado editar'),
(103, 'Talla ropa editar'),
(104, 'Usuario editar'),
(105, 'Usuario rol editar'),
(107, 'Calzado eliminar'),
(108, 'Categoria calzado eliminar'),
(109, 'Categoria juguete eliminar'),
(110, 'Categoria ropa eliminar'),
(111, 'Cliente eliminar'),
(112, 'Comentario calzado eliminar'),
(113, 'Comentario juguete eliminar'),
(114, 'Comentario ropa eliminar'),
(115, 'Detalle pedido calzado eliminar'),
(116, 'Detalle pedido juguete eliminar'),
(117, 'Detalle pedido ropa eliminar'),
(118, 'Empleado eliminar'),
(119, 'Juguete eliminar'),
(120, 'Marca calzado eliminar'),
(121, 'Marca juguete eliminar'),
(122, 'Marca ropa eliminar'),
(123, 'Metodo pago eliminar'),
(124, 'Pago eliminar'),
(125, 'Pedido eliminar'),
(126, 'Privilegio eliminar'),
(127, 'Proveedor eliminar'),
(128, 'Respuesta ropa eliminar'),
(129, 'Rol eliminar'),
(130, 'Rol privilegio eliminar'),
(131, 'Ropa eliminar'),
(132, 'Sucursal eliminar'),
(133, 'Talla calzado eliminar'),
(134, 'Talla ropa eliminar'),
(135, 'Usuario eliminar'),
(136, 'Usuario rol eliminar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `id_proveedor` int(11) NOT NULL,
  `proveedor` varchar(255) NOT NULL,
  `RFC` varchar(13) NOT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`id_proveedor`, `proveedor`, `RFC`, `telefono`, `correo`) VALUES
(1, 'Proveedor A', 'RFC123', '1234567890', 'proveedorA@example.com'),
(2, 'Proveedor B', 'RFC456', '9876543210', 'proveedorB@example.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuesta_ropa`
--

CREATE TABLE `respuesta_ropa` (
  `id_respuesta_ropa` int(11) NOT NULL,
  `respuesta_ropa` text NOT NULL,
  `fecha_respuesta` date NOT NULL,
  `id_comentario_ropa` int(11) DEFAULT NULL,
  `id_empleado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id_rol` int(11) NOT NULL,
  `rol` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id_rol`, `rol`) VALUES
(1, 'Administrador'),
(2, 'Dependiente'),
(3, 'Gerente'),
(4, 'Usuario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol_privilegio`
--

CREATE TABLE `rol_privilegio` (
  `id_rol_privilegio` int(11) NOT NULL,
  `id_rol` int(11) DEFAULT NULL,
  `id_privilegio` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `rol_privilegio`
--

INSERT INTO `rol_privilegio` (`id_rol_privilegio`, `id_rol`, `id_privilegio`) VALUES
(2, 1, 1),
(4, 1, 4),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 1, 10),
(11, 1, 11),
(12, 1, 12),
(13, 1, 13),
(14, 1, 13),
(15, 1, 14),
(16, 1, 15),
(17, 1, 16),
(18, 1, 17),
(19, 1, 18),
(20, 1, 19),
(21, 1, 20),
(22, 1, 21),
(23, 1, 22),
(24, 1, 23),
(25, 1, 24),
(26, 1, 25),
(27, 1, 26),
(28, 1, 27),
(29, 1, 28),
(30, 1, 29),
(31, 1, 30),
(32, 1, 31),
(33, 1, 32),
(34, 1, 33),
(35, 1, 34),
(36, 1, 35),
(37, 1, 36),
(38, 1, 37),
(39, 1, 38),
(40, 1, 39),
(41, 1, 40),
(42, 1, 41),
(43, 1, 42),
(44, 1, 43),
(45, 1, 45),
(46, 1, 46),
(47, 1, 47),
(48, 1, 48),
(49, 1, 49),
(50, 1, 50),
(51, 1, 51),
(52, 1, 52),
(53, 1, 53),
(54, 1, 54),
(55, 1, 55),
(56, 1, 56),
(57, 1, 57),
(58, 1, 58),
(59, 1, 59),
(60, 1, 60),
(61, 1, 61),
(62, 1, 62),
(63, 1, 63),
(64, 1, 64),
(65, 1, 65),
(66, 1, 66),
(67, 1, 67),
(68, 1, 68),
(69, 1, 69),
(70, 1, 70),
(71, 1, 71),
(72, 1, 72),
(73, 1, 73),
(74, 1, 74),
(75, 1, 76),
(76, 1, 77),
(77, 1, 78),
(78, 1, 79),
(79, 1, 80),
(80, 1, 81),
(81, 1, 82),
(82, 1, 83),
(83, 1, 84),
(84, 1, 85),
(85, 1, 86),
(86, 1, 87),
(87, 1, 88),
(88, 1, 89),
(89, 1, 90),
(90, 1, 91),
(91, 1, 92),
(92, 1, 93),
(93, 1, 94),
(94, 1, 95),
(95, 1, 96),
(96, 1, 97),
(97, 1, 98),
(98, 1, 99),
(99, 1, 100),
(100, 1, 101),
(101, 1, 102),
(102, 1, 103),
(103, 1, 104),
(104, 1, 105),
(141, 1, 105),
(142, 1, 107),
(143, 1, 108),
(144, 1, 109),
(145, 1, 110),
(146, 1, 111),
(147, 1, 112),
(148, 1, 113),
(149, 1, 114),
(150, 1, 115),
(151, 1, 116),
(152, 1, 117),
(153, 1, 118),
(154, 1, 119),
(155, 1, 120),
(156, 1, 121),
(157, 1, 122),
(158, 1, 123),
(159, 1, 124),
(160, 1, 125),
(161, 1, 126),
(162, 1, 127),
(163, 1, 128),
(164, 1, 129),
(165, 1, 130),
(166, 1, 131),
(167, 1, 132),
(168, 1, 133),
(169, 1, 134),
(170, 1, 135),
(171, 1, 136);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ropa`
--

CREATE TABLE `ropa` (
  `id_ropa` int(11) NOT NULL,
  `ropa` varchar(255) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `precio` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `color` varchar(50) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `id_categoria_ropa` int(11) DEFAULT NULL,
  `id_marca_ropa` int(11) DEFAULT NULL,
  `id_talla_ropa` int(11) DEFAULT NULL,
  `id_sucursal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ropa`
--

INSERT INTO `ropa` (`id_ropa`, `ropa`, `descripcion`, `precio`, `stock`, `estado`, `color`, `imagen`, `id_categoria_ropa`, `id_marca_ropa`, `id_talla_ropa`, `id_sucursal`) VALUES
(3, 'Camisa', 'Descripción camisa', 29.00, 50, '0', 'Azul', 'images/Camisa.jpg', 1, 1, 1, 1),
(4, 'Pantalón', 'Descripción pantalón', 39.00, 30, '0', 'Negro', 'images/Pantalón.jpg', 2, 1, 2, 2),
(5, 'Blusa de color negro', 'Amazon Essentials - Camiseta de cuello redondo para hombre, paquete de 6', 469.00, 100, '1', 'Negro', 'images/Blusa_de_color_negro.jpg', 1, 2, 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursal`
--

CREATE TABLE `sucursal` (
  `id_sucursal` int(11) NOT NULL,
  `sucursal` varchar(255) NOT NULL,
  `direccion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sucursal`
--

INSERT INTO `sucursal` (`id_sucursal`, `sucursal`, `direccion`) VALUES
(1, 'Sucursal A', 'Dirección A'),
(2, 'Sucursal B', 'Dirección B');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `talla_calzado`
--

CREATE TABLE `talla_calzado` (
  `id_talla_calzado` int(11) NOT NULL,
  `talla_calzado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `talla_calzado`
--

INSERT INTO `talla_calzado` (`id_talla_calzado`, `talla_calzado`) VALUES
(1, '35'),
(2, '36'),
(4, '37'),
(5, '38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `talla_ropa`
--

CREATE TABLE `talla_ropa` (
  `id_talla_ropa` int(11) NOT NULL,
  `talla_ropa` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `talla_ropa`
--

INSERT INTO `talla_ropa` (`id_talla_ropa`, `talla_ropa`) VALUES
(1, 'S'),
(2, 'M'),
(7, 'L'),
(8, 'EXTRA CHICA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `contrasena` char(32) NOT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `token` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `correo`, `contrasena`, `imagen`, `token`) VALUES
(1, 'alvarez.jorge.isc@gmail.com', '7c6a180b36896a0a8c02787eeafb0e4c', 'images/default-user.png', '24d91e596a6f2065b3d66c0c5a1f20d164b5018608efd204a7a37e52af7bc66e'),
(2, 'usuario2@example.com', '6cb75f652a9b52798eb6cf2201057c73', 'images/default-user.png', NULL),
(7, 'usuario3@example.com', '7c6a180b36896a0a8c02787eeafb0e4c', 'images/default-user.png', NULL),
(8, 'usuario3@example.com', '6cb75f652a9b52798eb6cf2201057c73', 'images/default-user.png', NULL),
(9, '19030136@itcelaya.edu.mx', 'e99a18c428cb38d5f260853678922e03', 'images/default-user.png', NULL),
(10, '19030146@itcelaya.edu.mx', 'e99a18c428cb38d5f260853678922e03', 'images/default-user.png', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_rol`
--

CREATE TABLE `usuario_rol` (
  `id_usuario_rol` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `id_rol` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario_rol`
--

INSERT INTO `usuario_rol` (`id_usuario_rol`, `id_usuario`, `id_rol`) VALUES
(2, 1, 1),
(4, 10, 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `calzado`
--
ALTER TABLE `calzado`
  ADD PRIMARY KEY (`id_calzado`),
  ADD KEY `id_categoria_calzado` (`id_categoria_calzado`),
  ADD KEY `id_marca_calzado` (`id_marca_calzado`),
  ADD KEY `id_talla_calzado` (`id_talla_calzado`),
  ADD KEY `id_sucursal` (`id_sucursal`);

--
-- Indices de la tabla `categoria_calzado`
--
ALTER TABLE `categoria_calzado`
  ADD PRIMARY KEY (`id_categoria_calzado`);

--
-- Indices de la tabla `categoria_juguete`
--
ALTER TABLE `categoria_juguete`
  ADD PRIMARY KEY (`id_categoria_juguete`);

--
-- Indices de la tabla `categoria_ropa`
--
ALTER TABLE `categoria_ropa`
  ADD PRIMARY KEY (`id_categoria_ropa`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `comentario_calzado`
--
ALTER TABLE `comentario_calzado`
  ADD PRIMARY KEY (`id_comentario_calzado`),
  ADD KEY `id_calzado` (`id_calzado`),
  ADD KEY `id_cliente` (`id_cliente`);

--
-- Indices de la tabla `comentario_juguete`
--
ALTER TABLE `comentario_juguete`
  ADD PRIMARY KEY (`id_comentario_juguete`),
  ADD KEY `id_juguete` (`id_juguete`),
  ADD KEY `id_cliente` (`id_cliente`);

--
-- Indices de la tabla `comentario_ropa`
--
ALTER TABLE `comentario_ropa`
  ADD PRIMARY KEY (`id_comentario_ropa`),
  ADD KEY `id_ropa` (`id_ropa`),
  ADD KEY `id_cliente` (`id_cliente`);

--
-- Indices de la tabla `detalle_pedido_calzado`
--
ALTER TABLE `detalle_pedido_calzado`
  ADD PRIMARY KEY (`id_detalle_pedido_calzado`),
  ADD KEY `id_pedido` (`id_pedido`),
  ADD KEY `id_calzado` (`id_calzado`);

--
-- Indices de la tabla `detalle_pedido_juguete`
--
ALTER TABLE `detalle_pedido_juguete`
  ADD PRIMARY KEY (`id_detalle_pedido_juguete`),
  ADD KEY `id_pedido` (`id_pedido`),
  ADD KEY `id_juguete` (`id_juguete`);

--
-- Indices de la tabla `detalle_pedido_ropa`
--
ALTER TABLE `detalle_pedido_ropa`
  ADD PRIMARY KEY (`id_detalle_pedido_ropa`),
  ADD KEY `id_pedido` (`id_pedido`),
  ADD KEY `id_ropa` (`id_ropa`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`id_empleado`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `juguete`
--
ALTER TABLE `juguete`
  ADD PRIMARY KEY (`id_juguete`),
  ADD KEY `id_categoria_juguete` (`id_categoria_juguete`),
  ADD KEY `id_marca_juguete` (`id_marca_juguete`),
  ADD KEY `id_sucursal` (`id_sucursal`);

--
-- Indices de la tabla `marca_calzado`
--
ALTER TABLE `marca_calzado`
  ADD PRIMARY KEY (`id_marca_calzado`),
  ADD KEY `id_proveedor` (`id_proveedor`);

--
-- Indices de la tabla `marca_juguete`
--
ALTER TABLE `marca_juguete`
  ADD PRIMARY KEY (`id_marca_juguete`),
  ADD KEY `id_proveedor` (`id_proveedor`);

--
-- Indices de la tabla `marca_ropa`
--
ALTER TABLE `marca_ropa`
  ADD PRIMARY KEY (`id_marca_ropa`),
  ADD KEY `id_proveedor` (`id_proveedor`);

--
-- Indices de la tabla `metodo_pago`
--
ALTER TABLE `metodo_pago`
  ADD PRIMARY KEY (`id_metodo_pago`);

--
-- Indices de la tabla `pago`
--
ALTER TABLE `pago`
  ADD PRIMARY KEY (`id_pago`),
  ADD KEY `id_pedido` (`id_pedido`),
  ADD KEY `id_metodo_pago` (`id_metodo_pago`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`id_pedido`),
  ADD KEY `id_cliente` (`id_cliente`);

--
-- Indices de la tabla `privilegio`
--
ALTER TABLE `privilegio`
  ADD PRIMARY KEY (`id_privilegio`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`id_proveedor`);

--
-- Indices de la tabla `respuesta_ropa`
--
ALTER TABLE `respuesta_ropa`
  ADD PRIMARY KEY (`id_respuesta_ropa`),
  ADD KEY `id_comentario_ropa` (`id_comentario_ropa`),
  ADD KEY `id_empleado` (`id_empleado`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `rol_privilegio`
--
ALTER TABLE `rol_privilegio`
  ADD PRIMARY KEY (`id_rol_privilegio`),
  ADD KEY `id_rol` (`id_rol`),
  ADD KEY `id_privilegio` (`id_privilegio`);

--
-- Indices de la tabla `ropa`
--
ALTER TABLE `ropa`
  ADD PRIMARY KEY (`id_ropa`),
  ADD KEY `id_categoria_ropa` (`id_categoria_ropa`),
  ADD KEY `id_marca_ropa` (`id_marca_ropa`),
  ADD KEY `id_talla_ropa` (`id_talla_ropa`),
  ADD KEY `id_sucursal` (`id_sucursal`);

--
-- Indices de la tabla `sucursal`
--
ALTER TABLE `sucursal`
  ADD PRIMARY KEY (`id_sucursal`);

--
-- Indices de la tabla `talla_calzado`
--
ALTER TABLE `talla_calzado`
  ADD PRIMARY KEY (`id_talla_calzado`);

--
-- Indices de la tabla `talla_ropa`
--
ALTER TABLE `talla_ropa`
  ADD PRIMARY KEY (`id_talla_ropa`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Indices de la tabla `usuario_rol`
--
ALTER TABLE `usuario_rol`
  ADD PRIMARY KEY (`id_usuario_rol`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_rol` (`id_rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `calzado`
--
ALTER TABLE `calzado`
  MODIFY `id_calzado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `categoria_calzado`
--
ALTER TABLE `categoria_calzado`
  MODIFY `id_categoria_calzado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `categoria_juguete`
--
ALTER TABLE `categoria_juguete`
  MODIFY `id_categoria_juguete` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `categoria_ropa`
--
ALTER TABLE `categoria_ropa`
  MODIFY `id_categoria_ropa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `comentario_calzado`
--
ALTER TABLE `comentario_calzado`
  MODIFY `id_comentario_calzado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `comentario_juguete`
--
ALTER TABLE `comentario_juguete`
  MODIFY `id_comentario_juguete` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `comentario_ropa`
--
ALTER TABLE `comentario_ropa`
  MODIFY `id_comentario_ropa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `detalle_pedido_calzado`
--
ALTER TABLE `detalle_pedido_calzado`
  MODIFY `id_detalle_pedido_calzado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `detalle_pedido_juguete`
--
ALTER TABLE `detalle_pedido_juguete`
  MODIFY `id_detalle_pedido_juguete` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `detalle_pedido_ropa`
--
ALTER TABLE `detalle_pedido_ropa`
  MODIFY `id_detalle_pedido_ropa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
  MODIFY `id_empleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `juguete`
--
ALTER TABLE `juguete`
  MODIFY `id_juguete` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `marca_calzado`
--
ALTER TABLE `marca_calzado`
  MODIFY `id_marca_calzado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `marca_juguete`
--
ALTER TABLE `marca_juguete`
  MODIFY `id_marca_juguete` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `marca_ropa`
--
ALTER TABLE `marca_ropa`
  MODIFY `id_marca_ropa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `metodo_pago`
--
ALTER TABLE `metodo_pago`
  MODIFY `id_metodo_pago` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `pago`
--
ALTER TABLE `pago`
  MODIFY `id_pago` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `id_pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `privilegio`
--
ALTER TABLE `privilegio`
  MODIFY `id_privilegio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `id_proveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `respuesta_ropa`
--
ALTER TABLE `respuesta_ropa`
  MODIFY `id_respuesta_ropa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `rol_privilegio`
--
ALTER TABLE `rol_privilegio`
  MODIFY `id_rol_privilegio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT de la tabla `ropa`
--
ALTER TABLE `ropa`
  MODIFY `id_ropa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `sucursal`
--
ALTER TABLE `sucursal`
  MODIFY `id_sucursal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `talla_calzado`
--
ALTER TABLE `talla_calzado`
  MODIFY `id_talla_calzado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `talla_ropa`
--
ALTER TABLE `talla_ropa`
  MODIFY `id_talla_ropa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `usuario_rol`
--
ALTER TABLE `usuario_rol`
  MODIFY `id_usuario_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `calzado`
--
ALTER TABLE `calzado`
  ADD CONSTRAINT `calzado_ibfk_1` FOREIGN KEY (`id_categoria_calzado`) REFERENCES `categoria_calzado` (`id_categoria_calzado`),
  ADD CONSTRAINT `calzado_ibfk_2` FOREIGN KEY (`id_marca_calzado`) REFERENCES `marca_calzado` (`id_marca_calzado`),
  ADD CONSTRAINT `calzado_ibfk_3` FOREIGN KEY (`id_talla_calzado`) REFERENCES `talla_calzado` (`id_talla_calzado`),
  ADD CONSTRAINT `calzado_ibfk_4` FOREIGN KEY (`id_sucursal`) REFERENCES `sucursal` (`id_sucursal`);

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `comentario_calzado`
--
ALTER TABLE `comentario_calzado`
  ADD CONSTRAINT `comentario_calzado_ibfk_1` FOREIGN KEY (`id_calzado`) REFERENCES `calzado` (`id_calzado`),
  ADD CONSTRAINT `comentario_calzado_ibfk_2` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`);

--
-- Filtros para la tabla `comentario_juguete`
--
ALTER TABLE `comentario_juguete`
  ADD CONSTRAINT `comentario_juguete_ibfk_1` FOREIGN KEY (`id_juguete`) REFERENCES `juguete` (`id_juguete`),
  ADD CONSTRAINT `comentario_juguete_ibfk_2` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`);

--
-- Filtros para la tabla `comentario_ropa`
--
ALTER TABLE `comentario_ropa`
  ADD CONSTRAINT `comentario_ropa_ibfk_1` FOREIGN KEY (`id_ropa`) REFERENCES `ropa` (`id_ropa`),
  ADD CONSTRAINT `comentario_ropa_ibfk_2` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`);

--
-- Filtros para la tabla `detalle_pedido_calzado`
--
ALTER TABLE `detalle_pedido_calzado`
  ADD CONSTRAINT `detalle_pedido_calzado_ibfk_1` FOREIGN KEY (`id_pedido`) REFERENCES `pedido` (`id_pedido`),
  ADD CONSTRAINT `detalle_pedido_calzado_ibfk_2` FOREIGN KEY (`id_calzado`) REFERENCES `calzado` (`id_calzado`);

--
-- Filtros para la tabla `detalle_pedido_juguete`
--
ALTER TABLE `detalle_pedido_juguete`
  ADD CONSTRAINT `detalle_pedido_juguete_ibfk_1` FOREIGN KEY (`id_pedido`) REFERENCES `pedido` (`id_pedido`),
  ADD CONSTRAINT `detalle_pedido_juguete_ibfk_2` FOREIGN KEY (`id_juguete`) REFERENCES `juguete` (`id_juguete`);

--
-- Filtros para la tabla `detalle_pedido_ropa`
--
ALTER TABLE `detalle_pedido_ropa`
  ADD CONSTRAINT `detalle_pedido_ropa_ibfk_1` FOREIGN KEY (`id_pedido`) REFERENCES `pedido` (`id_pedido`),
  ADD CONSTRAINT `detalle_pedido_ropa_ibfk_2` FOREIGN KEY (`id_ropa`) REFERENCES `ropa` (`id_ropa`);

--
-- Filtros para la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD CONSTRAINT `empleado_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `juguete`
--
ALTER TABLE `juguete`
  ADD CONSTRAINT `juguete_ibfk_1` FOREIGN KEY (`id_categoria_juguete`) REFERENCES `categoria_juguete` (`id_categoria_juguete`),
  ADD CONSTRAINT `juguete_ibfk_2` FOREIGN KEY (`id_marca_juguete`) REFERENCES `marca_juguete` (`id_marca_juguete`),
  ADD CONSTRAINT `juguete_ibfk_3` FOREIGN KEY (`id_sucursal`) REFERENCES `sucursal` (`id_sucursal`);

--
-- Filtros para la tabla `marca_calzado`
--
ALTER TABLE `marca_calzado`
  ADD CONSTRAINT `marca_calzado_ibfk_1` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`id_proveedor`);

--
-- Filtros para la tabla `marca_juguete`
--
ALTER TABLE `marca_juguete`
  ADD CONSTRAINT `marca_juguete_ibfk_1` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`id_proveedor`);

--
-- Filtros para la tabla `marca_ropa`
--
ALTER TABLE `marca_ropa`
  ADD CONSTRAINT `marca_ropa_ibfk_1` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`id_proveedor`);

--
-- Filtros para la tabla `pago`
--
ALTER TABLE `pago`
  ADD CONSTRAINT `pago_ibfk_1` FOREIGN KEY (`id_pedido`) REFERENCES `pedido` (`id_pedido`),
  ADD CONSTRAINT `pago_ibfk_2` FOREIGN KEY (`id_metodo_pago`) REFERENCES `metodo_pago` (`id_metodo_pago`);

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`);

--
-- Filtros para la tabla `respuesta_ropa`
--
ALTER TABLE `respuesta_ropa`
  ADD CONSTRAINT `respuesta_ropa_ibfk_1` FOREIGN KEY (`id_comentario_ropa`) REFERENCES `comentario_ropa` (`id_comentario_ropa`),
  ADD CONSTRAINT `respuesta_ropa_ibfk_2` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id_empleado`);

--
-- Filtros para la tabla `rol_privilegio`
--
ALTER TABLE `rol_privilegio`
  ADD CONSTRAINT `rol_privilegio_ibfk_1` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id_rol`),
  ADD CONSTRAINT `rol_privilegio_ibfk_2` FOREIGN KEY (`id_privilegio`) REFERENCES `privilegio` (`id_privilegio`);

--
-- Filtros para la tabla `ropa`
--
ALTER TABLE `ropa`
  ADD CONSTRAINT `ropa_ibfk_1` FOREIGN KEY (`id_categoria_ropa`) REFERENCES `categoria_ropa` (`id_categoria_ropa`),
  ADD CONSTRAINT `ropa_ibfk_2` FOREIGN KEY (`id_marca_ropa`) REFERENCES `marca_ropa` (`id_marca_ropa`),
  ADD CONSTRAINT `ropa_ibfk_3` FOREIGN KEY (`id_talla_ropa`) REFERENCES `talla_ropa` (`id_talla_ropa`),
  ADD CONSTRAINT `ropa_ibfk_4` FOREIGN KEY (`id_sucursal`) REFERENCES `sucursal` (`id_sucursal`);

--
-- Filtros para la tabla `usuario_rol`
--
ALTER TABLE `usuario_rol`
  ADD CONSTRAINT `usuario_rol_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`),
  ADD CONSTRAINT `usuario_rol_ibfk_2` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id_rol`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
