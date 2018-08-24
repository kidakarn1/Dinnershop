-- phpMyAdmin SQL Dump
-- version 4.6.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 27, 2017 at 12:58 PM
-- Server version: 5.7.12-log
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dinnershop_data`
--

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `car_id` int(11) NOT NULL,
  `id_card` varchar(30) NOT NULL,
  `car_name` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`car_id`, `id_card`, `car_name`, `status`) VALUES
(17040626, 'uut', 'ttuuu', 'ว่าง'),
(17041001, 'www', 'ooooo', 'ว่าง'),
(17041012, 'uut', 'ttuuu', 'ว่าง'),
(17095138, 'พรบ 2890', 'กิดาการ ', 'ว่าง'),
(17114740, 'พรบ 20172', 'ทดลองนะจ๊ะ', 'ไม่ว่าง'),
(17114904, 'พรบ 20170', 'ทดลองนะจ๊ะ', 'ว่าง');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`) VALUES
(1, 'เครื่องดืมร้อน'),
(2, 'เครื่องดื่มเย็น'),
(3, 'เครื่องดื่มปั่น'),
(4, 'อาหารหลัก'),
(5, 'อาหารว่าง'),
(6, 'สินค้าใหม่'),
(7, 'สินค้าขายดี'),
(8, 'สินค้าแนะนำ'),
(9, 'cake');

-- --------------------------------------------------------

--
-- Table structure for table `evaluation`
--

CREATE TABLE `evaluation` (
  `eva_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `evaluation`
--

INSERT INTO `evaluation` (`eva_id`, `title`) VALUES
(1, 'มีความชัดเจนถูกต้องหน้าเชื่อถือและข้อมูลมีการปรับปรุงอยู่เสมอ'),
(2, 'การประชาสัมพันธ์ข่าวสาร ภาพในเว็บไซต์มีความเหมาะสมน่าสนใจ'),
(3, 'ปริมาณเนื้อหามีเพียงพอความต้องการ'),
(4, 'มีการจัดหม่วดหมู่ให้ง่ายต่อการ ค้าหาและทำความเข้าใจ'),
(5, 'สีสันในการออกแบบเว็บไซต์มีความเหมาะสม');

-- --------------------------------------------------------

--
-- Table structure for table `evaluation_form`
--

CREATE TABLE `evaluation_form` (
  `Num_id` int(11) NOT NULL,
  `mem_id` varchar(10) NOT NULL,
  `eva_id` int(11) NOT NULL,
  `Answer` int(11) NOT NULL,
  `Date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `evaluation_form`
--

INSERT INTO `evaluation_form` (`Num_id`, `mem_id`, `eva_id`, `Answer`, `Date_time`) VALUES
(201, '16100527', 1, 5, '2017-03-11 04:16:31'),
(202, '16100527', 2, 5, '2017-03-11 04:16:31'),
(203, '16100527', 3, 5, '2017-03-11 04:16:31'),
(204, '16100527', 4, 5, '2017-03-11 04:16:31'),
(205, '16100527', 5, 5, '2017-03-11 04:16:31'),
(206, '16100527', 1, 5, '2017-04-09 10:14:58'),
(207, '16100527', 2, 5, '2017-04-09 10:14:58'),
(208, '16100527', 3, 5, '2017-04-09 10:14:58'),
(209, '16100527', 4, 5, '2017-04-09 10:14:58'),
(210, '16100527', 5, 5, '2017-04-09 10:14:58'),
(211, '16100527', 1, 5, '2017-04-09 10:17:05'),
(212, '16100527', 2, 5, '2017-04-09 10:17:05'),
(213, '16100527', 3, 5, '2017-04-09 10:17:05'),
(214, '16100527', 4, 5, '2017-04-09 10:17:05'),
(215, '16100527', 5, 5, '2017-04-09 10:17:05');

-- --------------------------------------------------------

--
-- Table structure for table `flavour`
--

CREATE TABLE `flavour` (
  `num_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `flavour`
--

INSERT INTO `flavour` (`num_id`, `title`) VALUES
(1, 'รสชาติอาหารเครื่องดื่ม'),
(2, 'ราคา'),
(3, 'ปริมาณ'),
(4, 'การบริการพนักงาน'),
(5, 'บรรจุภัณฑ์ สวยงาม');

-- --------------------------------------------------------

--
-- Table structure for table `flavour_form`
--

CREATE TABLE `flavour_form` (
  `num_id` int(11) NOT NULL,
  `mem_id` varchar(10) NOT NULL,
  `eva_id` int(11) NOT NULL,
  `answer_Sco` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `mem_id` varchar(10) NOT NULL,
  `fname` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lname` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sex` varchar(6) NOT NULL,
  `telephone` varchar(10) NOT NULL,
  `line_id` varchar(30) NOT NULL,
  `facebook` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image` text NOT NULL,
  `register_date` date NOT NULL,
  `expired_Date` date NOT NULL,
  `brithday` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`mem_id`, `fname`, `lname`, `sex`, `telephone`, `line_id`, `facebook`, `address`, `image`, `register_date`, `expired_Date`, `brithday`) VALUES
('16034250', 'admin', 'admin', 'หญิง', '888888888', '', '', 'บบบบ', '', '2016-12-08', '2017-12-08', '2016-12-08'),
('16093708', 'นางสาวรัชนก', 'แซ่เตียว', '', '0925918361', '', 'Ratchanok Saetiew', '75หมู่2 ต.เกษตรสุวรรณ อ.บ่อทอง จ.ชลบุรี', '7305.jpg', '2016-12-09', '2017-12-09', '2016-12-09'),
('17030729', 'ouuuuuo', 'oouuu', 'ชาย', '7777777777', '7777777777', '7777777777', 'uuu', 'default.png', '2017-04-11', '2018-04-11', '2017-04-11'),
('17101027', 'ooo', 'ooo', 'ชาย', '0832287490', '0832287490', '0832287490', '0832287490', '', '2017-04-13', '2018-04-13', '2017-04-15'),
('17011403', 'uuu', 'uuu', 'ชาย', '0832218308', 'uu', 'uuu', 'uuu', 'default.png', '2017-04-14', '2018-04-14', '2017-04-13'),
('16093956', 'นางสาว หนึ่งฤทัย', 'ศักดิ์รัตนารักษ์', 'หญิง', '0900786133', '090786133', 'Nungrathai Sakrattanaruk', 'บ้านบึง ชลบุรี', 'default.png', '2016-12-09', '2017-12-09', '2016-12-09'),
('16094838', 'ไอยฤทธิ์', 'อ้องเจริญ', 'ชาย', '0626498726', 'abc0835870922', 'Iyarit Ongchareon', '165/79 ', 'S__10371227.jpg', '2016-12-09', '2017-12-09', '2016-12-09'),
('16121846', 'เทอดเกียรติ', 'พวงพั่วเพชร', 'ชาย', '0830762050', '-', '-', '889/123 ม.1 ต.บ้านบึง อ.บ้านบึง จ.ชลบุรี', 'default.png', '2016-12-09', '2017-12-09', '2016-12-09'),
('16095913', 'Watcharakorn', 'ArTcross', 'ชาย', '0631641706', 'leonartza007', 'leonartza007@hotmail.com', 'ชลบุรี', '06.jpg', '2016-12-09', '2017-12-09', '2016-12-09'),
('16095954', 'ณัฐนนท์', 'ศฤงคารินทร์', '', '0990538868', '', 'Nattanon Saringkarin', '46/1 ม.4 ต.มาบไผ่ อ.บ้านบึง จ.ชลบุรี', 'default.png', '2016-12-09', '2017-12-09', '2016-12-09'),
('16100527', 'กิดาการ', 'อินทปัญญา', 'ชาย', '0831101923', '111', 'kidakarn Intapanya', 'บ้านบึง', 'people.gif', '2016-12-09', '2017-12-09', '2016-12-09'),
('16100843', 'ปฏิพล', 'ประกอบผล', 'ชาย', '0910377190', 'pp.ks11', 'Ken Patipol', '93 หมู่ 6 ต.พลงตาเอี่ยม อ.วังจันทร์ จ.ระยอง', 'S__6438915.jpg', '2016-12-09', '2017-12-09', '2016-12-09'),
('16101148', 'นางสาวเบญจมาศ', 'ทิพวงศ์', 'หญิง', '0888523860', 'ben5730', 'Benjamas Tippawong', '612 ม.5 ต.หนองไผ่แก้ว อ.บ้านบึง จ.ชลบุรี', 'S__33226754.jpg', '2016-12-09', '2017-12-09', '2016-12-09'),
('16103034', 'นายธีรโชติ', 'ถิรบรรจงเจริญ', 'ชาย', '0814356472', '-', 'ธีรโชติ ถิรบรรจงเจริญ', '27/16 ห.6 ถ.เศรษฐกิจ ต.บ้านสวน อ.เมือง จ.ชลบุรี', 'default.png', '2016-12-09', '2017-12-09', '2016-12-09'),
('16103312', 'ปฐมพร', 'รุ่งเรืองฤทัย', '', '0927486210', '', 'rain-za@hotmail.com', ' 36 แสนสบาย2 ', 'default.png', '2016-12-09', '2017-12-09', '2016-12-09'),
('16103358', 'ปฐมพร', 'รุ่งเรืองฤทัย', 'ชาย', '0927486210', '', 'rain-za@hotmail.com', '36 แสนสบาย2 ', 'default.png', '2016-12-09', '2017-12-09', '2016-12-09'),
('16103528', 'jirachot', 'Lungban', 'ชาย', '0888405242', '', '', 'ต.บ้านบึง อ.บ้านบึง จ.ชลบุรี', 'default.png', '2016-12-09', '2017-12-09', '2016-12-09'),
('16103549', 'นาย อภิวัฒน์ ', 'ทิพย์รักษ์', 'ชาย', '0900807827', 'apiwattiprak27', 'Wamwisa Apiwat', '165/150', 'default.png', '2016-12-09', '2017-12-09', '2016-12-09'),
('16103740', 'มนทิวา', 'ภู่ระหงษ์', 'หญิง', '0993535825', 'pipang07', 'Monthiwa Poorahong', '45/2 ม.4 ต.หนองบอนแดง อ.บ้านบึง จ.ชลบุรี 20170', '1111111111111.jpg', '2016-12-09', '2017-12-09', '2016-12-09'),
('16104511', 'นางสาวนันฐิกา', 'วชิรมโนธรรม', 'หญิง', '0994161576', 'nanthika_6607', 'Poy Nanthika', '43/1 ม.4 ต.บ่อกวางทอง อ.บ่อทอง จ.ชลบุรี 20270', '11358.jpg', '2016-12-09', '2017-12-09', '2016-12-09'),
('16105033', 'นางสาวมานิตา', 'ชนิดนอก', 'หญิง', '0961090509', 'soda2299', 'Manita Chanitnok', '196/2 ม.1 ต.บ่อทอง อ.บ่อทอง จ.ชลบุรี ', '40958.jpg', '2016-12-09', '2017-12-09', '2016-12-09'),
('16112752', 'ธนกฤต', 'ทิมผล', 'ชาย', '0991047823', '0991047823', 'earth-universe2hotmail.com', '123/374 อ.เมือง จ.ชลบุรี 20000', 'ttt.jpg', '2016-12-09', '2017-12-09', '2016-12-09'),
('16112858', 'นาย ชานนทร์ ', ' สุโขพันธ์', 'ชาย', '0924534149', 'nonlove......', 'chanon sukhophan', '34/4 หมู่ 3 ต.พลงตาเอี่ยม อ.วังจันทร์ จ.ระยอง', 'default.png', '2016-12-09', '2017-12-09', '2016-12-09'),
('16113014', 'นางสาวปัทมา', 'สุนทรศิลป์', 'หญิง', '0628086981', 'giftwing2240', 'Gift Pattama', '159 ม.11 ต.ห้วยไร่ อ.หล่มสัก จ.เพชรบูรณ์', '14937456_1806798109561318_5263141196548364805_n.jpg', '2016-12-09', '2017-12-09', '2016-12-09'),
('16113025', 'กวิลณา', 'ทองคำ', 'หญิง', '0622671124', 'runing_30', 'kawinna thongkum', '163/6หมู่9ต.หนองอิรุณอ.บ้านบึงจ.ชลบุรี20170', 'default.png', '2016-12-09', '2017-12-09', '2016-12-09'),
('16113110', 'นางสาวปัทมา', 'สุนทรศิลป์', 'หญิง', '0628086981', 'giftwing2240', 'Gift Pattama', '159 ม.11 ต.ห้วยไร่ อ.หล่มสัก จ.เพชรบูรณ์', '14937456_1806798109561318_5263141196548364805_n.jpg', '2016-12-09', '2017-12-09', '2016-12-09'),
('16113655', 'นางสาวปัทมา', 'สุนทรศิลป์', 'หญิง', '0628086981', 'giftwing2240', 'Gift Pattama', '110 ม.1 ต.หนองใหญ่ อ.หนองใหญ่ จ.ชลบุรี', '15133683_1680612652251680_1301529526_o.jpg', '2016-12-09', '2017-12-09', '2016-12-09'),
('16113656', 'สิทธิพงษ์', 'กิตติสารวัณโณ', 'ชาย', '0615033849', '0615033849', 'James Rodriguez', '137/5 ม.2 ตหนองอิรุณ อ.บ้านบึง จ.ชลบุรี', '14975819_747563112048783_773069820_o.jpg', '2016-12-09', '2017-12-09', '2016-12-09'),
('16113944', 'ชินกร', 'วินทะไชย', 'ชาย', '0626585791', 'pai108', 'pai-pai', '835/9', 'default.png', '2016-12-09', '2017-12-09', '2016-12-09'),
('16114302', 'กษมา', 'เจริญศรี', 'ชาย', '0882029248', 'coke2484', 'kasama jaroensri', '386/4 หมู่10 ต.หนองอิรุณ อ.บ้านบึง.จ.ชลบุรี', 'default.png', '2016-12-09', '2017-12-09', '2016-12-09'),
('16114522', 'นางสาวชุติญา', 'ส่งสุพร', '', '0955511855', 'baby', 'Tinker Bele', '29 ถ.ประโยชน์', 'default.png', '2016-12-09', '2017-12-09', '2016-12-09'),
('16050538', 'natthapon', 'naramat', '', '0847827437', '', 'execss700@gmail.com', 'บ้านบึง ชลบุรี', '90.png', '2016-12-10', '2017-12-10', '2016-12-10'),
('17101408', 'oo', 'ooo', 'ชาย', '0831101923', 'w', 'w', 'oo', 'default.png', '2017-03-02', '2018-03-02', '2017-03-02'),
('17072620', 'กิดาการ', 'อินทปัญญาๅๅๅๅๅๅ', 'ชาย', '1111111111', 'kid2541', 'kida', 'oo', 'iocn.glf.png', '2017-03-10', '2018-03-10', '2017-03-10'),
('17072844', 'กิดาการ', 'อินทปัญญาๅๅๅๅๅๅ', 'ชาย', '0000000000', 'kid2541', 'kida', 'oo', 'iocn.glf.png', '2017-03-10', '2018-03-10', '2017-03-10'),
('17074938', 'กิดาการ', 'อินทปัญญาๅๅๅๅๅๅ', 'ชาย', '0099999999', 'kid2541', 'kida', 'oo', 'default.png', '2017-03-10', '2018-03-10', '2017-03-10'),
('17090521', 'lll', 'll', 'ชาย', '1111111115', '', '', 'oo', 'default.png', '2017-03-10', '2018-03-10', '2017-03-10'),
('17091326', 'ลูกน้ำ', 'อินทปัญญา', '', '0853871947', 'kkk', 'kkk', 'บ้านบึง', '2.jpg', '2017-03-10', '2018-03-10', '2017-03-10'),
('17125752', 'iii', 'i', 'หญิง', '1111111115', '', '', 'i', 'default.png', '2017-03-11', '2018-03-11', '2017-03-11'),
('17125818', 'iii', 'i', '', '1111111115', '', '', 'i', 'default.png', '2017-03-11', '2018-03-11', '2017-03-11'),
('17125935', 'iii', 'i', '', '1111111118', '', '', 'i', 'default.png', '2017-03-11', '2018-03-11', '2017-03-11'),
('17121725', 'กิดาการ', 'อิ', '', '3333333333', '', '', 'oo', 'default.png', '2017-03-13', '2018-03-13', '2017-03-13'),
('17124202', 'ooooo', 'ooooo', '', '5555555555', '', '', 'oo', 'default.png', '2017-03-13', '2018-03-13', '2017-03-13'),
('17014310', 'lllll', 'lllll', 'ชาย', '0384496540', '', '', 'ii', 'default.png', '2017-03-13', '2018-03-13', '2017-03-13'),
('17023101', 'iiii', 'iiiii', '', '7777777777', '', '', 'ooo', 'default.png', '2017-03-13', '2018-03-13', '2017-03-13'),
('17034645', 'พันเอก เอริท์', 'เอริท์', 'ชาย', '0991947823', 'kid2541', 'kidakarn Intapanya', 'บ้านบึง', 'default.png', '2017-03-15', '2018-03-15', '2017-03-15'),
('17022133', 'ปฐมพร', 'รุ่งเรืองฤทัย', 'ชาย', '0927486210', '', '', '', 'default.png', '2017-04-18', '2018-04-18', '1997-11-03'),
('17023452', 'patompron', 'rungruangrutai', 'ชาย', '092786211', '', '', '', 'default.png', '2017-04-18', '2018-04-18', '0000-00-00'),
('17025135', 'llll', 'mmmm', 'หญิง', '0900466', '', '', 'ttt', 'default.png', '2017-04-18', '2018-04-18', '2017-04-07'),
('17035337', '11', '11', 'ชาย', '0927486221', '', '', '', 'default.png', '2017-04-18', '2018-04-18', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `mempromotion`
--

CREATE TABLE `mempromotion` (
  `memPro_id` int(11) NOT NULL,
  `mem_id` varchar(10) NOT NULL,
  `mem_Num` int(11) NOT NULL,
  `mem_Sum` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mempromotion`
--

INSERT INTO `mempromotion` (`memPro_id`, `mem_id`, `mem_Num`, `mem_Sum`) VALUES
(34, '16034059', 2, 50),
(35, '16034250', 16, 120),
(36, '16085255', 0, 0),
(37, '16093708', 1, 25),
(38, '16093747', 95, 1755),
(39, '16093956', 1, 20),
(40, '16094838', 1, 30),
(41, '16095357', 0, 0),
(42, '16095633', 0, 0),
(43, '16095913', 2, 70),
(44, '16095954', 1, 20),
(45, '16100527', 7, 190),
(46, '16100843', 5, 125),
(47, '16101148', 3, 105),
(48, '16103034', 1, 30),
(49, '16103312', 1000, 22800),
(50, '16103312', 1000, 22800),
(51, '16103358', 0, 0),
(52, '16103528', 600, 0),
(53, '16103549', 8, 40),
(54, '16103740', 1, 25),
(55, '16104511', 1, 40),
(56, '16105033', 0, 0),
(57, '16112752', 0, 0),
(58, '16112801', 0, 0),
(59, '16112858', 9, 25),
(60, '16112907', 0, 0),
(61, '16112935', 0, 0),
(62, '16113014', 0, 0),
(63, '16113014', 0, 0),
(64, '16113025', 1, 35),
(65, '16113030', 0, 0),
(66, '16113110', 0, 0),
(67, '16113110', 0, 0),
(68, '16113129', 0, 0),
(69, '16113154', 0, 0),
(70, '16113232', 0, 0),
(71, '16113232', 0, 0),
(72, '16113317', 0, 0),
(73, '16113317', 0, 0),
(74, '16113317', 0, 0),
(75, '16113317', 0, 0),
(76, '16113317', 0, 0),
(77, '16113317', 0, 0),
(78, '16113317', 0, 0),
(79, '16113317', 0, 0),
(80, '16113317', 0, 0),
(81, '16113317', 0, 0),
(82, '16113317', 0, 0),
(83, '16113351', 0, 0),
(84, '16113452', 0, 0),
(85, '16113504', 0, 0),
(86, '16113655', 1, 40),
(87, '16113656', 0, 0),
(88, '16113903', 0, 0),
(89, '16113907', 0, 0),
(90, '16113944', 0, 0),
(91, '16113948', 0, 0),
(92, '16114121', 0, 0),
(93, '16114206', 0, 0),
(94, '16114302', 0, 0),
(95, '16114302', 0, 0),
(96, '16114341', 0, 0),
(97, '16114415', 0, 0),
(98, '16114522', 0, 0),
(99, '16114617', 0, 0),
(100, '16121846', 1, 30),
(101, '16050538', 0, 0),
(102, '17101408', 0, 0),
(103, '17072620', 0, 0),
(104, '17072844', 0, 0),
(105, '17074938', 0, 0),
(106, '17090521', 0, 0),
(107, '17091326', 0, 0),
(108, '17125752', 0, 0),
(109, '17125752', 0, 0),
(110, '17125818', 0, 0),
(111, '17125935', 0, 0),
(112, '17121725', 0, 0),
(113, '17124202', 0, 0),
(114, '17014310', 0, 0),
(115, '17023101', 0, 0),
(116, '17034645', 0, 0),
(117, '17030729', 0, 0),
(118, '17101027', 0, 0),
(119, '17011403', 0, 0),
(120, '17022133', 0, 0),
(121, '17023452', 0, 0),
(122, '17025135', 0, 0),
(123, '17035337', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `orderdns`
--

CREATE TABLE `orderdns` (
  `pro_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_number` int(11) NOT NULL,
  `price_sum` int(11) NOT NULL,
  `mem_id` varchar(10) NOT NULL,
  `orderAdd` varchar(1500) NOT NULL,
  `order_date` datetime NOT NULL,
  `order_status` varchar(100) NOT NULL,
  `distance` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `telephone` varchar(10) NOT NULL,
  `car_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orderdns`
--

INSERT INTO `orderdns` (`pro_id`, `order_id`, `order_number`, `price_sum`, `mem_id`, `orderAdd`, `order_date`, `order_status`, `distance`, `name`, `telephone`, `car_id`) VALUES
(1001, 16, 1, 25, '127.0.0.1', 'ชลบุรี', '2017-05-07 03:08:45', 'จัดทำเสร็จสิ้น', '5', 'กิดาการ อินทปัญญา', '0907210897', 0),
(1003, 7, 1, 25, '127.0.0.1', 'ในร้าน', '2017-05-06 11:11:03', 'ส่งสินค้าเสร็จสิ้น', '5', 'ณัฐพล', '0907210897', 17040626),
(1006, 14, 2, 50, '127.0.0.1', 'บ้านบึง', '2017-05-07 02:19:16', 'จัดทำเสร็จสิ้น', '5', 'กิดาการ อินทปัญญา', '0907210897', 0),
(1007, 4, 1, 25, '127.0.0.1', '', '2017-05-06 10:43:44', 'กำลังดำเนินการจัดส่ง', '5', 'กิดาการ อินทปัญญา', '0831101923', 17095138),
(1007, 7, 1, 25, '127.0.0.1', 'ในร้าน', '2017-05-06 11:11:03', 'ส่งสินค้าเสร็จสิ้น', '5', 'ณัฐพล', '0907210897', 17040626),
(2001, 18, 1, 35, '127.0.0.1', 'ชลบุรี', '2017-05-07 06:00:49', 'กำลังดำเนินการจัดทำ', '5', 'กิดาการ อินทปัญญา', '0907210897', 0),
(2011, 12, 2, 40, '127.0.0.1', 'ในร้าน', '2017-05-07 02:06:00', 'จัดทำเสร็จสิ้น', '5', 'กิดาการ อินทปัญญา', '0907210897', 0),
(4001, 16, 1, 30, '127.0.0.1', 'ชลบุรี', '2017-05-07 03:08:45', 'จัดทำเสร็จสิ้น', '5', 'กิดาการ อินทปัญญา', '0907210897', 0),
(4004, 7, 1, 30, '127.0.0.1', 'ในร้าน', '2017-05-06 11:11:03', 'ส่งสินค้าเสร็จสิ้น', '5', 'ณัฐพล', '0907210897', 17040626),
(4004, 12, 4, 120, '127.0.0.1', 'ในร้าน', '2017-05-07 02:06:00', 'จัดทำเสร็จสิ้น', '5', 'กิดาการ อินทปัญญา', '0907210897', 0),
(4004, 19, 1, 30, '16100527', 'บ้านบึง', '2017-05-20 02:47:21', 'กำลังดำเนินการจัดทำ', '5', '', '', 0),
(4004, 20, 4, 120, '16100527', 'บ้านบึง', '2017-05-20 02:49:30', 'กำลังดำเนินการจัดทำ', '5', '', '', 0),
(4005, 1, 1, 35, '127.0.0.1', 'ในร้าน', '2017-05-06 10:37:07', 'กำลังดำเนินการจัดส่ง', '5', '33333', '3333333333', 17095138),
(4005, 10, 1, 35, '127.0.0.1', 'ในร้าน', '2017-05-07 01:59:06', 'ส่งสินค้าเสร็จสิ้น', '5', 'กิดาการ อินทปัญญา', '0801009745', 17095138),
(4008, 14, 2, 70, '127.0.0.1', 'บ้านบึง', '2017-05-07 02:19:16', 'จัดทำเสร็จสิ้น', '5', 'กิดาการ อินทปัญญา', '0907210897', 0),
(5003, 19, 2, 40, '16100527', 'บ้านบึง', '2017-05-20 02:47:21', 'กำลังดำเนินการจัดทำ', '5', '', '', 0),
(9001, 18, 2, 270, '127.0.0.1', 'ชลบุรี', '2017-05-07 06:00:49', 'กำลังดำเนินการจัดทำ', '5', 'กิดาการ อินทปัญญา', '0907210897', 0),
(9002, 8, 1, 125, '127.0.0.1', 'ในร้าน', '2017-05-07 09:45:27', 'ส่งสินค้าเสร็จสิ้น', '5', 'กิดาการ อินทปัญญา', '1111111111', 17041001),
(9003, 10, 3, 75, '127.0.0.1', 'ในร้าน', '2017-05-07 01:59:06', 'ส่งสินค้าเสร็จสิ้น', '5', 'กิดาการ อินทปัญญา', '0801009745', 17095138),
(9010, 4, 1, 25, '127.0.0.1', '', '2017-05-06 10:43:44', 'กำลังดำเนินการจัดส่ง', '5', 'กิดาการ อินทปัญญา', '0831101923', 17095138);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pro_id` int(11) NOT NULL,
  `pro_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `Description` varchar(100) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `image` text NOT NULL,
  `pro_number` int(11) NOT NULL,
  `calories` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pro_id`, `pro_name`, `price`, `Description`, `cat_id`, `image`, `pro_number`, `calories`) VALUES
(1001, 'ลาเต้', 25, 'ร้อน', 1, 'cha9.gif', 9987, '280'),
(2001, 'ลาเต้', 35, 'เย็น', 2, 'yq8.gif', 8822, '317'),
(3001, 'ลาเต้', 40, 'ปั่น', 3, 'p1.gif', 8953, '317'),
(1002, 'คาปูชิโน่', 25, 'ร้อน', 1, 'cha4.gif', 8907, '280'),
(2002, 'คาปูชิโน่', 35, 'เย็น', 2, 'yq7.gif', 8951, '320'),
(3002, 'คาปูชิโน่', 40, 'ปั่น', 3, 'yq19.gif', 8982, '320'),
(1003, 'อเมริกาโน่', 25, 'ร้อน', 1, 'cha10.gif', 8853, '280'),
(2003, 'อเมริกาโน่', 35, 'เย็น', 2, 'yq12.gif', 8994, '300'),
(1004, 'เอสเพรสโซ่', 25, 'ร้อน', 1, 'cha9.gif', 8997, '280'),
(2004, 'เอสเพรสโซ่', 35, 'เย็น', 2, 'yq16.gif', 8986, '320'),
(3004, 'เอสเพรสโซ่', 40, 'ปั่น', 3, 'yq20.gif', 8995, '320'),
(1005, 'มอคค่า', 25, 'ร้อน', 1, 'cha6.gif', 8998, '280'),
(2005, 'มอคค่า', 35, 'เย็น', 2, 'yq6.gif', 8989, '320'),
(3005, 'มอคค่า', 40, 'ปั่น', 3, 'yq21.gif', 8998, '320'),
(1006, 'ชานมแดง', 25, 'ร้อน', 1, 'cha.gif', 8988, '120'),
(2006, 'ชานมแดง', 35, 'เย็น', 2, 'yq1.gif', 8994, '140'),
(3006, 'ชานมแดง', 40, 'ปั่น', 3, 'p17.gif', 8998, '140'),
(1007, 'ชานมเขียว', 25, 'ร้อน', 1, 'cha1.gif', 8991, '300'),
(2007, 'ชานมเขียว', 35, 'เย็น', 2, 'yq.gif', 8997, '319'),
(3007, 'ชานมเขียว', 40, 'ปั่น', 3, 'p7.png', 8997, '319'),
(2008, 'เนสกาแฟ', 20, 'เย็น', 2, 'yq9.gif', 8997, '320'),
(1009, 'ชาแดง', 15, 'ร้อน', 1, 'cha8.gif', 8999, '80'),
(2009, 'ชาแดง', 20, 'เย็น', 2, 'yq15.gif', 9000, '100'),
(3009, 'ชาแดง', 25, 'ปั่น', 3, 'yq22.gif', 9000, '100'),
(2010, 'ชามะนาว', 20, 'เย็น', 2, 'yq11.gif', 9000, '100'),
(2011, 'ชาเขียว(ไม่นม)', 20, 'เย็น', 2, 'yq17.gif', 8996, '280'),
(2012, 'โอเลี้ยง', 20, 'เย็น', 2, 'y10.gif', 8999, '165'),
(1013, 'โอวัลติน', 15, 'ร้อน', 1, 'cha2.gif', 895, '310'),
(2013, 'โอวัลติน', 20, 'เย็น', 2, 'yq4.gif', 9000, '334'),
(3013, 'โอวัลติน', 25, 'ปั่น', 3, 'p13.png', 9000, '334'),
(1014, 'โกโก้', 15, 'ร้อน', 1, 'cha3.gif', 897, '310'),
(2014, 'โกโก้', 20, 'เย็น', 2, 'yq5.gif', 8999, '334 '),
(3014, 'โกโก้', 25, 'ปั่น', 3, 'p3.png', 9000, '334 '),
(2015, 'น้ำแดงโซดา', 20, 'เย็น', 2, 'yq14.gif', 9000, '144'),
(3016, 'น้ำส้ม', 25, 'ปั่น', 3, 'p88.gif', 9000, '90'),
(3017, 'น้ำมะนาว', 25, 'ปั่น', 3, 'p20.gif', 9000, '10'),
(3018, 'น้ำสตรอเบอร์รี่', 25, 'ปั่น', 3, 'p18.png', 9000, '40'),
(3019, 'น้ำแตงโม', 25, 'ปั่น', 3, 'p14.png', 9000, '75'),
(4001, 'ผัดกระเพราหมู', 30, '-', 4, '1.gif', 8926, '580'),
(4002, 'ผัดกระเพรากุ้ง', 30, '-', 4, 'f44.gif', 8945, '540'),
(4004, 'ผัดกระเพราหมึก', 30, '-', 4, 'f43.gif', 8958, '620'),
(4005, 'ผัดกระเพรารวมมิตร', 35, '-', 4, 'f47.gif', 8981, '680'),
(4006, 'ไข่ดาว', 5, '-', 4, 'f42.gif', 8998, '215'),
(4007, 'โจ๊กหมู', 30, '-', 4, 'f45.gif', 8997, '160'),
(4008, 'โจ๊กรวมมิตร', 35, '-', 4, 'f46.gif', 8987, '250'),
(5001, 'เฟรนพรายทอด', 20, '-', 5, 's3.gif', 8781, '920'),
(5002, 'ไส้กรอกนึ่ง', 20, '-', 5, 's4.gif', 987, '110'),
(5003, 'ขนมปังหน้าหมูทอด', 20, '-', 5, 's6.gif', 8704, '368'),
(5004, 'แซนวิสปิ้ง', 20, '-', 5, 's5.gif', 8998, '328'),
(9001, 'เครปเค้ก ช็อค', 135, '-', 9, 'cake1.png', 992, '600'),
(9002, 'เค้กช็อคหน้านิ่ม', 125, '-', 9, 'cake2.png', 987, '275'),
(9003, 'มาการอง', 25, '-', 9, 'cake3.png', 990, '100'),
(9004, 'เครปเค้กเรนโบว์', 135, '-', 9, 'cake4.png', 996, '550'),
(9005, 'บราวนี่', 65, '-', 9, 'cake5.png', 999, '340'),
(9006, 'เครปเย็นช็อค', 35, '-', 9, 'cake6.gif', 999, '450'),
(9007, 'เครปเย็นบรูเบอร์รี่', 35, '-', 9, 'cake7.gif', 997, '450'),
(9008, 'ช็อคโกแลตลาวา', 40, '-', 9, 'cake8.gif', 998, '160'),
(9009, 'เค้กกล้วยหอม', 15, '-', 9, 'cake6_6.gif', 1000, '376'),
(9010, 'เค้กส้ม', 25, '-', 9, 'cake10.gif', 997, '140');

-- --------------------------------------------------------

--
-- Table structure for table `promotion`
--

CREATE TABLE `promotion` (
  `promotion_id` int(11) NOT NULL,
  `promotion_name` varchar(50) NOT NULL,
  `description` varchar(300) NOT NULL,
  `image` text NOT NULL,
  `promotion_dateon` date NOT NULL,
  `promotion_Dateoff` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `promotion`
--

INSERT INTO `promotion` (`promotion_id`, `promotion_name`, `description`, `image`, `promotion_dateon`, `promotion_Dateoff`) VALUES
(1, 'สุ่มของรางวัล', 'ซื้อสินค้า ของทางร้าน ครบ 200 บาท คุณจะได้รับ 1 สิทธิ์ ในการสุ่มของรางวัล', '1.gif', '2016-12-28', '2016-12-30'),
(2, 'ซื้อครบ 500 บาท', 'ซื้อครบ 500 บาทขึ้นไป ได้ส่วนลด 10เปอร์เซนตร์', '5.gif', '2016-12-15', '2016-12-06'),
(3, 'รับทำข้าวกล่อง', 'ซื้อ 150 กล่อง ฟรี 10 กล่อง บริการส่งถึงที่', '3.gif', '2016-12-13', '2016-12-28');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staff_id` int(11) NOT NULL,
  `fname` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lname` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `telephone` varchar(10) NOT NULL,
  `sex` varchar(6) NOT NULL,
  `education` varchar(50) NOT NULL,
  `Salary` int(11) NOT NULL,
  `staff_Startdate` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_id`, `fname`, `lname`, `address`, `telephone`, `sex`, `education`, `Salary`, `staff_Startdate`) VALUES
(16034250, 'admin', 'admin', 'บบบบ', '888888888', 'ชาย', 'ชาย', 1000000, '0000-00-00'),
(17034616, 'cd', 'dd', 'บ้านบึง', '1234567890', 'ชาย', 'ปวช', 10000, '0000-00-00'),
(17025441, 'p', 'p', 'p', 'p', 'ชาย', 'ปวช', 10000, '0000-00-00'),
(17025509, 'a', 'a', 'p', 'p', 'ชาย', 'ปวช', 10000, '0000-00-00'),
(17012834, 'ตึ๋ง', 'DNS', 'DNS', '0831101923', 'ชาย', 'ปวส2', 800000, '2017-04-30'),
(17100047, 'kidakarn', 'Intapanya', 'บ้านบึง', '1234567890', 'ชาย', 'ปวช', 30000, '2017-05-26'),
(17114740, 'ทดลองนะจ๊ะ', 'นามสกุล', 'บ้านบึง', '1234567890', 'ชาย', 'ปวช', 2000000, '2017-05-12'),
(17114904, 'ทดลองนะจ๊ะ', 'นามสกุล', 'บ้านบึง', '1234567890', 'ชาย', 'ปวช', 2000000, '2017-05-12'),
(17120413, 'Chef', 'Chef', 'Chef', 'Chef', 'ชาย', 'Chef', 0, '2017-05-25'),
(17120843, 'Chef', 'Chef', 'Chef', 'Chef', 'ชาย', 'Chef', 0, '2017-05-25'),
(17120912, 'Chef', 'Chef', 'Chef', 'Chef', 'ชาย', 'Chef', 0, '2017-05-20'),
(17121106, 'Chef', 'Chef', 'Chef', 'Chef', 'ชาย', 'Chef', 0, '2017-05-31'),
(17121142, 'uuuu', 'u', 'ddd', 'u', 'ชาย', '333', 222, '2017-05-24'),
(17121205, 'Chef', 'Chef', '1111', 'iiii', 'ชาย', 'www', 11111, '2017-05-18'),
(17121534, 'Chef', 'Chef', 'Chef', 'Chef', 'ชาย', 'Chef', 0, '2017-05-18'),
(17035316, 'องอาจ', 'ชาติชาย', '', '', 'ชาย', '', 0, '2017-05-26'),
(17035507, 'iiii', 'iiii', 'i', 'i', '', 'i', 1111, '2017-05-19'),
(17035630, 'uuu', 'uuu', '', '', '', '', 0, '2017-05-19'),
(17035852, 'ooooo', 'ooo', '', '', '', '', 0, '2017-05-27'),
(17035910, 'ooooo', 'ooo', '', '', '', '', 0, '2017-05-27'),
(17040033, 'ooooo', 'ooo', '', '', '', '', 0, '2017-05-27'),
(17040218, 'iii', 'iiii', '', '', '', '', 0, '0000-00-00'),
(17040417, 'ttuuu', 'uuuuu', '', '', '', '', 0, '2017-05-19'),
(17040501, 'ttuuu', 'uuuuu', '', '', '', '', 0, '2017-05-19'),
(17040626, 'ttuuu', 'uuuuu', '', '', '', '', 0, '2017-05-19'),
(17041001, 'ooooo', 'ooo', '', '', '', '', 0, '2017-05-27'),
(17041012, 'ttuuu', 'uuuuu', '', '', '', '', 0, '2017-05-19'),
(17095138, 'กิดาการ ', 'อินทปัญญา', 'บ้านบึง', '0831101923', 'ชาย', 'ปวช', 20000, '2017-05-26');

-- --------------------------------------------------------

--
-- Table structure for table `upimage`
--

CREATE TABLE `upimage` (
  `up_id` int(11) NOT NULL,
  `mem_id` int(11) NOT NULL,
  `Description` varchar(1000) NOT NULL,
  `image` varchar(200) NOT NULL,
  `Down_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `upimage`
--

INSERT INTO `upimage` (`up_id`, `mem_id`, `Description`, `image`, `Down_date`) VALUES
(9, 16100527, 'wwwww', '1.jpg', '2002-05-17');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` varchar(20) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(150) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `status`) VALUES
('16034250', 'Admin', 'e807f1fcf82d132f9bb018ca6738a19f', 'Admin'),
('16050538', '0847827437', '0515ebc71a9686d4ae4a0feb68a8e38f', ''),
('16093708', '0925918361', 'e48ff119cfd2ecbe16a0de5af6d9cb04', ''),
('16093956', '0900786133', '5ec2ef612d3dc1fdc7baff806bd690c4', 'User'),
('16094838', '0626498726', 'adbc0d486ba78ec80504cca58bc2a7c6', 'User'),
('16095913', '0631641706', 'c0178513dac042518dd069fb4a0b3c06', 'Blacklist'),
('16095954', '0990538868', 'd23271be76fa0d8700517044b72a0683', 'User'),
('16100527', '0831101923', '25f9e794323b453885f5181f1b624d0b', 'User'),
('16100843', '0910377190', '91ad71844ea437ac1583c79b142bf3db', 'User'),
('16101148', '0888523860', '005e099d93dc748368ddd38c32426eed', 'User'),
('16103034', '0814356472', 'cb554b2b086b04ede7ced19fbfa8a2e4', 'User'),
('16103312', '0927486210', 'ab8219628ebebd9ade1e6aa4f68e9ba2', 'User'),
('16103358', '0927486210', 'ab8219628ebebd9ade1e6aa4f68e9ba2', 'User'),
('16103528', '0888405242', '9494b8d47d7e123542df6abaf83bde11', 'Blacklist'),
('16103549', '0900807827', 'c17c0731d7ef52b58126260d1a481be4', 'User'),
('16103740', '0993535825', '7f44cdbf96345143cfcd8f6d36f1ae2e', 'User'),
('16104511', '0994161576', '7fd6f28d15678d3dfe9f0868fa1404cd', 'User'),
('16105033', '0961090509', 'eae0505135fc90dc364578820e8bd68f', 'User'),
('16112752', '0991047823', 'e176e7a7982fefc8cbf7764907681d36', 'User'),
('16112801', '0955511855', '04f3cc89c8687b8d60e45d49d72ca360', 'User'),
('16112858', '0924534149', '371067dd8a8e024d1c1cae082645c6b6', 'User'),
('16112907', '0955511855', '04f3cc89c8687b8d60e45d49d72ca360', 'User'),
('16112935', '0955511855', '04f3cc89c8687b8d60e45d49d72ca360', 'User'),
('16113014', '0873264238', '57c7ba4b6a7293c5ae7cc962d4254f56', 'User'),
('16113025', '0622671124', 'd765709f69dc5ca77d77a61d9f2907a1', 'User'),
('16113030', '0955511855', '04f3cc89c8687b8d60e45d49d72ca360', 'User'),
('16113110', '0873264238', '57c7ba4b6a7293c5ae7cc962d4254f56', 'User'),
('16113129', '0873264238', '57c7ba4b6a7293c5ae7cc962d4254f56', 'User'),
('16113154', '0955511855', '04f3cc89c8687b8d60e45d49d72ca360', 'User'),
('16113317', '0955511855', '04f3cc89c8687b8d60e45d49d72ca360', 'User'),
('16113351', '0955511855', '04f3cc89c8687b8d60e45d49d72ca360', 'User'),
('16113452', '0626585791', '6cdffd250ceaa19c76e5f87f4a6b6b5e', 'User'),
('16113504', '0626585791', '6cdffd250ceaa19c76e5f87f4a6b6b5e', 'User'),
('16113655', '0628086981', '913e41d1b6bccfae771a06d89341d9a4', 'User'),
('16113656', '0615033849', '853c9303b1d780408af57f3de56015ea', 'User'),
('16113903', '0626585791', '6cdffd250ceaa19c76e5f87f4a6b6b5e', 'User'),
('16113907', '0626585791', '6cdffd250ceaa19c76e5f87f4a6b6b5e', 'User'),
('16113944', '0626585791', '6cdffd250ceaa19c76e5f87f4a6b6b5e', 'User'),
('16113948', '0955511855', '04f3cc89c8687b8d60e45d49d72ca360', 'User'),
('16114121', '0955511855', '04f3cc89c8687b8d60e45d49d72ca360', 'User'),
('16114206', '0873264238', '57c7ba4b6a7293c5ae7cc962d4254f56', 'User'),
('16114302', '0882029248', 'f94742658d62fb9dc640fed57471f665', 'User'),
('16114341', '0873264238', '57c7ba4b6a7293c5ae7cc962d4254f56', 'User'),
('16114415', '0873264238', '57c7ba4b6a7293c5ae7cc962d4254f56', 'User'),
('16114522', '0955511855', '04f3cc89c8687b8d60e45d49d72ca360', 'User'),
('16121846', '0830762050', 'e49b369fe15b90587fcc4774dffb9b4b', 'User'),
('17011403', '0832218308', '25f9e794323b453885f5181f1b624d0b', 'User'),
('17012834', 'DNS', 'ed5f2bdecbd4bd349d09412d1ff6a6fb', 'Admin'),
('17014310', '0384496540', 'b16ea9e927f9a4343122b8fc64257912', 'User'),
('17022133', '0927486210', 'ab8219628ebebd9ade1e6aa4f68e9ba2', 'User'),
('17023101', '7777777777', '664fae06a748e656511d55b59fc6f85e', 'User'),
('17023452', '092786211', '36348bac54783894c530aa0ee7eeab44', 'User'),
('17025135', '0900466', 'c8c81bc1918c9058d202196c74c8e3b5', 'User'),
('17025441', 'p', '83878c91171338902e0fe0fb97a8c47a', 'Admin'),
('17025509', 'p', '83878c91171338902e0fe0fb97a8c47a', 'Admin'),
('17030729', '7777777777', '664fae06a748e656511d55b59fc6f85e', 'User'),
('17034616', 'staff', 'e807f1fcf82d132f9bb018ca6738a19f', 'Staff'),
('17034645', '0991947823', 'f1a7145e19c81cc62590ecaa95a1db1b', 'User'),
('17035316', 'uuu', '698d51a19d8a121ce581499d7b701668', 'Driver'),
('17035337', '0927486221', 'db37c53908b482c00d77556f8aaa5c83', 'User'),
('17035507', 'i', '865c0c0b4ab0e063e5caa3387c1a8741', 'Driver'),
('17035630', '', 'd41d8cd98f00b204e9800998ecf8427e', 'Driver'),
('17035852', '', 'd41d8cd98f00b204e9800998ecf8427e', 'Driver'),
('17035910', '', 'd41d8cd98f00b204e9800998ecf8427e', 'Driver'),
('17040033', '', 'd41d8cd98f00b204e9800998ecf8427e', 'Driver'),
('17040218', '', 'd41d8cd98f00b204e9800998ecf8427e', 'Driver'),
('17040417', '', 'd41d8cd98f00b204e9800998ecf8427e', 'Driver'),
('17040501', '', 'd41d8cd98f00b204e9800998ecf8427e', 'Driver'),
('17040626', '', 'd41d8cd98f00b204e9800998ecf8427e', 'Driver'),
('17041001', '', 'd41d8cd98f00b204e9800998ecf8427e', 'Driver'),
('17041012', '', 'd41d8cd98f00b204e9800998ecf8427e', 'Driver'),
('17072620', '1111111111', 'e11170b8cbd2d74102651cb967fa28e5', 'User'),
('17072844', '0000000000', 'f1b708bba17f1ce948dc979f4d7092bc', 'User'),
('17074938', '0099999999', '5afbc2f4d99dc80ab9547c4a2c60f397', 'User'),
('17090521', '1111111115', 'd7730c44df7589bf54f13c64bfadeeeb', 'User'),
('17091326', '0853871947', '80d1d0d7ec18afa9077fc20d5b95a7c1', 'User'),
('17095138', 'kid', 'e807f1fcf82d132f9bb018ca6738a19f', 'Driver'),
('17100047', 'staff', 'e807f1fcf82d132f9bb018ca6738a19f', 'Staff'),
('17101027', '0832287490', '79b292f1ca237c9e64829d9e94dd88c8', 'User'),
('17101408', '0831101923', 'aca11c3c9ee5cef476640d29e225076c', 'User'),
('17114740', 'Driver', 'e807f1fcf82d132f9bb018ca6738a19f', 'Driver'),
('17114904', 'Driver', 'e807f1fcf82d132f9bb018ca6738a19f', 'Driver'),
('17120413', 'Chef', 'e807f1fcf82d132f9bb018ca6738a19f', 'Chef'),
('17120843', 'Chef1', 'e807f1fcf82d132f9bb018ca6738a19f', 'Chef'),
('17120912', 'sssssss', 'dcddb75469b4b4875094e14561e573d8', 'Admin'),
('17121106', 'Chef', 'e807f1fcf82d132f9bb018ca6738a19f', 'Chef'),
('17121142', 'u', '7b774effe4a349c6dd82ad4f4f21d34c', 'Admin'),
('17121205', '6666', 'f379eaf3c831b04de153469d1bec345e', 'Staff'),
('17121534', 'ChefChef', 'e807f1fcf82d132f9bb018ca6738a19f', 'Chef'),
('17121725', '3333333333', '4aee3e28df37ea1af64bd636eca59dcb', 'User'),
('17124202', '5555555555', 'aca11c3c9ee5cef476640d29e225076c', 'User'),
('17125752', '1111111115', 'd7730c44df7589bf54f13c64bfadeeeb', 'User'),
('17125818', '1111111115', 'd7730c44df7589bf54f13c64bfadeeeb', 'User'),
('17125935', '1111111118', '554e3328a0363aaa378e8b783b142c6a', 'User');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`car_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `evaluation`
--
ALTER TABLE `evaluation`
  ADD PRIMARY KEY (`eva_id`);

--
-- Indexes for table `evaluation_form`
--
ALTER TABLE `evaluation_form`
  ADD PRIMARY KEY (`Num_id`);

--
-- Indexes for table `flavour`
--
ALTER TABLE `flavour`
  ADD PRIMARY KEY (`num_id`);

--
-- Indexes for table `flavour_form`
--
ALTER TABLE `flavour_form`
  ADD PRIMARY KEY (`num_id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`mem_id`);

--
-- Indexes for table `mempromotion`
--
ALTER TABLE `mempromotion`
  ADD PRIMARY KEY (`memPro_id`),
  ADD KEY `memPro_id` (`memPro_id`),
  ADD KEY `memPro_id_2` (`memPro_id`);

--
-- Indexes for table `orderdns`
--
ALTER TABLE `orderdns`
  ADD PRIMARY KEY (`pro_id`,`order_id`,`mem_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pro_id`);

--
-- Indexes for table `promotion`
--
ALTER TABLE `promotion`
  ADD PRIMARY KEY (`promotion_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`);

--
-- Indexes for table `upimage`
--
ALTER TABLE `upimage`
  ADD PRIMARY KEY (`up_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `car`
--
ALTER TABLE `car`
  MODIFY `car_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17114905;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `evaluation_form`
--
ALTER TABLE `evaluation_form`
  MODIFY `Num_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=216;
--
-- AUTO_INCREMENT for table `flavour_form`
--
ALTER TABLE `flavour_form`
  MODIFY `num_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mempromotion`
--
ALTER TABLE `mempromotion`
  MODIFY `memPro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `pro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9013;
--
-- AUTO_INCREMENT for table `promotion`
--
ALTER TABLE `promotion`
  MODIFY `promotion_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `staff_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17121535;
--
-- AUTO_INCREMENT for table `upimage`
--
ALTER TABLE `upimage`
  MODIFY `up_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
