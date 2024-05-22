-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2024 at 08:21 PM
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
-- Database: `product`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `brand` varchar(255) NOT NULL,
  `price` int(100) NOT NULL,
  `product_img` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `total_sum` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `total_sum` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `name`, `address`, `payment_method`, `total_amount`, `order_date`, `total_sum`) VALUES
(5, 'john smith', 'zayed', 'cash', 1348.00, '2024-05-21 23:01:00', 0),
(6, 'Amr Daba', 'zayed', 'cash', 4459.00, '2024-05-22 14:53:59', 0);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `category` varchar(255) NOT NULL,
  `price` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `brand`, `image_url`, `name`, `description`, `category`, `price`) VALUES
(1, 'mercedes', 'https://www.ladnefelgi.pl/hpeciai/3d374b4b61b5ae788226d93336242267/eng_pl_4x-rims-20-for-MERCEDES-E-W211-W212-W213-S-W222-HX06F-80943_4.webp', 'Rims', 'Biggest Rims for more stability.', 'rims', 900),
(2, 'mercedes', 'https://www.elitecustomrims.com/cdn/shop/files/mfrz2txzceayxiftgmw34agz-large_1024x1024.jpg?v=1711742091', 'Rims', 'mercedes c63 20 inches rims', 'rims', 765),
(3, 'mercedes', 'https://www.kunzmann.de/image/tire-wheels-rims-amg-19-inch-rim-set-c-class-206-m-26720-xl.jpg', 'Rims', 'mercedes G 63 19 inches rims', 'rims', 699),
(4, 'mercedes', 'https://i.ebayimg.com/images/g/YSYAAOSwvXBi4i9w/s-l1200.jpg', 'Suspension', 'Make it drifting ya basha 3wm we malksh d3wa', 'suspensions', 500),
(5, 'Vw', 'https://cdn11.bigcommerce.com/s-ibo39njk59/images/stencil/500x659/products/1226/6363/4cb01367-21d3-41dd-9d37-212363b7b80f__59576.1710194887.jpg?c=1', 'Intake', 'Improve airflow of your engine', 'intake', 250),
(6, 'Vw', 'https://m.media-amazon.com/images/I/41jI7rrg9QL._AC_.jpg', 'Intake', 'Improve airflow of your engine', 'intake', 175),
(7, 'mercedes', 'https://shop.bcracing-na.com/cdn/shop/products/J-04-1.jpg?v=1571261280', 'Suspension', '08-15 Mercedes-Benz C63 AMG – BC Racing suspension system', 'suspensions', 399),
(8, 'bmw', 'https://www.litchfieldmotors.com/wp-content/uploads/Nitron-BMW-M4-Suspension-11-1200x799.jpg', 'Suspension', 'M3 chassis & suspension | Litchfield Motors', 'suspensions', 499),
(9, 'bmw', 'https://ind-distribution.com/cdn/shop/products/39720257-4_1024x1024_8032232b-8f1f-4a4e-9804-6978787ceb08.jpg?v=1587893594', 'Suspensions', 'suspensions for BMW M3 & M4 for EXTREME PREFORMANCE ', 'suspensions', 699),
(10, 'audi', 'https://ind-distribution.com/cdn/shop/products/kw_f90_m5_variant_4_coilover_suspension_3a7200cc_10_1024x1024_1b5f5fa3-6bd2-464c-a7c3-e2e018022913.jpg?v=1587893695', 'Suspensions', 'suspension FOR EXTREME STABILITY', 'suspensions', 499),
(11, 'vw', 'https://www.airdynamiks.com/wp-content/uploads/2021/10/IMG_9031-1-scaled.jpg', 'Suspensions', 'Volkswagen Suspension for extreme stability', 'suspensions', 599),
(12, 'vw', 'https://www.kwsuspensions.com/media/wysiwyg/KWsuspensions/LP_Golf_8_V3/LP_KW_VW_GOLF_GTI_8_DDC_001.jpg', 'Suspensions', 'Aero-suspensions for extreme ', 'suspensions', 399),
(13, 'mercedes', 'https://www.fi-exhaust.com/uploads/product/en/AMG%20GT%20R%204.0T%20M178%20Engine-3.jpg', 'Exhaust', 'Mercedes-AMG C190 / R190 GT R - Fi Exhaust', 'exhaust', 1250),
(14, 'audi', 'https://cobrasport.com/cdn/shop/products/Audi-S3-8V-Valved-Res-CatBack-CobraExhaust_ad0174db-9b0d-4eac-9ad6-c2cde20e306d.jpg?v=1597241978', 'Exhaust', 'Audi S3 (8V) 5 Door Sportback (Valved) (13-18) Cat Back Performance Ex – Cobra Sport Exhausts UK', 'exhaust', 980),
(15, 'audi', 'https://www.supersprint.com/public/img/AUDI%20S5%20Quattro%20Coup%C3%A8%204.2i%20V8%20(355%20Hp)%202007%20-%202012-334288.jpg', 'Exhaust', 'Performance sport exhaust for Audi S5 B8 V8, AUDI S5 Quattro Coupè 4.2i V8 (355 Hp) 2007 -> 2012', 'exhaust ', 1120),
(16, 'mercedes', 'https://www.topgear.co.uk/image/cache/catalog/products/topgear/100054/100054-main-500x500.jpg?w=1200&h=1200&fj', 'Exhaust', 'Mercedes-Benz C63 AMG W204 Sports Sound Full Valvetronic Exhaust', 'exhaust ', 2130),
(17, 'vw', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1qHEndyim0GvlCBg87qygIfEDa7cyFuDt0DSLNLY8rw&s', 'Exhaust', 'Euro Sport Exhaust System - VW Mk6 Golf GTI 2.0T – Euro Sport Accessories', 'exhaust ', 820),
(18, 'vw', 'https://www.supersprint.com/public/img/AUDI%20S5%20Quattro%20Coup%C3%A8%204.2i%20V8%20(355%20Hp)%202007%20-%202012-334288.jpg', 'Exhaust ', 'VW MK5 Golf GTI Cat Back System - XFORCE AUSTRALIA', 'exhaust ', 1540),
(19, 'mercedes', 'https://cdn11.bigcommerce.com/s-tyw10w88l2/images/stencil/1280x1280/products/15591/22653/ecotune-remap__48402.1603985904__93047.1606314183.jpg?c=2', 'Software', 'Eco stage for Mercedes DUCK', 'software', 99),
(20, 'mercedes ', 'https://vuduperformance.com/cdn/shop/products/vudu-remap-tuning-tool.jpg?v=1673971772', 'Software', '\r\nCustom Tune', 'software', 499),
(21, 'audi', 'https://www.qstuning.com/cdn/shop/products/TCU_10b400eb-1821-4561-99fe-10127f54745a_768x768_crop_center.png?v=1629210538', 'Software', 'QST Audi RS6 - RS7 Stage 2 Tuning Package Installed Options – QSTuning', 'software', 450),
(22, 'audi', 'https://peron-automotive.co.uk/cdn/shop/products/dl501-stg3.png?v=1661512012', 'Software', 'stage 3 for TCU audi RS3 ', 'software', 500),
(23, 'Vw', 'https://www.onlyrevo.com/img/software/stages/Revo_TCU_Software_STG1.png', 'Software', 'stage 1 for golf R and GTI', 'software', 180),
(24, 'vw', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQiTyPIJIzcdkPPr__zcZ1JApcq8-zGCQhYLQi8GIdBYjPVl96gEgJ7_j4blVr9LveqoK4&usqp=CAU', 'Software', 'Stage 2 Tuning Bundle for 2.0T: VW ED30/Golf R – Motoza Performance', 'software', 350),
(25, 'bmw', 'https://i.imgur.com/ien7nbT.jpg', 'Software', 'ECU tunning flash ECOBOOST', 'software', 199),
(26, 'bmw', 'https://www.fi-exhaust.com/uploads/product/en/g8x_m3_m4_mperformance%20x%20fi%20(2).jpg', 'Intake', 'M-performance to improve out airflow of engine ', 'exhaust', 399),
(27, 'bmw', 'https://www.vr-speed.com/wp-content/uploads/2020/01/VRSF-10302075-wpp1600377465963.jpg', 'Exhaust', 'Down-pipe ', 'exhaust', 250),
(28, 'bmw', 'https://tunehouse.com.au/wp-content/uploads/2022/08/ECUTSOFTBMWS58.png', 'Software', 'S58-proecusoftware', 'software', 399),
(29, 'bmw', 'https://images.dinancars.com/a61a3d46556cc675d58dc0af3b3d0b0269adcf83.jpg', 'Intake', 'to improve your bmw air flow', '', 99),
(30, 'bmw', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrLoaSrWo_rOHpRffWadp-SGIfKUXsPcIBcTyiwfEPtzTBusy4PWxqVf5bDKsXZ1nkK4Q&usqp=CAU', 'Bmw', 'Intakes for twin-turbo airflow', 'intake', 199),
(31, 'audi', 'https://images.goapr.com/ci100048_001.jpg', 'Audi', 'intake for 3.OT A6/A7 (C8)', 'intake', 149),
(32, 'audi', 'https://www.vagcafe.com/wp-content/uploads/2018/09/ie_mqb_rs3_cf_intake_16.1528737134.jpg', 'Audi', 'Carbon Fiber Intake for RS3 and RSTT ', 'intake', 299),
(33, 'mercedes', 'https://burgertuning.com/cdn/shop/products/Burger-motorsports-C43-AMG-mercedes-benz-intake-air-filter-1120940604-A1120940604-2730940404-A2730940404_1200x1200.jpg?v=1651648202', 'Mercedes', 'Dual Intake for best airflow ', 'intake', 249),
(34, 'mercedes', 'https://autotecknic.com/cdn/shop/products/A45S-EVE-1_2048x2048_837c0df5-0a5c-41c1-a483-a6b689bdc144.jpg?v=1650634863', 'Mercedes', 'Carbon Fiber Intake', 'intake', 199),
(35, 'bmw', 'https://autocustomz.com/cdn/shop/products/1665277529_7107-GlossBlack.jpg?v=1669134081&width=1024', 'Bmw', 'RIMS 20 inch for more stablity', 'rims', 399),
(36, 'bmw', 'https://www.ladnefelgi.pl/hpeciai/d9560d822728f425aed812ccea71229d/eng_pl_4x-rims-18-for-BMW-3-e36-e46-e90-F30-F31-F34-4-F32-F33-F36-BK855-BY1121-67309_1.webp', 'Bmw', 'RIMS 18 inch for stability ', 'rims', 299),
(37, 'vw', 'https://www.maperformance.com/cdn/shop/products/bbs-wheels-bbs-sr039sg-19x8-5-size-35mm-offset-3919634038854_grande.png?v=1564856262', 'Vw', '5x114.3 19inch', 'rims', 499),
(38, 'vw', 'https://www.ozracing.com/images/products/wheels/ultraleggera-hlt/matt-black/01_ultraleggera-hlt-matt-black-jpg%201000x750.jpg', 'Vw', 'RIMS 20 Inch for more stability  ', 'rims', 399),
(39, 'audi', 'https://www.tirerack.com/images/wheels/bbs/swap/bbs_rgr_db_ci3_l.jpg', 'Audi', '20 Inch', 'rims', 299),
(49, 'audi', 'https://extremewheels.com/wp-content/uploads/2020/04/BBS-FI-Satin-Black.jpg', 'Rims', '20inch 5x120', 'rims', 349),
(50, 'vw', 'https://www.getunitronic.com/hardware/images/UH002-BTA/default/tfsi_k04_kit_7b2021liqui3web.jpg', 'Turbo', 'KO4 For 2.0Tfsi ', 'turbo', 250),
(51, 'vw', 'https://www.do88performance.com/bilder/artiklar/zoom/898199-5001W_1.jpg?m=1638370106', 'Turbo', 'GTX 45 For 2.Otfsi ', 'turbo', 499),
(52, 'bmw', 'https://falconturbos.com/wp-content/uploads/2022/04/758352-S2-2.jpg', 'Turbo', 'Big turbo for 3.OD', 'turbo', 249),
(53, 'bmw', 'https://www.tomiokaracing.com/cdn/shop/products/DSC_7838_med.jpg?v=1679596676', 'Turbo', 'Twin turbo for 45N', 'turbo', 699),
(54, 'audi', 'https://strperformance.com/55955-thickbox_default/pair-of-tte1020-turbos-for-audi-a8-d5-s6-s8-rs6-rs7-c8-sq7-sq8-40-ea825-tfsi.jpg', 'Turbo', 'Twin turbo for v8 RS8', 'turbo', 899),
(55, 'audi', 'https://www.weistec.com/mm5/graphics/00000001/audi_w3_2_640x427.jpg', 'Turbo', 'Big turbo for 4.OT', 'turbo', 399),
(56, 'mercedes', 'https://www.weistec.com/mm5/graphics/00000001/m/1/m157_tc_5_1.jpg', 'Turbo', 'Twin Turbo for 63 ', 'turbo', 599),
(57, 'mercedes', 'https://cdn-shop.phessio.com/wp-content/uploads/A6420900280.jpg', 'Turbo', 'Duck ', 'turbo', 49);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `role` varchar(100) NOT NULL DEFAULT 'user',
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `reset_token` varchar(255) DEFAULT NULL,
  `reset_token_expiry` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `name`, `email`, `password`, `reset_token`, `reset_token_expiry`) VALUES
(4, 'user', 'john smith', 'o.donia17860@student.aast.edu', '$2y$10$KfjpSGw9Z2uPq/QaXAJOwOd9cDIAPXG.E9fevei8hyle2G.8FB9J.', NULL, NULL),
(5, 'user', 'john smith', 'johnsmith1120111@gmail.com', '$2y$10$ASZubuw/BdLglivC8sb19ejeQOdbUXvBY4alreMy0N4xXjBBBYZ/q', '177947528426e1cc735b958534d157ed0f446dd1865ab9ee8347cb8e0d6e2e07028c8f06d14370558ce717433d26abd4b62e', '2024-05-22 17:45:41'),
(6, 'admin', 'Amr Daba', 'AmrDaba@gmail.com', '$2y$10$tExIC0CdhQHWT5jTY30jyuViXomXqJJfpzuxXuSJ1ui2B0DWGJlvG', NULL, NULL),
(11, 'user', 'john smith', 'omar@gmail.com', '$2y$10$2gzdeQioh9VXHaMCClIHMuRZwGz0eFaYt.Xqw3hqDNiAN012K5Wlu', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` int(11) NOT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id`, `brand`, `image_url`, `details`, `type`) VALUES
(1, 'AUDI', 'https://w0.peakpx.com/wallpaper/218/243/HD-wallpaper-abt-tuning-audi-rs3-sportback-2018-cars-road-white-rs3-sportback-german-cars-audi.jpg', 'The 2024 Audi RS3 features a 2.5-liter turbocharged inline-five engine with 401 horsepower and 369 lb-ft of torque, paired with a 7-speed dual-clutch automatic transmission and Quattro all-wheel drive. ', 'RS3'),
(2, 'AUDI', 'https://w0.peakpx.com/wallpaper/672/43/HD-wallpaper-audi-rs5-coupe-2020-front-view-exterior-gray-coupe-new-gray-rs5-coupe-tuning-rs5-coupe-german-cars-audi.jpg', 'The 2024 Audi RS5 features a 2.9-liter twin-turbo V6 engine producing 444 horsepower and 442 lb-ft of torque, paired with an 8-speed automatic transmission and Quattro all-wheel drive.', 'RS5'),
(3, 'AUDI', 'https://images5.alphacoders.com/971/971732.jpg', 'The 2024 Audi R8 features a 5.2-liter V10 engine producing up to 602 horsepower and 413 lb-ft of torque, paired with a 7-speed dual-clutch automatic transmission and Quattro all-wheel drive.', 'R8'),
(4, 'BMW', 'https://hips.hearstapps.com/hmg-prod/images/2024-bmw-m3-110-1674509061.jpg', 'The 2024 BMW M3 has a 3.0-liter twin-turbo inline-six engine with up to 503 horsepower and 479 lb-ft of torque, available with a 6-speed manual or 8-speed automatic, and rear-wheel or all-wheel drive.', 'M3'),
(5, 'BMW', 'https://static.autox.com/uploads/2022/05/BMW-M4-CSL-drift.jpg', 'The 2024 BMW M4 features a 3.0-liter twin-turbo inline-six engine with up to 503 horsepower and 479 lb-ft of torque, available with a 6-speed manual or 8-speed automatic transmission, and rear-wheel or all-wheel drive.', 'M4'),
(6, 'BMW', 'https://media.drive.com.au/obj/tx_rs:fit:1920:1080,q:50,w:1920/caradvice/private/4202d828235bc9ef6bdf2834a5a690e0', 'The 2024 BMW M5 is equipped with a 4.4-liter twin-turbo V8 engine, delivering up to 617 horsepower and 553 lb-ft of torque. It comes with an 8-speed automatic transmission and rear-wheel drive or optional all-wheel drive.', 'M5'),
(7, 'MERCEDES', 'https://media.carsandbids.com/cdn-cgi/image/width=2080,quality=70/d4fc90b57229e4caf46a7993a340868cc73ee059/photos/3RGBgMWD.7zEppKpCp-(edit).jpg?t=162812310651', 'The 2024 Mercedes C63 is powered by a 4.0-liter twin-turbo V8 engine, producing up to 503 horsepower and 516 lb-ft of torque. It comes with a 9-speed automatic transmission and rear-wheel drive configuration.', 'C63'),
(8, 'MERCEDES', 'https://www.alainclass.com/wp-content/uploads/2023/06/2022-Mercedes-Benz-G63-AMG-Brabus-G800-Widestar-Black-4734-19.jpg', 'The 2024 Mercedes-AMG C63 is equipped with a 4.0-liter twin-turbo V8 engine, generating up to 503 horsepower and 516 lb-ft of torque. It features a 9-speed automatic transmission and rear-wheel drive setup.', 'G63'),
(9, 'MERCEDES', 'https://ymimg1.b8cdn.com/resized/article/8960/pictures/11482804/listing_main_Mercedes-amg-GT-2024.jpg', 'The 2024 Mercedes-AMG GT63 is powered by a 4.0-liter twin-turbocharged V8 engine, producing up to 630 horsepower and 664 lb-ft of torque. It utilizes a 9-speed automatic transmission and comes standard with all-wheel drive (4MATIC+).', 'GT63'),
(10, 'VW', 'https://hips.hearstapps.com/hmg-prod/images/2024-volkswagen-jetta-gli-40th-anniversary-edition-116-64be8dad122a5.jpg?crop=0.828xw:0.625xh;0.0768xw,0.193xh&resize=1200:*', 'The 2024 VW GLI features a turbocharged 2.0-liter four-cylinder engine with around 228 horsepower, a 6-speed manual or 7-speed automatic transmission, and sportier styling than the standard Jetta.', 'GLI'),
(11, 'VW', 'https://media.ed.edmunds-media.com/volkswagen/golf-gti/2024/oem/2024_volkswagen_golf-gti_4dr-hatchback_380-autobahn_fq_oem_1_1600.jpg', 'The 2024 VW GTI typically includes a turbocharged 2.0-liter four-cylinder engine with approximately 241 horsepower, paired with either a 6-speed manual or 7-speed automatic transmission', 'GTI'),
(12, 'VW', 'https://img.motorline.cc/cache/imageresize/static/gallery/images/b/5/b560c82cc557ce44e6f9d26051a989a6-500-.jpg', 'The VW Golf R-Line usually comes with a turbocharged 1.5-liter four-cylinder engine, delivering around 148 horsepower and 184 lb-ft of torque. Transmission options typically include a 6-speed manual or a 7-speed automatic.', 'R-Line');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
