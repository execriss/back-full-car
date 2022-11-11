/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 8.0.18 : Database - fullcar
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`fullcar` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `fullcar`;

/*Table structure for table `categorias` */

DROP TABLE IF EXISTS `categorias`;

CREATE TABLE `categorias` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `categorias` */

/*Table structure for table `detail` */

DROP TABLE IF EXISTS `detail`;

CREATE TABLE `detail` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `product_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sale_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKnogkshb9tv6mtc9em7efogdni` (`product_id`),
  KEY `FK11itjaoxevf67aa0370vyoj95` (`sale_id`),
  CONSTRAINT `FK11itjaoxevf67aa0370vyoj95` FOREIGN KEY (`sale_id`) REFERENCES `sale` (`id`),
  CONSTRAINT `FKnogkshb9tv6mtc9em7efogdni` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `detail` */

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `importado` bit(1) NOT NULL,
  `marca` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `product` */

insert  into `product`(`id`,`category`,`description`,`image`,`importado`,`marca`,`name`,`price`) values ('2','Lubricantes','Aceite De Motor Mobil 4 Litros 15w40 Mineral Mobil Delvac Su','https://http2.mlstatic.com/D_NQ_NP_989147-MLA49826543872_052022-O.webp','','Mobil','Mobil Delvac',5300);
insert  into `product`(`id`,`category`,`description`,`image`,`importado`,`marca`,`name`,`price`) values ('3','Lubricantes','Aceite De Motor Mobil 3.78 Litros 5w50 Sintetico Mobil 1 Fs','https://http2.mlstatic.com/D_NQ_NP_794637-MLA49826532306_052022-O.webp','','Mobil','Mobil 1',20700);
insert  into `product`(`id`,`category`,`description`,`image`,`importado`,`marca`,`name`,`price`) values ('4','Lubricantes','Aceite Puma 2t Jaso Fc/api Tc X1l 4202088','https://http2.mlstatic.com/D_NQ_NP_632636-MLA50727323340_072022-O.webp','','Puma','Puma 2t',1200);
insert  into `product`(`id`,`category`,`description`,`image`,`importado`,`marca`,`name`,`price`) values ('5','Lubricantes','Aceite De Motor Mobil 200 Litros 10w40 Semisintetico Mobil S','https://http2.mlstatic.com/D_NQ_NP_901584-MLA49826538706_052022-O.webp','','Mobil','Mobil 200 Litros',223000);
insert  into `product`(`id`,`category`,`description`,`image`,`importado`,`marca`,`name`,`price`) values ('6','Lubricantes','Aceite Petronas Selenia Turbo Diesel 15w40 X4l Api Ci-4 Sl S','https://http2.mlstatic.com/D_NQ_NP_842585-MLA51787787348_102022-O.webp','','Petronas','Petronas Selenia Turbo Diesel',9500);
insert  into `product`(`id`,`category`,`description`,`image`,`importado`,`marca`,`name`,`price`) values ('7','Tren Delantero','Amortiguador Fiat Fiorino 1.3 1.3 Fire Pack 06/07 Fric-rot','https://http2.mlstatic.com/D_NQ_NP_975160-MLA51155316992_082022-O.webp','','Fric-rot','Amortiguador Fiat Fiorino 1.3',19200);
insert  into `product`(`id`,`category`,`description`,`image`,`importado`,`marca`,`name`,`price`) values ('8','Tren Delantero','Amortiguador Volkswagen Gol 1.6 1.6 Gl 92/94 Fric-rot','https://http2.mlstatic.com/D_NQ_NP_924463-MLA51901320234_102022-O.webp','','Fric-rot','Amortiguador Volkswagen Gol 1.6',10700);
insert  into `product`(`id`,`category`,`description`,`image`,`importado`,`marca`,`name`,`price`) values ('9','Tren Delantero','Rodamiento De Rueda Delantero Skf Chevrolet Agile 2009-2015','https://http2.mlstatic.com/D_NQ_NP_790676-MLA49910820251_052022-O.webp','','Skf','Skf Chevrolet Agile 2009-2015',8100);
insert  into `product`(`id`,`category`,`description`,`image`,`importado`,`marca`,`name`,`price`) values ('10','Tren Delantero','Extremo De Direccion Fiat Grand Siena 12/21','https://http2.mlstatic.com/D_NQ_NP_819893-MLA51559998186_092022-O.webp','','Skf','Extremo De Direccion Fiat Grand Siena 12/21',4600);
insert  into `product`(`id`,`category`,`description`,`image`,`importado`,`marca`,`name`,`price`) values ('11','Tren Delantero','Amortiguador Delantero Renault Sandero 1.6 1.6 Expression 90','https://http2.mlstatic.com/D_NQ_NP_765896-MLA51576620713_092022-O.webp','','Expression','Amortiguador Delantero Renault Sandero 1.6 ',15500);
insert  into `product`(`id`,`category`,`description`,`image`,`importado`,`marca`,`name`,`price`) values ('12','Motor','Kit De Distribucion Skf Volkswagen Gol Country 1.6 L 1997-20','https://http2.mlstatic.com/D_NQ_NP_988790-MLA51653836885_092022-O.webp','','Skf','Kit De Distribucion Skf Volkswagen Gol Country 1.6',6100);
insert  into `product`(`id`,`category`,`description`,`image`,`importado`,`marca`,`name`,`price`) values ('13','Motor','Radiador De Motor Eurorepar Fiat Uno 1.6 L Tipo R 97/99','https://http2.mlstatic.com/D_NQ_NP_610580-MLA51864434493_102022-O.webp','','Eurorepar','Radiador De Motor Eurorepar Fiat Uno 1.6',6100);
insert  into `product`(`id`,`category`,`description`,`image`,`importado`,`marca`,`name`,`price`) values ('14','Motor','Polea Distribucion Gates T42089 Clio Express Kangoo F8q T420','https://http2.mlstatic.com/D_NQ_NP_962017-MLA49795629156_042022-O.webp','','Gates','Polea Distribucion Gates T42089 Clio Express',7300);
insert  into `product`(`id`,`category`,`description`,`image`,`importado`,`marca`,`name`,`price`) values ('15','Motor','Tapas Termostaticas Renault Express 1.6 96/01','https://http2.mlstatic.com/D_NQ_NP_820419-MLA51094799941_082022-O.webp','','Gates','Tapas Termostaticas Renault',600);
insert  into `product`(`id`,`category`,`description`,`image`,`importado`,`marca`,`name`,`price`) values ('16','Motor','Tapa Aceite Florio Palio Siena Idea Punto Strada Adventure 2','https://http2.mlstatic.com/D_NQ_NP_747831-MLA50512406665_062022-O.webp','','Skf','Tapa Aceite Florio Palio',600);
insert  into `product`(`id`,`category`,`description`,`image`,`importado`,`marca`,`name`,`price`) values ('17','Iluminacion','Óptica Fitam Peugeot 505 82 83 84 85 86 87 88 89 1990 1991 I','https://http2.mlstatic.com/D_NQ_NP_861767-MLA50581189368_072022-O.webp','','Optilux','Óptica Fitam Peugeot',11600);
insert  into `product`(`id`,`category`,`description`,`image`,`importado`,`marca`,`name`,`price`) values ('18','Iluminacion','Faro Trasero (189x140) Ambar Rojo Cristal Universal 00/17','https://http2.mlstatic.com/D_NQ_NP_938080-MLA51931878517_102022-O.webp','','Optilux','Faro Trasero (189x140)',2500);
insert  into `product`(`id`,`category`,`description`,`image`,`importado`,`marca`,`name`,`price`) values ('19','Iluminacion','Faro Trasero Izquierdo Base Roja Vw Gol 1999 2000 2002 2005','https://http2.mlstatic.com/D_NQ_NP_992666-MLA49316340892_032022-O.webp','','Optilux','Faro Trasero Izquierdo Base Roja Vw Gol ',5600);
insert  into `product`(`id`,`category`,`description`,`image`,`importado`,`marca`,`name`,`price`) values ('20','Iluminacion','Óptica Fitam Fiat 147 Spazio Vivace Fiorino 85 Hasta 97 Der','https://http2.mlstatic.com/D_NQ_NP_724362-MLA49450231784_032022-O.webp','','Optilux','Óptica Fitam Fiat 147',6200);
insert  into `product`(`id`,`category`,`description`,`image`,`importado`,`marca`,`name`,`price`) values ('21','Iluminacion','Faro Delantero Izquieda Volkswagen 26260 Constellation 07/15','https://http2.mlstatic.com/D_NQ_NP_941148-MLA51472402406_092022-O.webp','','Optilux','Faro Delantero Izquieda Volkswagen',12500);

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `role` */

insert  into `role`(`id`,`role_name`) values (1,'ROLE_USER'),(2,'ROLE_ADMIN');

/*Table structure for table `sale` */

DROP TABLE IF EXISTS `sale`;

CREATE TABLE `sale` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `total` double NOT NULL,
  `client_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKot5vkfc3sih2kdlyhah2yrgi5` (`client_id`),
  CONSTRAINT `FKot5vkfc3sih2kdlyhah2yrgi5` FOREIGN KEY (`client_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `sale` */

/*Table structure for table `shopping_cart` */

DROP TABLE IF EXISTS `shopping_cart`;

CREATE TABLE `shopping_cart` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `client_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKu4ldicofo0jsb7chiurq8sta` (`client_id`),
  KEY `FKerqg5bwr2tdlwabwdn7r4n2xo` (`product_id`),
  CONSTRAINT `FKerqg5bwr2tdlwabwdn7r4n2xo` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `FKu4ldicofo0jsb7chiurq8sta` FOREIGN KEY (`client_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `shopping_cart` */

/*Table structure for table `user_role` */

DROP TABLE IF EXISTS `user_role`;

CREATE TABLE `user_role` (
  `user_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKa68196081fvovjhkek5m97n3y` (`role_id`),
  CONSTRAINT `FKa68196081fvovjhkek5m97n3y` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  CONSTRAINT `FKj345gk1bovqvfame88rcx7yyx` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `user_role` */

insert  into `user_role`(`user_id`,`role_id`) values ('088353e3-1be4-4195-abd3-8583df50f858',2);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_k8d0f2n7n88w1a16yhua64onx` (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`email`,`password`,`user_name`) values ('088353e3-1be4-4195-abd3-8583df50f858','admin@gmail.com','$2a$10$GyYfTtv2/xwn4dI7xL9U9epxNzvqLiwhUXUIRZQOPSU7nknEZlUWe','Admin');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
