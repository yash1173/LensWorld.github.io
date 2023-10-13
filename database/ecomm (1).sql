-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 01, 2023 at 07:47 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomm`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(6, 'Contact Lenses', ''),
(7, 'Eye Glasses', ''),
(8, 'Sun Glasses', ''),
(9, 'Computer Glasses', '');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(14, 9, 11, 2),
(15, 9, 13, 5),
(16, 9, 3, 2),
(17, 9, 1, 3),
(18, 10, 13, 3),
(19, 10, 2, 4),
(20, 10, 19, 5);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(30, 6, 'Aquacolor Midnight Black', '<p><strong>Model Name:-&nbsp; Aquacolor Midnight Black Zero Power Daily</strong></p>\r\n\r\n<p><strong>Base Curve:-&nbsp; &nbsp;8.6 mm</strong></p>\r\n\r\n<p><strong>Diameter:-&nbsp; &nbsp;14.3 mm</strong></p>\r\n\r\n<p><strong>Lens Material:-&nbsp; &nbsp;Polyhema B</strong></p>\r\n\r\n<p><strong>Usage Duration:-&nbsp; 10H</strong></p>\r\n', 'aquacolor-midnight-black', 499, 'aquacolor-midnight-black.jpg', '2023-09-30', 2),
(31, 6, 'aquacolor icy blue', '<p><strong>Model Name&nbsp;:-Aquacolor Icy Blue Zero Power Daily</strong></p>\r\n\r\n<p><strong>Lens colour:- Ice Blue</strong></p>\r\n\r\n<p><strong>Base Curve :-8.6 mm</strong></p>\r\n\r\n<p><strong>Diameter :-14.3 mm</strong></p>\r\n\r\n<p><strong>Usage Duration :- 10H</strong></p>\r\n', 'aquacolor-icy-blue', 499, 'aquacolor-icy-blue.jpg', '2023-09-30', 6),
(32, 6, 'Aquacolor Naughty Brown', '<p><strong>Model No:- Aquacolor Naughty Brown</strong></p>\r\n\r\n<p><strong>Lens colour:- Brown</strong></p>\r\n\r\n<p><strong>Base Curve:- 8.6 mm</strong></p>\r\n\r\n<p><strong>Diameter :- 14.3 mm<br />\r\n<br />\r\nDuration:- 10H</strong></p>\r\n', 'aquacolor-naughty-brown', 499, 'aquacolor-naughty-brown.jpg', '2023-09-30', 2),
(33, 6, 'Aquacolor Ocean Blue', '<p><strong>Model Name:- Aquacolor Ocean Blue</strong></p>\r\n\r\n<p><strong>Lens colour:- Blue</strong></p>\r\n\r\n<p><strong>Base Curve:- 8.6 mm</strong></p>\r\n\r\n<p><strong>Diameter :- 14.3 mm</strong></p>\r\n\r\n<p><strong>Duration:- 10H</strong></p>\r\n', 'aquacolor-ocean-blue', 499, 'aquacolor-ocean-blue.jpg', '2023-09-25', 5),
(34, 6, 'Aquacolor Tricky Turquoise', '<p><strong>Model Name:- Aquacolor Tricky Turquoise</strong></p>\r\n\r\n<p><strong>Lens colour:- Turquoise</strong></p>\r\n\r\n<p><strong>Base Curve:- 8.6 mm</strong></p>\r\n\r\n<p><strong>Diameter :- 14.3 mm</strong></p>\r\n\r\n<p><strong>Duration:- 10H</strong></p>\r\n', 'aquacolor-tricky-turquoise', 499, 'aquacolor-tricky-turquoise.jpg', '2023-09-30', 3),
(35, 7, 'Black and Transparent Square Eye Glasses', '<p>Model Name:-Black and Transparent&nbsp;Eye Glasses</p>\r\n\r\n<p>Frame colour:- Black</p>\r\n\r\n<p>Frame Size:- Medium</p>\r\n\r\n<p>Frame Type:- Full Rim</p>\r\n\r\n<p>Frame Shape:- Square</p>\r\n', 'black-and-transparent-square-eye-glasses', 799, 'black-and-transparent-square-eye-glasses.jpg', '2023-09-30', 2),
(36, 7, 'Black Brown Eye Glasses', '<p><strong>Model Name:-Black Brown Eye Glasses</strong></p>\r\n\r\n<p><strong>Frame colour:- Black Brown</strong></p>\r\n\r\n<p><strong>Frame Size:- Medium</strong></p>\r\n\r\n<p><strong>Frame Type:- Half&nbsp;Rim</strong></p>\r\n\r\n<p><strong>Frame Shape:- Square</strong></p>\r\n', 'black-brown-eye-glasses', 699, 'black-brown-half-rim-square.jpg', '0000-00-00', 0),
(37, 7, 'black frame mens glasses', '<p><strong>Model Name:- Black&nbsp;Eye Glasses</strong></p>\r\n\r\n<p><strong>Frame colour:- Black&nbsp;</strong></p>\r\n\r\n<p><strong>Frame Size:- Medium</strong></p>\r\n\r\n<p><strong>Frame Type:- Full&nbsp;Rim</strong></p>\r\n\r\n<p><strong>Frame Shape:- Square</strong></p>\r\n', 'black-frame-mens-glasses', 699, 'black-frame-mens-glasses.jpg', '0000-00-00', 0),
(38, 7, 'Black Gold Eye Glasses', '<p><strong>Model Name:-Black Gold Eye Glasses</strong></p>\r\n\r\n<p><strong>Frame colour:- Black &amp; Gold</strong></p>\r\n\r\n<p><strong>Frame Size:- Medium</strong></p>\r\n\r\n<p><strong>Frame Type:- Half&nbsp;Rim</strong></p>\r\n\r\n<p><strong>Frame Shape:- Square</strong></p>\r\n', 'black-gold-eye-glasses', 799, 'black-gold-eye-glasses.jpg', '0000-00-00', 0),
(39, 7, 'Black Rimless', '<p><strong>Model Name:- Black Eye Glasses</strong></p>\r\n\r\n<p><strong>Frame colour:- Black&nbsp;</strong></p>\r\n\r\n<p><strong>Frame Size:- Medium</strong></p>\r\n\r\n<p><strong>Frame Type:- Rimless</strong></p>\r\n\r\n<p><strong>Frame Shape:- Rectangle</strong></p>\r\n', 'black-rimless', 899, 'black-rimless.jpg', '0000-00-00', 0),
(40, 8, 'Pink Round SunGlasses', '<p><strong>Product Type:- SunGlasses</strong></p>\r\n\r\n<p><strong>Glass colour:- Pink</strong></p>\r\n\r\n<p><strong>Frame Size:- Medium</strong></p>\r\n\r\n<p><strong>Frame Shape:- Round</strong></p>\r\n', 'pink-round-sunglasses', 499, 'pink-round-sunglasses.jpg', '0000-00-00', 0),
(41, 8, 'Butterfly Shaped SunGlasses', '<p><strong>Product Type:- SunGlasses</strong></p>\r\n\r\n<p><strong>Glass colour:- Black</strong></p>\r\n\r\n<p><strong>Frame Size:- Medium</strong></p>\r\n\r\n<p><strong>Frame Shape:- ButterFly Shape</strong></p>\r\n', 'butterfly-shaped-sunglasses', 899, 'butterfly-shaped-sunglasses.jpg', '0000-00-00', 0),
(42, 8, 'Royal Son Cat Eye', '<p>Product Type:- SunGlasses</p>\r\n\r\n<p>Glass colour:- Brownish</p>\r\n\r\n<p>Frame Size:- Medium</p>\r\n\r\n<p>Frame Shape:- Cat Eye</p>\r\n', 'royal-son-cat-eye', 999, 'royal-son-cat-eye.jpg', '0000-00-00', 0),
(43, 8, 'GUCCI GG SunGlasses', '<p><strong>Product Type:- SunGlasses</strong></p>\r\n\r\n<p><strong>Glass colour:- Brown</strong></p>\r\n\r\n<p><strong>Frame Size:- Medium</strong></p>\r\n\r\n<p><strong>Frame Shape:- Square</strong></p>\r\n', 'gucci-gg-sunglasses', 1599, 'gucci-gg-sunglasses.jpg', '0000-00-00', 0),
(44, 8, 'Leopard Candy Fashion ', '<p>Product Type:- SunGlasses</p>\r\n\r\n<p>Frame colour:- Yellow Black</p>\r\n\r\n<p>Frame Size:- Wide</p>\r\n\r\n<p>Frame Shape:-&nbsp; Cat Eye</p>\r\n', 'leopard-candy-fashion', 1299, 'leopard-candy-fashion.jpg', '0000-00-00', 0),
(45, 6, 'Aquacolor Walnut-Brown', ' ', 'aquacolor-walnut-brown', 499, 'aquacolor-walnut-brown.jpeg', '0000-00-00', 0),
(46, 6, 'aquacolor-venus-grey', ' ', 'aquacolor-venus-grey', 499, 'aquacolor-venus-grey.jpeg', '0000-00-00', 0),
(47, 6, 'aquacolor-submarine-blue', ' ', 'aquacolor-submarine-blue', 499, 'aquacolor-submarine-blue.jpg', '0000-00-00', 0),
(48, 6, 'aquacolor-stormy-gray', ' ', 'aquacolor-stormy-gray', 499, 'aquacolor-stormy-gray.jpg', '0000-00-00', 0),
(49, 6, 'aquacolor-steel-blue', ' ', 'aquacolor-steel-blue', 499, 'aquacolor-steel-blue.jpg', '0000-00-00', 0),
(50, 6, 'aquacolor-spicy-grey', ' ', 'aquacolor-spicy-grey', 499, 'aquacolor-spicy-grey.jpg', '0000-00-00', 0),
(51, 6, 'aquacolor-smoke-grey', ' ', 'aquacolor-smoke-grey', 499, 'aquacolor-smoke-grey.jpg', '0000-00-00', 0),
(52, 6, 'aquacolor-sapphire-blue', ' ', 'aquacolor-sapphire-blue', 499, 'aquacolor-sapphire-blue.jpg', '0000-00-00', 0),
(53, 6, 'aquacolor-peacock-green', ' ', 'aquacolor-peacock-green', 499, 'aquacolor-peacock-green.jpg', '0000-00-00', 0),
(54, 6, 'aquacolor-misty-white', ' ', 'aquacolor-misty-white', 499, 'aquacolor-misty-white.jpg', '0000-00-00', 0),
(55, 6, 'aquacolor-happy-honey', ' ', 'aquacolor-happy-honey', 499, 'aquacolor-happy-honey.jpg', '0000-00-00', 0),
(56, 6, 'aquacolor-fierce-green', ' ', 'aquacolor-fierce-green', 499, 'aquacolor-fierce-green.jpg', '0000-00-00', 0),
(57, 6, 'aquacolor-envy-green', ' ', 'aquacolor-envy-green', 499, 'aquacolor-envy-green.jpg', '0000-00-00', 0),
(58, 6, 'aquacolor-delicate-green', ' ', 'aquacolor-delicate-green', 499, 'aquacolor-delicate-green.jpg', '0000-00-00', 0),
(59, 6, 'aquacolor-coco-brown', ' ', 'aquacolor-coco-brown', 499, 'aquacolor-coco-brown.jpg', '0000-00-00', 0),
(60, 6, 'aquacolor-caramel-brown', ' ', 'aquacolor-caramel-brown', 499, 'aquacolor-caramel-brown.jpg', '0000-00-00', 0),
(61, 7, 'vintage half rom frame', ' ', 'vintage-half-rom-frame', 699, 'vintage-half-rom-frame.jpg', '0000-00-00', 0),
(62, 7, 'titanium gunmetal rimless', ' ', 'titanium-gunmetal-rimless', 699, 'titanium-gunmetal-rimless.jpg', '0000-00-00', 0),
(63, 7, 'square shape metal frame', ' ', 'square-shape-metal-frame', 699, 'square-shape-metal-frame.jpg', '0000-00-00', 0),
(64, 7, 'spectacle frame', ' ', 'spectacle-frame', 699, 'spectacle-frame.jpg', '0000-00-00', 0),
(65, 7, 'White specs', ' ', 'white-specs', 699, 'white-specs.jpg', '0000-00-00', 0),
(66, 7, 'purple half rim rectangle', ' ', 'purple-half-rim-rectangle', 699, 'purple-half-rim-rectangle.jpg', '0000-00-00', 0),
(67, 7, 'matte grey and green square', ' ', 'matte-grey-and-green-square', 699, 'matte-grey-and-green-square.jpg', '0000-00-00', 0),
(68, 7, 'green square', ' ', 'green-square', 699, 'green-square.jpg', '0000-00-00', 0),
(69, 7, 'gold rimless rectangle', ' ', 'gold-rimless-rectangle', 699, 'gold-rimless-rectangle.jpg', '0000-00-00', 0),
(70, 7, 'full rim square', ' ', 'full-rim-square', 699, 'full-rim-square.jpg', '0000-00-00', 0),
(71, 7, 'men round frame', ' ', 'men-round-frame', 699, 'men-round-frame.jpg', '0000-00-00', 0),
(72, 7, 'hexagon shapr', ' ', 'hexagon-shapr', 699, 'hexagon-shapr.jpg', '0000-00-00', 0),
(73, 7, 'square oversized bold thick frame', ' ', 'square-oversized-bold-thick-frame', 799, 'square-oversized-bold-thick-frame.jpg', '0000-00-00', 0),
(74, 8, 'vintage square uv protected', ' ', 'vintage-square-uv-protected', 899, 'vintage-square-uv-protected.jpg', '0000-00-00', 0),
(75, 8, 'vintage square 70s claasic retro style frame', ' ', 'vintage-square-70s-claasic-retro-style-frame', 899, 'vintage-square-70s-claasic-retro-style-frame.jpg', '0000-00-00', 0),
(76, 8, 'vintage double bridge retro polarized', ' ', 'vintage-double-bridge-retro-polarized', 999, 'vintage-double-bridge-retro-polarized.jpg', '0000-00-00', 0),
(77, 8, 'uv protected', ' ', 'uv-protected', 999, 'uv-protected.jpg', '0000-00-00', 0),
(78, 8, 'uv protected blue lens', ' ', 'uv-protected-blue-lens', 999, 'uv-protected-blue-lens.jpg', '0000-00-00', 0),
(79, 8, 'ultra rose gold frame with rose gold lenses retro style', ' ', 'ultra-rose-gold-frame-rose-gold-lenses-retro-style', 799, 'ultra-rose-gold-frame-rose-gold-lenses-retro-style.jpg', '0000-00-00', 0),
(80, 8, 'polarized mens', ' ', 'polarized-mens', 799, 'polarized-mens.jpg', '0000-00-00', 0),
(81, 8, 'polygon tint lenses lightweight metal frame', ' ', 'polygon-tint-lenses-lightweight-metal-frame', 799, 'polygon-tint-lenses-lightweight-metal-frame.jpg', '0000-00-00', 0),
(82, 8, 'small polygon mens sg delicate metal frame', ' ', 'small-polygon-mens-sg-delicate-metal-frame', 799, 'small-polygon-mens-sg-delicate-metal-frame.jpg', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`) VALUES
(9, 9, 'PAY-1RT494832H294925RLLZ7TZA', '2018-05-10'),
(10, 9, 'PAY-21700797GV667562HLLZ7ZVY', '2018-05-10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'admin@admin.com', '$2y$10$0SHFfoWzz8WZpdu9Qw//E.tWamILbiNCX7bqhy3od0gvK5.kSJ8N2', 1, 'Admin', ' ', '', '', 'thanos1.jpg', 1, '', '', '2023-08-31'),
(9, 'harry@den.com', '$2y$10$Oongyx.Rv0Y/vbHGOxywl.qf18bXFiZOcEaI4ZpRRLzFNGKAhObSC', 0, 'Harry', 'Den', 'Silay City, Negros Occidental', '09092735719', 'male2.png', 1, 'k8FBpynQfqsv', 'wzPGkX5IODlTYHg', '2023-09-08'),
(12, 'christine@gmail.com', '$2y$10$ozW4c8r313YiBsf7HD7m6egZwpvoE983IHfZsPRxrO1hWXfPRpxHO', 0, 'Christine', 'becker', 'demo', '7542214500', 'female3.jpg', 1, '', '', '2023-10-03'),
(76, 'yashbhalerao3@gmail.com', '$2y$10$0SHFfoWzz8WZpdu9Qw//E.tWamILbiNCX7bqhy3od0gvK5.kSJ8N2', 1, 'Yash', 'Bhalerao', 'Pune', '9112708084', '', 0, '', '', '0000-00-00'),
(77, 'xyz@gmail.com', '$2y$10$Q1fJZQq.4NUXFakWCnght.Z4N2KyB3e5jDXG7wP8eJfDm0sPB2pCq', 0, 'Bot', ' ', '', '', 'dani.jpg', 1, 'gDWCrYAFjtO5', '', '2023-09-30');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
