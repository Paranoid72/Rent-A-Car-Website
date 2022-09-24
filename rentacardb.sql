-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Εξυπηρετητής: 127.0.0.1:3306
-- Χρόνος δημιουργίας: 04 Ιουλ 2022 στις 16:52:39
-- Έκδοση διακομιστή: 5.7.36
-- Έκδοση PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Βάση δεδομένων: `rentacardb`
--

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `clients`
--

DROP TABLE IF EXISTS `clients`;
CREATE TABLE IF NOT EXISTS `clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `clients`
--

INSERT INTO `clients` (`id`, `username`, `name`, `email`) VALUES
(1, 'Paranoid72', 'sdd dsd', 'pankallig@gmail.com'),
(2, 'Panaras', 'Panagiotis', 'kalligeros@gmail.com'),
(3, '123Leks', 'Xr8stos', 'kalligeros@gmail.com'),
(4, 'Kwnna', 'Kwnstantina Pierrou', 'pieroukon@yahoo.gr'),
(6, 'Gmanias85', 'George Manias', 'gmanias@unipi.gr');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `messages`
--

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `phone_number` varchar(10) NOT NULL,
  `email` varchar(20) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `messages`
--

INSERT INTO `messages` (`id`, `name`, `phone_number`, `email`, `subject`, `message`) VALUES
(5, 'Kwstas', '6981016907', 'antoniou@gmail.com', 'rent', ' Doulepse!!'),
(4, 'Panos', '2114010121', 'pankallig@gmail.com', 'transport', ' sdsds'),
(8, 'George Manias', '6969696969', 'gmanias@unipi.gr', 'transport', ' VIP Transportation?'),
(7, 'louhs', '123', 'pankallig@gmail.com', 'rent', ' asdasd');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
