-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 19, 2025 at 08:33 PM
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
-- Database: `exam_lookup`
--

-- --------------------------------------------------------

--
-- Table structure for table `ug_admission_test_2022_23_seat_plan`
--

CREATE TABLE `ug_admission_test_2022_23_seat_plan` (
  `Sl` int(11) NOT NULL,
  `Building` varchar(255) DEFAULT NULL,
  `Room` varchar(50) DEFAULT NULL,
  `From_Number` int(11) DEFAULT NULL,
  `To_Number` int(11) DEFAULT NULL,
  `Total` int(11) DEFAULT NULL,
  `Building_Image` varchar(255) DEFAULT NULL,
  `location` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ug_admission_test_2022_23_seat_plan`
--

INSERT INTO `ug_admission_test_2022_23_seat_plan` (`Sl`, `Building`, `Room`, `From_Number`, `To_Number`, `Total`, `Building_Image`, `location`) VALUES
(1, 'Academic Building 1', 'CSE 101', 350001, 350056, 56, 'academic_building_1.jpg', 'https://maps.app.goo.gl/mnfzoX6d57QfsNyy7?g_st=aw'),
(2, 'Academic Building 1', 'CSE 102', 350057, 350112, 56, 'academic_building_1.jpg', 'https://maps.app.goo.gl/mnfzoX6d57QfsNyy7?g_st=aw'),
(3, 'Academic Building 1', 'CSE 103', 350113, 350172, 60, 'academic_building_1.jpg', 'https://maps.app.goo.gl/mnfzoX6d57QfsNyy7?g_st=aw'),
(4, 'Academic Building 1', 'CSE 104', 350173, 350232, 60, 'academic_building_1.jpg', 'https://maps.app.goo.gl/mnfzoX6d57QfsNyy7?g_st=aw'),
(5, 'Academic Building 1', 'CSE 201', 350233, 350307, 75, 'academic_building_1.jpg', 'https://maps.app.goo.gl/mnfzoX6d57QfsNyy7?g_st=aw'),
(6, 'Academic Building 1', 'CSE 202', 350308, 350382, 75, 'academic_building_1.jpg', 'https://maps.app.goo.gl/mnfzoX6d57QfsNyy7?g_st=aw'),
(7, 'Academic Building 1', 'CSE 203', 350383, 350457, 75, 'academic_building_1.jpg', 'https://maps.app.goo.gl/mnfzoX6d57QfsNyy7?g_st=aw'),
(8, 'Academic Building 1', 'ETE 301', 350458, 350527, 70, 'academic_building_1.jpg', 'https://maps.app.goo.gl/mnfzoX6d57QfsNyy7?g_st=aw'),
(9, 'Academic Building 1', 'ETE 302', 350528, 350597, 70, 'academic_building_1.jpg', 'https://maps.app.goo.gl/mnfzoX6d57QfsNyy7?g_st=aw'),
(10, 'Academic Building 1', 'ETE 303', 350598, 350667, 70, 'academic_building_1.jpg', 'https://maps.app.goo.gl/mnfzoX6d57QfsNyy7?g_st=aw'),
(11, 'Academic Building 1', 'ETE 304', 350668, 350737, 70, 'academic_building_1.jpg', 'https://maps.app.goo.gl/mnfzoX6d57QfsNyy7?g_st=aw'),
(12, 'Academic Building 1', 'ETE Hall Room (2nd Floor)', 350738, 350937, 200, 'academic_building_1.jpg', 'https://maps.app.goo.gl/mnfzoX6d57QfsNyy7?g_st=aw'),
(13, 'Academic Building 1', 'ETE Seminar Room (2nd Floor)', 350938, 350987, 50, 'academic_building_1.jpg', 'https://maps.app.goo.gl/mnfzoX6d57QfsNyy7?g_st=aw'),
(14, 'Academic Building 1', 'ECE 401', 350988, 351047, 60, 'academic_building_1.jpg', 'https://maps.app.goo.gl/mnfzoX6d57QfsNyy7?g_st=aw'),
(15, 'Academic Building 1', 'ECE 402', 351048, 351107, 60, 'academic_building_1.jpg', 'https://maps.app.goo.gl/mnfzoX6d57QfsNyy7?g_st=aw'),
(16, 'Academic Building 1', 'ECE 403', 351108, 351167, 60, 'academic_building_1.jpg', 'https://maps.app.goo.gl/mnfzoX6d57QfsNyy7?g_st=aw'),
(17, 'Academic Building 1', 'ECE 404', 351168, 351227, 60, 'academic_building_1.jpg', 'https://maps.app.goo.gl/mnfzoX6d57QfsNyy7?g_st=aw'),
(18, 'Academic Building 1', 'ECE Hall Room (3rd Floor)', 351228, 351347, 120, 'academic_building_1.jpg', 'https://maps.app.goo.gl/mnfzoX6d57QfsNyy7?g_st=aw'),
(19, 'Academic Building 1', 'ECE LAB NEW (3rd Floor)', 351348, 351395, 48, 'academic_building_1.jpg', 'https://maps.app.goo.gl/mnfzoX6d57QfsNyy7?g_st=aw'),
(20, 'Academic Building 2', 'EEE 103', 351396, 351465, 70, 'academic_building_2.jpg', 'https://maps.app.goo.gl/haEruKLEZAXhKSmh8?g_st=aw'),
(21, 'Academic Building 2', 'EEE 104', 351466, 351535, 70, 'academic_building_2.jpg', 'https://maps.app.goo.gl/haEruKLEZAXhKSmh8?g_st=aw'),
(22, 'Academic Building 2', 'EEE 301', 351536, 351605, 70, 'academic_building_2.jpg', 'https://maps.app.goo.gl/haEruKLEZAXhKSmh8?g_st=aw'),
(23, 'Academic Building 2', 'EEE 302', 351606, 351675, 70, 'academic_building_2.jpg', 'https://maps.app.goo.gl/haEruKLEZAXhKSmh8?g_st=aw'),
(24, 'Academic Building 2', 'EEE 402', 351676, 351795, 120, 'academic_building_2.jpg', 'https://maps.app.goo.gl/haEruKLEZAXhKSmh8?g_st=aw'),
(25, 'Academic Building 2', 'EEE 403', 351796, 351865, 70, 'academic_building_2.jpg', 'https://maps.app.goo.gl/haEruKLEZAXhKSmh8?g_st=aw'),
(26, 'Academic Building 2', 'EEE Machine Lab', 351866, 351925, 60, 'academic_building_2.jpg', 'https://maps.app.goo.gl/haEruKLEZAXhKSmh8?g_st=aw'),
(27, 'Academic Building 2', 'EEE Measurement Lab', 351926, 351975, 50, 'academic_building_2.jpg', 'https://maps.app.goo.gl/haEruKLEZAXhKSmh8?g_st=aw'),
(28, 'Academic Building 2', 'EEE Electronics Lab 1', 351976, 352005, 30, 'academic_building_2.jpg', 'https://maps.app.goo.gl/haEruKLEZAXhKSmh8?g_st=aw'),
(29, 'Academic Building 2', 'EEE Electronics Lab 2', 352006, 352035, 30, 'academic_building_2.jpg', 'https://maps.app.goo.gl/haEruKLEZAXhKSmh8?g_st=aw'),
(30, 'Academic Building 2', 'EEE IoT Lab', 352036, 352085, 50, 'academic_building_2.jpg', 'https://maps.app.goo.gl/haEruKLEZAXhKSmh8?g_st=aw'),
(31, 'Academic Building 2', 'EEE Communication Lab', 352086, 352115, 30, 'academic_building_2.jpg', 'https://maps.app.goo.gl/haEruKLEZAXhKSmh8?g_st=aw'),
(32, 'Mechanical Engineering Building', 'Fluid Mechanics Lab (ME)', 352116, 352169, 54, 'Heat_Engine.jpg', 'https://maps.app.goo.gl/iyFhTgqnmSNyiX328?g_st=aw'),
(33, 'Mechanical Engineering Building', 'Heat Engine Lab Ground Floor', 352170, 352289, 120, 'Heat_Engine.jpg', 'https://maps.app.goo.gl/iyFhTgqnmSNyiX328?g_st=aw'),
(34, 'Mechanical Engineering Building', 'Heat Engine Lab 201 UPPER', 352290, 352367, 78, 'Heat_Engine.jpg', 'https://maps.app.goo.gl/iyFhTgqnmSNyiX328?g_st=aw'),
(35, 'Mechanical Engineering Building', 'Heat Engine Lab 202 UPPER', 352368, 352445, 78, 'Heat_Engine.jpg', 'https://maps.app.goo.gl/iyFhTgqnmSNyiX328?g_st=aw'),
(36, 'Mechanical Engineering Building', 'Heat Engine Lab 203 UPPER', 352446, 352505, 60, 'Heat_Engine.jpg', 'https://maps.app.goo.gl/iyFhTgqnmSNyiX328?g_st=aw'),
(37, 'Mechanical Engineering Building', 'Heat Engine Lab 204 UPPER', 352506, 352565, 60, 'Heat_Engine.jpg', 'https://maps.app.goo.gl/iyFhTgqnmSNyiX328?g_st=aw'),
(38, 'Mechanical Engineering Building', 'Heat Engine Lab 205 UPPER', 352566, 352705, 140, 'Heat_Engine.jpg', 'https://maps.app.goo.gl/iyFhTgqnmSNyiX328?g_st=aw'),
(39, 'Mechanical Engineering Building', 'FITTING SHOP (UPPER) 201', 352706, 352765, 60, 'Heat_Engine.jpg', 'https://maps.app.goo.gl/iyFhTgqnmSNyiX328?g_st=aw'),
(40, 'Mechanical Engineering Building', 'FITTING SHOP (UPPER) 202', 352766, 352825, 60, 'Heat_Engine.jpg', 'https://maps.app.goo.gl/iyFhTgqnmSNyiX328?g_st=aw'),
(41, 'Mechanical Engineering Building', 'FITTING SHOP (UPPER) 203', 352826, 352885, 60, 'Heat_Engine.jpg', 'https://maps.app.goo.gl/iyFhTgqnmSNyiX328?g_st=aw'),
(42, 'Transport Section', 'Transport Section R1 (1st Floor)', 352886, 352945, 60, NULL, ''),
(43, 'Academic Building 3', 'GCE 401', 352946, 352995, 50, 'academic_building_3.jpg', 'https://maps.app.goo.gl/8cZH3nFe92WjArfK9?g_st=aw'),
(44, 'Academic Building 3', 'GCE402', 352996, 353055, 60, 'academic_building_3.jpg', 'https://maps.app.goo.gl/8cZH3nFe92WjArfK9?g_st=aw'),
(45, 'Academic Building 3', 'GCE 403', 353056, 353115, 60, 'academic_building_3.jpg', 'https://maps.app.goo.gl/8cZH3nFe92WjArfK9?g_st=aw'),
(46, 'Academic Building 3', 'GCE 404', 353116, 353175, 60, 'academic_building_3.jpg', 'https://maps.app.goo.gl/8cZH3nFe92WjArfK9?g_st=aw'),
(47, 'Academic Building 3', 'GCE 405', 353176, 353235, 60, 'academic_building_3.jpg', 'https://maps.app.goo.gl/8cZH3nFe92WjArfK9?g_st=aw'),
(48, 'Academic Building 3', 'GCE 407', 353236, 353295, 60, 'academic_building_3.jpg', 'https://maps.app.goo.gl/8cZH3nFe92WjArfK9?g_st=aw'),
(49, 'Academic Building 3', 'GCE 408', 353296, 353355, 60, 'academic_building_3.jpg', 'https://maps.app.goo.gl/8cZH3nFe92WjArfK9?g_st=aw'),
(50, 'Academic Building 3', 'GCE 501', 353356, 353415, 60, 'academic_building_3.jpg', 'https://maps.app.goo.gl/8cZH3nFe92WjArfK9?g_st=aw'),
(51, 'Academic Building 3', 'GCE 502', 353416, 353535, 120, 'academic_building_3.jpg', 'https://maps.app.goo.gl/8cZH3nFe92WjArfK9?g_st=aw'),
(52, 'Academic Building 3', 'GCE ANNEX 301', 353536, 353635, 100, 'academic_building_3.jpg', 'https://maps.app.goo.gl/8cZH3nFe92WjArfK9?g_st=aw'),
(53, 'Library', 'Old Library', 353636, 353685, 50, 'unnamed.webp', 'https://maps.app.goo.gl/tJWBdhbZkLboG3Mq6'),
(54, 'Library', 'New Library (Ground Floor)', 353686, 353735, 50, 'unnamed.webp', 'https://maps.app.goo.gl/tJWBdhbZkLboG3Mq6'),
(55, 'Library', 'New Library (4th Floor)', 353736, 353795, 60, 'unnamed.webp', 'https://maps.app.goo.gl/tJWBdhbZkLboG3Mq6'),
(56, 'Academic Building 4', 'CE 2101', 353796, 353855, 60, 'academic_building_4.jpg', 'https://maps.app.goo.gl/qJAaGHwUxCpnq9n18'),
(57, 'Academic Building 4', 'CE 2102', 353856, 353915, 60, 'academic_building_4.jpg', 'https://maps.app.goo.gl/qJAaGHwUxCpnq9n18'),
(58, 'Academic Building 4', 'CE 2103', 353916, 353975, 60, 'academic_building_4.jpg', 'https://maps.app.goo.gl/qJAaGHwUxCpnq9n18'),
(59, 'Academic Building 4', 'CE 2104', 353976, 354035, 60, 'academic_building_4.jpg', 'https://maps.app.goo.gl/qJAaGHwUxCpnq9n18'),
(60, 'Academic Building 4', 'CE 2201', 354036, 354095, 60, 'academic_building_4.jpg', 'https://maps.app.goo.gl/qJAaGHwUxCpnq9n18'),
(61, 'Academic Building 4', 'CE 2202', 354096, 354155, 60, 'academic_building_4.jpg', 'https://maps.app.goo.gl/qJAaGHwUxCpnq9n18'),
(62, 'Academic Building 4', 'CE 2203', 354156, 354275, 120, 'academic_building_4.jpg', 'https://maps.app.goo.gl/qJAaGHwUxCpnq9n18'),
(63, 'Academic Building 4', 'CE 2301', 354276, 354335, 60, 'academic_building_4.jpg', 'https://maps.app.goo.gl/qJAaGHwUxCpnq9n18'),
(64, 'Academic Building 4', 'CE 2302', 354336, 354395, 60, 'academic_building_4.jpg', 'https://maps.app.goo.gl/qJAaGHwUxCpnq9n18'),
(65, 'Academic Building 4', 'CE 2303', 354396, 354455, 60, 'academic_building_4.jpg', 'https://maps.app.goo.gl/qJAaGHwUxCpnq9n18'),
(66, 'Academic Building 4', 'CE 2401', 354456, 354515, 60, 'academic_building_4.jpg', 'https://maps.app.goo.gl/qJAaGHwUxCpnq9n18'),
(67, 'Academic Building 4', 'CE 2402', 354516, 354545, 30, 'academic_building_4.jpg', 'https://maps.app.goo.gl/qJAaGHwUxCpnq9n18'),
(68, 'Academic Building 4', 'CE Seminar Room (3rd Floor)', 354546, 354665, 120, 'academic_building_4.jpg', 'https://maps.app.goo.gl/qJAaGHwUxCpnq9n18'),
(69, 'Academic Building 4', 'CE Soil Mechanics Lab', 354666, 354715, 50, 'academic_building_4.jpg', 'https://maps.app.goo.gl/qJAaGHwUxCpnq9n18'),
(70, 'Academic Building 4', 'CE Fluid Lab 202', 354716, 354745, 30, 'academic_building_4.jpg', 'https://maps.app.goo.gl/qJAaGHwUxCpnq9n18'),
(71, 'Academic Building 4', 'CE Fluid Lab (Ground Floor)', 354746, 354815, 70, 'academic_building_4.jpg', 'https://maps.app.goo.gl/qJAaGHwUxCpnq9n18'),
(72, 'Academic Building 4', 'Transportation Lab 204', 354816, 354845, 30, 'academic_building_4.jpg', 'https://maps.app.goo.gl/qJAaGHwUxCpnq9n18'),
(73, 'Academic Building 4', 'Transportation Lab (Ground Floor)', 354846, 354885, 40, 'academic_building_4.jpg', 'https://maps.app.goo.gl/qJAaGHwUxCpnq9n18'),
(74, 'Academic Building 4', 'Environment Lab', 354886, 354925, 40, 'academic_building_4.jpg', 'https://maps.app.goo.gl/qJAaGHwUxCpnq9n18'),
(75, 'Administration Building', 'Room No 304', 354926, 354985, 60, 'administrative.jpg', 'https://maps.app.goo.gl/cahermif39yYnbfM7'),
(76, 'Administration Building', 'Room No 305', 354986, 355045, 60, 'administrative.jpg', 'https://maps.app.goo.gl/cahermif39yYnbfM7'),
(77, 'Administration Building', 'Room No 306', 355046, 355105, 60, 'administrative.jpg', 'https://maps.app.goo.gl/cahermif39yYnbfM7'),
(78, 'Administration Building', 'Room No 307', 355106, 355165, 60, 'administrative.jpg', 'https://maps.app.goo.gl/cahermif39yYnbfM7'),
(79, 'Administration Building', 'Room No 310', 355166, 355225, 60, 'administrative.jpg', 'https://maps.app.goo.gl/cahermif39yYnbfM7'),
(80, 'Administration Building', 'Room No 217', 355226, 355465, 240, 'administrative.jpg', 'https://maps.app.goo.gl/cahermif39yYnbfM7'),
(81, 'Academic Building- 5', 'Arch 1201', 355466, 355515, 50, 'academic_building_5.jpg', 'https://maps.app.goo.gl/oYxxCgyNhtzSEiKZ9'),
(82, 'Academic Building- 5', 'Arch 1202', 355516, 355565, 50, 'academic_building_5.jpg', 'https://maps.app.goo.gl/oYxxCgyNhtzSEiKZ9'),
(83, 'Academic Building- 5', 'Arch 1203', 355566, 355615, 50, 'academic_building_5.jpg', 'https://maps.app.goo.gl/oYxxCgyNhtzSEiKZ9'),
(84, 'Academic Building- 5', 'Arch 1204', 355616, 355665, 50, 'academic_building_5.jpg', 'https://maps.app.goo.gl/oYxxCgyNhtzSEiKZ9'),
(85, 'Academic Building- 5', 'Arch 1302', 355666, 355815, 150, 'academic_building_5.jpg', 'https://maps.app.goo.gl/oYxxCgyNhtzSEiKZ9'),
(86, 'Academic Building- 5', 'Arch 2301', 370001, 370100, 100, 'academic_building_5.jpg', 'https://maps.app.goo.gl/oYxxCgyNhtzSEiKZ9'),
(87, 'Academic Building- 5', 'Arch 2302', 370101, 370200, 100, 'academic_building_5.jpg', 'https://maps.app.goo.gl/oYxxCgyNhtzSEiKZ9'),
(88, 'Academic Building- 5', 'Arch 3301', 370201, 370300, 100, 'academic_building_5.jpg', 'https://maps.app.goo.gl/oYxxCgyNhtzSEiKZ9'),
(89, 'Academic Building- 5', 'Arch 3302', 370301, 370400, 100, 'academic_building_5.jpg', 'https://maps.app.goo.gl/oYxxCgyNhtzSEiKZ9'),
(90, 'Academic Building- 5', 'Arch 3303', 370401, 370500, 100, 'academic_building_5.jpg', 'https://maps.app.goo.gl/oYxxCgyNhtzSEiKZ9'),
(91, 'Academic Building- 5', 'Arch 3304', 370501, 370594, 94, 'academic_building_5.jpg', 'https://maps.app.goo.gl/oYxxCgyNhtzSEiKZ9'),
(92, 'Agroni School', 'North building 105', 355816, 355865, 50, NULL, ''),
(93, 'Agroni School', 'North building 106', 355866, 355915, 50, NULL, ''),
(94, 'Agroni School', 'North building 107', 355916, 355965, 50, NULL, ''),
(95, 'Agroni School', 'North building 202', 355966, 356005, 40, NULL, ''),
(96, 'Agroni School', 'North building 204', 356006, 356085, 80, NULL, ''),
(97, 'Agroni School', 'North building 205', 356086, 356135, 50, NULL, ''),
(98, 'Agroni School', 'North building 206', 356136, 356185, 50, NULL, ''),
(99, 'Agroni School', 'North building 207', 356186, 356235, 50, NULL, ''),
(100, 'Agroni School', 'North building 302', 356236, 356275, 40, NULL, ''),
(101, 'Agroni School', 'North building 304', 356276, 356355, 80, NULL, ''),
(102, 'Agroni School', 'North building 306', 356356, 356395, 40, NULL, ''),
(103, 'Agroni School', 'South building 108', 356396, 356435, 40, NULL, ''),
(104, 'Agroni School', 'South building 109', 356436, 356475, 40, NULL, ''),
(105, 'Agroni School', 'South building 110', 356476, 356515, 40, NULL, ''),
(106, 'Agroni School', 'South building 111', 356516, 356555, 40, NULL, ''),
(107, 'Agroni School', 'South building 112', 356556, 356595, 40, NULL, ''),
(108, 'Agroni School', 'South building 113', 356596, 356635, 40, NULL, ''),
(109, 'Agroni School', 'South building 115', 356636, 356665, 30, NULL, ''),
(110, 'Agroni School', 'South building 116', 356666, 356695, 30, NULL, ''),
(111, 'Agroni School', 'South building 208', 356696, 356735, 40, NULL, ''),
(112, 'Agroni School', 'South building 209', 356736, 356775, 40, NULL, ''),
(113, 'Agroni School', 'South building 210', 356776, 356815, 40, NULL, ''),
(114, 'Agroni School', 'South building 211', 356816, 356855, 40, NULL, ''),
(115, 'Agroni School', 'South building 212', 356856, 356895, 40, NULL, ''),
(116, 'Agroni School', 'South building 213', 356896, 356935, 40, NULL, ''),
(117, 'Agroni School', 'South building 214', 356936, 356985, 50, NULL, ''),
(118, 'Agroni School', 'South building 215', 356986, 357035, 50, NULL, ''),
(119, 'Agroni School', 'South building 216', 357036, 357085, 50, NULL, ''),
(120, 'Agroni School', 'South building 308', 357086, 357125, 40, NULL, ''),
(121, 'Agroni School', 'South building 309', 357126, 357165, 40, NULL, ''),
(122, 'Agroni School', 'South building 310', 357166, 357205, 40, NULL, ''),
(123, 'Agroni School', 'South building 311', 357206, 357245, 40, NULL, ''),
(124, 'Agroni School', 'South building 312', 357246, 357285, 40, NULL, ''),
(125, 'Agroni School', 'South building 313', 357286, 357325, 40, NULL, ''),
(126, 'Agroni School', 'South building 314', 357326, 357375, 50, NULL, ''),
(127, 'Agroni School', 'South building 315', 357376, 357425, 50, NULL, ''),
(128, 'Agroni School', 'South building 316', 357426, 357455, 30, NULL, ''),
(129, 'Cafeteria (Ground Floor)', 'Cafeteria R1', 357456, 357582, 127, 'RUET_Cafeteria.jpg', 'https://maps.app.goo.gl/cahermif39yYnbfM7'),
(130, 'Cafeteria (1st Floor)', 'Cafeteria R2', 357583, 357732, 150, 'RUET_Cafeteria.jpg', 'https://maps.app.goo.gl/cahermif39yYnbfM7');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ug_admission_test_2022_23_seat_plan`
--
ALTER TABLE `ug_admission_test_2022_23_seat_plan`
  ADD PRIMARY KEY (`Sl`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
