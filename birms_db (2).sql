-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 01, 2024 at 05:03 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `birms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'shanine', '$2y$10$neANQkffXqDTdmwTP2r.tebqkszn1TeT4sqZ6sVVzb7HOgLFBml7e');

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` int(11) NOT NULL,
  `owner_id` varchar(50) NOT NULL,
  `branch` varchar(100) NOT NULL,
  `location` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `owner_id`, `branch`, `location`) VALUES
(2, '00322', 'Santa Fe', 'Ilustrisimo street, Poblacion'),
(5, '00322', 'Bantayan', 'skina sa Baod'),
(7, '40613', 'Bantayan', 'Triplin, Santa Cruz Chapel'),
(8, '40613', 'Santa Fe', 'Ilustrisimo street, Poblacion'),
(9, '85494', '3', 'ATOP-ATOP'),
(10, '44622', 'Santa Fe', 'Poblacion, Santa Fe, Cebu');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `owner_id` varchar(50) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_type` varchar(100) NOT NULL,
  `price` varchar(50) NOT NULL,
  `product_photo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `owner_id`, `product_name`, `product_type`, `price`, `product_photo`) VALUES
(3, '00322', 'Egg & Bacon with Potato', 'Food', '120', 'how-to-fry-an-egg-horizontal-642dc4ed76da2.jpg'),
(4, '00322', 'Spaghetti', 'Dessert', '250', 'Easyspaghettiwithtomatosauce_11715_DDMFS_1x2_2425-c67720e4ea884f22a852f0bb84a87a80.jpg'),
(5, '00322', 'Bacon', 'Food', '80', 'how-to-fry-an-egg-horizontal-642dc4ed76da2.jpg'),
(7, '40613', 'Spaghetti', 'Food', '98', 'Easyspaghettiwithtomatosauce_11715_DDMFS_1x2_2425-c67720e4ea884f22a852f0bb84a87a80.jpg'),
(8, '40613', 'Fontana', 'Drinks', '599', 'wineeee.jpg'),
(10, '40613', 'Sprite', 'Drinks', '30', 'd6cade337fde7128768721601964bb9d.jpg'),
(12, '85494', 'JESSIEFOOD', 'Food', '21', 'f1.jpeg'),
(13, '85494', 'Adobo', 'Food', '23', 'f2.jpg'),
(14, '85494', 'YEEH', 'Food', '45', 'f3.jpg'),
(15, '85494', 'REEEE', 'Food', '45', 'f4.jpg'),
(16, '85494', 'FFF', 'Food', '34', 'f5.jpg'),
(17, '85494', 'fff', 'Food', '23', 'f4.jpg'),
(18, '85494', 'ff', 'Food', '232', 'f1.jpeg'),
(19, '85494', 'coke', 'Drinks', '21', 'd1.jpg'),
(20, '85494', 'Royal', 'Drinks', '21', 'd2.jpg'),
(21, '85494', 'Lemon', 'Drinks', '111', 'd4.jpg'),
(22, '85494', 'Juice', 'Drinks', '1111', 'd5.jpg'),
(23, '53589', 'aasa', 'Food', 'qsqs', 'd1.jpg'),
(24, '53589', 'aaaz', 'Drinks', 'qsqsq', 'd1.jpg'),
(25, '53589', 'asa', 'Drinks', 'qsqsq', 'd5.jpg'),
(26, '53589', 'qwsq', 'Drinks', 'ww', 'd2.jpg'),
(27, '53589', 'www', 'Food', '22w', 'd4.jpg'),
(28, '53589', 'aax', 'Drinks', 'sq', 'd4.jpg'),
(29, '53589', 'qsqsq', 'Drinks', 'qqq', 'd5.jpg'),
(30, '35881', 'ShrimpCreamsauce  ', 'Food', '150', '395164704_786106960197992_974520798088089_n (3).jpg'),
(31, '35881', 'Margarita Pizza', 'Food', '200', '394332027_781908090617879_1716100133624566332_n (1).jpg'),
(32, '35881', 'Cream Brulli', 'Food', '120', '369174943_737965565012132_3822463199548140822_n.jpg'),
(33, '35881', 'Avo Good Time', 'Drinks', '100', '279688938_4813895558722676_9081621555639850560_n (2).jpg'),
(34, '35881', 'Halo-Halo', 'Food', '150', '277782422_4735433789902187_354859978024620163_n (1).jpg'),
(35, '35881', 'Cocktail Drinks', 'Drinks', '200', '160948765_2192079767589794_7844892406307567228_n (1).jpg'),
(38, '35881', 'Farmer Breakfast', 'Food', '300', '123364145_3204372516341663_127281108162616878_n.jpg'),
(39, '35881', 'English Breakfast', 'Food', '300', '123186592_3204372563008325_4860038259070423249_n.jpg'),
(42, '35881', 'Chicken Fricassi', 'Food', '200', '119918979_3086211874824395_50030871070437641_n (1).jpg'),
(43, '35881', 'Dry White wine', 'Drinks', '400', '107612814_2848745945237657_4692262610082920882_n (1).jpg'),
(44, '35881', 'Dry Red wine', 'Drinks', '400', '106903757_2848745998570985_1343274969309316116_n (1).jpg'),
(45, '35881', 'Beef Shank', 'Food', '250', '106136588_2822796154499303_3658548957467070291_n (1).jpg'),
(47, '35881', 'Cordon Bleu', 'Food', '200', '101542683_2776669849111934_1421492201968366476_n (1).jpg'),
(49, '35881', 'Sizzling Sisig', 'Food', '280', '102845026_2771700636275522_5629330200832507904_n (2).jpg'),
(50, '35881', 'Frozen Margarita', 'Drinks', '190', '57409168_1960290704083190_3662298036110884864_n.jpg'),
(51, '35881', 'Latte macchiato', 'Drinks', '250', '53630617_1906688769443384_6946971346282741760_n.jpg'),
(52, '35881', 'Don Papa', 'Drinks', '1,000', '53458963_1900524923393102_7894878170472513536_n.jpg'),
(53, '35881', 'Fresh Lemonade', 'Drinks', '120', '44023722_1703213863124210_2358538980875567104_n.jpg'),
(54, '35881', 'Cocktail', 'Drinks', '100', '40592953_1653764814735782_8372740166015516672_n.jpg'),
(55, '35881', 'Singapore Sling', 'Drinks', '160', '27867028_1420070394771893_8980344286316238361_n.jpg'),
(56, '35881', 'Mango daiquiri', 'Drinks', '200', '27858149_1420070404771892_8839902589895988108_n.jpg'),
(57, '35881', 'Strawberry daiquiri', 'Drinks', '150', '27867102_1420070444771888_170357796254640236_n.jpg'),
(58, '35881', 'Mojito', 'Drinks', '150', '27750168_1420070454771887_1195027474307929075_n.jpg'),
(59, '35881', 'Tiramisu', 'Food', '200', '27858301_1419181811527418_8240320126315466391_n.jpg'),
(60, '37818', 'Big Tiki Burger', 'Food', '80', '291048620_3134970003482701_8615865280693108304_n (2).jpg'),
(61, '37818', 'Amazing Halo-Halo', 'Food', '150', '285740822_3108932459419789_120253112147542235_n (3).jpg'),
(62, '37818', 'Bundaberg', 'Drinks', '200', '284485236_3103771416602560_5366513644283025795_n (4).jpg'),
(63, '37818', 'CarlsBerg', 'Drinks', '180', '284542368_3103772043269164_2606804488163636421_n (3).jpg'),
(64, '37818', 'Guinnes', 'Drinks', '120', '284463785_3103772143269154_7978428849717978189_n (3).jpg'),
(65, '37818', 'IBC Root Beer', 'Drinks', '250', '284209678_3103772456602456_5442821151750109987_n (3).jpg'),
(66, '37818', 'Pirsnel Urqell', 'Drinks', '210', '284412502_3103772376602464_8803077139992733165_n (3).jpg'),
(67, '37818', 'Peronni', 'Drinks', '145', '284443576_3103771549935880_4073811200132331070_n (3).jpg'),
(68, '37818', 'Leffe', 'Drinks', '150', '284518674_3103771729935862_4611769018967596324_n (3).jpg'),
(69, '37818', 'Paulener', 'Drinks', '120', '283927222_3103772249935810_8482010303147353488_n (3).jpg'),
(70, '37818', 'Murpheys', 'Drinks', '150', '283696657_3103772429935792_3747671520349119203_n (3).jpg'),
(71, '37818', 'Sapporo', 'Drinks', '150', '284467750_3103772403269128_2938947639241268958_n (3).jpg'),
(72, '37818', 'Asahi', 'Drinks', '120', '284413096_3103771933269175_6053602546033623371_n.jpg'),
(73, '37818', 'Calvet', 'Drinks', '300', '277093663_3053477604965275_5346630639682736186_n (2).jpg'),
(74, '37818', 'Egos and Brut', 'Drinks', '300', '277095537_3053484164964619_656388500463040938_n (2).jpg'),
(75, '37818', 'BG', 'Drinks', '250', '277080284_3053485684964467_1869395500985284484_n (2).jpg'),
(76, '37818', 'Merlot', 'Drinks', '310', '277101605_3053485701631132_8524845573644810371_n.jpg'),
(77, '37818', 'Rose', 'Drinks', '350', '277096000_3053485748297794_3829577861704683821_n.jpg'),
(78, '37818', 'Pochero', 'Food', '100', '264696713_2978785299101173_6871624930146487534_n (3).jpg'),
(79, '37818', 'Casava Cake', 'Food', '250', '264806445_2978785359101167_2160201644936139158_n (3).jpg'),
(80, '37818', 'Burgers and Fries', 'Food', '250', '264760005_2978785405767829_4314344213082999789_n (2).jpg'),
(81, '37818', 'Seafoods Overload', 'Food', '300', '255734216_2958825811097122_8442152350349004368_n (3).jpg'),
(82, '37818', 'Balognese', 'Food', '230', '127819056_2696598807319825_3878595434585069226_n.jpg'),
(83, '37818', 'Carbonara', 'Food', '230', '128090719_2696598803986492_5347531537696763305_n (1).jpg'),
(84, '37818', '1/2 Texas chicken', 'Food', '200', '126456919_2692324711080568_2745291570172418329_n.jpg'),
(85, '37818', 'MeatballPasta', 'Food', '230', '125402163_2687336511579388_2181708592780232320_n.jpg'),
(86, '44622', 'Burger Overload', 'Food', '100', '257883629_2036052826558563_3019003155507896753_n.jpg'),
(87, '44622', 'Meatballs Pasta', 'Food', '120', '258092241_2036053009891878_8301472228487012483_n.jpg'),
(88, '44622', 'Shrimp', 'Food', '200', '257611372_2036053133225199_4114155898263015891_n.jpg'),
(89, '44622', 'Overload Lomi', 'Food', '120', '257792146_2036053303225182_5331548913122617183_n.jpg'),
(90, '44622', 'HR Seafoods', 'Food', '500', '257382141_2036053396558506_422701993045999407_n.jpg'),
(91, '44622', 'Fish Mango Sauce', 'Food', '190', '196444002_1910999652397215_3938848608411297472_n.jpg'),
(92, '44622', 'Stuff Fried Squid', 'Food', '300', '198055038_1910999692397211_8932672417568889579_n.jpg'),
(93, '44622', 'Margarita Drinks', 'Drinks', '120', '129588919_712491356346949_5191519486259805773_n.jpg'),
(94, '44622', 'Tequila', 'Drinks', '120', '129625813_712491329680285_430156133489205107_n.jpg'),
(95, '44622', 'Steak Sandwish', 'Food', '100', '122013634_1727678637395985_6336989302808695448_n.jpg'),
(96, '44622', 'Egg Pizza', 'Food', '110', '120131013_1703625719801277_4161556520586038649_n.jpg'),
(97, '44622', 'Meatballs Basil', 'Food', '120', '117444641_1662954410535075_83749055402371741_n.jpg'),
(98, '44622', 'Freshfries Burger', 'Food', '200', '117342893_1661746303989219_7265809152893751178_n.jpg'),
(99, '58652', 'Chicken Pater ', 'Food', '100', '345285597_214663787996834_4704637299000236949_n (3).jpg'),
(100, '58652', 'Beef Pater', 'Food', '100', '345047558_155409177370038_9103154724383775249_n (2).jpg'),
(101, '58652', 'Tuna Pater', 'Food', '100', '345643631_1741616182940046_5188591928336514595_n (2).jpg'),
(102, '58652', 'Pork Pater', 'Food', '100', '345219894_622688826546597_787006432824756931_n (2).jpg'),
(103, '58652', 'SuperDry FlavoredBeer', 'Drinks', '90', '344576634_112011731896601_985186538717833524_n (2).jpg'),
(104, '58652', 'Yummy Halo-Halo', 'Food', '120', '340251996_738333577758305_5090598747597129488_n (2).jpg'),
(105, '58652', 'Tuna Sisig ', 'Food', '200', '338707640_2591652747655199_4033737425747179688_n (2).jpg');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `total_price` float NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1=pending,2=confirmed,3=finished'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders1`
--

CREATE TABLE `orders1` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_date` datetime DEFAULT current_timestamp(),
  `status` enum('Pending','Completed','Cancelled') DEFAULT 'Pending',
  `total_amount` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders2`
--

CREATE TABLE `orders2` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `order_item_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`order_item_id`, `order_id`, `menu_id`, `quantity`, `unit_price`) VALUES
(1, 1, 27, 4, 22.00),
(2, 1, 26, 5, 0.00),
(3, 1, 22, 9, 1111.00),
(4, 2, 25, 1, 0.00),
(5, 2, 27, 1, 22.00),
(6, 3, 30, 1, 150.00),
(7, 4, 61, 2, 150.00);

-- --------------------------------------------------------

--
-- Table structure for table `owner`
--

CREATE TABLE `owner` (
  `id` int(11) NOT NULL,
  `owner_id` varchar(50) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `middlename` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `contact_num` varchar(11) NOT NULL,
  `address` varchar(100) NOT NULL,
  `profile` varchar(250) DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `owner`
--

INSERT INTO `owner` (`id`, `owner_id`, `firstname`, `middlename`, `lastname`, `email`, `password`, `contact_num`, `address`, `profile`, `status`) VALUES
(23, '35881', 'Shanine', '', 'Zaspa', 'shanine@gmail.com', '$2y$10$.iAUSpL8ae8IagvxBasCNur.UMu1itL39e7DqtyhGznHzt6OceDNW', '09876543345', 'Batobalonos St, Poblacion, Bantayan Island, Santa Fe, Cebu', NULL, 1),
(24, '37818', 'Kenshin', '', 'Sato', 'kenshin@gmail.com', '$2y$10$IWUXRLwufxiaG3FLOVawNe1mSasD1lGqrJRFMB6H1/Ik8ziv1tyOK', '09987654345', 'Batobalonos street, Talisay, Santa Fe, Cebu.', NULL, 1),
(26, '44622', 'Rosalie', 'Batindaan', 'Zaspa', 'rosalie@gmail.com', '$2y$10$fCqBLblN2A.lYyjpG5rxSO9S.ubG2l/q4BObdISluewn05y7IAoYS', '09875432345', 'Poblacion, Santa Fe, Cebu', NULL, 1),
(27, '58652', 'Angel', '', 'Zaspa', 'angel@gmail.com', '$2y$10$WJRH5rBBe.wlGOdf2qvbC.0UvsS./u0OL.XRplRfaRyOlmSmRsKXK', '09876543234', 'Rio Guest House, Cafe and Restobar is strategically located at the heart of Pob. Madridejos.', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `restobar`
--

CREATE TABLE `restobar` (
  `resto_id` int(11) NOT NULL,
  `owner_id` varchar(50) NOT NULL,
  `resto_name` varchar(100) NOT NULL,
  `resto_photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `restobar`
--

INSERT INTO `restobar` (`resto_id`, `owner_id`, `resto_name`, `resto_photo`) VALUES
(8, '62578', 'banrnae', '242534303_4106499022795670_1728727078114636428_n.jpg'),
(9, '72990', 'JESSIE ', 'images.png'),
(10, '85494', 'Bantayan ', 'images.png'),
(11, '53589', 'JeesieRestobar', 'logo.jpg'),
(12, '73500', 'jorgen', 'logo2.png'),
(13, '41303', 'gago', '368309175_239124502434005_3791995504253868205_n (1).jpg'),
(14, '35881', 'CouCouBar Hotel and Restaurant', '242534303_4106499022795670_1728727078114636428_n (1).jpg'),
(15, '37818', 'Tikibar', '294569302_461300859336531_6543406184254859945_n (4).jpg'),
(16, '70724', 'Kainalu Island Restobar', '334059049_754669069265623_235318623859095539_n (5).jpg'),
(17, '44622', 'HR MUSIC BAR AND RESTAURANT', '298917377_483207713810741_359399827756757104_n (1).jpg'),
(18, '58652', 'Rio Guest House, Cafe and Restobar', '279963223_5222439101132754_1237092695987517852_n (3).jpg');

-- --------------------------------------------------------

--
-- Table structure for table `restobar_details`
--

CREATE TABLE `restobar_details` (
  `id` int(11) NOT NULL,
  `owner_id` varchar(50) NOT NULL,
  `details` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `restobar_details`
--

INSERT INTO `restobar_details` (`id`, `owner_id`, `details`) VALUES
(3, '40613', 'Live Band @7pm - 10pm'),
(4, '40613', 'Open Every Weedays @8am - 10pm'),
(5, '85494', 'JESSIE IS GWAPO'),
(7, '53589', 'A restaurant is a business that prepares and serves A restaurant is a business that prepares and serves food and drinks to customers. Meals are generally served and eaten on the premises,A restaurant '),
(8, '35881', 'A place with a nice ambiance and good atmosphere to hang out with family and friends. In an open air restaurant, we offer Filipino & International cuisine, and a lot of choices for cocktails and mockt'),
(9, '37818', 'Specialities of Burgers, Seafoods\r\nHomemade bread, ham & pasta.\r\nLounge place with lounge music '),
(10, '70724', 'Mouth-watering dishes! Come and Visit our Restobar to relaxed your mind and your soul.'),
(11, '58652', 'Rio Guesthouse and Restobar on Bantayan Island offers comfortable accommodations and a relaxed dining experience with a variety of local and international dishes, plus drinks in a casual setting.\r\n\r\n\r');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `created_at`) VALUES
(1, 'jessie', 'jessie@gmail.com', '$2y$10$VK1eBrDXg2OGRjirij29w.yQC3RYSvsdkp3HpIn0pjLxKhzoFFUjO', '2024-07-26 10:11:11'),
(2, 'jessie23', 'earljustinesierra@gmail.com', '$2y$10$yjkRm64/r6f7xDQnUjtmw.9EKRFo7qES1dF6uXgytjGbZ3grUxxeO', '2024-07-26 10:12:59'),
(6, 'rogine', 'shin@gmail.com', '$2y$10$pdLjrpKaV1vAd8zDoIKo0eMUt1CVSLRw/1jKxZNim1.47VG/H4gzq', '2024-07-30 17:25:07'),
(7, 'shanine', 'shaninezaspa@gmail.com', '$2y$10$boXu5FUUJdRbZoNvYCNIC.sJ.oyMNPen9x8wsAhsWC4.RZ2ya3LwG', '2024-07-31 12:04:11'),
(8, 'Toryo Batindaan', 'toryo@gmail.com', '$2y$10$I4.bUCGL1GoShDJ.XmTiZ..s/axCv4Ernw4/m5jI93DJoy8bCoAgC', '2024-07-31 15:40:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `orders1`
--
ALTER TABLE `orders1`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `orders2`
--
ALTER TABLE `orders2`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Indexes for table `owner`
--
ALTER TABLE `owner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restobar`
--
ALTER TABLE `restobar`
  ADD PRIMARY KEY (`resto_id`);

--
-- Indexes for table `restobar_details`
--
ALTER TABLE `restobar_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders1`
--
ALTER TABLE `orders1`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders2`
--
ALTER TABLE `orders2`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `order_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `owner`
--
ALTER TABLE `owner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `restobar`
--
ALTER TABLE `restobar`
  MODIFY `resto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `restobar_details`
--
ALTER TABLE `restobar_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `orders1`
--
ALTER TABLE `orders1`
  ADD CONSTRAINT `orders1_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `orders2`
--
ALTER TABLE `orders2`
  ADD CONSTRAINT `orders2_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders2_ibfk_2` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
