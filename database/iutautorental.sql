-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Май 10 2020 г., 15:40
-- Версия сервера: 10.4.11-MariaDB
-- Версия PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `iutautorental`
--

-- --------------------------------------------------------

--
-- Структура таблицы `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '5c428d8875d2948607f3e3fe134d71b4', '2017-06-18 12:22:38');

-- --------------------------------------------------------

--
-- Структура таблицы `tblbooking`
--

CREATE TABLE `tblbooking` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `VehicleId` int(11) DEFAULT NULL,
  `FromDate` varchar(20) DEFAULT NULL,
  `ToDate` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `userEmail`, `VehicleId`, `FromDate`, `ToDate`, `message`, `Status`, `PostingDate`) VALUES
(4, 'norik.shax@gmail.com', 1, '07/08/2020', '07/09/2020', 'Thanks in advance!', 1, '2020-05-08 08:20:22');

-- --------------------------------------------------------

--
-- Структура таблицы `tblbrands`
--

CREATE TABLE `tblbrands` (
  `id` int(11) NOT NULL,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tblbrands`
--

INSERT INTO `tblbrands` (`id`, `BrandName`, `CreationDate`, `UpdationDate`) VALUES
(8, 'Chevrolet', '2020-05-07 05:42:08', NULL),
(9, 'Lada', '2020-05-10 12:27:38', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, '9, Ziyolilar str., M.Ulugbek district, Tashkent city, 100170																			', 'norik.shax@gmail.com', '+9989774773');

-- --------------------------------------------------------

--
-- Структура таблицы `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(2, 'Oktam Rashidov', 'ukrash@gmail.com', '+9989978900', 'Hello, can you give a discount for students. If it is possible?', '2020-05-10 13:06:08', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(3, 'About Us ', 'aboutus', 'Car rental in Tashkent is simple and very convenient. Take advantage of the services of our company and ensure freedom of movement on excellent cars, various models and brands. Auto rental is superior to being a luxury. Today, it is a great opportunity to use driverless car rental for trips around the city and beyond, to meet guests or business partners by car of representative class or to use cars for celebrations, weddings and other events. Repair of the car is not a reason to move on public transport or taxi! Car rental solves such problems with ease. Today, we have done everything to simplify car rental by our customers. Quick design and you are already driving the car you have chosen. Use as much as you need. We will be happy to provide long-term car rental in Tashkent. Would you like to devote outsiders to your own plans? Renting a driverless car will spare you an extra presence. You are your own master. The route will remain a complete secret, and a fast, reliable car will allow you to move with maximum comfort. If you find it difficult to decide on the choice of car, you will be assisted by qualified consultants. Their competence allows to answer professionally all your questions concerning technical characteristics and peculiarities of vehicle operation. Car rental in Tashkent is profitable and convenient. Make sure by contacting us.');

-- --------------------------------------------------------

--
-- Структура таблицы `tblsubscribers`
--

CREATE TABLE `tblsubscribers` (
  `id` int(11) NOT NULL,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tblsubscribers`
--

INSERT INTO `tblsubscribers` (`id`, `SubscriberEmail`, `PostingDate`) VALUES
(4, 'noorik7@outlook.com', '2020-05-08 07:44:50');

-- --------------------------------------------------------

--
-- Структура таблицы `tbltestimonial`
--

CREATE TABLE `tbltestimonial` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(6, 'Nurullokh Makhmudov', 'norik.shax@gmail.com', '602ccef8ef6238a97050887bb6d1b825', '+9989774773', '', '', '', '', '2020-05-08 08:16:17', '2020-05-08 08:20:51');

-- --------------------------------------------------------

--
-- Структура таблицы `tblvehicles`
--

CREATE TABLE `tblvehicles` (
  `id` int(11) NOT NULL,
  `VehiclesTitle` varchar(150) DEFAULT NULL,
  `VehiclesBrand` int(11) DEFAULT NULL,
  `VehiclesOverview` longtext DEFAULT NULL,
  `PricePerDay` int(11) DEFAULT NULL,
  `FuelType` varchar(100) DEFAULT NULL,
  `ModelYear` int(6) DEFAULT NULL,
  `SeatingCapacity` int(11) DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `CDPlayer` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tblvehicles`
--

INSERT INTO `tblvehicles` (`id`, `VehiclesTitle`, `VehiclesBrand`, `VehiclesOverview`, `PricePerDay`, `FuelType`, `ModelYear`, `SeatingCapacity`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(1, 'Gentra', 8, 'Chevrolet Gentra is the car whose appearance will not leave indifferent any car enthusiast. The right proportions, streamlined shapes, embossed lines harmoniously combine in this car, which has a respectable interior and exterior. Gentra comfortably accommodates 5 people in a modern, concise lounge. The dashboard has a sense of proportion and a variety of options. The arrangement of the devices with chrome elements is carefully thought out. Its driving performance has been thoroughly tested and perfected.', 15, 'Petrol', 2017, 5, 'gentra1.jpg', 'gentra3.jpg', 'gentra2.jpg', 'gentra4.jpg', '', 1, NULL, 1, 1, NULL, 1, 1, NULL, 1, NULL, NULL, NULL, '2020-05-07 05:48:16', '2020-05-08 17:49:58'),
(7, 'Nexia', 8, 'Nexia is a brand new car in the Chevrolet Uzbekistan lineup. It is characterized by a modern level of safety, comfort and equipment. It is technological. It is simply impossible to find compromises in it. Finishing materials, technical specifications and optional equipment - all on top. And of course, it retains the traditional advantages of its predecessor - affordability and reliability. New Nexia - a new word in the mass segment of the Russian market', 12, 'Petrol', 2016, 5, 'nexia1.jpg', 'nexia2.jpg', 'nexia3.jpg', 'nexia4.jpg', '', 1, 1, 1, 1, NULL, 1, 1, NULL, 1, 1, NULL, NULL, '2020-05-07 06:31:01', '2020-05-08 17:47:48'),
(8, 'Spark', 8, 'Chevrolet Spark - the fruit of the creative developers of leading designers from different countries. This is a real Chevrolet - from start to finish. The new Spark, with its impressive two-tier radiator grill and sharp contours, certainly attracts attention wherever it is. In addition, due to its compact size and maneuverability, Spark is able to \"merge\" into any urban movement.\r\n\r\nThanks to the spacious cabin, Spark can accommodate a cargo of 170 liters. And when folding the seats in the proportions of 60:40, this space increases to 568 liters. Despite the fact that the spark looks compact from the outside, it can accommodate 5 people.', 10, 'Petrol', 2012, 5, 'spark1.jpg', 'spark2.jpg', 'spark3.jpg', 'spark5.jpg', '', 1, NULL, 1, NULL, NULL, 1, NULL, NULL, 1, 1, NULL, NULL, '2020-05-08 18:03:44', '2020-05-08 18:09:44'),
(9, 'Malibu', 8, 'The designers, working on a new generation of Chevrolet Malibu, sought to give the model a more aggressive look to the exterior. The new model, unlike its predecessors, has a mullako new form of external wear. Due to the bending and flexible lines, the sedan looks more vibrant and has a very pleasing shape. Malibu’s easily recognizable branded dual radiator grille is now equipped with basic LED optics in a torque shape. The reliefs on the sides of the body and the rear are in many ways similar to the Impala Sedan Model, but in general, most of the elements of the body are LEGENDARY. At the same time, due to the careful development of some details of the body, we were able to achieve excellent aerodynamic performance.', 25, 'Petrol', 2018, 5, 'malibu-1.jpg', 'malibu-2.jpg', 'malibu-3.jpg', 'malibu-4.jpg', '', 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, 1, '2020-05-10 12:34:04', NULL),
(10, 'Equinox', 8, 'Equipped with state-of-the-art technology, state-of-the-art engine, chassis and steering system, the Chevrolet Equinox allows you to enjoy every minute of driving. A compact, maneuverable crossover with well-thought-out ergonomics, designed primarily for urban use. Chevrolet Equinox owners will also be able to take advantage of state-of-the-art car safety features, including a 9-speed automatic transmission outside the city.', 40, 'Petrol', 2019, 5, 'eq-1.jpg', 'eq-2.jpg', 'eq-3.jpg', 'eq-4.jpg', '', 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, '2020-05-10 13:04:01', NULL),
(11, 'Tahoe', 8, 'The Chevrolet Tahoe is an updated 6.2-liter V8 EcoTec engine with 426 horsepower - a combination of endless possibilities and technical excellence. The Chevrolet Tahoe is perfect for those who are not accustomed to compromise. The stability of the road is ensured by the length of the wheelbase 2946 mm, the road closure - 200 mm. The engine is equipped with a 6-speed automatic transmission, which allows you to feel the entire dynamics of the car - it can reach a speed of 100 km in 6.8 seconds. Consumes 9.7 liters of fuel per 100 km.', 75, 'Petrol', 2019, 7, 'th-1.jpg', 'th-2.jpg', 'th-3.jpg', 'th-4.jpg', '', 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, '2020-05-10 13:36:47', NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tblbrands`
--
ALTER TABLE `tblbrands`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tblvehicles`
--
ALTER TABLE `tblvehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `tblbrands`
--
ALTER TABLE `tblbrands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `tblvehicles`
--
ALTER TABLE `tblvehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
