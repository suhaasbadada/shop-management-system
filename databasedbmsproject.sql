-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2020 at 07:01 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbmsfinal`
--

-- --------------------------------------------------------

--
-- Table structure for table `bvlevel`
--

CREATE TABLE `bvlevel` (
  `AggBV` int(11) DEFAULT NULL,
  `Level` varchar(10) DEFAULT NULL,
  `Commission_percentage` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bvlevel`
--

INSERT INTO `bvlevel` (`AggBV`, `Level`, `Commission_percentage`) VALUES
(1001, 'Star 1', 10),
(7501, 'Star 2', 20),
(25001, 'Star 3', 25),
(75001, 'Star 4', 30),
(150001, 'Super Star', 35);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Customer_ID` int(11) NOT NULL,
  `First_Name` varchar(9) NOT NULL,
  `Middle_Name` varchar(8) DEFAULT NULL,
  `Last_Name` varchar(12) NOT NULL,
  `Email_ID` varchar(27) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Customer_ID`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`) VALUES
(1, 'Agney  ', 'Singh', 'Talwar', 'agneys@gmail.com '),
(2, 'Manoj', NULL, 'Raj', 'manojr@gmail.com'),
(3, 'Sanjay', 'Mohan', 'Sharma', 'ssharma@gmail.com'),
(4, 'Aman', NULL, 'Verma', 'amanverma@gmail.com'),
(5, 'Raj', NULL, 'Kapoor', 'rajk02@gmail.com'),
(6, 'Jinto', NULL, 'James', 'jintojames01@gmail.com'),
(7, 'Sabar', NULL, 'Nimmagadda', 'nsabar@outlook.com'),
(8, 'Aditi', NULL, 'Jain', 'aditijain01@outlook.com'),
(9, 'Shivang', 'Prem', 'Sharma', 'spsharma00@gmail.com'),
(10, 'Pankaj', NULL, 'Gupta', 'pankajgupta21@gmail.com'),
(11, 'Suraj', NULL, 'Saxena', 'surajs@gmail.com'),
(12, 'Ram', NULL, 'Singh', 'ramsingh1@hotmail.com'),
(13, 'Baljeet', NULL, 'Tripathi', 'baljeet123@gmail.com'),
(14, 'Shiv', NULL, 'Raj', 'shivraj001@gmail.com'),
(15, 'Uday', NULL, 'Kumar', 'udaykumar@gmail.com'),
(16, 'Sushant', NULL, 'Chauhan', 'sushantchauhan@gmail.com'),
(17, 'Dhruv', NULL, 'Adawal', 'dadawal@gmail.com'),
(18, 'Arjun', 'Prasad', 'Shrivastava', 'apshrivastava@gmail.com'),
(19, 'Shivangi', NULL, 'Mehra', 'shivangi005@outlook.com'),
(20, 'Sanidhya', NULL, 'Verma', 'sanidhyaverma@gmail.com'),
(21, 'Antara', NULL, 'Rai', 'antararai@gmail.com'),
(22, 'Shreya', NULL, 'Prasad', 'shreyaprasad1@gmail.com'),
(23, 'Alok', 'Kumar', 'Gupta', 'kumaralok@gmail.com'),
(24, 'Manit', NULL, 'Jain', 'manitj@gmail.com'),
(25, 'Rashmi', NULL, 'Roy', 'royrashmi@gmail.com'),
(26, 'Amita', NULL, 'Bhatia', 'amita10@gmail.com'),
(27, 'Soumya', 'Ranjan', 'Tripathi', 'srtripathi@gmail.com'),
(28, 'Mansi', NULL, 'Mishra', 'mansimishra@gmail.com'),
(29, 'Veena', NULL, 'Patel', 'veenapatel12@gmail.com'),
(30, 'Aryan', NULL, 'Dhavan', 'aryand16@outlook.com'),
(31, 'Vaibhav', NULL, 'Garg', 'vgarg@outlook.com'),
(32, 'Mansi', NULL, 'Aluwalia', 'aluwaliamansi@gmail.com'),
(33, 'Brijendra', 'Kumar', 'Tiwari', 'tiwaribk@gmail.com'),
(34, 'Ashutosh', NULL, 'Dikshit', 'ashutoshdikshit@gmail.com'),
(35, 'Akshat', NULL, 'Mittal', 'amittal01@gmail.com'),
(36, 'Jyoti', NULL, 'Khanna', 'jkhanna@outlook.com'),
(37, 'Kiran', NULL, 'Ahuja', 'ahujakiran@gmail.com'),
(38, 'Mona', 'Sachdeva', 'Khanna', 'monakhanna02@gmail.com'),
(39, 'Sangeeta', NULL, 'Singhal', 'sangeetas03@outlook.com'),
(40, 'Sanjay', NULL, 'Raina', 'sanjayraina@gmail.com'),
(41, 'Virat', NULL, 'Kumar', 'viratkumar@gmail.com'),
(42, 'Archana', NULL, 'Gulati', 'archanag1@outlook.com'),
(43, 'Vivek', NULL, 'Bhattacharya', 'vivekb01@gmail.com'),
(44, 'Lalit', NULL, 'Gopal', 'lalitgopal@gmail.com'),
(45, 'Ashish', NULL, 'Khurrana', 'ashishkhurrana001@gmail.com'),
(46, 'Pranit', NULL, 'Rastogi', 'prastogi@gmail.com'),
(47, 'Gursher', NULL, 'Aujla', 'aujlagursher@outlook.com'),
(48, 'Manas', NULL, 'Chatterjee', 'manas20@gmail.com'),
(49, 'Soni', NULL, 'Gupta', 'sonig11@gmail.com'),
(50, 'Amit', NULL, 'Bannerjee', 'amitb1@outlook.com');

-- --------------------------------------------------------

--
-- Table structure for table `customer_phone`
--

CREATE TABLE `customer_phone` (
  `Customer_ID` int(11) DEFAULT NULL,
  `Phone_No` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_phone`
--

INSERT INTO `customer_phone` (`Customer_ID`, `Phone_No`) VALUES
(1, '9574837563'),
(1, '9735357747'),
(2, '9525503680'),
(3, '9325968405'),
(3, '9576835122'),
(4, '9905340062'),
(5, '9083353325'),
(6, '9410466202'),
(7, '9622792033'),
(8, '9687033613'),
(9, '9603322873'),
(10, '9065935965'),
(11, '9472156452'),
(12, '9629356377'),
(13, '9574234047'),
(14, '9286677839'),
(15, '9472365603'),
(16, '9503504915'),
(17, '9001834537'),
(18, '9661640044'),
(19, '9572711067'),
(20, '9917727864'),
(21, '9743745647'),
(22, '9435726824'),
(23, '9877657287'),
(24, '9328009512'),
(25, '9410305306'),
(26, '9523795942'),
(27, '9882969989'),
(28, '9496805372'),
(29, '9614662067'),
(30, '9275072507'),
(31, '9229203872'),
(32, '9622571186'),
(33, '9969861615'),
(34, '9761839557'),
(35, '9474376611'),
(36, '9063926813'),
(37, '9002626319'),
(38, '9882316880'),
(39, '9209443914'),
(40, '9014315900'),
(41, '9762042901'),
(42, '9535711184'),
(43, '9031194282'),
(44, '9347257646'),
(45, '9540859396'),
(46, '9216552235'),
(47, '9219568851'),
(48, '9258520457'),
(49, '9128795412'),
(50, '9014375173');

-- --------------------------------------------------------

--
-- Table structure for table `distributor`
--

CREATE TABLE `distributor` (
  `Distributor_ID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Address` varchar(500) NOT NULL,
  `District` varchar(20) NOT NULL,
  `State` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `distributor`
--

INSERT INTO `distributor` (`Distributor_ID`, `Name`, `Address`, `District`, `State`) VALUES
(1, 'LAKSHMI NARASIMHA HERBAL PRODUCTS', 'GOVINDA REDDY COMPLEX, D.NO. 18/713, VINUGOPAL NAGAR, ANANTAPURAMU, Anantapur, 515001, Anantapur, Ananthapur, Andhra Pradesh', 'Ananthapur', 'Andhra Pradesh'),
(2, 'SRI THULASI AYURVEDIC HERBAL STORE', '16/6/4, NUT BAZAR, Hindupur, 515201, Hindupur, Ananthapur, Andhra Pradesh', 'Ananthapur', 'Andhra Pradesh'),
(3, 'HIMA DEEPIKA HERBALS', '2-591, 4Th road , NEAR ANJANEYA SWAMY TEMPLE, ANANTAPUR, 515004, Anantapur, Ananthapur, Andhra Pradesh', 'Ananthapur', 'Andhra Pradesh'),
(4, 'SAI REKHA AYURVEDIC HERBAL STORES', '# 3-2366, SAI SADAN, SAI TEMPLE, VIVEKANANDA ROAD, PUTTAPARTHI, 515134, Penu Konda, Ananthapur, Andhra Pradesh', 'Ananthapur', 'Andhra Pradesh'),
(5, 'GREENLEAF AYURVEDIC', '1-515-A, RUDRAMPETA, RUDRAMPETA, 515001, Anantapur, Ananthapur, Andhra Pradesh', 'Ananthapur', 'Andhra Pradesh'),
(6, 'SHRI SAI IMC AYURVEDIC & ORGANIC STORE', '3/782-A, A S R NAGAR., TAPOVANAM, 515004, Anantapur, Ananthapur, Andhra Pradesh', 'Ananthapur', 'Andhra Pradesh'),
(7, 'KIRAN ENTERPRISES', '19-1-19, NEAR OLD PANCHAYAT OFFICE, REVENUE WARD NO.12, Balighattam, 531116, Narsipatnam, Visakhapatnam, Andhra Pradesh', 'Visakhapatnam', 'Andhra Pradesh'),
(8, 'SHREEJAY ENTERPRISES', 'DOOR NO.48-10-24,OPP RTC COMPLEX LANE,LAND MARK VARDHAN SUPER MARKET, Dwaraka nagar, 530016, Visakhapatnam(urban), Visakhapatnam, Andhra Pradesh', 'Visakhapatnam', 'Andhra Pradesh'),
(9, 'LEELA ENTERPRISES', '3-11-71/2, FIRST FLOOR, EAST SIDE FIRST SHATTER, OPP. RAITU BAZAAR AND MASEED, Gajuwaka, 530026, Gajuwaka, Visakhapatnam, Andhra Pradesh', 'Visakhapatnam', 'Andhra Pradesh'),
(10, 'SHANMUKHA ENTERPRISES', 'FIRST FLOOR 36-46-78, REDDY KANCHARAPALEM, R.C.C SHOP, NEAR ANUPAMA HOTEL, Visakhapatnam (urban, 530008, Visakhapatnam(urban), Visakhapatnam, Andhra Pradesh', 'Visakhapatnam', 'Andhra Pradesh'),
(11, 'SRI VIJAYA ENTERPRISES', '13-244,DONKADA,AGANAMPUDI,RAMALAYAM,, PEDAMADAKA,VISAKHAPATNAM,PIN CODE :530046, AGANAMPUDI, 530046, Visakhapatnam(urban), Visakhapatnam, Andhra Pradesh', 'Visakhapatnam', 'Andhra Pradesh'),
(12, 'SRI VENKATESHWARA AYURVEDIC AND ORGANIC GENERAL STORE', '49-34-10/3,ABIDNAGAR,BESIDE SBI,AKAYAPALEM,, VISAKHAPATNAM(URBAN),VISAKHAPATNAM,, ANDHRAPRADESH,PIN CODE 530016, AKAYYAPALEM, 530016, Visakhapatnam(urban), Visakhapatnam, Andhra Pradesh', 'Visakhapatnam', 'Andhra Pradesh'),
(13, 'SRI KRISHNA ORGANICS AND HERBALS', '47-57-16/19 FLOAT NO -1 4TH FLOOR, 3RD LINE NARASIMHA NAGAR, AKKAYAPALEM, AKKAYAPALEM, 530024, Visakhapatnam(urban), Visakhapatnam, Andhra Pradesh', 'Visakhapatnam', 'Andhra Pradesh'),
(14, 'SRI SAI GANESH AYURVEDIC HUB', '45-33-44 SANGAM OFFICE,BESIDE VIVEKANANDA HOSPITAL, AKKAYYAPALEM, 530016, Visakhapatnam(urban), Visakhapatnam, Andhra Pradesh', 'Visakhapatnam', 'Andhra Pradesh'),
(15, 'KEERTHI AYURVEDIC AND ORGANIC STORE', 'AKKIREDDI PALEM 1-1-63 B H P V, AKKIREDDI PALEM, 530012, Gajuwaka, Visakhapatnam, Andhra Pradesh', 'Visakhapatnam', 'Andhra Pradesh'),
(16, 'NICE AYURVEDIC & ORGANIC HUB', '1-3-70/1,AKKIREDDYPALEM,B H P V ,GAJUWAKA,, VISAKHAPATNAM,ANDHRAPRADESH,PINCODE:530012, AKKIREDDY PALEM, 530012, Gajuwaka, Visakhapatnam, Andhra Pradesh', 'Visakhapatnam', 'Andhra Pradesh'),
(17, 'IMC Hyderabad', '1-19-71/A-7P, PLNO RUKMINIPURI COLONY,, KAPRA SAINIKPUR, Kushaiguda, 500062, Secunderabad, Hyderabad, Telangana', 'Hyderabad', 'Telangana'),
(18, 'M/S NATRAJ BATTERIES', 'PILLAR NO. MGBS1358, NEAR THUMBAY HOSPITAL NEW LIFE, CHANDERGHAT ROAD, CHANDERGHAT, 500024, Charminar, Hyderabad, Telangana', 'Hyderabad', 'Telangana'),
(19, 'SRI VASAVI AND CO', '2-3-199/3, ROAD NO. 1, ADARSH NAGAR COLONY, NAGOLE, LB NAGAR, Hyderabad, 500035, Saidabad, Hyderabad, Telangana', 'Hyderabad', 'Telangana'),
(20, 'DHANVANTHARI AGENCIES', '1-19-71/A-7P , PLNO RUKMINIPURI COLONY, KAPRA SAINIKPUR, Kushaiguda, 500062, Secunderabad, Hyderabad, Telangana', 'Hyderabad', 'Telangana'),
(21, 'Sai Manikanta Enterprises', 'H.NO. 6-1-132/17/A, SHOP NO. 4, NEAR SKANDAGIRI TEMPLE, Padmaraonagar, 500025, Secunderabad, Hyderabad, Telangana', 'Hyderabad', 'Telangana'),
(22, 'SPARSH ORGANIC', 'PLOT NO 3-3-614, SULTAN BAZAR ROAD, RAJAMOHALLAH, NEAR ARYA SAMAJ MANDIR, Qutbiguda, 500027, Himayathnagar, Hyderabad, Telangana', 'Hyderabad', 'Telangana'),
(23, 'KARTIKEYA ENTERPRISES', 'FLAT NO.103, RAMACHANDRA NIVAS, Vengal Rao Nagar, 500038, Khairatabad, Hyderabad, Telangana', 'Hyderabad', 'Telangana'),
(24, 'TEJA ORGANIC IMC STORE', '1-1-262 87, SRINIVASA NAGAR., A S RAO NAGAR, 500062, Ameerpet, Hyderabad, Telangana', 'Hyderabad', 'Telangana'),
(25, 'Vijaya Organic & Ayurvedham Store', 'h.no-1-19-68/A-13, flat no-406,, prasanthi heights,a.s.rao nagar,, secunderabad,telangana-500062, a s rao nagar, 500062, Secunderabad, Hyderabad, Telangana', 'Hyderabad', 'Telangana'),
(26, 'Meenakshi Corporation', 'Shop.no-13,Raghav Ratna towers,chirag ali lane,, Abids,hyderabad,, telangana-500001, ABIDS, 500001, Nampally, Hyderabad, Telangana', 'Hyderabad', 'Telangana'),
(27, 'Ashraya IMC Organic and Ayurveda', 'h.no-8-9-28,yesunadhapuram street,, allagadda,mdg,kurnool,, andhra pradesh, Allagadda, 500025, Secunderabad, Hyderabad, Telangana', 'Hyderabad', 'Telangana'),
(28, 'Monal Organic Ayurvedic Herbal Products', 'H.no-18-1/1, Ram nagar colony,Vaishnavi matha temple,, Alwal,Secunderabad, Hyderabad,Telangana-500010, ALWAL, 500010, Secunderabad, Hyderabad, Telangana', 'Hyderabad', 'Telangana'),
(29, 'SAI DHANVANTRI ORGANIC STORE', 'H NO-1-4-148,KUMMARI BASTHI,, ALWAL, 500010, Ameerpet, Hyderabad, Telangana', 'Hyderabad', 'Telangana'),
(30, 'SHIVOHAM AYURVEDIC HERBAL INDIA', 'PLOT NO.77,H.NO.1-5-852,OM SRI SAI NAGAR COLONY,OLD ALWAL,SECUNDERABAD., Alwal, 500010, Secunderabad, Hyderabad, Telangana', 'Hyderabad', 'Telangana'),
(31, 'venu gopal imc herbal store', 'AMBER NAGAR, AMBERNAGAR, 500044, Secunderabad, Hyderabad, Telangana', 'Hyderabad', 'Telangana'),
(32, 'GRUHAN ORGANIC INDIAN AYURVEDIC STORE', 'H.no-2-2-644/7/A,Street no-10, Bahg , Amberpet, 500013, Amberpet, Hyderabad, Telangana', 'Hyderabad', 'Telangana'),
(33, 'Kavitha Nalanda IMC Herbal India', 'Flat no. 305, legend Appartment, Sbi officers colony, Amberpet, 500036, Saidabad, Hyderabad, Telangana', 'Hyderabad', 'Telangana'),
(34, 'PRIYA HERBAL STORE', '3-4-852-1 KESHVA NILAYAM, BARKATPURA, AMBERPET, AMBERPET, 500027, Himayathnagar, Hyderabad, Telangana', 'Hyderabad', 'Telangana'),
(35, 'AVR (IMC) HEALTH CARE PRODUCTS', 'SHOP NO - 11, HUDA MAITRIVANAM., AMEERPET, 500018, Ameerpet, Hyderabad, Telangana', 'Hyderabad', 'Telangana'),
(36, 'CHARAN IMC ORGANIC STORE', '8-3-945/A, SRI NAGAR COLONY, NAGARJUNA NAGAR., AMEERPET, 500082, Ameerpet, Hyderabad, Telangana', 'Hyderabad', 'Telangana'),
(37, 'KRISHNAVENY HERBALS', 'Geethalaya Apartments, No. 7/13, Medley Road,T.Nagar,, Chennai, 600017, Chennai, Chennai, Tamil Nadu', 'Chennai', 'Tamil Nadu'),
(38, 'MALESHWAR HERBAL STORE', 'No.52, Salaima Nagar, Bricklin Road,Purasaiwalkam, Chennai, 600007, Chennai, Chennai, Tamil Nadu', 'Chennai', 'Tamil Nadu'),
(39, 'VENKATESWARA HERBALS', 'AF/1 24/22 guru akshaya apartments, kanakammal colony, Chennai, 600061, Chennai, Chennai, Tamil Nadu', 'Chennai', 'Tamil Nadu'),
(40, 'SHRISHTI HERBAL INDIA', 'GROUND FLOOR , OLD NO: 477, SOWCAR COMPLEX , MINT STREET , KONDITHOPE, CHENNAI, TAMIL NADU, 600001, Chennai G.P.O., 600001, Chennai, Chennai, Tamil Nadu', 'Chennai', 'Tamil Nadu'),
(41, 'SNGB AYURVEDA INC', 'SHOP NO.90/133,CORAL MERCHANT STREET, MANNADY, 600001, Chennai, Chennai, Tamil Nadu', 'Chennai', 'Tamil Nadu'),
(42, 'JAI HARESH AYURVEDIC AND HERBAL CENTRE', 'NO.13,TNRDC COMPLEX,OMR,KANDANCHAVADI, Perungudi OMR, 600096, Chennai, Chennai, Tamil Nadu', 'Chennai', 'Tamil Nadu'),
(43, 'R V HEALTH CARE', 'DOOR NO. 216/47 2ND FLOOR, DURAI COMPLEX, RAJA MILL ROAD, POLLACHI TOWN, Pollachi, 642001, Pollachi, Coimbatore, Tamil Nadu', 'Coimbatore', 'Tamil Nadu'),
(44, 'SRI LAKSHMI IMC HERBAL', '17/3, MAHALAKSHMI AVENUE, VAGARAYAMPALAYAM, Kaniyur-palladam, 641659, Coimbatore South, Coimbatore, Tamil Nadu', 'Coimbatore', 'Tamil Nadu'),
(45, 'JAY JAGANNATH MOBILES', '11/149 GANESHAPURAM, KATTAMPATTI, 641107, Coimbatore North, Coimbatore, Tamil Nadu', 'Coimbatore', 'Tamil Nadu'),
(46, 'IMC NAVAJIWAN AYURVEDA', '5/194, Coimbatore Polytech Pvt Ltd, Naranapuram, Arasur Post, Naranapuram, 641407, Coimbatore South, Coimbatore, Tamil Nadu', 'Coimbatore', 'Tamil Nadu'),
(47, 'SANTHI HERBALS', '4/168, Karupparayan Kovil street, Ramanathapuram, Puliyakulam, 641045, Coimbatore South, Coimbatore, Tamil Nadu', 'Coimbatore', 'Tamil Nadu'),
(48, 'MAHADEV IMC HERBAL STORE', '88/60, East Street, Sidhanaickan Palayam, Siddanaickenpalayam, 641658, Coimbatore South, Coimbatore, Tamil Nadu', 'Coimbatore', 'Tamil Nadu'),
(49, 'IMC SHIVASHANKAR AYURVEDA', 'DOOR NO- 64/2, U K N STREET, Sulur, 641402, Sulur, Coimbatore, Tamil Nadu', 'Coimbatore', 'Tamil Nadu');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `Sno` int(11) NOT NULL,
  `Product_ID` int(11) NOT NULL,
  `Unit_or_Quantity` int(11) NOT NULL,
  `TBV` int(11) NOT NULL,
  `PriceUnit` int(11) NOT NULL,
  `Distributor_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`Sno`, `Product_ID`, `Unit_or_Quantity`, `TBV`, `PriceUnit`, `Distributor_ID`) VALUES
(1, 1003, -2, 260, 83, 1),
(2, 1005, 6, 288, 120, 2),
(3, 1006, 3, 300, 250, 2),
(4, 1008, 8, 320, 116, 4),
(5, 1009, -2, 150, 110, 1),
(6, 1010, 3, 300, 265, 1),
(7, 2002, 4, 240, 149, 2),
(8, 3000, 1, 75, 178, 4),
(9, 3005, 2, 190, 266, 4),
(10, 3007, 5, 125, 73, 46),
(11, 4001, 10, 250, 95, 47),
(12, 6000, 5, 75, 69, 48),
(13, 6002, 7, 525, 243, 47),
(14, 5003, 6, 900, 525, 46),
(15, 5004, 4, 400, 225, 46),
(16, 6009, 5, 75, 59, 48),
(17, 5000, 2, 360, 495, 4),
(18, 6003, 10, 60, 30, 46),
(19, 3009, 5, 300, 170, 47),
(20, 3006, 2, 180, 251, 48);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `Order_ID` int(11) NOT NULL,
  `Order_Date` varchar(20) NOT NULL,
  `Purchase_Amount` int(11) NOT NULL,
  `Customer_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`Order_ID`, `Order_Date`, `Purchase_Amount`, `Customer_ID`) VALUES
(1003, '03-04-2020', 500, 18),
(1276, '13-09-2019', 110, 11),
(1386, '09-06-2020', 500, 19),
(1728, '26-02-2019', 498, 2),
(1924, '23-05-2019', 525, 6),
(1961, '18-03-2019', 760, 3),
(2346, '11-02-2019', 1393, 1),
(3200, '19-10-2019', 206, 13),
(3452, '19-06-2019', 824, 8),
(3472, '07-08-2019', 232, 10),
(4671, '16-04-2019', 447, 5),
(5472, '20-11-2019', 250, 14),
(6391, '17-12-2019', 220, 15),
(7023, '24-05-2019', 795, 7),
(7452, '04-04-2019', 1376, 4),
(7654, '15-10-2019', 110, 12),
(7847, '06-03-2020', 110, 16),
(9084, '01-08-2019', 1940, 9),
(9229, '13-03-2020', 110, 17),
(9231, '18-10-2020', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `Sno` int(11) NOT NULL,
  `Order_ID` int(11) NOT NULL,
  `Unit` int(11) NOT NULL,
  `Product_ID` int(11) NOT NULL,
  `Amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`Sno`, `Order_ID`, `Unit`, `Product_ID`, `Amount`) VALUES
(1, 2346, 3, 3005, 797),
(2, 2346, 4, 2002, 596),
(3, 1728, 6, 1003, 498),
(4, 1961, 1, 1005, 120),
(5, 1961, 1, 1009, 110),
(6, 1961, 2, 1010, 530),
(7, 7452, 3, 1011, 795),
(8, 7452, 7, 1003, 581),
(9, 4671, 3, 2002, 447),
(10, 1924, 5, 1003, 415),
(11, 1924, 1, 1009, 110),
(12, 7023, 3, 1010, 795),
(13, 3452, 1, 6002, 243),
(14, 3452, 7, 1003, 581),
(15, 9084, 3, 1008, 348),
(16, 9084, 3, 3005, 797),
(17, 9084, 3, 1010, 795),
(18, 3472, 2, 1008, 232),
(19, 1276, 1, 1009, 110),
(20, 7654, 1, 1009, 110),
(21, 3200, 3, 6000, 206),
(22, 5472, 1, 1006, 250),
(23, 6391, 2, 1009, 220),
(24, 7847, 1, 1009, 110),
(25, 9229, 1, 1009, 110),
(26, 1003, 2, 1006, 500),
(27, 1386, 2, 1006, 500),
(34, 9231, 5, 1009, 575);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `Order_ID` int(11) NOT NULL,
  `Payment_Date` varchar(20) NOT NULL,
  `Amount` int(11) NOT NULL,
  `Method_of_Payment` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`Order_ID`, `Payment_Date`, `Amount`, `Method_of_Payment`) VALUES
(1003, '03-04-2020', 500, 'upi'),
(1276, '13-09-2019', 110, 'debit card'),
(1386, '09-06-2020', 500, 'debit card'),
(1728, '26-02-2019', 498, 'upi'),
(1924, '23-05-2019', 525, 'debit card'),
(1961, '18-03-2019', 760, 'debit card'),
(2346, '11-02-2019', 1393, 'credit card'),
(3200, '19-10-2019', 205, 'cash'),
(3452, '19-06-2019', 824, 'credit card'),
(3472, '07-08-2019', 230, 'cash'),
(4671, '16-04-2019', 447, 'cash'),
(5472, '20-11-2019', 250, 'upi'),
(6391, '17-12-2019', 220, 'credit card'),
(7023, '24-05-2019', 795, 'sodexo'),
(7452, '04-04-2019', 1376, 'sodexo'),
(7654, '15-10-2019', 110, 'sodexo'),
(7847, '06-03-2020', 110, 'sodexo'),
(9084, '01-08-2019', 1940, 'sodexo'),
(9229, '13-03-2020', 110, 'cash');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `Product_ID` int(11) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Unit` varchar(100) DEFAULT NULL,
  `PcsPacket` int(11) DEFAULT NULL,
  `PcsCarton` int(11) DEFAULT NULL,
  `MRPUnit` int(11) DEFAULT NULL,
  `PriceUnit` int(11) DEFAULT NULL,
  `BV` int(11) DEFAULT NULL,
  `GST` varchar(100) DEFAULT NULL,
  `Category_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`Product_ID`, `Name`, `Unit`, `PcsPacket`, `PcsCarton`, `MRPUnit`, `PriceUnit`, `BV`, `GST`, `Category_ID`) VALUES
(1000, 'Alkaline & Anti-Bacterial Ceramic Balls', '1', 1, 120, 400, 300, 120, '18%', 1),
(1001, 'Aloe Aam Pachak', '100 gm', 1, 60, 99, 90, 25, '12%', 1),
(1002, 'Aloe Ajwain Pachak', '100 gm', 30, 30, 75, 65, 20, '12%', 1),
(1003, 'Aloe Amla Candy', '200 gm', 30, 30, 105, 85, 20, '5%', 1),
(1004, 'Aloe Anardana Pachak', '100 gm', 30, 30, 75, 65, 20, '12%', 1),
(1005, 'Aloe Blood Purifier Syrup', '200 ml', 60, 60, 150, 125, 48, '12%', 1),
(1006, 'Aloe Cal-D Tablet', '30 Tab', 1, 60, 360, 260, 100, '12%', 1),
(1007, 'Aloe Cal-D Tablet', '30 Tab', 30, 30, 360, 260, 100, '12%', 1),
(1008, 'Aloe Charcoal Dental Gel', '100 gm', 50, 50, 160, 120, 40, '18%', 1),
(1009, 'Aloe Digest', '30 ml', 60, 60, 160, 115, 50, '12%', 1),
(1010, 'Aloe Harad Pachak', '100 gm', 30, 30, 75, 65, 20, '12%', 1),
(1011, 'Aloe Hing Pachak', '100 gm', 30, 30, 75, 65, 20, '12%', 1),
(2000, 'Aloe Jeera Pachak', '100 gm', 60, 60, 75, 65, 20, '12%', 1),
(2001, 'Aloe Anti Aging Cream', '60 gm', 1, 60, 390, 275, 100, '18%', 2),
(2002, 'Aloe Cream', '60 gm', 30, 60, 220, 155, 60, '18%', 2),
(2003, 'ALOE FACE CLEANSER + HERBAL ALOE CREAM', '100 gm', 1, 30, 250, 210, 80, '18%', 2),
(2004, 'Aloe Face Wash With Haldi & Chandan', '100 gm', 30, 30, 250, 180, 65, '18%', 2),
(2005, 'Aloe Rose Water', '100 ml', 25, 50, 140, 105, 30, '18%', 2),
(2006, 'Aloe Sunscreen Lotion Big', '100 gm', 10, 30, 390, 275, 100, '18%', 2),
(2007, 'Aloe Sunscreen Lotion Smol', '60 gm', 60, 60, 190, 140, 50, '18%', 2),
(2008, 'Aloe Wipes', '20 Pc', 42, 42, 120, 80, 32, '12%', 2),
(2009, 'Alovera Bathing Soap', 'Pcs', 100, 100, 30, 25, 5, '18%', 2),
(2010, 'Anti Aging Cream', '60 gm', 15, 30, 390, 275, 100, '18%', 2),
(3000, 'Acupressure Pads', 'Pcs', 1, 20, 350, 185, 75, '12%', 3),
(3001, 'Aerobic Exerciser', 'Pcs', 1, 1, 5000, 4250, 1050, '18%', 3),
(3002, 'Almond Hair Oil', '100 ml', 1, 60, 325, 270, 100, '18%', 3),
(3003, 'Aloe After Shave Gel', '100 gm', 1, 60, 325, 230, 80, '18%', 3),
(3004, 'Aloe Baby Hair & Body Wash', '250 ml', 1, 30, 395, 275, 95, '18%', 3),
(3005, 'Aloe Baby Hair & Body Wash', '200 ml', 10, 30, 225, 170, 60, '18%', 3),
(3006, 'Aloe Baby Massage Oil', '100 ml', 20, 60, 375, 260, 90, '18%', 3),
(3007, 'Aloe Baby Soap (Ayurvedic)', '75 gm', 20, 100, 95, 75, 25, '18%', 3),
(3008, 'Aloe Baby Talcum Powder', '100 gm', 10, 30, 225, 160, 55, '18%', 3),
(3009, 'Aloe Baby Wipes', 'Pcs', 12, 24, 210, 170, 60, '12%', 3),
(3010, 'Aloe Bright Bar', '100 Gm', 50, 50, 25, 20, 5, '18%', 3),
(3011, 'Aloe Dental Cream', '100 gm', 100, 100, 115, 90, 25, '18%', 3),
(4000, 'ABC Carpet', '5m', 1, 10, 5000, 4250, 1050, '18%', 4),
(4001, 'Rinz Water Bottles', '1L', 5, 25, 100, 95, 25, '12%', 4),
(5000, 'Agro Activator', '500 ml', 12, 24, 595, 495, 180, '18%', 5),
(5001, 'Herbal Agro Growth Booster', '1 Ltr', 12, 12, 725, 560, 250, '18%', 5),
(5002, 'Herbal Agro Growth Booster', '500 ml', 15, 15, 450, 310, 135, '18%', 5),
(5003, 'Herbal Aloe Vical', '5 Ltr', 2, 2, 650, 525, 150, '0%', 5),
(5004, 'Herbal Aloe Vita', '1 Kg', 12, 12, 300, 225, 100, '0%', 5),
(6000, 'Aloe Coco Cookies (Sweet)', '150 gm', 24, 24, 80, 70, 15, '18%', 6),
(6001, 'Aloe Cumin Cookies (Salted)', '150 gm', 24, 24, 80, 70, 15, '18%', 6),
(6002, 'Aloe Multigrain Atta', '1 Kg', 1, 12, 300, 250, 75, '5%', 6),
(6003, 'Aloe Protein Diet (Corn Pudina Triangle)', '60 gm', 1, 50, 35, 30, 6, '12%', 6),
(6004, 'Aloe Protein Diet (Soya Bhel)', '60 gm', 1, 50, 35, 30, 6, '12%', 6),
(6005, 'Aloe Protein Diet (Soya Cheese Sticks)', '60 gm', 1, 50, 35, 30, 6, '12%', 6),
(6006, 'Aloe Protein Diet (Soya Katori)', '60 gm', 1, 50, 35, 30, 6, '12%', 6),
(6007, 'Aloe Protein Diet (Wheat Puff)', '60 gm', 1, 50, 35, 30, 6, '12%', 6),
(6008, 'Imc Swadisht Pachak Churan With Himalayan Berry', 'Pcs', 1, 30, 130, 105, 40, '12%', 6),
(6009, 'Saboot Jeera', '100 gm', 30, 30, 75, 60, 15, '5%', 6);

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `Category_ID` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`Category_ID`, `Name`) VALUES
(1, 'Health Care'),
(2, 'Skin Care'),
(3, 'Personal Care'),
(4, 'Home Care'),
(5, 'Agriculture'),
(6, 'Food Products');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`) VALUES
('Meher', 'Meher123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Customer_ID`);

--
-- Indexes for table `customer_phone`
--
ALTER TABLE `customer_phone`
  ADD PRIMARY KEY (`Phone_No`),
  ADD KEY `Customer_ID` (`Customer_ID`);

--
-- Indexes for table `distributor`
--
ALTER TABLE `distributor`
  ADD PRIMARY KEY (`Distributor_ID`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`Sno`),
  ADD KEY `Product_ID` (`Product_ID`),
  ADD KEY `Distributor_ID` (`Distributor_ID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`Order_ID`),
  ADD KEY `Customer_ID` (`Customer_ID`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`Sno`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`Order_ID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`Product_ID`),
  ADD KEY `Category_ID` (`Category_ID`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`Category_ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `Customer_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `distributor`
--
ALTER TABLE `distributor`
  MODIFY `Distributor_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `Sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `Order_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9232;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `Sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `Product_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6010;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `Category_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer_phone`
--
ALTER TABLE `customer_phone`
  ADD CONSTRAINT `customer_phone_ibfk_1` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`Customer_ID`);

--
-- Constraints for table `inventory`
--
ALTER TABLE `inventory`
  ADD CONSTRAINT `inventory_ibfk_1` FOREIGN KEY (`Product_ID`) REFERENCES `products` (`Product_ID`),
  ADD CONSTRAINT `inventory_ibfk_2` FOREIGN KEY (`Distributor_ID`) REFERENCES `distributor` (`Distributor_ID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`Customer_ID`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`Order_ID`) REFERENCES `orders` (`Order_ID`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`Category_ID`) REFERENCES `product_category` (`Category_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
