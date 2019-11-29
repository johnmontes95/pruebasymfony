-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-11-2019 a las 13:57:01
-- Versión del servidor: 10.4.8-MariaDB
-- Versión de PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `the_spacebar`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `api_token`
--

CREATE TABLE `api_token` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expires_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `api_token`
--

INSERT INTO `api_token` (`id`, `user_id`, `token`, `expires_at`) VALUES
(1, 87, 'a8dfb4ebf8cbe60715a9a4b04d94782486399df0c37492e011187fd18074444d2a4585494501b05e8ea78b6f43a84a1fb5c5d9e718fe2212838e6537', '2019-11-29 14:55:06'),
(2, 87, 'f0aca84bede3e7d33bbaef2a126fd8e528601fdbd105c62e8cf908a1f3a073f35a6f47f23a2200f6bd6ae56d629f47b46607807931154c44921fdeb8', '2019-11-29 14:55:06'),
(3, 88, '881880f37346cec75f30a324a8b2f122893bbb6803ac5b0a9ceb3499d23edd8301852538348e1f63450218ac2cc528ac5d848b1b531681111da8996f', '2019-11-29 14:55:06'),
(4, 88, '245f4cae979cdeb3e510aba6a53ed14240e8a53192a86c5b37ff5312e9b7811dee18d4a5b4d7ed8c3aab4c6a11b5d0b8575cd159a153638f5edca383', '2019-11-29 14:55:06'),
(5, 89, '4cbd6435aac0bc5010280916be3f2e417704bd08a899a816985131159cad951506f496ed38e04ba64213b23e459a7eae12ac6b12bb0a1afa4961fb1b', '2019-11-29 14:55:06'),
(6, 89, '8bd5b5ebb41e66d74a6156370d54b9e9e26e755953eb3dd5c9bb188fac325e1463578b0acd07c45e436148f42034dd8b83ddb15b1a7e2e58cb199cc2', '2019-11-29 14:55:06'),
(7, 90, '438c08e03ab8190e1d27aa65d300605dc94b6f7ecd353b57f7e339cd5088618eb67875cf26e5e7a6a64a5cfbc4ab9dd1c776baca446127acd8b2a2ea', '2019-11-29 14:55:07'),
(8, 90, '3bc905447710e94a5c50d008048e755d1b2ab65ff4a129eae801bac160e749a106227edb532b615756a0607a0e0e7356de943ef93dddc0a10379ae9c', '2019-11-29 14:55:07'),
(9, 91, 'd426e4f4332df8cc6eb39a2df112bdd75e384d55c22d66e0ceac9e770b341e99c5234537ddb316a6b0403fd82e227a91d0f2d28cf423e664c822033c', '2019-11-29 14:55:07'),
(10, 91, '3ab1ae5b6044a6b1578ae9e4cd12b98d3e801881d5ce2b566a8dd6881a089962ea62739a9a1eceb8cec0278ca60a5245c11ea2ff54556adc4774ce1f', '2019-11-29 14:55:07'),
(11, 92, '8edd0fee6ed19611b6255e1083ab7b4a8445417dd083e3c9b2ead80511090c3b9a97eb586c84bdde3f7252c0d50f7f1a69a9c1e9b411e2ea60de0674', '2019-11-29 14:55:07'),
(12, 92, 'c8c3d848245bbefd0f027886b1518f8e98b3fefbcf427a17ddfdedd04e0068f5065488d70c84715acea9e17b3a235955350555e28a97c7a4f2e6de30', '2019-11-29 14:55:07'),
(13, 93, 'a0df65b38087fe90c480842440047025dd37779ea80928a177567084740462aeea46147f31bf3c7bdb01bebf21ac3664e7101e538335259da8dae904', '2019-11-29 14:55:08'),
(14, 93, '5429a0403fc4b776205b3c4e37c2182ea00ed1df0356e35195859bd6ca0697f3f6c3a556a50b76cde831339f7ecbeb95a7a40a9258346784bd12c779', '2019-11-29 14:55:08'),
(15, 94, '3118620dbdf34324a65b65d04ef3ada048591703c96dc079e8b4fcd53d15e37a1e60c3de78fb7eb68d6bc5918052ec3c667ed8c7410e4ef8448e7dfd', '2019-11-29 14:55:08'),
(16, 94, 'a992ce773825c9b847c13139f2ccd77a67617bcf966af49cdc70960a43f75807fa55de6c5768182064a5f2b9bf37084304a0a0c2126b9c01e773cc62', '2019-11-29 14:55:08'),
(17, 95, 'f2ba064a7d1f210d73c42a669bdd005ababf8627f91cc9d005586cf4a32a1c19ef6b285585b8a7b7f991e63ea0f21030e9f1237c734a61a394336e0e', '2019-11-29 14:55:08'),
(18, 95, 'a83927754ae20266e0f6034ec3329006522525df01f16bfa909bdb876a86f94d12074e5642be58f232256f9a9c13c468aed7e3ba0c65696df4b103f8', '2019-11-29 14:55:08'),
(19, 96, '275a5d76c1df8cae09b4fd22cba944bd11c09b11d6842a256ba46c91025ca2647c003c377c8163528793e7e22a35687a2c6f8d8ffa2383c854e93460', '2019-11-29 14:55:08'),
(20, 96, 'b5f92991c23f009b4ac97ad6e1891a9a4a76bb98d78821543c6288b40df6af51239bbf3fdfdba865f4e4068e6125c78f66f552d8ee706c3385c7a381', '2019-11-29 14:55:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `heart_count` int(11) NOT NULL,
  `image_filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `article`
--

INSERT INTO `article` (`id`, `title`, `slug`, `content`, `published_at`, `author`, `heart_count`, `image_filename`, `created_at`, `updated_at`) VALUES
(274, 'Light Speed Travel: Fountain of Youth or Fallacy', 'light-speed-travel-fountain-of-youth-or-fallacy', '\n            Spicy **jalapeno bacon** ipsum dolor amet veniam shank in dolore. Ham hock nisi landjaeger cow,\n            lorem proident [beef ribs](https://baconipsum.com/) aute enim veniam ut cillum pork chuck picanha. Dolore reprehenderit\n            labore minim pork belly spare ribs cupim short loin in. Elit exercitation eiusmod dolore cow\n            **turkey** shank eu pork belly meatball non cupim.\n            Laboris beef ribs fatback fugiat eiusmod jowl kielbasa alcatra dolore velit ea ball tip. Pariatur\n            laboris sunt venison, et laborum dolore minim non meatball. Shankle eu flank aliqua shoulder,\n            capicola biltong frankfurter boudin cupim officia. Exercitation fugiat consectetur ham. Adipisicing\n            picanha shank et filet mignon pork belly ut ullamco. Irure velit turducken ground round doner incididunt\n            occaecat lorem meatball prosciutto quis strip steak.\n            Meatball adipisicing ribeye bacon strip steak eu. Consectetur ham hock pork hamburger enim strip steak\n            mollit quis officia meatloaf tri-tip swine. Cow ut reprehenderit, buffalo incididunt in filet mignon\n            strip steak pork belly aliquip capicola officia. Labore deserunt esse chicken lorem shoulder tail consectetur\n            cow est ribeye adipisicing. Pig hamburger pork belly enim. Do porchetta minim capicola irure pancetta chuck\n            fugiat.\n            ', '2019-08-25 05:22:50', 'Amy Oort', 87, 'asteroid.jpeg', '2019-11-29 13:55:10', '2019-11-29 13:55:10'),
(275, 'Light Speed Travel: Fountain of Youth or Fallacy', 'light-speed-travel-fountain-of-youth-or-fallacy-1', '\n            Spicy **jalapeno bacon** ipsum dolor amet veniam shank in dolore. Ham hock nisi landjaeger cow,\n            lorem proident [beef ribs](https://baconipsum.com/) aute enim veniam ut cillum pork chuck picanha. Dolore reprehenderit\n            labore minim pork belly spare ribs cupim short loin in. Elit exercitation eiusmod dolore cow\n            **turkey** shank eu pork belly meatball non cupim.\n            Laboris beef ribs fatback fugiat eiusmod jowl kielbasa alcatra dolore velit ea ball tip. Pariatur\n            laboris sunt venison, et laborum dolore minim non meatball. Shankle eu flank aliqua shoulder,\n            capicola biltong frankfurter boudin cupim officia. Exercitation fugiat consectetur ham. Adipisicing\n            picanha shank et filet mignon pork belly ut ullamco. Irure velit turducken ground round doner incididunt\n            occaecat lorem meatball prosciutto quis strip steak.\n            Meatball adipisicing ribeye bacon strip steak eu. Consectetur ham hock pork hamburger enim strip steak\n            mollit quis officia meatloaf tri-tip swine. Cow ut reprehenderit, buffalo incididunt in filet mignon\n            strip steak pork belly aliquip capicola officia. Labore deserunt esse chicken lorem shoulder tail consectetur\n            cow est ribeye adipisicing. Pig hamburger pork belly enim. Do porchetta minim capicola irure pancetta chuck\n            fugiat.\n            ', '2019-10-09 08:54:40', 'Mike Ferengi', 78, 'mercury.jpeg', '2019-11-29 13:55:10', '2019-11-29 13:55:10'),
(276, 'Why Asteroids Taste Like Bacon', 'why-asteroids-taste-like-bacon', '\n            Spicy **jalapeno bacon** ipsum dolor amet veniam shank in dolore. Ham hock nisi landjaeger cow,\n            lorem proident [beef ribs](https://baconipsum.com/) aute enim veniam ut cillum pork chuck picanha. Dolore reprehenderit\n            labore minim pork belly spare ribs cupim short loin in. Elit exercitation eiusmod dolore cow\n            **turkey** shank eu pork belly meatball non cupim.\n            Laboris beef ribs fatback fugiat eiusmod jowl kielbasa alcatra dolore velit ea ball tip. Pariatur\n            laboris sunt venison, et laborum dolore minim non meatball. Shankle eu flank aliqua shoulder,\n            capicola biltong frankfurter boudin cupim officia. Exercitation fugiat consectetur ham. Adipisicing\n            picanha shank et filet mignon pork belly ut ullamco. Irure velit turducken ground round doner incididunt\n            occaecat lorem meatball prosciutto quis strip steak.\n            Meatball adipisicing ribeye bacon strip steak eu. Consectetur ham hock pork hamburger enim strip steak\n            mollit quis officia meatloaf tri-tip swine. Cow ut reprehenderit, buffalo incididunt in filet mignon\n            strip steak pork belly aliquip capicola officia. Labore deserunt esse chicken lorem shoulder tail consectetur\n            cow est ribeye adipisicing. Pig hamburger pork belly enim. Do porchetta minim capicola irure pancetta chuck\n            fugiat.\n            ', NULL, 'Amy Oort', 57, 'lightspeed.png', '2019-11-29 13:55:10', '2019-11-29 13:55:10'),
(277, 'Why Asteroids Taste Like Bacon', 'why-asteroids-taste-like-bacon-1', '\n            Spicy **jalapeno bacon** ipsum dolor amet veniam shank in dolore. Ham hock nisi landjaeger cow,\n            lorem proident [beef ribs](https://baconipsum.com/) aute enim veniam ut cillum pork chuck picanha. Dolore reprehenderit\n            labore minim pork belly spare ribs cupim short loin in. Elit exercitation eiusmod dolore cow\n            **turkey** shank eu pork belly meatball non cupim.\n            Laboris beef ribs fatback fugiat eiusmod jowl kielbasa alcatra dolore velit ea ball tip. Pariatur\n            laboris sunt venison, et laborum dolore minim non meatball. Shankle eu flank aliqua shoulder,\n            capicola biltong frankfurter boudin cupim officia. Exercitation fugiat consectetur ham. Adipisicing\n            picanha shank et filet mignon pork belly ut ullamco. Irure velit turducken ground round doner incididunt\n            occaecat lorem meatball prosciutto quis strip steak.\n            Meatball adipisicing ribeye bacon strip steak eu. Consectetur ham hock pork hamburger enim strip steak\n            mollit quis officia meatloaf tri-tip swine. Cow ut reprehenderit, buffalo incididunt in filet mignon\n            strip steak pork belly aliquip capicola officia. Labore deserunt esse chicken lorem shoulder tail consectetur\n            cow est ribeye adipisicing. Pig hamburger pork belly enim. Do porchetta minim capicola irure pancetta chuck\n            fugiat.\n            ', NULL, 'Amy Oort', 63, 'asteroid.jpeg', '2019-11-29 13:55:10', '2019-11-29 13:55:10'),
(278, 'Life on Planet Mercury: Tan, Relaxing and Fabulous', 'life-on-planet-mercury-tan-relaxing-and-fabulous', '\n            Spicy **jalapeno bacon** ipsum dolor amet veniam shank in dolore. Ham hock nisi landjaeger cow,\n            lorem proident [beef ribs](https://baconipsum.com/) aute enim veniam ut cillum pork chuck picanha. Dolore reprehenderit\n            labore minim pork belly spare ribs cupim short loin in. Elit exercitation eiusmod dolore cow\n            **turkey** shank eu pork belly meatball non cupim.\n            Laboris beef ribs fatback fugiat eiusmod jowl kielbasa alcatra dolore velit ea ball tip. Pariatur\n            laboris sunt venison, et laborum dolore minim non meatball. Shankle eu flank aliqua shoulder,\n            capicola biltong frankfurter boudin cupim officia. Exercitation fugiat consectetur ham. Adipisicing\n            picanha shank et filet mignon pork belly ut ullamco. Irure velit turducken ground round doner incididunt\n            occaecat lorem meatball prosciutto quis strip steak.\n            Meatball adipisicing ribeye bacon strip steak eu. Consectetur ham hock pork hamburger enim strip steak\n            mollit quis officia meatloaf tri-tip swine. Cow ut reprehenderit, buffalo incididunt in filet mignon\n            strip steak pork belly aliquip capicola officia. Labore deserunt esse chicken lorem shoulder tail consectetur\n            cow est ribeye adipisicing. Pig hamburger pork belly enim. Do porchetta minim capicola irure pancetta chuck\n            fugiat.\n            ', '2019-10-10 14:06:48', 'Mike Ferengi', 9, 'mercury.jpeg', '2019-11-29 13:55:10', '2019-11-29 13:55:10'),
(279, 'Why Asteroids Taste Like Bacon', 'why-asteroids-taste-like-bacon-2', '\n            Spicy **jalapeno bacon** ipsum dolor amet veniam shank in dolore. Ham hock nisi landjaeger cow,\n            lorem proident [beef ribs](https://baconipsum.com/) aute enim veniam ut cillum pork chuck picanha. Dolore reprehenderit\n            labore minim pork belly spare ribs cupim short loin in. Elit exercitation eiusmod dolore cow\n            **turkey** shank eu pork belly meatball non cupim.\n            Laboris beef ribs fatback fugiat eiusmod jowl kielbasa alcatra dolore velit ea ball tip. Pariatur\n            laboris sunt venison, et laborum dolore minim non meatball. Shankle eu flank aliqua shoulder,\n            capicola biltong frankfurter boudin cupim officia. Exercitation fugiat consectetur ham. Adipisicing\n            picanha shank et filet mignon pork belly ut ullamco. Irure velit turducken ground round doner incididunt\n            occaecat lorem meatball prosciutto quis strip steak.\n            Meatball adipisicing ribeye bacon strip steak eu. Consectetur ham hock pork hamburger enim strip steak\n            mollit quis officia meatloaf tri-tip swine. Cow ut reprehenderit, buffalo incididunt in filet mignon\n            strip steak pork belly aliquip capicola officia. Labore deserunt esse chicken lorem shoulder tail consectetur\n            cow est ribeye adipisicing. Pig hamburger pork belly enim. Do porchetta minim capicola irure pancetta chuck\n            fugiat.\n            ', '2019-09-07 22:18:00', 'Amy Oort', 42, 'lightspeed.png', '2019-11-29 13:55:10', '2019-11-29 13:55:10'),
(280, 'Light Speed Travel: Fountain of Youth or Fallacy', 'light-speed-travel-fountain-of-youth-or-fallacy-2', '\n            Spicy **jalapeno bacon** ipsum dolor amet veniam shank in dolore. Ham hock nisi landjaeger cow,\n            lorem proident [beef ribs](https://baconipsum.com/) aute enim veniam ut cillum pork chuck picanha. Dolore reprehenderit\n            labore minim pork belly spare ribs cupim short loin in. Elit exercitation eiusmod dolore cow\n            **turkey** shank eu pork belly meatball non cupim.\n            Laboris beef ribs fatback fugiat eiusmod jowl kielbasa alcatra dolore velit ea ball tip. Pariatur\n            laboris sunt venison, et laborum dolore minim non meatball. Shankle eu flank aliqua shoulder,\n            capicola biltong frankfurter boudin cupim officia. Exercitation fugiat consectetur ham. Adipisicing\n            picanha shank et filet mignon pork belly ut ullamco. Irure velit turducken ground round doner incididunt\n            occaecat lorem meatball prosciutto quis strip steak.\n            Meatball adipisicing ribeye bacon strip steak eu. Consectetur ham hock pork hamburger enim strip steak\n            mollit quis officia meatloaf tri-tip swine. Cow ut reprehenderit, buffalo incididunt in filet mignon\n            strip steak pork belly aliquip capicola officia. Labore deserunt esse chicken lorem shoulder tail consectetur\n            cow est ribeye adipisicing. Pig hamburger pork belly enim. Do porchetta minim capicola irure pancetta chuck\n            fugiat.\n            ', '2019-09-21 05:05:11', 'Amy Oort', 89, 'lightspeed.png', '2019-11-29 13:55:10', '2019-11-29 13:55:10'),
(281, 'Life on Planet Mercury: Tan, Relaxing and Fabulous', 'life-on-planet-mercury-tan-relaxing-and-fabulous-1', '\n            Spicy **jalapeno bacon** ipsum dolor amet veniam shank in dolore. Ham hock nisi landjaeger cow,\n            lorem proident [beef ribs](https://baconipsum.com/) aute enim veniam ut cillum pork chuck picanha. Dolore reprehenderit\n            labore minim pork belly spare ribs cupim short loin in. Elit exercitation eiusmod dolore cow\n            **turkey** shank eu pork belly meatball non cupim.\n            Laboris beef ribs fatback fugiat eiusmod jowl kielbasa alcatra dolore velit ea ball tip. Pariatur\n            laboris sunt venison, et laborum dolore minim non meatball. Shankle eu flank aliqua shoulder,\n            capicola biltong frankfurter boudin cupim officia. Exercitation fugiat consectetur ham. Adipisicing\n            picanha shank et filet mignon pork belly ut ullamco. Irure velit turducken ground round doner incididunt\n            occaecat lorem meatball prosciutto quis strip steak.\n            Meatball adipisicing ribeye bacon strip steak eu. Consectetur ham hock pork hamburger enim strip steak\n            mollit quis officia meatloaf tri-tip swine. Cow ut reprehenderit, buffalo incididunt in filet mignon\n            strip steak pork belly aliquip capicola officia. Labore deserunt esse chicken lorem shoulder tail consectetur\n            cow est ribeye adipisicing. Pig hamburger pork belly enim. Do porchetta minim capicola irure pancetta chuck\n            fugiat.\n            ', '2019-09-05 15:10:12', 'Amy Oort', 42, 'asteroid.jpeg', '2019-11-29 13:55:10', '2019-11-29 13:55:10'),
(282, 'Why Asteroids Taste Like Bacon', 'why-asteroids-taste-like-bacon-3', '\n            Spicy **jalapeno bacon** ipsum dolor amet veniam shank in dolore. Ham hock nisi landjaeger cow,\n            lorem proident [beef ribs](https://baconipsum.com/) aute enim veniam ut cillum pork chuck picanha. Dolore reprehenderit\n            labore minim pork belly spare ribs cupim short loin in. Elit exercitation eiusmod dolore cow\n            **turkey** shank eu pork belly meatball non cupim.\n            Laboris beef ribs fatback fugiat eiusmod jowl kielbasa alcatra dolore velit ea ball tip. Pariatur\n            laboris sunt venison, et laborum dolore minim non meatball. Shankle eu flank aliqua shoulder,\n            capicola biltong frankfurter boudin cupim officia. Exercitation fugiat consectetur ham. Adipisicing\n            picanha shank et filet mignon pork belly ut ullamco. Irure velit turducken ground round doner incididunt\n            occaecat lorem meatball prosciutto quis strip steak.\n            Meatball adipisicing ribeye bacon strip steak eu. Consectetur ham hock pork hamburger enim strip steak\n            mollit quis officia meatloaf tri-tip swine. Cow ut reprehenderit, buffalo incididunt in filet mignon\n            strip steak pork belly aliquip capicola officia. Labore deserunt esse chicken lorem shoulder tail consectetur\n            cow est ribeye adipisicing. Pig hamburger pork belly enim. Do porchetta minim capicola irure pancetta chuck\n            fugiat.\n            ', '2019-08-26 23:40:50', 'Amy Oort', 33, 'lightspeed.png', '2019-11-29 13:55:10', '2019-11-29 13:55:10'),
(283, 'Life on Planet Mercury: Tan, Relaxing and Fabulous', 'life-on-planet-mercury-tan-relaxing-and-fabulous-2', '\n            Spicy **jalapeno bacon** ipsum dolor amet veniam shank in dolore. Ham hock nisi landjaeger cow,\n            lorem proident [beef ribs](https://baconipsum.com/) aute enim veniam ut cillum pork chuck picanha. Dolore reprehenderit\n            labore minim pork belly spare ribs cupim short loin in. Elit exercitation eiusmod dolore cow\n            **turkey** shank eu pork belly meatball non cupim.\n            Laboris beef ribs fatback fugiat eiusmod jowl kielbasa alcatra dolore velit ea ball tip. Pariatur\n            laboris sunt venison, et laborum dolore minim non meatball. Shankle eu flank aliqua shoulder,\n            capicola biltong frankfurter boudin cupim officia. Exercitation fugiat consectetur ham. Adipisicing\n            picanha shank et filet mignon pork belly ut ullamco. Irure velit turducken ground round doner incididunt\n            occaecat lorem meatball prosciutto quis strip steak.\n            Meatball adipisicing ribeye bacon strip steak eu. Consectetur ham hock pork hamburger enim strip steak\n            mollit quis officia meatloaf tri-tip swine. Cow ut reprehenderit, buffalo incididunt in filet mignon\n            strip steak pork belly aliquip capicola officia. Labore deserunt esse chicken lorem shoulder tail consectetur\n            cow est ribeye adipisicing. Pig hamburger pork belly enim. Do porchetta minim capicola irure pancetta chuck\n            fugiat.\n            ', NULL, 'Mike Ferengi', 75, 'asteroid.jpeg', '2019-11-29 13:55:10', '2019-11-29 13:55:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `article_tag`
--

CREATE TABLE `article_tag` (
  `article_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `article_tag`
--

INSERT INTO `article_tag` (`article_id`, `tag_id`) VALUES
(274, 125),
(274, 126),
(275, 122),
(275, 124),
(275, 126),
(276, 122),
(277, 123),
(277, 125),
(277, 126),
(277, 129),
(277, 130),
(278, 122),
(278, 123),
(278, 127),
(280, 124),
(280, 126),
(280, 129),
(281, 123),
(281, 126),
(281, 130),
(283, 123),
(283, 126),
(283, 127);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `author_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `article_id` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `comment`
--

INSERT INTO `comment` (`id`, `author_name`, `content`, `created_at`, `updated_at`, `article_id`, `is_deleted`) VALUES
(1621, 'Miss Mertie Rowe Jr.', 'Molestiae aut vel velit doloribus. Qui optio rem similique unde nobis quasi.', '2019-11-27 02:42:36', '2019-11-29 13:55:10', 274, 0),
(1622, 'Mr. Avery Rempel', 'Quo omnis perspiciatis at omnis. Porro voluptatibus ipsam sed et commodi velit.', '2019-11-10 16:49:18', '2019-11-29 13:55:10', 277, 1),
(1623, 'Oral Gutmann', 'Est numquam ut mollitia nihil perspiciatis possimus. Consequatur ut voluptatem velit dolor. Ipsa optio sit consequuntur necessitatibus dolorem libero. Aliquid minus doloribus ipsum occaecati.', '2019-11-26 14:16:57', '2019-11-29 13:55:10', 283, 0),
(1624, 'Susie Sipes', 'Quia necessitatibus ut deleniti. Unde eos dicta eum sint et ut.', '2019-11-07 15:30:44', '2019-11-29 13:55:10', 281, 0),
(1625, 'Miss Otha Carroll', 'Sit et ab voluptatibus tempore ab itaque libero. Eaque aspernatur assumenda reiciendis qui et.', '2019-11-15 04:34:15', '2019-11-29 13:55:10', 277, 1),
(1626, 'Dr. Juston Cummings DDS', 'Facere voluptatem qui unde amet reiciendis exercitationem quia. Illo quod occaecati itaque aut est.', '2019-11-10 10:41:28', '2019-11-29 13:55:10', 276, 0),
(1627, 'Zachariah Olson III', 'Optio rerum architecto architecto saepe veniam quod animi. Id facere officiis nesciunt ut quia consectetur. Voluptatum quidem odit dolorum dolore qui et. Repellendus veniam odit pariatur.', '2019-11-23 10:49:00', '2019-11-29 13:55:10', 281, 0),
(1628, 'Nikki Stanton Sr.', 'Officiis dolor quia sapiente animi similique. Consequatur et dolores veniam nulla libero sunt aliquid. Debitis accusantium repudiandae aliquid dolore perferendis aut. Sequi velit accusamus ut rerum hic saepe.', '2019-10-30 00:13:58', '2019-11-29 13:55:10', 278, 0),
(1629, 'Prof. Kennith Williamson V', 'Expedita error id molestiae cupiditate minima et fuga. Ut nisi perspiciatis reprehenderit similique quasi omnis eos.', '2019-11-07 01:12:23', '2019-11-29 13:55:10', 276, 0),
(1630, 'Lurline Stamm', 'Facilis fuga totam quasi in quia alias et ut. Rerum occaecati sunt quas distinctio delectus architecto. Voluptatem temporibus occaecati delectus quia. Occaecati ipsum est quae et delectus omnis.', '2019-11-07 19:14:26', '2019-11-29 13:55:10', 276, 0),
(1631, 'Dr. Courtney Krajcik PhD', 'Accusantium est eligendi minima dignissimos aspernatur ad. Incidunt aut optio exercitationem quo officia tenetur velit. Exercitationem omnis velit quaerat consectetur. Consequuntur dolor quo vel dicta.', '2019-11-12 16:41:17', '2019-11-29 13:55:10', 280, 0),
(1632, 'Yvette Lowe', 'Recusandae eaque est id iure id iure molestiae. Rerum non ipsam esse sequi iure magni explicabo.', '2019-11-19 10:32:44', '2019-11-29 13:55:10', 283, 0),
(1633, 'Louie Romaguera Sr.', 'Sunt est pariatur alias temporibus sed eos fugit. Magnam dolore quis qui nulla rem quis non et.', '2019-11-25 01:36:36', '2019-11-29 13:55:10', 279, 0),
(1634, 'Virgie Barrows IV', 'Dolorem soluta et molestiae. Maxime iste quibusdam sunt provident et atque minus. Dolore fuga quia consectetur placeat iste. Mollitia eveniet laboriosam magnam suscipit corporis placeat non.', '2019-10-31 16:35:03', '2019-11-29 13:55:10', 279, 0),
(1635, 'Daniella Prohaska', 'Rerum sed dignissimos et non ut culpa. Aut enim et sunt et quis non voluptatem. Cupiditate enim ad ad fugit doloremque omnis in dolorum.', '2019-11-01 21:30:55', '2019-11-29 13:55:10', 278, 0),
(1636, 'Fanny Veum', 'Vero est itaque qui ipsum. Quod culpa labore explicabo nulla. Quo ducimus quibusdam aut neque eos.', '2019-11-28 12:00:33', '2019-11-29 13:55:10', 281, 1),
(1637, 'Duane Ebert', 'Ut eius quaerat enim iure occaecati excepturi aperiam. Similique ea amet nulla quod. Doloribus esse sit deleniti quo et illo vero hic. Eos quidem earum totam iure eveniet quod modi voluptatum.', '2019-11-19 13:58:43', '2019-11-29 13:55:10', 281, 0),
(1638, 'Mr. Mckenna Ryan', 'In a tenetur ratione sed. Expedita magni amet eos et fuga assumenda pariatur.', '2019-11-29 13:29:45', '2019-11-29 13:55:10', 280, 0),
(1639, 'Dr. Henri Hessel', 'Ut eius delectus odio et. Voluptas recusandae aut fuga. Reprehenderit qui aperiam est tempora ab.', '2019-11-09 19:04:12', '2019-11-29 13:55:10', 275, 1),
(1640, 'Floyd Nader II', 'Consequatur sit blanditiis accusantium delectus aut. Ratione sequi fugiat consequatur corporis vero. Consectetur fugiat natus vel. Atque voluptatem qui magni qui minus minima officia mollitia.', '2019-11-17 02:39:29', '2019-11-29 13:55:10', 278, 0),
(1641, 'Ms. Eulalia Gibson DVM', 'Nisi quis neque quia ullam. Cumque sed voluptatem neque omnis molestiae cumque.', '2019-11-06 00:49:02', '2019-11-29 13:55:10', 281, 0),
(1642, 'Mrs. Juliet Mante', 'Molestiae soluta cumque sapiente cupiditate est expedita. Vitae sit minus a autem ut saepe. Et ut repudiandae ut reprehenderit asperiores. Qui fuga nemo repellat quis eum voluptatem recusandae.', '2019-11-08 04:34:48', '2019-11-29 13:55:10', 279, 0),
(1643, 'Zelda Ferry I', 'Magni dolorem quidem non dolores officia dolor vel. Et quod esse voluptates similique dicta.', '2019-11-29 08:26:37', '2019-11-29 13:55:10', 281, 0),
(1644, 'Jennie Little', 'Quaerat eum eos voluptatum consequatur asperiores. Accusantium sapiente consequuntur iure accusantium. Nulla dolorum aut a eaque voluptate eum est.', '2019-11-26 06:04:51', '2019-11-29 13:55:10', 278, 0),
(1645, 'Darrion Lockman', 'Totam ab perspiciatis debitis. Quo similique blanditiis inventore autem aut omnis consectetur fugiat. Minus et id eveniet nihil. Aspernatur nihil modi deserunt distinctio iusto consequatur enim.', '2019-11-14 19:14:48', '2019-11-29 13:55:10', 275, 0),
(1646, 'Prof. Brock Witting V', 'Et magni ut molestiae ut officia. Non unde et atque. Distinctio dolores dolorem dolore. Veritatis vel et eaque assumenda.', '2019-11-03 07:28:45', '2019-11-29 13:55:10', 276, 0),
(1647, 'Prof. Mina Kuhic Jr.', 'Rem sed eveniet dolor sit sed error. Ea similique cumque tenetur possimus facilis delectus officia sed.', '2019-11-27 07:20:08', '2019-11-29 13:55:10', 281, 0),
(1648, 'Ms. Madonna Schimmel II', 'Aut voluptatum necessitatibus quas cum tempore perspiciatis. Molestiae illum expedita rem eveniet optio vitae quos.', '2019-11-08 22:55:02', '2019-11-29 13:55:10', 279, 0),
(1649, 'Dr. Katheryn Lesch', 'Ducimus consectetur dignissimos nostrum libero atque facere sed. Accusantium rerum nam magnam nam hic distinctio dolores quis. Iure repellat et consequatur neque qui facere.', '2019-11-17 19:10:01', '2019-11-29 13:55:10', 275, 1),
(1650, 'Alyce McDermott', 'Et atque voluptatibus molestiae optio sit amet. Delectus laboriosam ut aliquid.', '2019-11-11 21:36:20', '2019-11-29 13:55:10', 281, 0),
(1651, 'Mr. Camron Dooley', 'Velit et consequuntur voluptatibus quidem error incidunt. Tenetur et nam saepe deleniti non repellat nobis voluptatum.', '2019-11-12 20:30:20', '2019-11-29 13:55:10', 279, 0),
(1652, 'Herta Ruecker', 'Alias quas at exercitationem et iste minima. Minima beatae provident vitae eveniet perspiciatis quas pariatur.', '2019-11-11 10:16:14', '2019-11-29 13:55:10', 274, 0),
(1653, 'Makayla Tromp', 'Sunt libero in et sit soluta nihil. Et et culpa similique nulla earum fugit aut. Deserunt ut quasi in ipsum dolorum. Fugiat sapiente harum illo quo suscipit. Officia dolor optio consequatur vitae dolores.', '2019-11-19 02:57:04', '2019-11-29 13:55:10', 275, 0),
(1654, 'Mr. Freeman Cartwright', 'Magni aut nostrum eos natus. Perspiciatis sequi nihil aut in et.', '2019-11-20 06:07:14', '2019-11-29 13:55:10', 279, 1),
(1655, 'Mr. Jermain Heller Jr.', 'Dolores modi distinctio dolor perferendis labore minima laborum. Placeat laudantium maiores perferendis odio numquam temporibus accusamus architecto.', '2019-11-23 22:20:14', '2019-11-29 13:55:10', 274, 0),
(1656, 'Ross Batz', 'Atque consectetur eaque et ea consequatur et. Accusantium non commodi rem.', '2019-11-24 17:03:44', '2019-11-29 13:55:10', 274, 1),
(1657, 'Prof. Vincent Monahan MD', 'Exercitationem animi nihil aut a sit. Impedit at qui laborum sapiente at animi iusto nostrum. Dolores ut expedita voluptas sint officia adipisci vero ratione. Similique animi animi et praesentium enim.', '2019-11-19 02:39:34', '2019-11-29 13:55:10', 281, 0),
(1658, 'Queen Cremin Sr.', 'Explicabo dolorum placeat velit voluptates. Quis laboriosam sapiente perferendis autem voluptatibus.', '2019-11-24 15:02:01', '2019-11-29 13:55:10', 283, 0),
(1659, 'Abner Lynch', 'Dignissimos modi neque recusandae recusandae aperiam. Quo exercitationem modi illo sit. Accusantium illo dicta ab.', '2019-11-05 03:30:11', '2019-11-29 13:55:10', 275, 0),
(1660, 'Mr. Brook Rippin Jr.', 'Inventore deleniti provident est quaerat. Quis dolore beatae ipsum. Delectus modi veniam beatae molestiae repudiandae ea. Vel est est rerum maiores enim alias.', '2019-11-28 16:04:59', '2019-11-29 13:55:10', 283, 0),
(1661, 'Prof. Hans Kozey DVM', 'Officiis similique in dolores est ut explicabo tempora. Ducimus rem vel enim cumque voluptatem vitae. Doloremque alias vero itaque aut est.', '2019-11-05 04:32:07', '2019-11-29 13:55:10', 274, 0),
(1662, 'Douglas Schamberger', 'Iure distinctio aspernatur illo rerum dolorem. Quis officia illum necessitatibus explicabo nam et unde.', '2019-11-18 09:44:48', '2019-11-29 13:55:10', 274, 0),
(1663, 'Keagan Kerluke', 'Sit eius sint saepe ad rerum. Distinctio praesentium neque maiores ut repudiandae similique quia. Aut quis minus nam vero animi.', '2019-11-16 02:24:17', '2019-11-29 13:55:10', 278, 0),
(1664, 'Khalil Yundt III', 'Quis perferendis molestiae molestiae saepe aut. Omnis qui molestiae sint quia voluptatibus enim.', '2019-11-07 06:42:30', '2019-11-29 13:55:10', 283, 0),
(1665, 'Kacey Gislason', 'Soluta quos suscipit veritatis impedit qui sunt. Quam sit molestiae et numquam.', '2019-11-09 10:51:31', '2019-11-29 13:55:10', 275, 0),
(1666, 'Lowell Cormier', 'Hic reprehenderit magnam tenetur nesciunt. Aut voluptates quod eos sunt. Reiciendis aut non ex quo quisquam sit. Dolorum qui impedit voluptates perspiciatis distinctio accusamus vel fugiat.', '2019-11-25 04:51:32', '2019-11-29 13:55:10', 275, 0),
(1667, 'Paul Baumbach', 'Sed recusandae soluta ea. Blanditiis aspernatur adipisci ut.', '2019-11-08 14:42:14', '2019-11-29 13:55:10', 282, 1),
(1668, 'Gerry Kiehn', 'Itaque eaque perferendis et. Similique illo sit nisi aut dignissimos vel.', '2019-11-19 05:05:10', '2019-11-29 13:55:10', 281, 1),
(1669, 'Mr. Lowell O\'Reilly', 'Laboriosam molestiae earum voluptas assumenda quaerat. Dolorum voluptas deserunt eum. Aliquam illo placeat modi temporibus voluptas. Placeat doloribus eum beatae.', '2019-11-25 14:32:25', '2019-11-29 13:55:10', 281, 0),
(1670, 'Geraldine Goldner III', 'Deleniti velit sit ullam magni molestiae sed. Aut neque aut fuga facilis a illum quo nihil. Assumenda similique iure sunt quod quam earum debitis. Eius illum illum earum sit optio sint voluptatibus tempore.', '2019-11-28 04:06:19', '2019-11-29 13:55:10', 275, 0),
(1671, 'Mrs. Flavie Koss', 'Et repellat blanditiis fugit corrupti et. Sunt eum vel unde velit autem. Consequatur saepe eveniet sed delectus quae omnis. Adipisci enim qui non commodi.', '2019-10-30 13:26:11', '2019-11-29 13:55:10', 275, 1),
(1672, 'Albert Medhurst', 'Aliquid dolorem doloremque ipsum in. Sit enim quaerat quia suscipit officiis a. Rerum rerum rerum labore voluptates ut. Enim at explicabo eum veritatis quis facilis. Doloribus molestias recusandae sunt possimus tempore voluptatum quia.', '2019-11-06 14:04:23', '2019-11-29 13:55:10', 274, 0),
(1673, 'Dandre Dare', 'Et voluptate unde aut. Amet culpa qui voluptatem dolore. Maxime sit pariatur at et.', '2019-11-12 01:13:52', '2019-11-29 13:55:10', 277, 0),
(1674, 'Mr. Ulises Champlin Sr.', 'Quibusdam dolor incidunt incidunt sit ut sapiente. Repellendus hic quia sint voluptas sunt.', '2019-11-29 13:32:26', '2019-11-29 13:55:10', 281, 0),
(1675, 'Lonny Pouros', 'Molestiae accusantium exercitationem blanditiis et. Eligendi aut et fugiat eligendi officia tenetur occaecati. Voluptate voluptate fuga cumque cupiditate.', '2019-11-04 00:31:34', '2019-11-29 13:55:10', 283, 0),
(1676, 'Ms. Bulah Boyle', 'Quibusdam eaque maxime officia voluptatem debitis minus aperiam. Voluptas veniam modi similique inventore. Dolorum aperiam consequatur architecto qui aut in. Eos accusamus quo ab et dolorem quia harum. Nisi quia excepturi harum.', '2019-11-24 01:57:52', '2019-11-29 13:55:10', 277, 0),
(1677, 'Brennon Stamm', 'Veniam quia vitae accusantium quaerat aliquid nihil. Non adipisci officiis quis ipsum necessitatibus. Aperiam quis dicta tenetur. Voluptatem unde nesciunt vel consequatur sed recusandae ea.', '2019-11-19 04:11:13', '2019-11-29 13:55:10', 277, 0),
(1678, 'Dr. Madisyn Marvin', 'Eos porro et dolores ut. Esse officia nihil quas quis. Unde magnam et odit tenetur eligendi delectus.', '2019-10-30 07:27:49', '2019-11-29 13:55:10', 279, 0),
(1679, 'Dr. Ciara Schumm III', 'Tempora ab rerum delectus qui. Magni deleniti ut ad. Quaerat quibusdam mollitia est tempore. Voluptas natus unde vero rerum voluptatem rerum doloremque.', '2019-11-20 12:34:19', '2019-11-29 13:55:10', 283, 0),
(1680, 'Marlene Walter I', 'Consectetur molestiae est assumenda eligendi quis. Hic quo debitis ratione voluptas maiores.', '2019-11-23 07:15:06', '2019-11-29 13:55:10', 280, 0),
(1681, 'Mrs. Berniece Breitenberg', 'Odit et ex est totam fugit vel magnam. Asperiores enim excepturi sit aut rerum.', '2019-11-27 11:06:51', '2019-11-29 13:55:10', 278, 0),
(1682, 'Gerardo Keeling III', 'Temporibus occaecati molestiae et est. Qui fuga nihil non non pariatur.', '2019-11-06 06:36:48', '2019-11-29 13:55:10', 278, 1),
(1683, 'Mr. Milan Marquardt PhD', 'Necessitatibus reprehenderit tempora aut laboriosam hic fugit numquam. Quos quo assumenda cum fuga nostrum excepturi repellat.', '2019-11-07 15:38:10', '2019-11-29 13:55:10', 280, 0),
(1684, 'Miss Mercedes Prohaska', 'Sed magnam et aut inventore magnam voluptatem fugiat. Qui nostrum et tempora ea non sequi.', '2019-11-18 12:25:17', '2019-11-29 13:55:10', 282, 0),
(1685, 'Ursula Thompson', 'Illum distinctio beatae ut voluptates accusantium atque in sed. Sint aspernatur est vel quam dolores consequatur aut. Architecto eaque et nisi dolorem neque.', '2019-11-08 15:41:25', '2019-11-29 13:55:10', 277, 0),
(1686, 'Bobby Kautzer', 'Fuga sapiente voluptate adipisci ut culpa necessitatibus cumque. Provident eveniet aut ut at sequi inventore nesciunt perspiciatis.', '2019-11-03 11:27:16', '2019-11-29 13:55:10', 275, 0),
(1687, 'Janiya Renner', 'Quia nulla eligendi aspernatur ex eaque perferendis. Perspiciatis ut eveniet magnam ut aspernatur voluptatum dolor vel.', '2019-11-27 14:21:23', '2019-11-29 13:55:10', 280, 0),
(1688, 'Trey Schuster', 'Impedit minus quidem esse rerum atque dicta quis cupiditate. Rerum aliquid dolorem ea et nostrum.', '2019-11-16 23:01:08', '2019-11-29 13:55:10', 279, 1),
(1689, 'Bernice Altenwerth', 'Non corporis aut adipisci praesentium dolores. Error tempore assumenda voluptatem maiores quae voluptatem explicabo facilis. Nisi nam hic numquam. Itaque eius ipsum voluptatum cumque sit omnis dicta et.', '2019-11-08 12:05:48', '2019-11-29 13:55:10', 280, 1),
(1690, 'Amelie Ritchie', 'Dicta voluptate rerum ipsam. Corporis voluptatem reprehenderit in. Dolorum culpa nihil et et.', '2019-11-03 20:07:04', '2019-11-29 13:55:10', 282, 0),
(1691, 'Prof. Kevin Hoeger', 'Labore et aut iure dolores. Perferendis quaerat omnis voluptas culpa ut sit iusto quo. Nobis doloribus reiciendis est doloremque qui tempora. Odit quia sapiente qui.', '2019-11-19 16:05:27', '2019-11-29 13:55:10', 275, 0),
(1692, 'Miss Sincere Lehner MD', 'Illo nihil labore est voluptatem. Eos officiis sunt non minima tempora quos perferendis. Accusantium nobis sed adipisci sunt.', '2019-11-18 02:29:16', '2019-11-29 13:55:10', 280, 0),
(1693, 'Camila Steuber', 'Autem culpa a perspiciatis quaerat. Sunt sunt dolorum molestiae non minus tempora earum. Sit eos voluptas et harum qui.', '2019-11-04 00:41:33', '2019-11-29 13:55:10', 278, 0),
(1694, 'June Ritchie', 'Et atque distinctio quos architecto similique sit accusamus ducimus. Expedita suscipit reprehenderit corporis dolore.', '2019-11-22 02:01:50', '2019-11-29 13:55:10', 277, 0),
(1695, 'Prof. Beth Spencer', 'Nesciunt natus est magni quia delectus adipisci. Ducimus sed tempora nihil dolor esse.', '2019-11-24 00:03:16', '2019-11-29 13:55:10', 276, 0),
(1696, 'Amina Hermann', 'Atque ut aspernatur minima accusamus animi. Dolorum minus adipisci cumque qui quos.', '2019-11-14 11:27:29', '2019-11-29 13:55:10', 277, 0),
(1697, 'Prof. Pete Kovacek Sr.', 'Rerum nisi consequuntur omnis explicabo eius ipsum vel. Eum eaque ullam aut animi illo. Aut beatae ea quam et. Consequatur a sequi assumenda neque earum dolor pariatur.', '2019-11-10 05:19:28', '2019-11-29 13:55:10', 282, 1),
(1698, 'Corrine VonRueden', 'Qui ut a dolorem dolorum atque. Pariatur corrupti commodi alias et eligendi. Sunt consequatur et est est accusamus. Esse quia odio et. Est facilis modi deleniti qui debitis.', '2019-11-17 18:02:20', '2019-11-29 13:55:10', 276, 0),
(1699, 'Prof. Delaney Bins', 'Iste quo nemo enim assumenda aut illo nostrum. Doloremque quibusdam quos soluta est esse. Qui ut architecto inventore iste adipisci.', '2019-10-31 16:42:10', '2019-11-29 13:55:10', 278, 0),
(1700, 'Loren Schneider', 'Asperiores quia officiis placeat veritatis vel dicta adipisci. Aut id molestiae sed eos nesciunt dolore mollitia quae.', '2019-11-13 01:02:12', '2019-11-29 13:55:10', 275, 1),
(1701, 'Prof. Cleora Lockman DVM', 'Sed temporibus velit animi quam nihil aperiam. Quia eos expedita nihil omnis quisquam mollitia. Sapiente rem laborum sapiente sint officiis.', '2019-11-12 12:43:13', '2019-11-29 13:55:10', 274, 0),
(1702, 'Chance Boyer IV', 'Pariatur pariatur nobis aut eius voluptas sunt. Dolore qui reiciendis facere in eum molestiae. Iste ducimus et et sed et in sit. Animi dolorem at harum ut ratione.', '2019-11-10 03:51:08', '2019-11-29 13:55:10', 274, 0),
(1703, 'August McLaughlin', 'At similique cupiditate esse dolorum quisquam a et. Est quo totam quis est velit tenetur aspernatur. Illum voluptas qui voluptatem est perspiciatis dignissimos.', '2019-11-05 18:50:02', '2019-11-29 13:55:10', 278, 0),
(1704, 'Mr. Jorge Ward', 'Aut quam rerum numquam magni nulla nobis. Amet natus libero laborum deserunt nam voluptas quia corporis.', '2019-11-27 18:47:48', '2019-11-29 13:55:10', 280, 0),
(1705, 'Lois Sawayn', 'Dolorum tempore in id aut praesentium. Ratione nihil eveniet quos maxime nulla quasi ad.', '2019-10-30 06:23:54', '2019-11-29 13:55:10', 275, 0),
(1706, 'Dr. Werner Robel', 'Eos inventore tenetur et minus. Omnis dolores qui et sit consequatur eligendi ullam. Doloremque quae officia suscipit amet. Rerum dolores aut est quae et possimus.', '2019-10-31 15:15:21', '2019-11-29 13:55:10', 276, 0),
(1707, 'Mrs. Vergie Smitham DDS', 'Est excepturi rerum non ullam et sequi facere. Voluptatibus neque iste molestias nostrum est nostrum. Sed debitis minima corrupti perspiciatis est.', '2019-11-25 19:01:29', '2019-11-29 13:55:10', 275, 0),
(1708, 'Darius Greenholt', 'Voluptatem maxime pariatur quos ipsa totam atque maxime. Ullam laboriosam sed nihil et omnis laborum.', '2019-11-28 11:46:23', '2019-11-29 13:55:10', 282, 0),
(1709, 'Nico Rogahn', 'Dolores dolor inventore iste quod nesciunt assumenda. Est laudantium ex quia et et. Sed officiis deserunt dolores ab assumenda sit. Sapiente soluta nulla inventore fugit id et possimus. Magni velit qui in.', '2019-11-14 18:04:05', '2019-11-29 13:55:10', 282, 0),
(1710, 'Karley Koepp Sr.', 'Ipsam tempore praesentium earum quam temporibus et eveniet. Quasi optio recusandae adipisci.', '2019-11-20 12:47:53', '2019-11-29 13:55:10', 281, 0),
(1711, 'Jedediah Kautzer DVM', 'Vitae consequuntur odit cum animi cumque unde laborum. Magnam debitis ipsam et labore occaecati.', '2019-10-31 01:08:13', '2019-11-29 13:55:10', 283, 0),
(1712, 'Monica Quigley', 'Non modi distinctio minus unde voluptatibus dolorem. Quae delectus quod reprehenderit debitis et sed quisquam ea. Tempore reprehenderit est et.', '2019-11-26 12:30:00', '2019-11-29 13:55:10', 283, 0),
(1713, 'Mr. Tre Collins DVM', 'Tempora perferendis incidunt aliquid quae. Porro cupiditate quidem nihil ad.', '2019-11-12 04:59:34', '2019-11-29 13:55:10', 283, 0),
(1714, 'Dr. Filiberto Kertzmann Jr.', 'Quod alias libero aliquam voluptatem enim ullam. Et ipsa veritatis voluptas id cum est quo culpa. Sit quisquam consectetur autem et. Consequuntur officiis eius consectetur natus quod.', '2019-11-20 20:44:16', '2019-11-29 13:55:10', 277, 0),
(1715, 'Electa Fritsch', 'Aliquid maiores corrupti aspernatur aut. Est debitis qui quam et quia aut blanditiis quia.', '2019-11-14 05:00:33', '2019-11-29 13:55:10', 280, 0),
(1716, 'Ruthe Willms I', 'Quaerat vel et omnis qui quasi autem. Sint in sunt dolores voluptas.', '2019-11-21 06:54:40', '2019-11-29 13:55:10', 280, 1),
(1717, 'Prof. Toby Reichert Sr.', 'Rem modi sed quod doloremque quis. Voluptatum voluptatum iusto explicabo enim.', '2019-11-06 13:41:48', '2019-11-29 13:55:10', 275, 0),
(1718, 'Ms. Beaulah Steuber', 'Qui non eos quos enim. Architecto modi ea velit atque voluptate vel.', '2019-11-01 13:46:42', '2019-11-29 13:55:10', 278, 0),
(1719, 'Rosalinda Mueller', 'Beatae reprehenderit non et unde inventore ea facere. Nulla a fuga et omnis ullam ut odit.', '2019-11-03 05:34:47', '2019-11-29 13:55:10', 282, 0),
(1720, 'Prof. Easter Will DDS', 'Et modi excepturi similique. Saepe occaecati at inventore voluptas laboriosam voluptatem. Corrupti odio ipsum excepturi voluptatibus tempora.', '2019-11-10 10:08:59', '2019-11-29 13:55:10', 279, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migration_versions`
--

INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
('20191119115816', '2019-11-19 12:00:16'),
('20191119120449', '2019-11-19 12:05:53'),
('20191120125814', '2019-11-20 12:58:55'),
('20191122120306', '2019-11-22 12:03:42'),
('20191122122202', '2019-11-22 12:23:01'),
('20191122123625', '2019-11-22 12:37:37'),
('20191125124958', '2019-11-25 12:50:54'),
('20191126114149', '2019-11-26 11:42:49'),
('20191126115951', '2019-11-26 12:01:35'),
('20191126124819', '2019-11-26 12:48:27'),
('20191127101012', '2019-11-27 10:10:39'),
('20191127121524', '2019-11-27 12:15:42'),
('20191129124458', '2019-11-29 12:45:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tag`
--

CREATE TABLE `tag` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tag`
--

INSERT INTO `tag` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(121, 'Queen, the royal.', 'queen-the-royal', '2019-11-29 13:55:05', '2019-11-29 13:55:05'),
(122, 'HE was.\' \'I never.', 'he-was-i-never', '2019-11-29 13:55:05', '2019-11-29 13:55:05'),
(123, 'Mock Turtle.', 'mock-turtle', '2019-11-29 13:55:05', '2019-11-29 13:55:05'),
(124, 'March Hare took.', 'march-hare-took', '2019-11-29 13:55:05', '2019-11-29 13:55:05'),
(125, 'Alice, \'to pretend.', 'alice-to-pretend', '2019-11-29 13:55:05', '2019-11-29 13:55:05'),
(126, 'I\'m sure I have.', 'im-sure-i-have', '2019-11-29 13:55:05', '2019-11-29 13:55:05'),
(127, 'Then they all.', 'then-they-all', '2019-11-29 13:55:05', '2019-11-29 13:55:05'),
(128, 'Queen\'s ears--\'.', 'queens-ears', '2019-11-29 13:55:05', '2019-11-29 13:55:05'),
(129, 'Alice. \'That\'s.', 'alice-thats', '2019-11-29 13:55:05', '2019-11-29 13:55:05'),
(130, 'Next came the.', 'next-came-the', '2019-11-29 13:55:05', '2019-11-29 13:55:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter_username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `first_name`, `password`, `twitter_username`) VALUES
(87, 'spacebar0@example.com', '[]', 'Shawna', '$argon2id$v=19$m=65536,t=4,p=1$YUd4RUVGZDBvRkpRN2N3TQ$6086tP2wdVfCp0iIM+wwx5WM16M7Ce4jz97Y/e2B3go', 'edickens'),
(88, 'spacebar1@example.com', '[]', 'Eliane', '$argon2id$v=19$m=65536,t=4,p=1$UlY5blFtajBEOWZrd2xmVw$NolMCtB4r0WbjrUg4wvwJHQoBFMTe/zjwj5Wf85zBrs', 'elmo.thompson'),
(89, 'spacebar2@example.com', '[]', 'Selena', '$argon2id$v=19$m=65536,t=4,p=1$c3lSRk9JT2JSZG9JZG9abw$FxdDA1gVZ0HzUUC0nc8M5w25Daoh0aYXa3EvBGnVUMs', NULL),
(90, 'spacebar3@example.com', '[]', 'Lonzo', '$argon2id$v=19$m=65536,t=4,p=1$RWpoLmVHcTVrNG1sSnJ0dg$NZ1iaK5v2x9Qi2t6cpfzRX1VNPAAHJBr5aawos8UxPo', 'pfannerstill.otho'),
(91, 'spacebar4@example.com', '[]', 'Imogene', '$argon2id$v=19$m=65536,t=4,p=1$WWk0cE1HYjBBOFVsQWVTUQ$44ZHx01MsWCC0C+f+P0/WLcmNbs3hDV9mnLoPytls2o', 'carroll.fleta'),
(92, 'spacebar5@example.com', '[]', 'Devonte', '$argon2id$v=19$m=65536,t=4,p=1$aTVodW5LejJTN3d5aC9LOA$lNASoTsk52UO9NMiUciNobz7EQDGuFNjjk/xGDO4wuI', NULL),
(93, 'spacebar6@example.com', '[]', 'Johnson', '$argon2id$v=19$m=65536,t=4,p=1$M1JUREl5U21oWGxCLzVVWQ$57AAZYsuJeuEDQ+J78WXaXgyp73FnOFwqW6/gZdQSJY', NULL),
(94, 'spacebar7@example.com', '[]', 'Santa', '$argon2id$v=19$m=65536,t=4,p=1$dzZ0R3JOZVpEUVdqckkzMg$Ugb9Pr9G4gkmMhvv/hhKaFZZmYgdpFvuQ2D7eYfsp5k', 'mraz.abelardo'),
(95, 'spacebar8@example.com', '[]', 'Otto', '$argon2id$v=19$m=65536,t=4,p=1$Nk16cjlVVHVYMjBVeVYuYg$VpccdifgMa29hhbdnpVUaHkgnFV8MmFGlUnidX9kjI0', 'zwolf'),
(96, 'spacebar9@example.com', '[]', 'Dolly', '$argon2id$v=19$m=65536,t=4,p=1$dVU0eW9GNTFBeW9HWU9nRQ$BEMXZfyl8NJqHXj5JDws2kQyLzvXS7PX1mRpkSAKI4I', NULL),
(97, 'admin0@example.com', '[\"ROLE_ADMIN\"]', 'Thea', '$argon2id$v=19$m=65536,t=4,p=1$UEdmVTVSUzdQSkpmSTRFRw$rF15WtrL35ZpVGsuQTZiWkLyiCPUQxP6FYsxNdOWMWU', NULL),
(98, 'admin1@example.com', '[\"ROLE_ADMIN\"]', 'Rocky', '$argon2id$v=19$m=65536,t=4,p=1$TzlHRGNjSFQ2dWRJRVowSQ$8jn7uf8mwm6JbOr1fO4vFzKhc9o9t5VDEUJT+lvcois', NULL),
(99, 'admin2@example.com', '[\"ROLE_ADMIN\"]', 'Ollie', '$argon2id$v=19$m=65536,t=4,p=1$NWhlLnNyQjY0c3RRSXdPZg$qJakvKbA10xRBcNsj2kjxRdBcSyZIR/SAs9+Ab1eBQ0', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `api_token`
--
ALTER TABLE `api_token`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_7BA2F5EBA76ED395` (`user_id`);

--
-- Indices de la tabla `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_23A0E66989D9B62` (`slug`);

--
-- Indices de la tabla `article_tag`
--
ALTER TABLE `article_tag`
  ADD PRIMARY KEY (`article_id`,`tag_id`),
  ADD KEY `IDX_919694F97294869C` (`article_id`),
  ADD KEY `IDX_919694F9BAD26311` (`tag_id`);

--
-- Indices de la tabla `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_9474526C7294869C` (`article_id`);

--
-- Indices de la tabla `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indices de la tabla `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_389B783989D9B62` (`slug`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `api_token`
--
ALTER TABLE `api_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=284;

--
-- AUTO_INCREMENT de la tabla `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1721;

--
-- AUTO_INCREMENT de la tabla `tag`
--
ALTER TABLE `tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `api_token`
--
ALTER TABLE `api_token`
  ADD CONSTRAINT `FK_7BA2F5EBA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Filtros para la tabla `article_tag`
--
ALTER TABLE `article_tag`
  ADD CONSTRAINT `FK_919694F97294869C` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_919694F9BAD26311` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FK_9474526C7294869C` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
