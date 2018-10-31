-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 30-10-2018 a las 02:25:40
-- Versión del servidor: 5.7.21
-- Versión de PHP: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `todoanime`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `brands`
--

DROP TABLE IF EXISTS `brands`;
CREATE TABLE IF NOT EXISTS `brands` (
  `brand_id` int(100) NOT NULL AUTO_INCREMENT,
  `brand_title` text NOT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'VIDEO_JUEGOS'),
(2, 'PELICULAS'),
(3, 'MANGAS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) NOT NULL,
  `product_title` varchar(200) NOT NULL,
  `product_image` varchar(200) NOT NULL,
  `qty` int(10) NOT NULL,
  `price` int(10) NOT NULL,
  `total_amt` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `product_title`, `product_image`, `qty`, `price`, `total_amt`) VALUES
(7, 1, '0', 1, 'Naruto game', '1_Naruto_The_Broken_Bond_game.jpg', 1, 30, 30),
(8, 2, '0', 1, 'Yo-kai', '3_yokai.jpg', 1, 30, 30),
(9, 3, '0', 1, 'Dragon ball z', '5_dragon_boll_z.jpg', 1, 30, 30),
(10, 4, '0', 1, 'Susurros del corazon', '1 _susurros_del_corazon.jpg', 1, 35, 35),
(11, 5, '0', 1, 'El castillo ambulante', '2_el_castillo_ambulante.jpg', 1, 35, 35),
(12, 6, '0', 1, 'El castillo de Cagliostro', '3_el_castillo_de_cagliostro.jpg', 1, 35, 35),
(13, 7, '0', 1, 'La prinesa Mononoke', '4_la_princesa_mononoke.jpg', 1, 35, 35),
(14, 8, '0', 1, 'Pompoko', '5_pompoko.jpg', 1, 35, 35),
(15, 9, '0', 1, 'Kiki: entregas a domicilio', '6_la_bruja_kikis.jpg', 1, 35, 35);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `cat_id` int(100) NOT NULL AUTO_INCREMENT,
  `cat_title` text NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'COMEDIA\r\n'),
(2, 'MISTERIO'),
(3, 'FICCION Y FANTASIA\r\n'),
(4, 'DRAMA\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int(100) NOT NULL AUTO_INCREMENT,
  `product_cat` int(100) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`) VALUES
(1, 3, 1, 'Naruto game', 30, 'juego ', '1_Naruto_The_Broken_Bond_game.jpg', 'naruto'),
(2, 3, 1, 'Yo-kai', 30, 'juego', '3_yokai.jpg', 'Yo kai'),
(3, 3, 1, 'Dragon ball z', 30, 'juego', '5_dragon_boll_z.jpg', 'dragon ball z'),
(4, 4, 2, 'Susurros del corazon', 35, 'pelicula', '1 _susurros_del_corazon.jpg', 'susurros'),
(5, 3, 2, 'El castillo ambulante', 35, 'pelicula', '2_el_castillo_ambulante.jpg', 'castillo'),
(6, 3, 2, 'El castillo de Cagliostro', 35, 'pelicula', '3_el_castillo_de_cagliostro.jpg', 'castillo '),
(7, 3, 2, 'La prinesa Mononoke', 35, 'pelicula', '4_la_princesa_mononoke.jpg', 'castillo'),
(8, 4, 2, 'Pompoko', 35, 'PELICULAS', '5_pompoko.jpg', 'pompoko'),
(9, 4, 2, 'Kiki: entregas a domicilio', 35, 'pelicula', '6_la_bruja_kikis.jpg', 'la bruja'),
(10, 3, 2, 'Mi vecino Totoro', 35, 'pelicula', '6_mi_vecino_totoro.jpg', 'mi vecino'),
(11, 3, 2, 'La tumba de las luciérnagas', 35, 'pelicula', '7_la_tumba_de_las_luciernagas.jpg', 'la tumba'),
(12, 1, 3, 'Suzumiya Haruhi no Y?utsu', 25, 'manga', '1_haruhi.jpg', 'la melancolia de haruhi zuzmiya'),
(13, 2, 3, 'Death Note', 25, 'manga', '2_death note.jpg', 'death note'),
(14, 3, 3, 'Naruto', 25, 'manga', '3_naruto.jpg', 'naruto'),
(15, 3, 3, 'Shingeki no Kyojin', 25, 'manga', '4_ataque_a_los_titanes.jpg', 'ataque a os titanes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_info`
--

DROP TABLE IF EXISTS `user_info`;
CREATE TABLE IF NOT EXISTS `user_info` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES

(1, 'tojil', 'sis', 's373v@yahoo.es', '5d7c295237c82be9ccf5b94e07596a09', '3135440900', 'ciudad1', 'ciudad2');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
