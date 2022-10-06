-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 06, 2022 at 02:46 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `a5_test1`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `BookingID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `RegisterID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ShowtimeID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `BookingDateTime` datetime NOT NULL,
  `PromotionCode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ConfirmationEmail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ConfirmationTelNo` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`BookingID`, `RegisterID`, `ShowtimeID`, `BookingDateTime`, `PromotionCode`, `ConfirmationEmail`, `ConfirmationTelNo`) VALUES
('BK6281cd19b8a83', 'cl6263e17717a46', 'SHT6281bf4db6494', '2022-05-16 11:03:37', 'PRO6281c25b03c89', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `bookingseat`
--

CREATE TABLE `bookingseat` (
  `BookingSeatID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `BookingID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SeatID` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `BranchID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `BranchName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Region` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `BranchAddress` text COLLATE utf8_unicode_ci NOT NULL,
  `BranchTelNo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`BranchID`, `BranchName`, `Region`, `BranchAddress`, `BranchTelNo`) VALUES
('0', '0', '0', '0', '0'),
('MJ01', 'Merje Cinema Bangmod', 'BANGKOK AND METROPOLITAN REGION', '126 Pracha Uthit Rd., Bang Mod, Thung Khru, Bangkok 10140, Thailand', '024708000'),
('MJ02', 'Merje Cinema Samyan', 'BANGKOK AND METROPOLITAN REGION', '944 Rama 4 Road, Wangmai, Pathumwan, Bangkok 10330', '020338900'),
('MJ03', 'Merje Cinema Phitsanulok', 'CENTRAL REGION', '9/99 Singhawat Road, Phlai Chumphon Subdistrict, Phitsanulok 65000', '055000999'),
('MJ04', 'Merje Cinema Srisaket', 'NORTHEASTERN REGION', 'Amphoe Mueang Si Sa Ket, Si Saket 33000', NULL),
('MJ05', 'Merje Cinema Westgate', 'BANGKOK AND METROPOLITAN REGION', 'Kanchanaphisek Road, Sao Thong Hin, Bang Yai District, Nonthaburi 11140', '021027999'),
('MJ626a07f185b43', 'kktest', 'EASTERN REGION', 'wait for input', '0888888888'),
('MJ626a58349de38', 'Kktest2', 'EASTERN REGION', '191', '0983774555'),
('MJ6281cdd51c499', 'present', 'CENTRAL REGION', 'present', '0962810929');

-- --------------------------------------------------------

--
-- Table structure for table `concessionmenu`
--

CREATE TABLE `concessionmenu` (
  `MenuID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Price` double NOT NULL,
  `MenuName` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `concessionmenu`
--

INSERT INTO `concessionmenu` (`MenuID`, `Price`, `MenuName`) VALUES
('MN001', 150, 'Popcorn  16 oz.'),
('MN002', 300, 'Popcorn 24 oz.'),
('MN003', 600, 'Popcorn 85 oz.'),
('MN004', 150, 'Beverage 16 oz.'),
('MN005', 300, 'Beverage 24 oz.'),
('MN006', 600, 'Beverage 85 oz.');

-- --------------------------------------------------------

--
-- Table structure for table `concessionorder`
--

CREATE TABLE `concessionorder` (
  `OrderID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `RegisterID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `BranchID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `OrderDateTime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `concessionorder`
--

INSERT INTO `concessionorder` (`OrderID`, `RegisterID`, `BranchID`, `OrderDateTime`) VALUES
('OD6281c4672f3b5', 'cl6263e17717a46', '0', '2022-05-16 05:26:31'),
('OD6281ce87855da', 'cl6263e17717a46', '0', '2022-05-16 06:09:43');

-- --------------------------------------------------------

--
-- Table structure for table `eachconcessionorder`
--

CREATE TABLE `eachconcessionorder` (
  `EachOrderID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `OrderID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `MenuID` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `eachconcessionorder`
--

INSERT INTO `eachconcessionorder` (`EachOrderID`, `OrderID`, `MenuID`) VALUES
('EOD6281c46731273', 'OD6281c4672f3b5', 'MN001'),
('EOD6281c467319a2', 'OD6281c4672f3b5', 'MN004'),
('EOD6281ce8789e80', 'OD6281ce87855da', 'MN001'),
('EOD6281ce878b8b0', 'OD6281ce87855da', 'MN004');

-- --------------------------------------------------------

--
-- Table structure for table `eachgenreofmovie`
--

CREATE TABLE `eachgenreofmovie` (
  `GenreOfMovieID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `MovieID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `GenreName` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `eachgenreofmovie`
--

INSERT INTO `eachgenreofmovie` (`GenreOfMovieID`, `MovieID`, `GenreName`) VALUES
('00001', 'MOV0001', 'Action'),
('00002', 'MOV0001', 'Adventure'),
('00003', 'MOV0001', 'Fantasy'),
('00004', 'MOV0001', 'Sci-Fi'),
('00005', 'MOV0002', 'Crime'),
('00006', 'MOV0002', 'Drama'),
('00007', 'MOV0002', 'Action'),
('00008', 'MOV0002', 'Adventure'),
('00010', 'MOV0003', 'Drama'),
('00011', 'MOV0004', 'Action'),
('00012', 'MOV0004', 'Comedy'),
('00013', 'MOV0004', 'Crime'),
('00014', 'MOV0005', 'Fantasy'),
('00015', 'MOV0005', 'Action'),
('00016', 'MOV0006', 'Adventure'),
('00017', 'MOV0006', 'Action'),
('00018', 'MOV0006', 'Fantasy'),
('00019', 'MOV0007', 'Adventure'),
('00020', 'MOV0007', 'Fantasy'),
('00021', 'MOV0007', 'Action'),
('00022', 'MOV0008', 'Fantasy'),
('00023', 'MOV0008', 'Action'),
('00024', 'MOV0008', 'Adventure'),
('00025', 'MOV0009', 'Sci-Fi'),
('00026', 'MOV0009', 'Adventure'),
('00027', 'MOV0009', 'Fantasy'),
('00028', 'MOV0009', 'Action'),
('00029', 'MOV0010', 'Sci-Fi'),
('00030', 'MOV0010', 'Adventure'),
('00031', 'MOV0010', 'Fantasy'),
('00032', 'MOV0010', 'Action'),
('00033', 'MOV0011', 'Drama'),
('00034', 'MOV0011', 'Romance'),
('00035', 'MOV0003', 'Mystery'),
('00036', 'MOV0003', 'Thriller'),
('6281ce1649ae5', 'MOV6281ce1641b9e', 'Action'),
('6281ce164a3a9', 'MOV6281ce1641b9e', 'Comedy'),
('6281ce164aa05', 'MOV6281ce1641b9e', 'Crime');

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `GenreName` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`GenreName`) VALUES
('Action'),
('Adventure'),
('Biography'),
('Comedy'),
('Crime'),
('Detective'),
('Drama'),
('Fantasy'),
('History'),
('Horror'),
('Musical'),
('Mystery'),
('Romance'),
('Sci-Fi'),
('Sport'),
('Thriller'),
('War'),
('Western');

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `MovieID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `MovieTitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Poster` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Trailer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Director` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Cast` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Synopsis` text COLLATE utf8_unicode_ci NOT NULL,
  `DateIn` date NOT NULL,
  `DateOut` date NOT NULL,
  `Period` int(10) UNSIGNED NOT NULL,
  `Rate` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`MovieID`, `MovieTitle`, `Poster`, `Trailer`, `Director`, `Cast`, `Synopsis`, `DateIn`, `DateOut`, `Period`, `Rate`) VALUES
('MOV0001', 'Spider-Man No Way Home', '/pic/MOV0001.png', '', 'Jon Watts', 'Tom Holland, Zendaya, Benedict Cumberbatch, Jacob Batalon, Jon Favreau, Jamie Foxx, Willem Dafoe, Alfred Molina, Benedict Wong, Tony Revolori, Marisa Tomei, Andrew Garfield, Tobey Maguire', 'Spider-Man: No Way Home tells a continuation of the events of the prequel, where Peter Parker and the people around him are in dire straits as Mysterio leaves behind a series of bombs. by revealing his true identity Causing him to go to Doctor Strange to help fix what\'s going on. hoping to erase the memories of the whole world To forget who Spider-Man is, but the unexpected happens during the spell. because he distracted the doctor It turned out that the outcome was more disastrous. Because it is the birth of a multiverse, or multiple universes, parallel worlds. which caused him to face old situations and villains. who had fought together And it makes things worse and too dangerous to deal with on your own.', '2022-04-01', '2022-06-01', 150, 'PG-13'),
('MOV0002', 'The Batman', '/pic/MOV0002.png', '', 'Matt Reeves', 'Robert Pattinson, Zoë Kravitz, Paul Dano, Jeffrey Wright, John Turturro, Peter Sarsgaard, Andy Serkis, Colin Farrell', 'Batman ventures into Gotham City\'s underworld when a sadistic killer leaves behind a trail of cryptic clues. As the evidence begins to lead closer to home and the scale of the perpetrator\'s plans become clear, he must forge new relationships, unmask the culprit and bring justice to the abuse of power and corruption that has long plagued the metropolis', '2022-05-31', '2022-07-31', 176, 'PG-13'),
('MOV0003', 'The Desperate Hour', '/pic/MOV0003.png', '', 'Phillip Noyce', 'Naomi Watts,Colton Gobbo, Andrew Chown, Sierra Maltby, David Reale, Josh Bowman, Edie Mirman, Paul Pape, Ellen Dubin, Zehra Fazal, Alex Paxton-Beesley', 'Unfolding in real time, THE DESPERATE HOUR is a \"riveting and pulse pounding\" thriller from award-winning director Phillip Noyce. Recently widowed mother Amy Carr (Academy Award®-nominee Naomi Watts) is doing her best to restore normalcy to the lives of her young daughter and teenage son in their small town. As she\'s on a jog in the woods, she finds her town thrown into chaos as a shooting takes place at her son\'s school. Miles away on foot in the dense forest, Amy desperately races against time to save her son.', '2022-04-02', '2022-06-02', 84, 'PG-13'),
('MOV0004', 'Bachchhan Paandey', '/pic/MOV0004.png', '', 'Farhad Samji', 'Akshay Kumar, Jacqueline Fernandez, Kriti Sanon, Arshad Warsi, Pankaj Tripathi, Prateik Babbar, Abhimanyu Singh', 'Myra Devekar, a budding director, is given a task by a producer to come up with a gripping and violent gangster story to produce as a film. To satisfy the producer\'s commercial outlook and her hunger for making a realistic flick, she decides to study the life of a real-life gangster for the script. Her extensive research leads to menacing, one-eyed \'Bachchan Pandey\' of Baagwa, a ruthless gangster surrounded by quirky, yet scary henchmen. Myra\'s discreet and secret attempts to research the life of Bachchan Pandey fail miserably, and she gets caught by the merciless gangster for snooping. What happens next in this twist of tales forms the narrative of this film, taking us on a fun-filled roller-coaster ride.', '2022-05-31', '2022-08-31', 150, 'PG-13'),
('MOV0005', 'Morbius', '/pic/MOV0005.png', '', 'Daniel Espinosa', 'Jared Leto, Matt Smith, Adria Arjona, Jared Harris, Tyrese Gibson, Al Madrigal', 'One of the most compelling and conflicted characters in Sony Pictures Universe of Marvel Characters comes to the big screen as Oscar® winner Jared Leto transforms into the enigmatic antihero Michael Morbius. Dangerously ill with a rare blood disorder and determined to save others suffering his same fate, Dr. Morbius attempts a desperate gamble. While at first it seems to be a radical success, a darkness inside him is unleashed. Will good override evil -- or will Morbius succumb to his mysterious new urges?', '2022-03-30', '2022-04-15', 104, 'PG-13'),
('MOV0006', 'Doctor Strange in the Multiverse of Madness', '/pic/MOV0006.png', '', 'Sam Raimi', 'Benedict Cumberbatch, Elizabeth Olsen, Benedict Wong, Rachel McAdams, Chiwetel Ejiofor, Xochitl Gómez', 'In Marvel Studios\' \"Doctor Strange in the Multiverse of Madness,\" the MCU unlocks the Multiverse and pushes its boundaries further than ever before. Journey into the unknown with Doctor Strange, who, with the help of mystical allies both old and new, traverses the mind-bending and dangerous alternate realities of the Multiverse to confront a mysterious new adversary.', '2022-05-31', '2022-07-31', 126, 'PG-13'),
('MOV0007', 'Eternals', '/pic/MOV0007.png', '', 'Chloé Zhao', 'Angelina Jolie, Salma Hayek, Kit Harington, Gemma Chan, Richard Madden, Kumail Nanjiani', 'Marvel Studios\' Eternals features an exciting new team of Super Heroes in the Marvel Cinematic Universe, ancient aliens who have been living on Earth in secret for thousands of years. Following the events of Avengers: Endgame, an unexpected tragedy forces them out of the shadows to reunite against mankind\'s most ancient enemy, the Deviants.', '2022-02-01', '2022-08-31', 157, 'PG-13'),
('MOV0008', 'Thor: Love and Thunder', '/pic/MOV0008.png', '', 'Taika Waititi', 'Chris Hemsworth, Christian Bale, Natalie Portman, Russell Crowe, Tessa Thompson, Chris Pratt', '\"Thor: Love and Thunder\" finds Thor (Chris Hemsworth) on a journey unlike anything he\'s ever faced -- a quest for inner peace. But his retirement is interrupted by a galactic killer known as Gorr the God Butcher (Christian Bale), who seeks the extinction of the gods. To combat the threat, Thor enlists the help of King Valkyrie (Tessa Thompson), Korg (Taika Waititi) and ex-girlfriend Jane Foster (Natalie Portman), who -- to Thor\'s surprise -- inexplicably wields his magical hammer, Mjolnir, as the Mighty Thor. Together, they embark upon a harrowing cosmic adventure to uncover the mystery of the God Butcher\'s vengeance and stop him before it\'s too late.', '2022-07-08', '2022-08-27', 155, 'PG-13'),
('MOV0009', 'Avengers: ENDGAME', '/pic/MOV0009.png', '', 'Anthony Russo, Joe Russo', 'Robert Downey Jr., Chris Evans, Mark Ruffalo, Chris Hemsworth, Scarlett Johansson, Jeremy Renner', 'Adrift in space with no food or water, Tony Stark sends a message to Pepper Potts as his oxygen supply starts to dwindle. Meanwhile, the remaining Avengers -- Thor, Black Widow, Captain America and Bruce Banner -- must figure out a way to bring back their vanquished allies for an epic showdown with Thanos -- the evil demigod who decimated the planet and the universe.', '2022-01-09', '2022-03-09', 181, 'PG-13'),
('MOV0010', 'Avengers: Age of Ultron', '/pic/MOV0010.png', '', 'Joss Whedon', 'Robert Downey Jr., Chris Evans, Mark Ruffalo, Chris Hemsworth, Scarlett Johansson, Jeremy Renner', 'When Tony Stark (Robert Downey Jr.) jump-starts a dormant peacekeeping program, things go terribly awry, forcing him, Thor (Chris Hemsworth), the Incredible Hulk (Mark Ruffalo) and the rest of the Avengers to reassemble. As the fate of Earth hangs in the balance, the team is put to the ultimate test as they battle Ultron, a technological terror hell-bent on human extinction. Along the way, they encounter two mysterious and powerful newcomers, Pietro and Wanda Maximoff.', '2022-01-01', '2022-02-28', 141, 'PG-13'),
('MOV0011', 'Fifty shades of grey', '/pic/MOV0011.png', '', 'Sam Taylor-Johnson', 'Dakota Johnson, Jamie Dornan, Jennifer Ehle, Eloise Mumford, Victor Rasuk, Luke Grimes', 'When college senior Anastasia Steele (Dakota Johnson) steps in for her sick roommate to interview prominent businessman Christian Grey (Jamie Dornan) for their campus paper, little does she realize the path her life will take. Christian, as enigmatic as he is rich and powerful, finds himself strangely drawn to Ana, and she to him. Though sexually inexperienced, Ana plunges headlong into an affair -- and learns that Christian\'s true sexual proclivities push the boundaries of pain and pleasure.', '2022-02-01', '2022-05-31', 125, 'R'),
('MOV626a36a38e3b9', 'IRON MAN', '/pic/MOV626a36a38e3b9.png', '/pic/TRMOV626a36a38e3b9', 'Kunanya K.', 'Kunanya K.', 'I am Iron Man.', '2022-04-07', '2022-05-28', 200, 'PG-13'),
('MOV6281ce1641b9e', 'pre', '/pic/MOV6281ce1641b9e.png', '', 'test', 'test', 'eyey', '2022-05-02', '2022-05-31', 223, 'R');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `PaymentID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PaymentMethod` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `BookingID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PaymentStatus` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `promotion`
--

CREATE TABLE `promotion` (
  `PromotionCode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PromotionName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PromotionDetail` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `PromotionPic` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Available` int(11) NOT NULL,
  `DiscountTHB` double DEFAULT NULL,
  `DiscountPercent` double DEFAULT NULL,
  `PromotionStartDate` date NOT NULL,
  `PromotionEndDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `promotion`
--

INSERT INTO `promotion` (`PromotionCode`, `PromotionName`, `PromotionDetail`, `PromotionPic`, `Available`, `DiscountTHB`, `DiscountPercent`, `PromotionStartDate`, `PromotionEndDate`) VALUES
('0', '0', '0', '0', 0, 0, 0, '2012-04-01', '2029-05-01'),
('PRO6281c25b03c89', 'Special for May!!!', 'discount 5 %', '/pic/PRO6281c25b03c89.png', 1000, NULL, 5, '2022-05-01', '2022-05-31'),
('PRO6281ce5e8779f', 'Special for Mayyyy !!!', 'discount', '', 100, 10, NULL, '2022-05-01', '2022-05-31');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `RegisterID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Surname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `RegisterTelNo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `MembercardID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DOB` date NOT NULL,
  `DOIssue` date DEFAULT NULL,
  `DOExpired` date DEFAULT NULL,
  `Point` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`RegisterID`, `Name`, `Surname`, `Email`, `RegisterTelNo`, `Password`, `MembercardID`, `DOB`, `DOIssue`, `DOExpired`, `Point`) VALUES
('cl6263e17717a46', 'kk', 'kk', 'kk@mail.com', '0999999999', 'ww', 'MJP0000001', '2022-04-05', '2022-05-01', '2023-05-01', 24),
('cl626518b663b8d', 'Kanyapak', 'Sodpo', 'hoei.p96m@gmail.com', '0962810929', '12345', NULL, '2002-04-05', NULL, NULL, 0),
('cl6267c43c118a9', 'Jaeyun', 'Sim', 'jakelayla@gmail.com', '1111111111', 'eiei', NULL, '2002-11-15', NULL, NULL, 0),
('cl6281cab2646d5', 'กัญญาภัค', 'สดโพธิ์', 'hoei.p96m@gmail.com', '0822222222', 'qeqe', NULL, '2022-05-16', NULL, NULL, 0),
('cl6281cc2b1b1e3', 'kk', 'ty', 'hoei.p96m@gmail.com', '02145678964', '123', NULL, '2022-05-16', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `seat`
--

CREATE TABLE `seat` (
  `SeatID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SeatNo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SeatTypeName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TheaterID` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `seat`
--

INSERT INTO `seat` (`SeatID`, `SeatNo`, `SeatTypeName`, `TheaterID`) VALUES
('S6281cdf00bc25', 'C1', 'Deluxe', 'TH6281cdf00b0f4'),
('S6281cdf00dcc0', 'C2', 'Deluxe', 'TH6281cdf00b0f4'),
('S6281cdf00f556', 'C3', 'Deluxe', 'TH6281cdf00b0f4'),
('S6281cdf0106cf', 'C4', 'Deluxe', 'TH6281cdf00b0f4'),
('S6281cdf01199a', 'C5', 'Deluxe', 'TH6281cdf00b0f4'),
('S6281cdf0131a0', 'C6', 'Deluxe', 'TH6281cdf00b0f4'),
('S6281cdf01568d', 'C7', 'Deluxe', 'TH6281cdf00b0f4'),
('S6281cdf0177d1', 'C8', 'Deluxe', 'TH6281cdf00b0f4'),
('S6281cdf018cc3', 'C9', 'Deluxe', 'TH6281cdf00b0f4'),
('S6281cdf019dbb', 'C10', 'Deluxe', 'TH6281cdf00b0f4'),
('S6281cdf01b006', 'C11', 'Deluxe', 'TH6281cdf00b0f4'),
('S6281cdf01bb4f', 'C12', 'Deluxe', 'TH6281cdf00b0f4'),
('S6281cdf01e39a', 'D1', 'Deluxe', 'TH6281cdf00b0f4'),
('S6281cdf02229c', 'D2', 'Deluxe', 'TH6281cdf00b0f4'),
('S6281cdf022975', 'D3', 'Deluxe', 'TH6281cdf00b0f4'),
('S6281cdf0231af', 'D4', 'Deluxe', 'TH6281cdf00b0f4'),
('S6281cdf0239aa', 'D5', 'Deluxe', 'TH6281cdf00b0f4'),
('S6281cdf024248', 'D6', 'Deluxe', 'TH6281cdf00b0f4'),
('S6281cdf0253f5', 'D7', 'Deluxe', 'TH6281cdf00b0f4'),
('S6281cdf0265bd', 'D8', 'Deluxe', 'TH6281cdf00b0f4'),
('S6281cdf027c04', 'D9', 'Deluxe', 'TH6281cdf00b0f4'),
('S6281cdf0289b4', 'D10', 'Deluxe', 'TH6281cdf00b0f4'),
('S6281cdf029a74', 'D11', 'Deluxe', 'TH6281cdf00b0f4'),
('S6281cdf02a3ae', 'D12', 'Deluxe', 'TH6281cdf00b0f4'),
('S6281cdf02b236', 'E1', 'Deluxe', 'TH6281cdf00b0f4'),
('S6281cdf02b7c2', 'E2', 'Deluxe', 'TH6281cdf00b0f4'),
('S6281cdf02c050', 'E3', 'Deluxe', 'TH6281cdf00b0f4'),
('S6281cdf02c841', 'E4', 'Deluxe', 'TH6281cdf00b0f4'),
('S6281cdf02d171', 'E5', 'Deluxe', 'TH6281cdf00b0f4'),
('S6281cdf02dd7d', 'E6', 'Deluxe', 'TH6281cdf00b0f4'),
('S6281cdf03260b', 'E7', 'Deluxe', 'TH6281cdf00b0f4'),
('S6281cdf034f5b', 'E8', 'Deluxe', 'TH6281cdf00b0f4'),
('S6281cdf036be8', 'E9', 'Deluxe', 'TH6281cdf00b0f4'),
('S6281cdf039bd7', 'E10', 'Deluxe', 'TH6281cdf00b0f4'),
('S6281cdf03c5b1', 'E11', 'Deluxe', 'TH6281cdf00b0f4'),
('S6281cdf03d17a', 'E12', 'Deluxe', 'TH6281cdf00b0f4'),
('S6281cdf03f106', 'F1', 'Deluxe', 'TH6281cdf00b0f4'),
('S6281cdf0401ac', 'F2', 'Deluxe', 'TH6281cdf00b0f4'),
('S6281cdf041264', 'F3', 'Deluxe', 'TH6281cdf00b0f4'),
('S6281cdf041cdb', 'F4', 'Deluxe', 'TH6281cdf00b0f4'),
('S6281cdf0429cd', 'F5', 'Deluxe', 'TH6281cdf00b0f4'),
('S6281cdf0436cc', 'F6', 'Deluxe', 'TH6281cdf00b0f4'),
('S6281cdf047223', 'F7', 'Deluxe', 'TH6281cdf00b0f4'),
('S6281cdf0484f5', 'F8', 'Deluxe', 'TH6281cdf00b0f4'),
('S6281cdf04cf1d', 'F9', 'Deluxe', 'TH6281cdf00b0f4'),
('S6281cdf0541bc', 'F10', 'Deluxe', 'TH6281cdf00b0f4'),
('S6281cdf054b8a', 'F11', 'Deluxe', 'TH6281cdf00b0f4'),
('S6281cdf05a682', 'F12', 'Deluxe', 'TH6281cdf00b0f4'),
('S6281cdf05beac', 'G1', 'Deluxe', 'TH6281cdf00b0f4'),
('S6281cdf05cfd8', 'G2', 'Deluxe', 'TH6281cdf00b0f4'),
('S6281cdf05db6f', 'G3', 'Deluxe', 'TH6281cdf00b0f4'),
('S6281cdf05e1f7', 'G4', 'Deluxe', 'TH6281cdf00b0f4'),
('S6281cdf05e776', 'G5', 'Deluxe', 'TH6281cdf00b0f4'),
('S6281cdf05ed41', 'G6', 'Deluxe', 'TH6281cdf00b0f4'),
('S6281cdf05f4a4', 'G7', 'Deluxe', 'TH6281cdf00b0f4'),
('S6281cdf05fa5f', 'G8', 'Deluxe', 'TH6281cdf00b0f4'),
('S6281cdf062074', 'G9', 'Deluxe', 'TH6281cdf00b0f4'),
('S6281cdf0630eb', 'G10', 'Deluxe', 'TH6281cdf00b0f4'),
('S6281cdf0634ee', 'G11', 'Deluxe', 'TH6281cdf00b0f4'),
('S6281cdf063965', 'G12', 'Deluxe', 'TH6281cdf00b0f4'),
('S6281cdf064239', 'A1', 'Premium', 'TH6281cdf00b0f4'),
('S6281cdf0646e0', 'A2', 'Premium', 'TH6281cdf00b0f4'),
('S6281cdf064b14', 'A3', 'Premium', 'TH6281cdf00b0f4'),
('S6281cdf06512e', 'A4', 'Premium', 'TH6281cdf00b0f4'),
('S6281cdf065662', 'A5', 'Premium', 'TH6281cdf00b0f4'),
('S6281cdf065baa', 'A6', 'Premium', 'TH6281cdf00b0f4'),
('S6281cdf066179', 'A7', 'Premium', 'TH6281cdf00b0f4'),
('S6281cdf066772', 'A8', 'Premium', 'TH6281cdf00b0f4'),
('S6281cdf067492', 'A9', 'Premium', 'TH6281cdf00b0f4'),
('S6281cdf068454', 'A10', 'Premium', 'TH6281cdf00b0f4'),
('S6281cdf068f77', 'B1', 'Premium', 'TH6281cdf00b0f4'),
('S6281cdf069eec', 'B2', 'Premium', 'TH6281cdf00b0f4'),
('S6281cdf06bb6b', 'B3', 'Premium', 'TH6281cdf00b0f4'),
('S6281cdf06c940', 'B4', 'Premium', 'TH6281cdf00b0f4'),
('S6281cdf06d327', 'B5', 'Premium', 'TH6281cdf00b0f4'),
('S6281cdf06dace', 'B6', 'Premium', 'TH6281cdf00b0f4'),
('S6281cdf06e4f8', 'B7', 'Premium', 'TH6281cdf00b0f4'),
('S6281cdf06ea4d', 'B8', 'Premium', 'TH6281cdf00b0f4'),
('S6281cdf06f0bd', 'B9', 'Premium', 'TH6281cdf00b0f4'),
('S6281cdf06f64c', 'B10', 'Premium', 'TH6281cdf00b0f4'),
('S6281cdf06fb36', 'AA1', 'SofaSweet', 'TH6281cdf00b0f4'),
('S6281cdf0707c4', 'AA2', 'SofaSweet', 'TH6281cdf00b0f4'),
('S6281cdf072033', 'AA3', 'SofaSweet', 'TH6281cdf00b0f4'),
('S6281cdf072d30', 'AA4', 'SofaSweet', 'TH6281cdf00b0f4'),
('S6281cdf0742c4', 'AA5', 'SofaSweet', 'TH6281cdf00b0f4'),
('S6281cdf075866', 'AA6', 'SofaSweet', 'TH6281cdf00b0f4'),
('S6281cdf07634b', 'AA7', 'SofaSweet', 'TH6281cdf00b0f4'),
('S6281cdf077b32', 'AA8', 'SofaSweet', 'TH6281cdf00b0f4'),
('S6281cdf0789f0', 'BB1', 'SofaSweet', 'TH6281cdf00b0f4'),
('S6281cdf080195', 'BB2', 'SofaSweet', 'TH6281cdf00b0f4'),
('S6281cdf0831b8', 'BB3', 'SofaSweet', 'TH6281cdf00b0f4'),
('S6281cdf08a374', 'BB4', 'SofaSweet', 'TH6281cdf00b0f4'),
('S6281cdf08bed8', 'BB5', 'SofaSweet', 'TH6281cdf00b0f4'),
('S6281cdf08cbf9', 'BB6', 'SofaSweet', 'TH6281cdf00b0f4'),
('S6281cdf095fd7', 'BB7', 'SofaSweet', 'TH6281cdf00b0f4'),
('S6281cdf096bb8', 'BB8', 'SofaSweet', 'TH6281cdf00b0f4');

-- --------------------------------------------------------

--
-- Table structure for table `seattype`
--

CREATE TABLE `seattype` (
  `SeatTypeName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SeatPrice` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `seattype`
--

INSERT INTO `seattype` (`SeatTypeName`, `SeatPrice`) VALUES
('Deluxe', 230),
('Premium', 250),
('SofaSweet', 325);

-- --------------------------------------------------------

--
-- Table structure for table `showtime`
--

CREATE TABLE `showtime` (
  `ShowtimeID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `StartDateTime` datetime NOT NULL,
  `MovieID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TheaterID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `IsSubtitles` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `showtime`
--

INSERT INTO `showtime` (`ShowtimeID`, `StartDateTime`, `MovieID`, `TheaterID`, `IsSubtitles`) VALUES
('SHT6281bf4db6494', '2022-05-16 20:00:00', 'MOV0001', 'TH00001', 1),
('SHT6281bf6ebca0a', '2022-05-16 12:00:00', 'MOV0001', 'TH00001', 1),
('SHT6281bf7d43660', '2022-05-16 15:00:00', 'MOV0001', 'TH6281bf207288e', 1),
('SHT6281bf9c47487', '2022-05-16 12:00:00', 'MOV0003', 'TH00002', 0);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `StaffID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `StaffName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `StaffSurname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Position` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `BranchID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `StaffDOB` date NOT NULL,
  `StaffPic` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `StaffPassword` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`StaffID`, `StaffName`, `StaffSurname`, `Position`, `BranchID`, `StaffDOB`, `StaffPic`, `StaffPassword`) VALUES
('st0001', 'Kunanya', 'Khuntiptong', 'Admin', '0', '2001-12-21', NULL, 'eiei');

-- --------------------------------------------------------

--
-- Table structure for table `theater`
--

CREATE TABLE `theater` (
  `TheaterID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TheaterName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `BranchID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TheaterTypeName` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `theater`
--

INSERT INTO `theater` (`TheaterID`, `TheaterName`, `BranchID`, `TheaterTypeName`) VALUES
('TH00001', 'Theater1 BangMod', 'MJ01', 'IMAX'),
('TH00002', 'Theater2 BangMod 2th anniversary', 'MJ01', '4DX'),
('TH6281bf207288e', 'Theater3', 'MJ01', 'digital2D'),
('TH6281cdf00b0f4', 'theater present', 'MJ6281cdd51c499', 'digital2D');

-- --------------------------------------------------------

--
-- Table structure for table `theatertype`
--

CREATE TABLE `theatertype` (
  `TheaterTypeName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TopUpPrice` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `theatertype`
--

INSERT INTO `theatertype` (`TheaterTypeName`, `TopUpPrice`) VALUES
('4DX', 150),
('digital2D', 0),
('IMAX', 100);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`BookingID`),
  ADD KEY `ShowtimeID` (`ShowtimeID`),
  ADD KEY `PromotionCode` (`PromotionCode`),
  ADD KEY `RegisterID` (`RegisterID`);

--
-- Indexes for table `bookingseat`
--
ALTER TABLE `bookingseat`
  ADD PRIMARY KEY (`BookingSeatID`),
  ADD KEY `SeatID` (`SeatID`),
  ADD KEY `BookingID` (`BookingID`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`BranchID`);

--
-- Indexes for table `concessionmenu`
--
ALTER TABLE `concessionmenu`
  ADD PRIMARY KEY (`MenuID`);

--
-- Indexes for table `concessionorder`
--
ALTER TABLE `concessionorder`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `BranchID` (`BranchID`),
  ADD KEY `RegisterID` (`RegisterID`);

--
-- Indexes for table `eachconcessionorder`
--
ALTER TABLE `eachconcessionorder`
  ADD PRIMARY KEY (`EachOrderID`),
  ADD KEY `OrderID` (`OrderID`),
  ADD KEY `MenuID` (`MenuID`);

--
-- Indexes for table `eachgenreofmovie`
--
ALTER TABLE `eachgenreofmovie`
  ADD PRIMARY KEY (`GenreOfMovieID`),
  ADD KEY `MovieID` (`MovieID`),
  ADD KEY `GenreName` (`GenreName`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`GenreName`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`MovieID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`PaymentID`),
  ADD KEY `BookingID` (`BookingID`);

--
-- Indexes for table `promotion`
--
ALTER TABLE `promotion`
  ADD PRIMARY KEY (`PromotionCode`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`RegisterID`),
  ADD UNIQUE KEY `RegisterTelNo` (`RegisterTelNo`);

--
-- Indexes for table `seat`
--
ALTER TABLE `seat`
  ADD PRIMARY KEY (`SeatID`),
  ADD KEY `TheaterID` (`TheaterID`),
  ADD KEY `SeatTypeName` (`SeatTypeName`);

--
-- Indexes for table `seattype`
--
ALTER TABLE `seattype`
  ADD PRIMARY KEY (`SeatTypeName`);

--
-- Indexes for table `showtime`
--
ALTER TABLE `showtime`
  ADD PRIMARY KEY (`ShowtimeID`),
  ADD KEY `TheaterID` (`TheaterID`),
  ADD KEY `MovieID` (`MovieID`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`StaffID`),
  ADD KEY `BranchID` (`BranchID`);

--
-- Indexes for table `theater`
--
ALTER TABLE `theater`
  ADD PRIMARY KEY (`TheaterID`),
  ADD KEY `BranchID` (`BranchID`),
  ADD KEY `TheaterTypeName` (`TheaterTypeName`);

--
-- Indexes for table `theatertype`
--
ALTER TABLE `theatertype`
  ADD PRIMARY KEY (`TheaterTypeName`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `Booking_ibfk_1` FOREIGN KEY (`ShowtimeID`) REFERENCES `showtime` (`ShowtimeID`),
  ADD CONSTRAINT `Booking_ibfk_2` FOREIGN KEY (`PromotionCode`) REFERENCES `promotion` (`PromotionCode`),
  ADD CONSTRAINT `Booking_ibfk_3` FOREIGN KEY (`RegisterID`) REFERENCES `register` (`RegisterID`);

--
-- Constraints for table `bookingseat`
--
ALTER TABLE `bookingseat`
  ADD CONSTRAINT `BookingSeat_ibfk_1` FOREIGN KEY (`SeatID`) REFERENCES `seat` (`SeatID`),
  ADD CONSTRAINT `BookingSeat_ibfk_2` FOREIGN KEY (`BookingID`) REFERENCES `booking` (`BookingID`);

--
-- Constraints for table `concessionorder`
--
ALTER TABLE `concessionorder`
  ADD CONSTRAINT `ConcessionOrder_ibfk_1` FOREIGN KEY (`BranchID`) REFERENCES `branch` (`BranchID`),
  ADD CONSTRAINT `ConcessionOrder_ibfk_2` FOREIGN KEY (`RegisterID`) REFERENCES `register` (`RegisterID`);

--
-- Constraints for table `eachconcessionorder`
--
ALTER TABLE `eachconcessionorder`
  ADD CONSTRAINT `EachConcessionOrder_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `concessionorder` (`OrderID`),
  ADD CONSTRAINT `EachConcessionOrder_ibfk_2` FOREIGN KEY (`MenuID`) REFERENCES `concessionmenu` (`MenuID`);

--
-- Constraints for table `eachgenreofmovie`
--
ALTER TABLE `eachgenreofmovie`
  ADD CONSTRAINT `EachGenreOfMovie_ibfk_1` FOREIGN KEY (`MovieID`) REFERENCES `movie` (`MovieID`),
  ADD CONSTRAINT `EachGenreOfMovie_ibfk_2` FOREIGN KEY (`GenreName`) REFERENCES `genre` (`GenreName`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `Payment_ibfk_1` FOREIGN KEY (`BookingID`) REFERENCES `booking` (`BookingID`);

--
-- Constraints for table `seat`
--
ALTER TABLE `seat`
  ADD CONSTRAINT `Seat_ibfk_1` FOREIGN KEY (`TheaterID`) REFERENCES `theater` (`TheaterID`),
  ADD CONSTRAINT `Seat_ibfk_2` FOREIGN KEY (`SeatTypeName`) REFERENCES `seattype` (`SeatTypeName`);

--
-- Constraints for table `showtime`
--
ALTER TABLE `showtime`
  ADD CONSTRAINT `Showtime_ibfk_1` FOREIGN KEY (`TheaterID`) REFERENCES `theater` (`TheaterID`),
  ADD CONSTRAINT `Showtime_ibfk_2` FOREIGN KEY (`MovieID`) REFERENCES `movie` (`MovieID`);

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `Staff_ibfk_1` FOREIGN KEY (`BranchID`) REFERENCES `branch` (`BranchID`);

--
-- Constraints for table `theater`
--
ALTER TABLE `theater`
  ADD CONSTRAINT `Theater_ibfk_1` FOREIGN KEY (`BranchID`) REFERENCES `branch` (`BranchID`),
  ADD CONSTRAINT `Theater_ibfk_2` FOREIGN KEY (`TheaterTypeName`) REFERENCES `theatertype` (`TheaterTypeName`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
