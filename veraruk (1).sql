-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2024 at 09:37 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `veraruk`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment_admin_page`
--

CREATE TABLE `appointment_admin_page` (
  `appointment_id` int(20) NOT NULL,
  `date` text NOT NULL,
  `time` varchar(20) NOT NULL,
  `patient_id` varchar(20) NOT NULL,
  `patient_name` varchar(100) NOT NULL,
  `tel` varchar(11) NOT NULL,
  `doctor` varchar(50) NOT NULL,
  `status` varchar(100) NOT NULL,
  `patient_status` varchar(30) NOT NULL,
  `treatment_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `appointment_admin_page`
--

INSERT INTO `appointment_admin_page` (`appointment_id`, `date`, `time`, `patient_id`, `patient_name`, `tel`, `doctor`, `status`, `patient_status`, `treatment_id`) VALUES
(70, '2024-04-09', '16.00 น.', 'HN-000002-2024', 'ปวิตร สวัสดิวงศ์', '0923457424', 'พท.กัญภร พงศ์สุทธิกุล', 'รอเข้ารับบริการ', '', 10),
(71, '2024-04-09', '15.00 น.', 'HN-000001-2024', 'พิณ จันวราสกุล', '0923457424', 'พท.กัญภร พงศ์สุทธิกุล', 'รอเรียกคิว', '', 8),
(78, '2024-04-09', '17.00 น.', 'HN-000014-2024', 'ศิริญญา คอนพิทักษ์', '0817618227', 'พท.กัญภร พงศ์สุทธิกุล', 'เรียกพบแพทย์', '', 4);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(20) NOT NULL,
  `course_name` varchar(200) NOT NULL,
  `recommend` text NOT NULL,
  `course_detail` text NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_name`, `recommend`, `course_detail`, `image`) VALUES
(1, 'ฝังเข็ม', 'การรักษาด้วยการฝังเข็มให้ผลการรักษาดีเทียบเท่าหรือมากกว่าการใช้ยาโดยปลอดภัย และไม่ต้องเสี่ยงต่อผลข้างเคียงจากยาอีกด้วย', 'ฝังเข็ม (Acupuncture) คือศาสตร์การรักษา ฟื้นฟูสุขภาพ สร้างภูมิคุ้มกันและป้องกันโรค แขนงหนึ่งในแพทย์แผนจีนที่มีมานานกว่า 5,000 ปี โดยใช้เข็มขนาดเล็ก (ประมาณ 0.1-0.3 mm.) ฝังตามจุดฝังเข็มบนเส้นลมปราน เป็นการปรับอวัยวะและระบบต่างๆ ภายในร่างกายให้กลับมาอยู่ในภาวะสมดุล', 'ฝังเข็ม.jpg'),
(2, 'ครอบแก้ว', 'เป็นการบำบัดรักษาทางเลือกของแพทย์แผนจีนชนิดหนึ่ง ซึ่งมีต้นกำเนิดจากประเทศจีนและปฏิบัติกันมาตั้งแต่สมัยโบราณ โดยการนำถ้วยแก้วแบบเฉพาะมาวางไว้บนผิวหนังพร้อมกับใช้ความร้อนให้แก้วดูดผิวหนังหรือกล้ามเนื้อขึ้น ซึ่งมีความเชื่อว่าจะช่วยบำบัดรักษาอาการป่วยได้หลากหลาย เช่น บรรเทาอาการเจ็บปวด ช่วยการไหลเวียนโลหิต การอักเสบ การผ่อนคลายและเพื่อสุขภาพที่ดี รวมไปถึงเป็นการนวดที่ลงลึกไปถึงชั้นเนื้อเยื่อหรือช่วยในการขจัดสารพิษออกจากร่างกาย ', 'ตามศาสตร์การแพทย์แผนจีน เชื่อว่าภายในร่างกายเรามีพลังชี่ （气）เป็นตัวนำพาให้ร่างกายมีการขับเคลื่อน เมื่อใดก็ตามที่พลังชี่มีปัญหา กระจัดกระจาย หรืออ่อนแรง ร่างกายมักจะป่วย ไม่สดชื่น การครอบแก้วจะช่วยให้พลังชี่กลับมาหมุนเวียนในร่างกายได้อย่างสมบูรณ์\r\n\r\nการครอบแก้วใช้รักษากันอย่างแพร่หลายในประเทศจีน ไทย และในประเทศตะวันตก โดยเฉพาะวงการกีฬาระดับโลก มีความปลอดภัย สามารถรักษาได้ทุกเพศทุกวัย โดยหากสังเกต จะพบว่าดารา นักแสดง นักกีฬา ก็เข้ารับการบำบัดด้วยการครอบแก้วกันอย่างแพร่หลาย ไม่ว่าจะเป็นนักกีฬาชาติตะวันออก หรือฝรั่งตะวันตกเลยทีเดียว', '423239683_357428203806172_8574981403331616818_n.jpg'),
(3, 'แปะเมล็ดผักกาด', 'การแปะเมล็ดผักกาดที่หูเป็นหนึ่งในขั้นตอนการช่วยลดน้ำหนักแต่ต้องทำร่วมกับ การฝังเข็ม ครอบแก้ว และจะต้องมีแพทย์ที่เชี่ยวชาญทำให้เท่านั้น', 'คือ การติดเมล็ดหวังปู้หลิวสิง (王不留行) ซึ่งเป็นสมุนไพรจีนชนิดหนึ่งที่มีลักษณะคล้ายเมล็ดผักกาด ในภาษาอังกฤษเรียกว่า Cowherb หรือ Vaccaria seeds\r\n\r\nการแปะเมล็ดผักกาดที่หูเป็นหนึ่งในขั้นตอนการช่วยลดน้ำหนักแต่ต้องทำร่วมกับ การฝังเข็ม ครอบแก้ว และจะต้องมีแพทย์ที่เชี่ยวชาญทำให้เท่านั้น ซึ่งเป็นการแปะที่บริเวณจุดที่เชื่อมโยงกับอวัยวะภายในร่างกายให้ทำงานสมดุลขึ้น ทั้งนี้การลดน้ำหนักลักษณะนี้ จำเป็นต้องทำควบคู่ไปกับการออกกำลังกาย และควบคุมอาหารด้วย โดยแต่ละคนจะใช้จุดรักษาแตกต่างกันไปตามอาการ', '209606607-401214275-427953840_366176416264684_7741439983900504780_n.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `medical_records`
--

CREATE TABLE `medical_records` (
  `patient_id` varchar(20) NOT NULL,
  `name_patient` varchar(50) NOT NULL,
  `id_card` varchar(100) NOT NULL,
  `date_of_birth` date NOT NULL,
  `age` int(2) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `career` varchar(100) NOT NULL,
  `ethnicity` varchar(50) NOT NULL,
  `nationality` varchar(50) NOT NULL,
  `religion` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `province` varchar(50) NOT NULL,
  `district` varchar(100) NOT NULL,
  `sub_district` varchar(100) NOT NULL,
  `zip_code` varchar(50) NOT NULL,
  `tel` varchar(10) NOT NULL,
  `congenital_disease` varchar(100) NOT NULL,
  `allergy` varchar(100) NOT NULL,
  `surgery_history` varchar(200) NOT NULL,
  `accident_history` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `medical_records`
--

INSERT INTO `medical_records` (`patient_id`, `name_patient`, `id_card`, `date_of_birth`, `age`, `gender`, `career`, `ethnicity`, `nationality`, `religion`, `status`, `address`, `province`, `district`, `sub_district`, `zip_code`, `tel`, `congenital_disease`, `allergy`, `surgery_history`, `accident_history`) VALUES
('HN-000001-2024', 'พิณ จันวราสกุล', '173518749711', '2001-01-05', 23, 'หญิง', 'พนักงานบริษัท', 'ไทย', 'ไทย', 'พุทธ', 'โสด', '48 หมู่2 ', 'ฉะเชิงเทรา', 'เมือง', 'บางเตย', '24000', '0923457424', '-', '-', '-', '-'),
('HN-000002-2024', 'ปวิตร สวัสดิวงศ์', '246535036268', '1994-01-19', 30, 'ชาย', 'ครู', 'ไทย', 'ไทย', 'พุทธ', 'โสด', '48 หมู่2 ', 'ฉะเชิงเทรา', 'เมือง', 'บางเตย', '24000', '0923457424', '-', '-', '-', '-'),
('HN-000003-2024', 'ลักษ์วิสา นันทวัฒน์', '578840402870', '2000-04-04', 24, 'หญิง', 'นักศึกษา', 'ไทย', 'ไทย', 'พุทธ', 'โสด', '53/990 ', 'นนบุรี', 'เมือง', 'บางเขน', '11000', '0988774563', '-', '-', '-', '-'),
('HN-000004-2024', 'วีรพล วัชรโสภณ', '864493211222', '1995-08-11', 29, 'ชาย', 'พนักงานบริษัท', 'ไทย', 'ไทย', '-', 'โสด', '47/156', 'กรุงเทพมหานคร', 'บางซื่อ', 'บางซื่อ', '10800', '0624670878', '-', '-', '-', '-'),
('HN-000005-2024', 'สุพิชญา พุ่มสนธิ', '440556794906', '1988-10-14', 36, 'หญิง', 'พนักงานธนาคาร', 'ไทย', 'ไทย', 'พุทธ', 'โสด', '911/2 หมู่ 3', 'ฉะเชิงเทรา', 'บางคล้า', 'บางคล้า', '24110', '0632477855', '-', '-', '-', '-'),
('HN-000006-2024', 'ธนิตย์ ปิติจำเริญ', '665343378371', '1990-07-07', 34, 'ชาย', 'ค้าขาย', 'ไทย', 'ไทย', 'คริสต์', 'โสด', '32 หมู่ 5', 'ฉะเชิงเทรา', 'บางคล้า', 'ท่าทองหลาง', '24110', '0833886479', '-', '-', '-', '-'),
('HN-000007-2024', 'ฐิตา ไกรภพ', '476068534106', '1990-02-11', 34, 'หญิง', 'ธุรกิจส่วนตัว', 'ไทย', 'ไทย', 'พุทธ', 'โสด', '788/2', 'ฉะเชิงเทรา', 'เมืองฉะเชิงเทรา', 'บางเตย', '24000', '0978554563', '-', '-', '-', '-'),
('HN-000008-2024', 'กิจพร กลับเพชร', '402195779800', '1995-05-18', 29, 'หญิง', 'พนักงานออฟฟิศ', 'ไทย', 'ไทย', 'พุทธ', 'โสด', '125/2 ', 'ฉะเชิงเทรา', 'เมืองฉะเชิงเทรา', 'บางแก้ว', '24000', '0863411523', '-', '-', '-', '-'),
('HN-000009-2024', 'กนกภัทร สุรศักดิ์อุดม', '321041819184', '1994-06-16', 30, 'ชาย', 'รับจ้างทั่วไป', 'ไทย', 'ไทย', 'พุทธ', 'โสด', '556', 'ฉะเชิงเทรา', 'เมืองฉะเชิงเทรา', 'บ้านใหม่', '24000', '0844758963', '-', '-', '-', '-'),
('HN-000010-2024', 'ถามพัฒน์ เกียรติวิทยา', '355405832581', '1999-06-17', 25, 'ชาย', 'พนักงานออฟฟิศ', 'ไทย', 'ไทย', 'พุทธ', 'โสด', '741/23', 'ฉะเชิงเทรา', 'บางคล้า', 'ปากน้ำ', '24110', '0923654955', '-', '-', '-', '-'),
('HN-000011-2024', 'ตฤณภัทร ปิติวัฒน์', '887365188966', '1998-07-16', 26, 'ชาย', '-', 'ไทย', 'ไทย', 'พุทธ', 'โสด', '112/14', 'ฉะเชิงเทรา', 'บางคล้า', 'หัวไทร', '24110', '0822334711', '-', '-', '-', '-'),
('HN-000012-2024', 'ณัฐณิชา รัตนพันธ์', '1810478546255', '2000-10-23', 24, 'หญิง', 'พนักงานบัญชี', 'ไทย', 'ไทย', 'พุทธ', 'โสด', '48/91', 'ฉะเชิงเทรา', 'บางปะกง', 'เขาดิน', '24130', '0945632156', '-', '-', '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `patient_course`
--

CREATE TABLE `patient_course` (
  `patient_course_id` int(11) NOT NULL,
  `patient_id` varchar(20) NOT NULL,
  `procedure` text NOT NULL,
  `quantity` int(3) NOT NULL,
  `purchase_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `patient_course`
--

INSERT INTO `patient_course` (`patient_course_id`, `patient_id`, `procedure`, `quantity`, `purchase_id`) VALUES
(1, 'HN-000001-2024', 'ครอบแก้ว', 5, 1),
(2, 'HN-000001-2024', 'กัวซา', 1, 2),
(3, 'HN-000013-2024', 'ฝังเข็ม', 4, 3),
(4, 'HN-000014-2024', 'กัวซา', 5, 4);

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `purchase_id` int(20) NOT NULL,
  `patient_id` varchar(30) NOT NULL,
  `procedure` varchar(100) NOT NULL,
  `quantity` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`purchase_id`, `patient_id`, `procedure`, `quantity`) VALUES
(1, 'HN-000001-2024', 'ครอบแก้ว', '5'),
(2, 'HN-000001-2024', 'กัวซา', '1'),
(3, 'HN-000013-2024', 'ฝังเข็ม', '5'),
(4, 'HN-000014-2024', 'กัวซา', '5');

-- --------------------------------------------------------

--
-- Table structure for table `times_of_course`
--

CREATE TABLE `times_of_course` (
  `times_id` int(11) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `number_of_times` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `times_of_course`
--

INSERT INTO `times_of_course` (`times_id`, `course_name`, `number_of_times`, `price`, `course_id`) VALUES
(56, 'ฝังเข็ม', 1, 600, 1),
(57, 'ฝังเข็ม', 3, 2000, 1),
(59, 'ครอบแก้ว', 1, 500, 2),
(60, 'ครอบแก้ว', 3, 1200, 2),
(61, 'ครอบแก้ว', 5, 2300, 2),
(74, 'แปะเมล็ดผักกาด', 1, 200, 3),
(76, '', 1, 2000, 4),
(77, 'ฝังเข็ม', 6, 3500, 1),
(79, '', 1, 2000, 4),
(80, 'แปะเมล็ดผักกาด', 2, 350, 3),
(81, 'แปะเมล็ดผักกาด', 3, 400, 3);

-- --------------------------------------------------------

--
-- Table structure for table `treatment`
--

CREATE TABLE `treatment` (
  `treatment_id` int(30) NOT NULL,
  `patient_id` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `systolic` int(10) NOT NULL,
  `diastolic` int(10) NOT NULL,
  `temperature` int(10) NOT NULL,
  `pluse_rate` int(10) NOT NULL,
  `weight` float NOT NULL,
  `height` int(10) NOT NULL,
  `doctor` varchar(30) NOT NULL,
  `treatment_details` text NOT NULL,
  `procedure` text NOT NULL,
  `medicine_name` text NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `treatment`
--

INSERT INTO `treatment` (`treatment_id`, `patient_id`, `date`, `systolic`, `diastolic`, `temperature`, `pluse_rate`, `weight`, `height`, `doctor`, `treatment_details`, `procedure`, `medicine_name`, `status`) VALUES
(1, 'HN-000001-2024', '2024-04-04', 0, 0, 0, 0, 0, 0, 'พท.กัญภร พงศ์สุทธิกุล', 'office syndromes ดีขึ้นตามลำดับ', ' ฝังเข็ม', 'ยาแก้ปวด 2 ชุด\r\nยาทาแก้ช้ำ 1 ', 'ทำรายการเสร็จสิ้น'),
(2, 'HN-000008-2024', '2024-03-31', 120, 80, 37, 70, 50, 178, ' พท.กัญภร พงศ์สุทธิกุล', 'ปวดบ่าไหล่ ราวขึ้นหัว ปวดหัวร่วมด้วย เนื่องจากการตึงของกล้ามเนื้อบริเวณคอ', 'ฝังเข็ม', 'ยาคลายกล้ามเนื้อ 500 mg จำนวน 10 tab', 'เสร็จสิ้น'),
(3, 'HN-000013-2024', '2024-04-08', 0, 0, 0, 0, 0, 0, 'พท.กัญภร พงศ์สุทธิกุล', 'ฝังเข็มโดยใช้........', ' ฝังเข็ม', 'ยาทาแก้พกช้ำ', 'ทำรายการเสร็จสิ้น'),
(4, 'HN-000014-2024', '2024-04-09', 111, 111, 38, 123, 40, 155, 'พท.กัญภร พงศ์สุทธิกุล', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `citizen_id` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `role` varchar(15) NOT NULL,
  `tel` varchar(11) NOT NULL,
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`citizen_id`, `name`, `lastname`, `password`, `role`, `tel`, `img`) VALUES
('173518749711', 'พิณ ', 'จันวราสกุล', 'pin17', 'user', '0923457424', ''),
('173518749712', 'ธนภัทร', 'ฤทธิเรือง', 'tong1234', 'user', '0987657890', ''),
('199433576189', 'พจ.นันทธีรา', 'ภิญโญยิ่ง', '598384', 'doctor', '', '15fa91b6-c5d0-4c91-bf9f-bf09662f4e1f.jpg'),
('217696072982', 'พิมพ์สุดา', 'วัชรโสภณ', '458548', 'manager', '', ''),
('246535036268', 'ปวิตร ', 'สวัสดิวงศ์', 'sawas246', 'user', '0923457424', ''),
('328606077527', 'โสพล', 'ภูภาค', '196784', 'manager', '', ''),
('355405832581', 'ถามพัฒน์', 'เกียรติวิทยา', '176804', 'user', '', ''),
('3840678856455', 'ธัญชนก', 'ทองสัมฤทธิ์', 'bee5', 'doctor', '0958386459', 'Screenshot_20230215_072627.png'),
('402195779800', 'กิจพร', 'กลับเพชร', '546540', 'user', '', ''),
('408461587647', 'ขวัญ', 'วงศ์สวัสดิ์', '363604', 'user', '', ''),
('440556794906', 'สุพิชญา', 'พุ่มสนธิ', '837707', 'user', '', ''),
('476068534106', 'ฐิตา', 'ไกรภพ', '233723', 'user', '', ''),
('482823768165', 'บวรรัช', 'เกียรติโกศล', '870911', 'user', '', ''),
('578840402870', 'ลักษ์วิสา', 'นันทวัฒน์', '830777', 'user', '', ''),
('640778991085', 'พท.กัญภร', 'พงศ์สุทธิกุล', '716034', 'doctor', '', '3fed2e59-8bac-4d43-9bb7-dd082f0e1bee.jpg'),
('665343378371', 'ธนิตย์', 'ปิติจำเริญ', '214149', 'user', '', ''),
('693907610201', 'นภัสสร', 'เรืองทิพย์', '190070', 'admin', '', ''),
('753721497901', 'สุริยนต์', 'สตาภิรมย์', '438753', 'user', '', ''),
('831907527110', 'จักรภัทร์', 'กลิ่นเพชร', '737901', 'admin', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment_admin_page`
--
ALTER TABLE `appointment_admin_page`
  ADD PRIMARY KEY (`appointment_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `medical_records`
--
ALTER TABLE `medical_records`
  ADD PRIMARY KEY (`patient_id`);

--
-- Indexes for table `patient_course`
--
ALTER TABLE `patient_course`
  ADD PRIMARY KEY (`patient_course_id`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`purchase_id`);

--
-- Indexes for table `times_of_course`
--
ALTER TABLE `times_of_course`
  ADD PRIMARY KEY (`times_id`);

--
-- Indexes for table `treatment`
--
ALTER TABLE `treatment`
  ADD PRIMARY KEY (`treatment_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`citizen_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment_admin_page`
--
ALTER TABLE `appointment_admin_page`
  MODIFY `appointment_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `patient_course`
--
ALTER TABLE `patient_course`
  MODIFY `patient_course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `times_of_course`
--
ALTER TABLE `times_of_course`
  MODIFY `times_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
