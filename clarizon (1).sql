-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2023 at 03:18 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clarizon`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `created_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '12345', '2023-08-08 05:54:01.000000');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name`, `status`, `created_at`) VALUES
(1, 'Syrup', 'Active', '2023-08-08 05:58:54.931092'),
(2, 'Tablets', 'Active', '2023-08-08 05:59:07.698074'),
(3, 'Injection', 'Active', '2023-08-08 05:59:22.165352');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(10) NOT NULL,
  `medicine_id` int(10) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `rating` varchar(100) NOT NULL,
  `price` bigint(100) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `dosage_for_children` varchar(100) NOT NULL,
  `dosage_for_adult` varchar(100) NOT NULL,
  `manufacturer` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `medicine_id`, `company_name`, `rating`, `price`, `photo`, `dosage_for_children`, `dosage_for_adult`, `manufacturer`, `status`, `created_at`) VALUES
(1, 1, 'NAOS Brand', '5 star', 1200, '', '2 drop (15 years)', '1 spoon (above 15 years)', 'USA', 'Active', '2023-08-08 06:33:26.893933'),
(2, 2, 'Prafic india', '5 star', 2000, '', 'Not recommended (till 14)', '1 tablet (above 15)', 'India', 'Active', '2023-08-08 06:37:55.920367'),
(3, 3, 'Casca Remedies', '5 star', 3000, '', 'Not reccommended', '1 (inj.)', 'Italy', 'Active', '2023-08-08 06:40:58.540638');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` longtext NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ingredients`
--

CREATE TABLE `ingredients` (
  `id` int(10) NOT NULL,
  `medicine_id` int(10) NOT NULL,
  `company_id` int(10) NOT NULL,
  `ingredient` longtext NOT NULL,
  `status` varchar(100) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ingredients`
--

INSERT INTO `ingredients` (`id`, `medicine_id`, `company_id`, `ingredient`, `status`, `created_at`) VALUES
(1, 1, 1, 'Each teaspoonful (5 mL) of Promethazine Hydrochloride Syrup (Promethazine Hydrochloride Oral Solution, USP) contains 6.25 mg promethazine HCl in a flavored syrup base with a pH between 4.9 and 5.4. Alcohol 8%(v/v). The inactive ingredients present are: anhydrous citric acid, ascorbic acid, D&C yellow No.', 'Active', '2023-08-08 06:43:23.304214'),
(2, 2, 2, 'It helps in relieving common symptoms such as cough, sore throat and transitional body temperature. It is also effective in the redness of the tonsils and throat and relieves pharyngitis.', 'Active', '2023-08-08 06:44:43.286359'),
(3, 3, 3, ' They may also contain additional components such as preservatives, additives, adjuvants and traces of other components', 'Active', '2023-08-08 06:49:18.885692');

-- --------------------------------------------------------

--
-- Table structure for table `interactions`
--

CREATE TABLE `interactions` (
  `id` int(10) NOT NULL,
  `medicine_id` int(10) NOT NULL,
  `company_id` int(10) NOT NULL,
  `interaction` longtext NOT NULL,
  `status` varchar(100) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `interactions`
--

INSERT INTO `interactions` (`id`, `medicine_id`, `company_id`, `interaction`, `status`, `created_at`) VALUES
(1, 1, 1, 'Drug interactions may change how your medications work or increase your risk for serious side effects.', 'Active', '2023-08-08 11:25:57.180988'),
(2, 2, 2, 'It helps in relieving common symptoms such as cough, sore throat and transitional body temperature.', 'Active', '2023-08-08 11:27:58.878769'),
(3, 3, 3, 'strengths-focused, and community-driven', 'Active', '2023-08-08 11:33:25.252045');

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `id` int(10) NOT NULL,
  `category_id` int(10) NOT NULL,
  `medicine_name` varchar(100) NOT NULL,
  `medical_condition` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `created_at` timestamp(6) NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`id`, `category_id`, `medicine_name`, `medical_condition`, `status`, `created_at`) VALUES
(1, 1, 'Medichrom Clor Syrup', 'It is suitable for diabetics and children over 6 years old.', 'Active', '2023-08-08 06:06:29.333709'),
(2, 2, 'Toniscare tablets 210 Nos', 'Children :Half of the adult’s dose. or as directed by the physician.', 'Active', '2023-08-08 06:12:05.889352'),
(3, 3, 'Filorga Glutathione Injection ', ' Taking inspiration from aesthetic medicine, Filorga by Magic Potions has earned a longstanding repu', 'Active', '2023-08-08 06:16:20.171231');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) NOT NULL,
  `medicine_id` int(10) NOT NULL,
  `company_id` int(10) NOT NULL,
  `review` longtext NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `safety_information`
--

CREATE TABLE `safety_information` (
  `id` int(10) NOT NULL,
  `medicine_id` int(10) NOT NULL,
  `company_id` int(10) NOT NULL,
  `information` longtext NOT NULL,
  `status` varchar(100) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ingredients`
--
ALTER TABLE `ingredients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interactions`
--
ALTER TABLE `interactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `safety_information`
--
ALTER TABLE `safety_information`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ingredients`
--
ALTER TABLE `ingredients`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `interactions`
--
ALTER TABLE `interactions`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `safety_information`
--
ALTER TABLE `safety_information`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
