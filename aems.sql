-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2020 at 08:44 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aems`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `login_id` int(11) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `join_date` datetime NOT NULL DEFAULT current_timestamp(),
  `img_path` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `login_id`, `name`, `phone`, `email`, `join_date`, `img_path`) VALUES
(1, 1, 'Ifrat', 0, 'ifratbinte@gmail.com', '2019-12-22 00:00:00', NULL),
(2, NULL, 'ifrat', 1831305640, 'ifrat@gmail.com', '2020-02-22 05:35:22', 'dist/img/admin/ifrat.jpg'),
(3, NULL, 'fancy', 1898863656, 'fancy@gmail.com', '2020-02-23 23:21:11', NULL),
(4, 9, 'mahibul', 1832545802, 'mahibulislam94@gmail.com', '2020-03-02 01:25:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `agri_category`
--

CREATE TABLE `agri_category` (
  `id` int(11) NOT NULL,
  `name` varchar(11) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `img_path` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agri_category`
--

INSERT INTO `agri_category` (`id`, `name`, `description`, `img_path`) VALUES
(1, 'Planting', 'A crop is a plant or animal product that can be grown and\r\n                        harvested extensively for profit or subsistence.', 'agri_information/image/plant.jpg'),
(2, 'Fishing', 'A fishery is an organized effort by humans to catch fish or other\r\n                        aquatic species, an activity known as fishing.', 'agri_information/image/fish.webp'),
(3, 'Farming', 'Farm animals are animals that are kept for agricultural purposes.\r\n                        Such cows, chickens and birds.\r\n                        Such cows', 'agri_information/image/cow.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `agri_product`
--

CREATE TABLE `agri_product` (
  `id` int(11) NOT NULL,
  `Category_id` varchar(15) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `product` varchar(15) NOT NULL,
  `process1` varchar(2000) NOT NULL,
  `process2` varchar(2000) NOT NULL,
  `process3` varchar(2000) NOT NULL,
  `process4` varchar(2000) NOT NULL,
  `process5` varchar(2000) NOT NULL,
  `process6` varchar(2000) NOT NULL,
  `process7` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agri_product`
--

INSERT INTO `agri_product` (`id`, `Category_id`, `subcategory_id`, `product`, `process1`, `process2`, `process3`, `process4`, `process5`, `process6`, `process7`) VALUES
(1, 'planting', 1, 'rice', '<br><br>\r\n    <b>Seed quality and selection:</b>\r\n    <br>\r\n    Seed is a living product that must be grown, harvested, and processed correctly in order to realize the yield\r\n    potential\r\n    of any rice variety. Good quality seed can increase yields by 5-20%. Using good seed leads to lower seeding\r\n    rates, higher crop emergence,\r\n    reduced replanting, more uniform plant stands, and more vigorous early crop growth. Vigorous growth in early\r\n    stages reduces weed problems\r\n    and increases crop resistance to insect pests and diseases. All of these factors contribute to higher yields and\r\n    more productive rice farms.\r\n\r\n    Good seed is pure (of the chosen variety), full and uniform in size, viable (more than 80% germination with good\r\n    seedling vigor), and free of weed seeds,\r\n    seed-borne diseases, pathogens, insects, or other matter.\r\n\r\n    Choosing seed of a suitable variety of rice that suits the environment it will be grown in and ensuring the seed\r\n    choosen of that variety is of the highest\r\n    possible quality is the essential first step in rice production.', '    <br><br>\r\n    <b>Land preparation:</b>\r\n    <br>\r\n    Before rice can be planted, the soil should be in the best physical condition for crop growth and the soil\r\n    surface is level.\r\n    Land preparation involves plowing and harrowing to ‘till’ or dig-up, mix and level the soil.\r\n\r\n    Tillage allows the seeds to be planted at the right depth, and also helps with weed control. Farmers can till\r\n    the land themselves\r\n    using hoes and other equipment or they can be assisted by draft animals, such as buffalo, or tractors and other\r\n    machinery.\r\n\r\n    Next, the land is leveled to reduce the amount of water wasted by uneven pockets of too-deep water or exposed\r\n    soil. Effective land\r\n    leveling allows the seedlings to become established more easily, reduces the amount of effort required to manage\r\n    the crop, and increases both grain quality and yields.', '   <br><br>\r\n    <b>Crop establishment:</b>\r\n    <br>\r\n    The two main practices of establishing rice plants are transplanting and direct seeding. <br>\r\n\r\n    <b>Transplanting</b> is the most popular plant establishment technique across Asia.\r\n    Pre- germinated seedlings are transferred from a seedbed to the wet field.\r\n    It requires less seed and is an effective method to control weeds, but requires more labor.\r\n    Seedlings may be transplanted by either machine or hand. <br>\r\n\r\n    <b>Direct seeding</b> involves broadcasting dry seed or pre-germinated seeds and seedlings by hand or planting\r\n    them by machine. In rainfed and deepwater ecosystems, dry seed is manually broadcast onto the soil surface and\r\n    then incorporated either by ploughing or by harrowing while the soil is still dry. In irrigated areas, seed is\r\n    normally pre- germinated prior to broadcasting.', ' <br><br>\r\n    <b>Water use and management:</b>\r\n    <br>\r\n\r\n    Cultivated rice is extremely sensitive to water shortages. To ensure sufficient water, most rice farmers\r\n    aim to maintain flooded conditions in their field. This is especially true for lowland rice. Good water\r\n    management in lowland rice focuses on practices that conserve water while ensuring sufficient water for the\r\n    crop.\r\n\r\n    In rainfed environments when optimal amounts of water may not be available for rice production,\r\n    a suite of options are available to help farmers cope with different degrees and forms of water scarcity.\r\n    It includes sound land preparation and pre-planting activities followed by techniques such as saturated soil\r\n    culture,\r\n    alternate wetting and drying, raised beds, mulching, and use of aerobic rice that can cope with dryer\r\n    conditions.', '<br><br>\r\n    <b>Nutrient management:</b>\r\n    <br>\r\n    At each growth stage, the rice plant has specific nutrient needs. This makes nutrient management a critical\r\n    aspect of rice farming.\r\n\r\n    The unique properties of flooded soils make rice different from any other crop. Because of prolonged flooding in\r\n    rice fields,\r\n    farmers are able to conserve soil organic matter and also receive free input of nitrogen from biological\r\n    sources, which means\r\n    they need little or no nitrogen fertilizer to retain yields. However, farmers can tailor nutrient management to\r\n    the specific\r\n    conditions of their field to increase yields.', '<br><br>\r\n    <b>Crop health:</b>\r\n    <br>\r\n    The rice plant has a wide array of ‘enemies’ in the field. These include rodents, harmful insects, viruses,\r\n    diseases, and weeds.\r\n    Farmers manage weeds through water management and land preparation, by hand weeding, and in some cases herbcide\r\n    application.\r\n    Understanding the interactions among pests, natural enemies, host plants, other organisms, and the environment\r\n    allows\r\n    farmers to determine what if any pest management may be necessary.\r\n\r\n    Avoiding conditions that allow pests to adapt and thrive in a particular ecosystem helps to identify weak links\r\n    in the\r\n    pests\' life cycle and therefore what factors can be manipulated to manage them. Retaining natural ecosystems\r\n    such that predators\r\n    and natural enemies of pests and diseases are kept in abundance can also help keep pest numbers down.', '  <br><br>\r\n    <b>Harvest:</b>\r\n    <br>\r\n    Harvesting is the process of collecting the mature rice crop from the field. Depending on the variety,\r\n    a rice crop usually reaches maturity at around 105–150 days after crop establishment.\r\n    Harvesting activities include cutting, stacking, handling, threshing, cleaning, and hauling.\r\n    Good harvesting methods help maximize grain yield and minimize grain damage and deterioration.\r\n    <br>\r\n\r\n    Harvesting can be done manually or mechanically:\r\n    <br>\r\n\r\n    <b>Manual harvesting</b> is common across Asia It involves cutting the rice crop with simple hand tools\r\n    like sickles and knives. Manual harvesting is very effective when a crop has lodged or fallen over,\r\n    however it is labor intensive. Manual harvesting requires 40 to 80 hours per hectare and it takes\r\n    additional labor to manually collect and haul the harvested crop.\r\n    <br>\r\n\r\n    <b>Mechanical harvesting</b> using reapers or combine harvesters is the other option,\r\n    but not so common due to the availability and cost of machinery. Following cutting the rice must\r\n    be threshed to separate the grain from the stalk and cleaned. These processes can also be done by hand or\r\n    machine.');

-- --------------------------------------------------------

--
-- Table structure for table `agri_subcategory`
--

CREATE TABLE `agri_subcategory` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `img_path` varchar(100) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agri_subcategory`
--

INSERT INTO `agri_subcategory` (`id`, `name`, `description`, `img_path`, `category_id`) VALUES
(1, 'crops', 'Crops are living plants grown by farmers. Most crops are foods such as\r\n                        grain,\r\n                        vegetables, or fruit.', 'agri_information/image/3.jpg', 1),
(2, 'vegitables', 'Vegetables are parts of plants that are consumed by humans or other\r\n                        animals as food', 'agri_information/image/vegitable.webp', 1),
(3, 'oil', 'Oil crops are the base for biodiesel production,Such as Peanut,\r\n                        Soybean, Canola etc.', 'agri_information/image/oil.jpg', 1),
(4, 'cash', 'A cash crop or profit crop is an agricultural crop which is grown to\r\n                        sell for profit.Such as tea, jute,cottn etc.', 'agri_information/image/tea.jpg', 1),
(5, 'pulse', 'Pulses are a leguminous crop that are harvested solely for the dry\r\n                        seed. Dried beans, chickpeas, lentils etc.', 'agri_information/image/dal.jpg', 1),
(6, 'boaal', 'Boal fish is a species of catfish. ... This fish species found in Bangladesh, India, Pakistan and some other countries.', 'agri_information/image/boaal.jpg', 2),
(7, 'magur', 'The walking catfish (Clarias batrachus) is a species of freshwater airbreathing catfish native to Southeast Asia', 'agri_information/image/magur.jpg', 2),
(8, 'cow', 'Cow, in common parlance, a domestic bovine, regardless of sex and age, usually of the species Bos taurus. It is mainly use for food.', 'agri_information/image/cow1.jpg', 3),
(9, 'goat', 'a hardy domesticated ruminant mammal that has backward-curving horns and (in the male) a beard. It is kept for its milk and meat.', 'agri_information/image/goat.webp', 3),
(10, 'vegitables', 'vegitables', 'agri_information/image/3.jpg', 4);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `date_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `customer_id`, `product_id`, `quantity`, `date_time`) VALUES
(22, 1, 1, 1, '2020-02-11 16:42:55'),
(27, 1, 23, 5, '2020-02-11 16:53:39'),
(30, 1, 22, 1, '2020-02-18 15:40:03'),
(31, 1, 8, 2, '2020-02-22 05:51:21'),
(36, 7, 26, 1, '2020-02-23 23:25:02'),
(58, 3, 7, 2, '2020-03-03 14:23:21'),
(59, 3, 2, 1, '2020-03-03 14:24:19'),
(60, 3, 6, 1, '2020-03-03 14:24:24'),
(61, 6, 20, 1, '2020-03-03 15:51:47'),
(62, 6, 21, 1, '2020-03-03 15:52:35'),
(64, 12, 5, 1, '2020-03-04 09:06:18'),
(65, 13, 2, 1, '2020-03-04 09:23:35'),
(66, 14, 2, 1, '2020-03-04 09:33:36'),
(67, 15, 1, 1, '2020-03-04 09:39:23'),
(68, 16, 6, 1, '2020-03-04 11:01:15'),
(69, 18, 1, 1, '2020-03-04 11:07:24');

-- --------------------------------------------------------

--
-- Stand-in structure for view `cartlist`
-- (See below for the actual view)
--
CREATE TABLE `cartlist` (
`id` int(11)
,`seller_id` int(11)
,`status` varchar(100)
,`name` varchar(50)
,`selling_price` int(11)
,`buying_price` int(11)
,`quantity` int(11)
,`description` varchar(500)
,`location` varchar(50)
,`subcategory_id` int(11)
,`img_path` varchar(100)
,`img_path2` varchar(100)
,`cart_id` int(11)
,`customer_id` int(11)
,`cart_quantity` int(11)
,`cart_datetime` datetime
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `cartproduct`
-- (See below for the actual view)
--
CREATE TABLE `cartproduct` (
`id` int(11)
,`customer_id` int(11)
,`product_id` int(11)
,`quantity` int(11)
,`date_time` datetime
,`name` varchar(50)
,`selling_price` int(11)
,`seller_id` int(11)
,`img_path` varchar(100)
);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `img_path` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `img_path`) VALUES
(1, 'Dairy', 'users/img/image/dairy1.jpg'),
(2, 'Grain', 'users/img/image/corn1.jpg'),
(3, 'Fish', 'users/img/image/fish1.jpg'),
(4, 'Flower', 'users/img/image/flowering/flower.jpg'),
(5, 'Oil', 'users/img/image/oil.jpg'),
(6, 'Fruit', 'users/img/image/fruit1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `message` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `user_id`, `name`, `phone`, `email`, `message`) VALUES
(1, 3, 'Mahibul Islam', 1832545802, 'mahibulislam94@gmail.com', 'Amar onek boro problem ace,, Ei site ta ami calaite parteci na. Thik koren site ta');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(100) NOT NULL,
  `img_path` varchar(50) DEFAULT NULL,
  `login_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `email`, `address`, `phone`, `img_path`, `login_id`) VALUES
(1, 'Shabuj Badsha', 'shabuj.badsha@gmail.com', 'Kandirpar,Cumilla', '01245466567', 'users/img/profile.jpg', 1),
(2, 'alif', 'alif@gmail.com', 'kotbari', '18363542', 'users/img/profile.jpg\r\n', 4),
(3, 'Dolna Akter', 'dolna@email.com', 'chandpur', '01987864354', 'users/img/profile.jpg\r\n', 3),
(4, 'Shawn', 'dollershawn@gmail.com', 'Barura', '01326665563', 'users/img/profile.jpg\r\n', 2),
(5, 'Subjina Fancy', 'fancy@gmail.com', 'Dhaka', '01154676657', 'users/img/profile.jpg\r\n', 6),
(6, 'Nusrat farin', 'farin@gmail.com', 'Barura', '01834522522', 'users/img/profile.jpg\r\n', 7),
(7, 'oyon', 'oyon@gmail.com', 'cumilla', '0184656987', 'users/img/profile.jpg\r\n', 10),
(8, 'Ifratbinte', NULL, 'Cumilla', '01831305640', NULL, 11),
(9, 'ifratbintekazi', NULL, 'Cumilla', '01831305640', NULL, 12),
(10, 'Ifratbintekazi', NULL, 'Cumilla', '01831305640', NULL, 13),
(11, 'Ifratbintekazi', NULL, 'Cumilla', '01831305640', NULL, 14),
(12, 'kazi123', NULL, 'Cumilla', '01831305640', NULL, 15),
(13, 'kazi12', NULL, 'Cumilla', '01831305640', NULL, 16),
(14, 'Ifrat123', NULL, 'Cumilla', '01831305640', NULL, 17),
(15, 'kazi123', 'ifratbinte@gmail.com', 'Cumilla', '01831305640', NULL, 18);

-- --------------------------------------------------------

--
-- Stand-in structure for view `customerlogin`
-- (See below for the actual view)
--
CREATE TABLE `customerlogin` (
`id` int(11)
,`name` varchar(20)
,`email` varchar(100)
,`address` varchar(100)
,`phone` varchar(100)
,`img_path` varchar(50)
,`login_id` int(11)
,`userName` varchar(30)
,`password` varchar(30)
);

-- --------------------------------------------------------

--
-- Table structure for table `guest_user`
--

CREATE TABLE `guest_user` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `guest_user`
--

INSERT INTO `guest_user` (`id`, `name`, `address`, `phone`) VALUES
(1, 'shawn', 'lalmai', 198726242),
(2, 'anni', 'chandina', 137263728);

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `img_path` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id`, `product_id`, `img_path`) VALUES
(1, 2, 'tba'),
(2, 5, 'tba2');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `transection_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`id`, `product_id`, `price`, `quantity`, `total_price`, `status`, `transection_id`) VALUES
(1, 4, 2, 1, 12, 'onprocess', 3),
(12, 32, 200, 1, 200, 'onprocess', 11),
(17, 32, 200, 1, 200, 'onprocess', 12),
(26, 4, 100, 1, 100, 'onprocess', 13),
(27, 7, 220, 1, 220, 'onprocess', 14),
(33, 29, 250, 8, 2000, 'onprocess', 15),
(36, 46, 150, 1, 150, 'onprocess', 16),
(41, 2, 400, 1, 400, 'onprocess', 21),
(43, 20, 200, 3, 600, 'onprocess', 23),
(44, 18, 170, 2, 340, 'onprocess', 23),
(45, 23, 200, 2, 400, 'onprocess', 23),
(46, 47, 300, 1, 300, 'onprocess', 23),
(47, 5, 150, 1, 150, 'onprocess', 24),
(48, 5, 150, 1, 150, 'onprocess', 25),
(49, 5, 150, 1, 150, 'onprocess', 26),
(50, 2, 400, 1, 400, 'onprocess', 27),
(51, 2, 400, 1, 400, 'onprocess', 28),
(52, 1, 200, 1, 200, 'onprocess', 29),
(53, 6, 150, 1, 150, 'onprocess', 30),
(54, 1, 200, 1, 200, 'onprocess', 31);

-- --------------------------------------------------------

--
-- Stand-in structure for view `invoiceproduct`
-- (See below for the actual view)
--
CREATE TABLE `invoiceproduct` (
`id` int(11)
,`product_id` int(11)
,`price` int(11)
,`quantity` int(11)
,`total_price` int(11)
,`status` varchar(50)
,`transection_id` int(11)
,`name` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `invoicetransectionproduct`
-- (See below for the actual view)
--
CREATE TABLE `invoicetransectionproduct` (
`id` int(11)
,`product_id` int(11)
,`price` int(11)
,`quantity` int(11)
,`total_price` int(11)
,`status` varchar(50)
,`transection_id` int(11)
,`name` varchar(50)
,`customer_id` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `seller_name` varchar(20) NOT NULL,
  `location` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `customer_id`, `seller_name`, `location`) VALUES
(2, 4, '7', 'tba 2'),
(3, 2, '2', 'Cumilla-3500');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `userName` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `userName`, `password`, `type`) VALUES
(1, 'shbd201', 'Shabuj Badsha', 'user'),
(2, 'shawn', '123', 'user'),
(3, 'dolna', '444', 'user'),
(4, 'urmi', '12', 'user'),
(5, 'ifrat', '12345', 'admin'),
(6, 'fancy', '13', 'user'),
(7, 'farin', '321', 'user'),
(8, 'uuuu', '123456', 'user'),
(9, 'mahibul', '28285', 'admin'),
(10, 'oyon', '123', 'user'),
(14, 'Ifratbinte', 'Ifratbinte', 'user'),
(18, 'kazi123', 'kazi123', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `selling_price` int(11) DEFAULT NULL,
  `buying_price` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `location` varchar(50) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `img_path` varchar(100) DEFAULT NULL,
  `img_path2` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `seller_id`, `status`, `name`, `selling_price`, `buying_price`, `quantity`, `description`, `location`, `subcategory_id`, `img_path`, `img_path2`) VALUES
(1, NULL, 'available', 'Solted Borhani', 200, 180, 6, 'Borhani Borhani is a yogurt-like beverage that is very popular in parties ... It is mixed with several types of spices and herbs such as ground pepper', 'b', 1, 'users/img/image/borhani/borhani1.jpg', 'users/img/image/borhani/borhani2.jpg'),
(2, NULL, 'available', 'Misty Borhani', 400, 350, 2, 'Borhani Borhani is a yogurt-like beverage that is very popular in parties ... It is mixed with several types of spices and herbs such as ground pepper, ground', '', 1, 'users/img/image/borhani/borhani2.jpg', NULL),
(4, NULL, 'Available', 'Whipped Butter', 100, 120, 2, 'Whipped Cinnamon Butter is a copy cat recipe of Texas Roadhouse butter that you love! It only has 4 ingredients! Serve it with pancakes, waffles, rolls', '', 2, 'users/img/image/butter/butter1.jpg', NULL),
(5, NULL, 'Available ', 'Cultured Butter', 150, 140, 3, 'Any heavy cream that\'s beaten long enough turns into butter, of course. But by incorporating one extra step in the process', '', 2, 'users/img/image/butter/butter2.jpg', NULL),
(6, NULL, 'Available', 'Biye bari borhani', 150, 180, 3, 'biye bari borhani. .... The rice was good bt the meat was not soft at all , according to me they used so much bones in this spin-orbit coupling known in the literature', '', 1, 'users/img/image//borhani/borhani3.jpg', NULL),
(7, NULL, 'Available ', 'Spice Borhani', 220, 180, 4, 'Borhani Borhani is a yogurt-like beverage that is very popular in parties ... It is mixed with several types of spices and herbs such as ground pepper, ground.', '', 1, 'users/img/image/borhani/borhani4\r\n.jpg', NULL),
(8, NULL, 'Upcomming', 'Spreadable Butter', 200, 170, 1, 'Don\'t let soft, fresh bread get roughed up by that bully, hard butter! And don\'t pay extra for whipped, spreadable or light butter.', '', 2, 'users/img/image/butter/butter3.jpg', NULL),
(9, NULL, 'Available', 'Salted Butter', 100, 80, 2, 'Does the type of butter you use in recipes actually matter? And is one healthier than the other? Find out the nutrition and best uses for salted ', '', 2, 'users/img/image/butter/butter4.jpg', NULL),
(10, NULL, 'Upcomming', 'Gouda.', 300, 290, 5, 'Gouda is a mild, yellow cheese, originating from the Netherlands, made from cow\'s milk. It is one of the most popular cheeses worldwide. ', '', 6, 'users/img/image/cheese/cheese1.jpg', NULL),
(11, NULL, 'Available', 'Edam', 70, 80, 4, 'Edam is a semi-hard cheese that originated in the Netherlands, and is named after the town of Edam in the province of North Holland.', '', 6, 'users/img/image/cheese/cheese2.jpg', NULL),
(12, NULL, 'Available', 'Monterey Jack', 100, 110, 9, 'Monterey Jack, sometimes shortened to Jack, is an American white, semi-hard cheese made using cow\'s milk. It is noted for its mild flavor and slight sweetness', '', 6, 'users/img/image/cheese/cheese4.jpg', NULL),
(13, NULL, 'Upcomming', 'Swiss', 50, 70, 2, 'Swiss cheese is a generic name in North America for several related varieties of cheese, mainly of North American manufacture, which resemble Emmental cheese', '', 6, 'users/img/image/cheese/cheese5.jpg', NULL),
(14, NULL, 'upcomming', 'Angora', 3000, 2700, 4, 'The Angora goat is a breed of domesticated goat, historically known as Angora. Angora goats produce the lustrous fibre known as Mohair', '', 7, 'users/img/image/goat/goat1.jpg', NULL),
(15, NULL, 'Available', 'Boer', 2600, 2000, 6, 'The Boer goat is a breed of goat that was developed in South Africa in the early 1900s and is a popular breed for meat production. Their name is derived from the Afrikaans word boer', '', 7, 'users/img/image/goat/goat2.jpg', NULL),
(16, NULL, 'Available', 'Nubian', 5000, 4000, 4, 'The Anglo-Nubian is a British breed of domestic goat. It originated in the nineteenth century from cross-breeding between native British goats', '', 7, 'users/img/image/goat/goat3.jpg', NULL),
(17, NULL, 'Available ', 'Saanen', 4000, 3500, 6, 'The Saanen, German: \'Saanenziege\', French: \'Chèvre de Gessenay\', is a Swiss breed of domestic goat. It takes its name from the Saanental', '', 7, 'users/img/image/goat/goat4.jpg', NULL),
(18, NULL, 'Available', 'Salty Lassi', 170, 160, 4, ' A Salty Lassi has a cooling effect on your body with unique digestive and health benefits. It\'s also a great alternative to the alcoholic beverages ', 'cumilla', 8, 'users/img/image/lassi/lassi1.jpg', NULL),
(19, NULL, 'Available', 'Sweet Lassi', 100, 80, 4, ' A mint lassi is simply mint and yogurt -- with a bit of sweetener and lime for kicks -- whirled into a smooth and refreshing drink', '', 8, 'users/img/image/lassi/lassi2.jpg', NULL),
(20, NULL, 'Available', 'Mango Lassi', 200, 180, 3, 'he popular Indian drink Mango Lassi is a delicious blend of mangoes and yogurt with a touch of cardamom! Use fresh mangoes for best', 'cumilla', 8, 'users/img/image/lassi/lassi3.jpg', NULL),
(21, NULL, 'Available', 'Banana lassi', 450, 200, 4, 'Cardamom Banana Lassi. Cardamom Flavoured Banana Yoghurt ... A different spin on the Indian lassi using ripe yellow bananas to flavour the yoghurt based', '', 8, 'users/img/image/lassi/lassi4.jpg', NULL),
(22, NULL, 'Available', 'Dent Corn', 150, 200, 3, 'Dent corn, also called field corn, is the most widely grown corn in the U.S.  It is used primarily for livestock feed, but it is also used in some food products.', '', 15, 'users/img/image/grains/corn/corn3.jpg\r\n', NULL),
(23, NULL, 'Avaliable', 'Popcorn', 200, 260, 4, 'Popcorn is a type of flint corn but has its own size, shape, starch level and moisture content.  It has a hard exterior shell and a soft starchy center.', 'cumilla', 15, 'users/img/image/grains/corn/corn5.jpg\r\n', NULL),
(24, NULL, 'Avaliable', 'Flint Corn', 300, 450, 7, 'Flint corn, also known as Indian corn, is similar to dent corn.  It has a hard outer shell and is distinguished by a wide range of colors.  ', '', 15, 'users/img/image/grains/corn/corn1.jpg\r\n', NULL),
(25, NULL, 'Avaliable', 'Sweet Corn', 600, 700, 2, 'Sweet corn, or “corn on the cob,” is almost all soft starch and will never pop.  It contains more sugar than other types of corn.  Unlike other corns that are picked', '', 15, 'users/img/image/grains/corn/corn6.jpg\r\n', NULL),
(26, NULL, 'Available', 'Boal', 400, 300, 10, 'Wallago attu is a freshwater catfish of the family Siluridae, native to South and Southeast Asia. It is commonly known as helicopter catfish or wallago catfish', '', 19, 'users/img/image/fishing/mitha panir mach/boal/boal5.jpg', 'users/img/image/fishing/boal/boal1.jpg'),
(28, NULL, 'Available', 'Chital', 200, 150, 20, 'Chital fish is a carnivorous fish. They are generally a fish eater of freshwater. They live in clean water of river, swamp etc. Chital fish is available in Bangladesh', '', 19, 'users/img/image/fishing/mitha panir mach/chital/chital1.jpg', 'users/img/image/fishing/mitha panir mach/chital/chital3.jpg'),
(29, NULL, 'Available', 'Katol', 250, 200, 30, 'Catla (Labeo catla), also known as the major South Asian carp, is an economically important South Asian freshwater fish in the carp family Cyprinidae', '', 19, 'users/img/image/fishing/mitha panir mach/katol/katol1.jpg', 'users/img/image/fishing/mitha panir mach/katol/katol2.jpg'),
(30, NULL, 'Available', 'Magur', 150, 100, 20, 'Clarias is a genus of catfishes (order Siluriformes) of the family Clariidae, the airbreathing catfishes. The name is derived from the Greek chlaros, which means lively, in reference to the ability of the fish to live for a long time', '', 19, 'users/img/image/fishing/mitha panir mach/magur/magur2.jpg', 'users/img/image/fishing/mitha panir mach/magur/magur2.jpg'),
(31, NULL, 'Available', 'Kali Baush', 150, 100, 15, 'One of the major species under the genus Labeo. The species name calbasu probably derived from the Bengali word Kalbosu, a vernacular Bengali name for the species, refers to black fish, locally known as kalibaush', '', 19, 'users/img/image/fishing/mitha panir mach/kali baush/kaliBaush2.jpg', 'users/img/image/fishing/mitha panir mach/kali baush/kaliBaush3.jpg'),
(32, NULL, 'Availble', 'Mrigal', 200, 150, 20, 'The mrigal carp (Cirrhinus cirrhosus), also known as the white carp, is a species of ray-finned fish in the carp family. Native to streams and rivers in Bangladesh.', '', 19, 'users/img/image/fishing/mitha panir mach/mrigal/mrigal2.jpg', 'users/img/image/fishing/mitha panir mach/mrigal/mrigal3.jpg'),
(33, NULL, 'Available', 'Rui', 200, 170, 20, 'The rohu, rui, or roho labeo (Labeo rohita) is a species of fish of the carp family, found in rivers in South Asia. It is a large omnivore and extensively used in aquaculture.', 'dhaka', 19, 'users/img/image/fishing/mitha panir mach/rui/rui2.png', 'users/img/image/fishing/mitha panir mach/rui/rui1.jpg'),
(34, NULL, 'Available', 'Shol', 200, 150, 20, 'Channa striata, the striped snakehead, is a species of snakehead fish. It is also known as the common snakehead, chevron snakehead, or snakehead murrel and generally referred simply as mudfish', '', 19, 'users/img/image/fishing/mitha panir mach/shol/shol2.jpg', 'users/img/image/fishing/mitha panir mach/shol/shol1.jpg'),
(35, NULL, 'Available', 'Ilish', 500, 400, 20, 'The ilish (Tenualosa ilisha) also known as the ilisha, hilsa, hilsa herring or hilsa shad, is a species of fish related to the herring, in the family Clupeidae', '', 20, 'users/img/image/fishing/nona panir mach/ilish/ilish3.jpg', 'users/img/image/fishing/nona panir mach/ilish/ilish1.jpg'),
(38, NULL, 'Available', 'Koral', 300, 250, 30, 'Koral is marine fish. It\'s very tasty. ... Chilled fish delivery (fish with ice) within 24 hours from fishing to your doorstep.', '', 20, 'users/img/image/fishing/nona panir mach/koral/koral1.jpg', 'users/img/image/fishing/nona panir mach/koral/koral2.jpg'),
(39, NULL, 'Available', 'Poa', 250, 200, 15, 'Fishermen catch a giant Jew fish (locally known as Poa) weighing 34.5 kg from the Saint Martin`s channel in Teknaf upazila.', '', 20, 'users/img/image/fishing/nona panir mach/poa/poa1.jpg', 'users/img/image/fishing/nona panir mach/poa/poa3.jpg'),
(40, NULL, 'Available', 'Rupchada', 150, 100, 40, 'Pomfret any of the members of the fish family Stromateidae, order Perciformes popularly known as Chanda fish', '', 20, 'users/img/image/fishing/nona panir mach/rupchada/rupchada1.jpg', 'users/img/image/fishing/nona panir mach/rupchada/rupchada2.jpg'),
(41, NULL, 'Available', 'Titas', 200, 150, 10, 'Titus varieties are highly productive, with advanced disease and insect resistance. Titus varieties are moderately tall, the leaves green, the buds hard. The tree does not fall off easily. The grain is tall,thick and hairy.', '', 16, 'users/img/image/grains/kaniwa/kaniwa1.jpg', 'users/img/image/grains/kaniwa/kaniwa1.jpg'),
(42, NULL, 'Available', 'bari kaniwa 2', 200, 100, 20, 'The breed was approved by the National Seed Board in the name of Bari Cowan-2 on September 27 on the basis of comparative evaluation with the indigenous and foreign varieties. The leaves are green, wide and long', '', 16, 'users/img/image/grains/kaniwa/kaniwa12.jpg', 'users/img/image/grains/kaniwa/kaniwa12.jpg'),
(43, NULL, 'Available', 'Bari Kaniwa 3', 200, 170, 15, 'This variety is small. The trees do not fall into the strong winds because they are curvaceous. The seeds are large, round and round in color. Thousands of seeds weigh 2.5 g. Yield is higher than local varieties.', '', 16, 'users/img/image/grains/kaniwa/kaniwa9.jpg', 'users/img/image/grains/kaniwa/kaniwa9.jpg'),
(44, NULL, 'Available', 'Masoor', 200, 170, 15, 'Masoor is a brown skinned lentil that is orange on the inside. Masoor dal has a pleasant earthy flavor. It is commonly used to make dal, soups and stews.', 'dhaka', 17, 'users/img/image/grains/pulse/pulse9.webp', 'users/img/image/grains/pulse/pulse9.webp'),
(45, NULL, 'Available', 'Mug', 250, 200, 20, 'Split mung beans (mung dal) is by far the most popular in Bangladesh.Roasted and lightly salted or spiced mung bean is a popular snack.', '', 17, 'users/img/image/grains/pulse/pulse10.jpeg', 'users/img/image/grains/pulse/pulse10.jpeg'),
(46, NULL, 'Available', 'Chola', 150, 100, 20, 'Chola is very nutritious. It is a significant source of amnesia. The amount of acid in the stool is almost equal to the amount of meat or fish ingested.', '', 17, 'users/img/image/grains/pulse/pulse7.jpg', 'users/img/image/grains/pulse/pulse7.jpg'),
(47, NULL, 'Available', 'Khesari', 300, 200, 20, 'The rest of the land is meant for khesari dal or grass-pea or chickling-pea (Lathyrus sativus), locally known as latari, also a rabi crop, grown in winter.', 'cumilla', 17, 'users/img/image/grains/pulse/pulse1.jpg', 'users/img/image/grains/pulse/pulse1.jpg'),
(48, NULL, 'Available', 'Bri Dhan 28', 40, 35, 100, 'This variety is also suitable for those areas where ripe paddy goes down in the water due to the advance. This rice root is good. Those who want to increase the fertility of the soil by cultivating green manure after cultivating boro rice can select this advance variety.', '', 18, '	users/img/image/grains/rice/rice1.jpg', 'users/img/image/grains/rice/rice1.jpg'),
(49, NULL, 'Available', 'Bri Dhan 47', 35, 30, 150, 'It is a saline tolerant variety, the leaves are wide, long and apical, the rice is moderately thick and has white spots on the stomach. Paddy is usually a sensitive crop of salinity. Because of this, sugarcane paddy cultivation is disrupted in the saline areas, especially during the boro season', '', 18, 'users/img/image/grains/rice/rice2.jpg', 'users/img/image/grains/rice/rice2.jpg'),
(50, NULL, 'Available', 'Hybrid 1', 40, 35, 20, 'Bri Hybrid Paddy Bri is a hybrid paddy cultivated in the boro season, its shoots and leaves are dense green and steep, rice is moderately thick and rice is bloated. The varieties have a life span of 5 days and average yield of 1.5 tonnes / ha.', '', 18, 'users/img/image/grains/rice/rice10.jpeg', 'users/img/image/grains/rice/rice10.jpeg'),
(51, 3, 'Available', 'Bri Dhan 16', 35, 30, 150, 'It is the Balam paddy of Boro season. Characteristic of this variety - Tree height 5-7 cm, tree trunk and leaf is palm and green, Cushioning medium, rice long, sleek and white, rice is neat and tasty, rice has protein content of 0.5%.', '', 18, 'users/img/image/grains/rice/rice16.jpg', 'users/img/image/grains/rice/rice16.jpg'),
(52, 3, 'Available', 'Red Rose', 60, 50, 50, 'red rose is an rose which is a gooood rose', 'feni', 24, 'users/img/image/products/Capture.PNG', NULL),
(53, 3, 'Available', 'Sun Flower', 60, 50, 50, 'Sunflower is a beautiful flower. It is yellow. It is also used for oils.', 'Dhaka', 22, 'users/img/image/products/nice-flowers-51286.jpg', NULL),
(54, 6, 'Available', 'Bari Sorisa', 800, 600, 50, 'Its a very good sorisa', 'feni', 34, 'users/img/image/products/oil.jpg', NULL),
(55, 10, 'Available', 'Red Apple', 150, 100, 50, 'Red apple is a really sweet apple.', 'bissawroad,cumilla', 25, 'users/img/image/products/apple1.jpg', NULL),
(56, 12, 'Available', 'solt borhani', 130, 120, 3, 'testy', 'Nikunjo 2,Road-1,Tanpara kachabazar, Dhaka', 1, 'users/img/image/products/butter4.jpg', NULL),
(57, 13, 'Available', 'Sweet Butter', 130, 120, 10, 'testy', 'Nikunjo 2,Road-1,Tanpara kachabazar, Dhaka', 2, 'users/img/image/products/butter1.jpg', NULL),
(58, 14, 'Available', 'sweetbutter', 123, 120, 10, 'tesst', 'cumilla', 2, 'users/img/image/products/butter2.jpg', NULL),
(59, 16, 'Available', 'Solt butter', 130, 110, 11, 'tesst food', 'cumilla', 2, 'users/img/image/products/butter2.jpg', NULL),
(60, 18, 'Available', 'solt borhani', 130, 120, 8, 'testy', 'cumilla', 2, 'users/img/image/products/butter4.jpg', NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `productsubcat`
-- (See below for the actual view)
--
CREATE TABLE `productsubcat` (
`id` int(11)
,`seller_id` int(11)
,`status` varchar(100)
,`name` varchar(50)
,`selling_price` int(11)
,`buying_price` int(11)
,`quantity` int(11)
,`description` varchar(500)
,`location` varchar(50)
,`subcategory_id` int(11)
,`img_path` varchar(100)
,`img_path2` varchar(100)
,`subcat_name` varchar(50)
,`category_id` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `productsubcatandcat`
-- (See below for the actual view)
--
CREATE TABLE `productsubcatandcat` (
`id` int(11)
,`seller_id` int(11)
,`status` varchar(100)
,`name` varchar(50)
,`selling_price` int(11)
,`buying_price` int(11)
,`quantity` int(11)
,`description` varchar(500)
,`location` varchar(50)
,`subcategory_id` int(11)
,`img_path` varchar(100)
,`img_path2` varchar(100)
,`subcat_name` varchar(50)
,`category_id` int(11)
,`catgory_name` varchar(50)
);

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `date_time` text NOT NULL,
  `rate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `product_id`, `customer_id`, `date_time`, `rate`) VALUES
(1, 8, 2, '2019-12-09 00:00:00', 7),
(2, 10, 7, '2019-12-02 00:00:00', 7);

-- --------------------------------------------------------

--
-- Table structure for table `seller`
--

CREATE TABLE `seller` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` int(11) NOT NULL,
  `login_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seller`
--

INSERT INTO `seller` (`id`, `name`, `email`, `address`, `phone`, `login_id`) VALUES
(1, 'abul', 'abul@gmail.ciom', 'cumilla', 12736485, 3),
(2, 'motin', 'motin@gmail.com', 'cumilla', 157343, 6),
(4, 'Ifrat', 'ifratbinte@gmail.com', 'Cumilla', 1831305640, 4),
(5, 'oyon', 'oyon@gmail.com', 'cumilla', 184656987, 10),
(6, 'ifratbinte', 'ifratbinte@gmail.com', 'Cumilla', 1831305640, 12),
(7, 'Ifratbinte', 'ifratbinte@gmail.com', 'Cumilla', 1831305640, 13),
(8, 'Ifratbinte', 'ifratbinte@gmail.com', 'Cumilla', 1831305640, 14),
(9, 'kazi12', 'ifratbinte@gmail.com', 'Cumilla', 1831305640, 16),
(10, 'kazi123', 'ifratbinte@gmail.com', 'Cumilla', 1831305640, 18);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(500) NOT NULL,
  `category_id` int(11) NOT NULL,
  `img_path` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `name`, `description`, `category_id`, `img_path`) VALUES
(2, 'Butter', 'Ancient Bengali diets included rice, fish, honey, dairy and vegetables. The region was an administrative and commercial bastion in South Asia during early Hindu and Buddhist kingdoms and later Muslim sultanates.', 1, 'users/img/image/butter.jpg'),
(4, 'Goat Milk', 'goat\'s milk stacks up favorably against cow\'s milk, particularly when it comes to protein (9 grams [g] versus 8 g) and calcium ', 1, 'users/img/image/goat-milk/goatMilk1.jpg'),
(6, 'Chees', 'Cheese is a dairy product derived from milk that is produced in a wide range of flavors, textures, and forms by coagulation of the milk protein casein. It comprises proteins and fat from milk, usually the milk of cows', 1, 'users/img/image/chese.jpg'),
(7, 'Cow Milk', 'Milk is a nutrient-rich, white liquid food produced by the mammary glands of mammals. It is the primary source of nutrition for infant mammals before they are able to digest other types of food.', 1, 'users/img/image/cow-milk/milk1.jpg'),
(8, 'Lacci', 'Lassi is a popular traditional dahi-based drink that originated in the Indian subcontinent. Lassi is a blend of yoghurt, water, spices and sometimes fruit. Namkeen lassi is similar to doogh, while sweet and mango lassis are like milkshakes.', 1, 'users/img/image/yogurt.jpg'),
(9, 'Paneer', 'Paneer is a fresh cheese common in the Indian subcontinent. It is an unaged, non-melting soft cheese made by curdling milk with a fruit- or vegetable-derived acid, such as lemon juice.Its acid-set form is called chhena. Paneer is a fresh cheese common in the Indian subcontinent.', 1, 'users/img/image/paneer.jpg'),
(10, 'Yogurt ', 'Yogurt, also spelled yoghurt, yogourt or yoghourt, is a food produced by bacterial fermentation of milk. The bacteria used to make yogurt are known as yogurt cultures.Per cent Daily Values are based on a 2,000 calorie diet. ', 1, 'users/img/image/lassi.jpg'),
(15, 'Corn', 'Maize, also known as corn, is a cereal grain first domesticated by indigenous peoples in southern Mexico about 10,000 years ago.', 2, 'users/img/image/grains/corn/corn1.jpg\r\n'),
(16, 'kaniwa', 'Chenopodium pallidicaule, known as cañihua, canihua or cañahua and also kaniwa, is a species of goosefoot, similar in character', 2, 'users/img/image/grains/kaniwa/kaniwa1.jpg'),
(17, 'Pulse', 'a pulse represents the tactile arterial palpation of the heartbeat by trained fingertips. The pulse may be palpated in any place ', 2, 'users/img/image/grains/pulse/pulse2.jpg'),
(18, 'Rice', 'Rice is the seed of the grass species Oryza sativa or Oryza glaberrima. As a cereal grain, it is the most widely consumed staple food', 2, 'users/img/image/grains/rice/rice1.jpg\r\n'),
(19, 'Mitha Fish', 'Fish are gill-bearing aquatic craniate animals that lack limbs with digits. They form a sister group to the tunicates, together forming the olfactores', 3, 'users/img/image/fishing/mithaFish.jpg\r\n'),
(20, 'Nona Fish', 'Nona Fish is on Facebook. Join Facebook to connect with Nona Fish and others you may know. Facebook gives people the power to share and makes the world', 3, 'users/img/image/fishing/nonaFish.jpg\r\n'),
(21, 'Chandramallika', 'Find chandra mallika stock images in HD and millions of other royalty-free stock photos, illustrations and vectors in the Shutterstock collection', 4, 'users/img/image/flowering/chandramallika/chandramallika1.jpg'),
(22, 'Dahlia', 'Dahlia is a genus of bushy, tuberous, herbaceous perennial plants native to Mexico and Central America. A member of the Asteraceae family of dicotyledonous plants', 4, 'users/img/image/flowering/daliya/daliya1.jpg'),
(23, 'Rajonigandha', 'This bulb produces tall flower spikes with numerous tubular blooms and a fragrance that is rich, sultry and seductive.', 4, 'users/img/image/flowering/rajnigandha.jpeg'),
(24, 'Rose', 'rose is a woody perennial flowering plant of the genus Rosa, in the family Rosaceae, or the flower it bears', 4, 'users/img/image/flowering/redRose.jpg'),
(25, 'Apple', 'An apple is a sweet, edible fruit produced by an apple tree (Malus domestica). Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus', 6, 'users/img/image/fruit/apple/apple1.webp'),
(26, 'Grape', 'A grape is a fruit of the deciduous woody vines of the flowering plant genus Vitis. Grapes can be eaten fresh as table grapes or they can be used for making wine, jam, grape juice', 6, 'users/img/image/fruit/grape/grape3.jpg'),
(27, 'Mango', 'A mango is a juicy stone fruit (drupe) produced from numerous species of tropical trees belonging to the flowering plant genus Mangifera, cultivated mostly for their edible fruit.', 6, 'users/img/image/fruit/mango/mango9.jpeg'),
(28, 'Orange', 'An orange is a type of citrus fruit that people often eat. Oranges are a very good source of vitamin . ... Oranges are round orange-coloured fruit that grow on a tree.', 6, 'users/img/image/fruit/orange/orange2.webp'),
(29, 'Lichi', 'Lychee,or lichi it is also spelled litchi or lichi, evergreen tree of the soapberry family (Sapindaceae), grown for its edible fruit. ... The fruit is usually eaten fresh but can also be canned or dried. It is testy fruit.', 6, 'users/img/image/fruit/lichi/lichi12.jpg'),
(30, 'Jackfruit', 'Jackfruit is a tropical fruit, botanically known as Artocarpus heterophyllus. Jackfruit is a member of the mulberry family, and is the largest tree fruit in the world. Jackfruit is known for its dinosaur-egg.', 6, 'users/img/image/fruit/jackfruit/jackfruit8.jpg'),
(31, 'Plum', 'A plum is a sweet fruit that grows on a plum tree. The scientific name for the tree is Prunus domestica. When the fruit is dried, it is called a prune. The color \"plum\" takes its name from the fruit.', 6, 'users/img/image/fruit/plum/plum7.jpg'),
(32, 'Narikel', 'The fatty acids in coconut oil can encourage the body to burn fat, and they provide quick energy to the body and brain. They also raise HDL (good) cholesterol in the blood, which may help to reduce heart disease risk.', 5, ''),
(33, 'Soyabin', '\r\nSoybean oil is a vegetable oil extracted from the seeds of the soybean (Glycine max). It is one of the most widely consumed cooking oils. As a drying oil, processed soybean oil is also used as a base for printing inks and oil paints.', 5, ''),
(34, 'Sorisa', 'The term mustard oil is used for two different oils that are made from mustard seeds: A fatty vegetable oil resulting from pressing the seeds, An essential oil resulting from grinding the seeds, mixing them with water.', 5, ''),
(35, 'Cinabadam', 'Peanut oil, also known as groundnut oil or arachis oil, is a vegetable oil derived from peanuts. The oil has a strong peanut flavor and aroma. It is often used in South Asian and Southeast Asian cuisine.', 5, ''),
(36, 'shahad', 'anda', 4, 'hhhhh');

-- --------------------------------------------------------

--
-- Table structure for table `transection`
--

CREATE TABLE `transection` (
  `id` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `date_time` datetime NOT NULL DEFAULT current_timestamp(),
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transection`
--

INSERT INTO `transection` (`id`, `total_price`, `date_time`, `customer_id`) VALUES
(1, 120, '0000-00-00 00:00:00', 5),
(5, 7100, '2020-03-01 14:15:44', 3),
(6, 7100, '2020-03-01 14:16:27', 3),
(11, 17100, '2020-03-01 14:35:09', 3),
(12, 17100, '2020-03-01 14:39:56', 3),
(13, 5220, '2020-03-02 00:47:04', 6),
(14, 220, '2020-03-02 15:10:35', 3),
(15, 5010, '2020-03-02 19:20:47', 3),
(16, 150, '2020-03-02 19:22:11', 3),
(17, 150, '2020-03-02 19:22:17', 3),
(18, 150, '2020-03-02 19:42:41', 6),
(21, 400, '2020-03-03 23:45:36', 10),
(23, 1640, '2020-03-03 23:49:22', 10),
(24, 150, '2020-03-04 09:06:25', 12),
(25, 150, '2020-03-04 09:06:38', 12),
(26, 150, '2020-03-04 09:06:58', 12),
(27, 400, '2020-03-04 09:24:00', 13),
(28, 400, '2020-03-04 09:33:59', 14),
(29, 200, '2020-03-04 09:39:41', 15),
(30, 150, '2020-03-04 11:01:41', 16),
(31, 200, '2020-03-04 11:07:48', 18);

-- --------------------------------------------------------

--
-- Structure for view `cartlist`
--
DROP TABLE IF EXISTS `cartlist`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cartlist`  AS  select `p`.`id` AS `id`,`p`.`seller_id` AS `seller_id`,`p`.`status` AS `status`,`p`.`name` AS `name`,`p`.`selling_price` AS `selling_price`,`p`.`buying_price` AS `buying_price`,`p`.`quantity` AS `quantity`,`p`.`description` AS `description`,`p`.`location` AS `location`,`p`.`subcategory_id` AS `subcategory_id`,`p`.`img_path` AS `img_path`,`p`.`img_path2` AS `img_path2`,`c`.`id` AS `cart_id`,`c`.`customer_id` AS `customer_id`,`c`.`quantity` AS `cart_quantity`,`c`.`date_time` AS `cart_datetime` from (`cart` `c` join `product` `p`) where `c`.`product_id` = `p`.`id` ;

-- --------------------------------------------------------

--
-- Structure for view `cartproduct`
--
DROP TABLE IF EXISTS `cartproduct`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cartproduct`  AS  select `c`.`id` AS `id`,`c`.`customer_id` AS `customer_id`,`c`.`product_id` AS `product_id`,`c`.`quantity` AS `quantity`,`c`.`date_time` AS `date_time`,`p`.`name` AS `name`,`p`.`selling_price` AS `selling_price`,`p`.`seller_id` AS `seller_id`,`p`.`img_path` AS `img_path` from (`cart` `c` join `product` `p`) where `c`.`product_id` = `p`.`id` ;

-- --------------------------------------------------------

--
-- Structure for view `customerlogin`
--
DROP TABLE IF EXISTS `customerlogin`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `customerlogin`  AS  select `c`.`id` AS `id`,`c`.`name` AS `name`,`c`.`email` AS `email`,`c`.`address` AS `address`,`c`.`phone` AS `phone`,`c`.`img_path` AS `img_path`,`c`.`login_id` AS `login_id`,`l`.`userName` AS `userName`,`l`.`password` AS `password` from (`customer` `c` join `login` `l`) where `c`.`login_id` = `l`.`id` ;

-- --------------------------------------------------------

--
-- Structure for view `invoiceproduct`
--
DROP TABLE IF EXISTS `invoiceproduct`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `invoiceproduct`  AS  select `i`.`id` AS `id`,`i`.`product_id` AS `product_id`,`i`.`price` AS `price`,`i`.`quantity` AS `quantity`,`i`.`total_price` AS `total_price`,`i`.`status` AS `status`,`i`.`transection_id` AS `transection_id`,`p`.`name` AS `name` from (`product` `p` join `invoice` `i`) where `i`.`product_id` = `p`.`id` ;

-- --------------------------------------------------------

--
-- Structure for view `invoicetransectionproduct`
--
DROP TABLE IF EXISTS `invoicetransectionproduct`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `invoicetransectionproduct`  AS  select `i`.`id` AS `id`,`i`.`product_id` AS `product_id`,`i`.`price` AS `price`,`i`.`quantity` AS `quantity`,`i`.`total_price` AS `total_price`,`i`.`status` AS `status`,`i`.`transection_id` AS `transection_id`,`i`.`name` AS `name`,`t`.`customer_id` AS `customer_id` from (`invoiceproduct` `i` join `transection` `t`) where `i`.`transection_id` = `t`.`id` ;

-- --------------------------------------------------------

--
-- Structure for view `productsubcat`
--
DROP TABLE IF EXISTS `productsubcat`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `productsubcat`  AS  select `p`.`id` AS `id`,`p`.`seller_id` AS `seller_id`,`p`.`status` AS `status`,`p`.`name` AS `name`,`p`.`selling_price` AS `selling_price`,`p`.`buying_price` AS `buying_price`,`p`.`quantity` AS `quantity`,`p`.`description` AS `description`,`p`.`location` AS `location`,`p`.`subcategory_id` AS `subcategory_id`,`p`.`img_path` AS `img_path`,`p`.`img_path2` AS `img_path2`,`s`.`name` AS `subcat_name`,`s`.`category_id` AS `category_id` from (`product` `p` join `subcategory` `s`) where `p`.`subcategory_id` = `s`.`id` ;

-- --------------------------------------------------------

--
-- Structure for view `productsubcatandcat`
--
DROP TABLE IF EXISTS `productsubcatandcat`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `productsubcatandcat`  AS  select `p`.`id` AS `id`,`p`.`seller_id` AS `seller_id`,`p`.`status` AS `status`,`p`.`name` AS `name`,`p`.`selling_price` AS `selling_price`,`p`.`buying_price` AS `buying_price`,`p`.`quantity` AS `quantity`,`p`.`description` AS `description`,`p`.`location` AS `location`,`p`.`subcategory_id` AS `subcategory_id`,`p`.`img_path` AS `img_path`,`p`.`img_path2` AS `img_path2`,`p`.`subcat_name` AS `subcat_name`,`p`.`category_id` AS `category_id`,`c`.`name` AS `catgory_name` from (`productsubcat` `p` join `category` `c`) where `p`.`category_id` = `c`.`id` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agri_category`
--
ALTER TABLE `agri_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agri_product`
--
ALTER TABLE `agri_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agri_subcategory`
--
ALTER TABLE `agri_subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guest_user`
--
ALTER TABLE `guest_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seller`
--
ALTER TABLE `seller`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transection`
--
ALTER TABLE `transection`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `agri_category`
--
ALTER TABLE `agri_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `agri_product`
--
ALTER TABLE `agri_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `agri_subcategory`
--
ALTER TABLE `agri_subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `guest_user`
--
ALTER TABLE `guest_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `seller`
--
ALTER TABLE `seller`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `transection`
--
ALTER TABLE `transection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
