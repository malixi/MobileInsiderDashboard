-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2016 at 04:16 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(10) NOT NULL,
  `firstName` text NOT NULL,
  `lastName` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `date_created` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `firstName`, `lastName`, `email`, `password`, `date_created`) VALUES
(1, 'Khelly', 'Taguinod', 'khellytaguinod@gmail.com', '1234567', 'December 8, 2016 7:49:pm  '),
(2, 'Carlo', 'Malixi', 'carlomalixi@gmail.com', '7654321', 'December 8, 2016 7:49:pm  '),
(3, 'Jamie', 'Sulit', 'jamiesulit@gmail.com', '123', 'December 8, 2016 7:49:pm  ');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `brand_id` int(15) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(500) NOT NULL,
  `brand_image` mediumtext NOT NULL,
  `date_created` varchar(50) NOT NULL,
  `date_updated` varchar(50) NOT NULL,
  `is_active` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`brand_id`, `name`, `description`, `brand_image`, `date_created`, `date_updated`, `is_active`) VALUES
(1, 'Asus', 'dfdsfs', 'https://lh3.googleusercontent.com/-tTESOgQjXY4/AAAAAAAAAAI/AAAAAAAAXkA/HMchOKJ52H8/s0-c-k-no-ns/photo.jpg', 'December 14, 2016 9:34:pm  ', '', '0'),
(2, 'Asusfvgfd', 'ASUSTeK Computer Inc. (traditional Chinese: &#33775;&#30889;&#38651;&#33126;&#32929;&#20221;&#26377;&#38480;&#20844;&#21496;; simplified Chinese: &#21326;&#30805;&#30005;&#33041;&#32929;&#20221;&#26377;&#38480;&#20844;&#21496;; pinyin: Huáshuò Diànn&#462;o G&#468;fèn Y&#466;uxiàn G&#333;ngs&#299;) (marketed as ASUS), is a Taiwanese multinational computer hardware and electronics company headquartered in Beitou District, Taipei, Taiwan. Its products include desktops, laptops, netbooks, mobile pho', 'https://lh3.googleusercontent.com/-tTESOgQjXY4/AAAAAAAAAAI/AAAAAAAAXkA/HMchOKJ52H8/s0-c-k-no-ns/photo.jpg', 'December 14, 2016 9:34:pm  ', '', '0'),
(3, 'SONY', 'Sony Corporation (&#12477;&#12491;&#12540;&#26666;&#24335;&#20250;&#31038; Son&#299; Kabushiki Gaisha?, (commonly referred to as Sony and officially stylized as SONY) /&#712;so&#650;ni/) is a Japanese multinational conglomerate corporation headquartered in K&#333;nan, Minato, Tokyo.[3] Its diversified business includes consumer and professional electronics, gaming, entertainment and financial services.[2] The company is one of the leading manufacturers of electronic products for the consumer and', 'https://lh4.googleusercontent.com/-G0mDI6fQXeM/AAAAAAAAAAI/AAAAAAAAYpE/w3m9lzz0Xfo/s0-c-k-no-ns/photo.jpg', 'December 14, 2016 9:37:pm  ', '', 'yes'),
(4, 'dewde', 'dewe', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJcAAACXCAMAAAAvQTlLAAAAbFBMVEUAAAAMDAyLx1COy1JWfDIsPxkKDgaPzVKR0VUcJw+GwU51pkOT1FUrPRltmz+JxE86UyEFCARAXCVijDhvn0AhLxNTdjBdhzYUFBRnlDtFZChLbCwzSB0WHww2TR95rkZ+tUkRGAma3lklNRXDEMpUAAADJUlEQVR4nO3cD2+iMBjHcUeBVqj/AHGIqJvv/z1eC+xg42mznyHqkud7lywR0M8VLDRLbvH+9oq9L161t2cDyN7YBcUuLHZhsQuLXVjswmIXFruw2IXFLix2YbELi11Y7MJiFxa7sNiFxS4sdmGxC4tdWOzCYhcWu7Bo1zJarVbRx8M1Q7Qr/JRKqePDNUMOlwqCQGQP1wx5XAG7prELi11Yf9PVnOswDA9dYVifm2+7fUT+Trfx3nGUlWU4qvxqBbk2dZ4I/S2Z5OfRbpkIvOli2Lcpr4HSdDU2XokWPz9YKFHFg0sJbyPX+aqkiy+IG57PRY+Gvuz/u6R/wAbXVin3bqjL9WmXJeraCudg3emSo2tC9Qydf7nMK6O6Dxmfx7Tbb3np3888pCht/rQ/voKvL6PSybrKc/NlzPO8Wl9Fd35V1Lu8o2UY/XjVuns3eSnW44qudAu6VPJjhKNUj89PvBzVVGabSE7N8NK+m1bia/t2Kj0RH+XI51LJZGKJCwsTyY04KG9dxFx07v8xzXTTPS6hz9Mtt8RewZK6FXSuaLrhYF1yAz2We1yqiKlN1qVCp4sYr/aql8TFfaerpA7Y2u+drABXY4dYkqf+Lhd9375tjEutdy7X9Dy2p14W2OrK7RK0a5/4XdPxWiV28KkRfq4r2lhXPj3gTteGmO7M3A27TgG7KFf1oi7XeN2665444rmu5dXOE+ls88Rc53Fn53v6lvoQl/M+ZMGOu8d8Lnz+Whzb+3ZAbHmIy3UeF027UlBJBlxijxivdos5SKZhXR+PWZYd+2obuH6c0RUFsn8sb5cJk2Uk9Hw/o2tRKt/CCVsPzXbfth20Z6GGrtPmGy8zYlI7hwxwaSEl+RBvngulNAt86vv4KaUOiOf7tmhtVo+S7teu+pKaiGWHmVcLs+VyIFx1UVXraj/d0HcqK3ss0a/Xj7vYRt9p3Zt2O/vXV0xHHPS3fg/z/NiFxS4sdmGxC4tdWOzCYhcWu7DYhcUuLHZhsQuLXVjswmIXFruw2IXFLix2YbELi11Y7MJiFxa7sNiFxS4sdmG9psr2ov8f8j8cszhICWbe9wAAAABJRU5ErkJggg==', 'December 15, 2016 5:45:pm  ', '', 'yes'),
(5, 'dewde', 'dewe', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJcAAACXCAMAAAAvQTlLAAAAbFBMVEUAAAAMDAyLx1COy1JWfDIsPxkKDgaPzVKR0VUcJw+GwU51pkOT1FUrPRltmz+JxE86UyEFCARAXCVijDhvn0AhLxNTdjBdhzYUFBRnlDtFZChLbCwzSB0WHww2TR95rkZ+tUkRGAma3lklNRXDEMpUAAADJUlEQVR4nO3cD2+iMBjHcUeBVqj/AHGIqJvv/z1eC+xg42mznyHqkud7lywR0M8VLDRLbvH+9oq9L161t2cDyN7YBcUuLHZhsQuLXVjswmIXFruw2IXFLix2YbELi11Y7MJiFxa7sNiFxS4sdmGxC4tdWOzCYhcWu7Bo1zJarVbRx8M1Q7Qr/JRKqePDNUMOlwqCQGQP1wx5XAG7prELi11Yf9PVnOswDA9dYVifm2+7fUT+Trfx3nGUlWU4qvxqBbk2dZ4I/S2Z5OfRbpkIvOli2Lcpr4HSdDU2XokWPz9YKFHFg0sJbyPX+aqkiy+IG57PRY+Gvuz/u6R/wAbXVin3bqjL9WmXJeraCudg3emSo2tC9Qydf7nMK6O6Dxmfx7Tbb3np3888pCht/rQ/voKvL6PSybrKc/NlzPO8Wl9Fd35V1Lu8o2UY/XjVuns3eSnW44qudAu6VPJjhKNUj89PvBzVVGabSE7N8NK+m1bia/t2Kj0RH+XI51LJZGKJCwsTyY04KG9dxFx07v8xzXTTPS6hz9Mtt8RewZK6FXSuaLrhYF1yAz2We1yqiKlN1qVCp4sYr/aql8TFfaerpA7Y2u+drABXY4dYkqf+Lhd9375tjEutdy7X9Dy2p14W2OrK7RK0a5/4XdPxWiV28KkRfq4r2lhXPj3gTteGmO7M3A27TgG7KFf1oi7XeN2665444rmu5dXOE+ls88Rc53Fn53v6lvoQl/M+ZMGOu8d8Lnz+Whzb+3ZAbHmIy3UeF027UlBJBlxijxivdos5SKZhXR+PWZYd+2obuH6c0RUFsn8sb5cJk2Uk9Hw/o2tRKt/CCVsPzXbfth20Z6GGrtPmGy8zYlI7hwxwaSEl+RBvngulNAt86vv4KaUOiOf7tmhtVo+S7teu+pKaiGWHmVcLs+VyIFx1UVXraj/d0HcqK3ss0a/Xj7vYRt9p3Zt2O/vXV0xHHPS3fg/z/NiFxS4sdmGxC4tdWOzCYhcWu7DYhcUuLHZhsQuLXVjswmIXFruw2IXFLix2YbELi11Y7MJiFxa7sNiFxS4sdmG9psr2ov8f8j8cszhICWbe9wAAAABJRU5ErkJggg==', 'December 15, 2016 5:45:pm  ', '', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `brand` text NOT NULL,
  `price` double NOT NULL,
  `description` varchar(500) NOT NULL,
  `QTY` int(11) NOT NULL,
  `date_created` varchar(50) NOT NULL,
  `imageLink` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `title`, `model`, `brand`, `price`, `description`, `QTY`, `date_created`, `imageLink`) VALUES
(7, 'testing', 'testing', 'Asus', 5000, 'qwertyuiop[asdfghjklxcvb', 50, 'December 14, 2016 5:56:pm  ', ''),
(12, 'sdfh', 'csdfnmj', 'Asus', 500, 'qwsedghjmkdhgf', 45, 'December 14, 2016 8:35:pm  ', 'http://drop.ndtv.com/TECH/product_database/images/1042016101841PM_635_google_pixel.jpeg'),
(13, 'Iphone 7', 'A1660', 'Apple', 30000, 'iPhone 7 dramatically improves the most important aspects of the iPhone experience. It introduces advanced new camera systems. The best performance and battery life ever in an iPhone. Immersive stereo speakers. The brightest, most colorful iPhone display. Splash and water resistance.1 And it looks every bit as powerful as it is. This is iPhone 7.', 20, 'December 15, 2016 1:06:am  ', 'https://support.apple.com/library/content/dam/edam/applecare/images/en_US/iphone/iphone-6splus-colors.jpg'),
(14, 'Google Pixel', 'G-2PW2100', 'Google', 35000, 'It has the highest rated smartphone camera. Ever. A battery that lasts all day. Unlimited storage for all your photos and videos. And it’s the first phone with the Google Assistant built in.\r\n', 20, 'December 15, 2016 1:13:am  ', 'http://photos5.appleinsider.com/gallery/18522-17518-googlepixel-inline-xl.jpg'),
(15, 'HTC 10', 'HTC 12345', 'Sony', 35000, 'HTC 10. Itâ€™s more of what youâ€™re looking for in a flagship phone. Unparalleled performance. Superb 24-bit Hi-Res sound. The worldâ€™s first* Optical Image Stabilization in both front and back cameras. And one of the highest smartphone camera rankings ever from DxOMark. All in a beautifully crafted metal unibody.', 35, 'December 15, 2016 4:39:pm  ', 'http://cdn2.gsmarena.com/vv/pics/htc/htc-10-5.jpg'),
(16, 'HTC 101', 'HTC 12345789', 'Asus', 350005, 'HTC 10. Itâ€™s more of what youâ€™re looking for in a flagship phone. Unparalleled performance. Superb 24-bit Hi-Res sound. ', 350, 'December 15, 2016 4:41:pm  ', 'http://cdn2.gsmarena.com/vv/pics/htc/htc-10-5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `userinfo`
--

CREATE TABLE `userinfo` (
  `customer_id` int(11) NOT NULL,
  `first_name` char(50) NOT NULL,
  `last_name` char(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `bday` date NOT NULL,
  `gender` varchar(1) NOT NULL,
  `date_created` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userinfo`
--

INSERT INTO `userinfo` (`customer_id`, `first_name`, `last_name`, `email`, `password`, `bday`, `gender`, `date_created`) VALUES
(9, 'khelly', 'tag', '', '', '0000-00-00', '', ''),
(10, '', '', '', '12345', '0000-00-00', '', ''),
(11, '', '', 'jkt@gmail.com', '123', '0000-00-00', '', ''),
(12, 'jamie', 'sulit', 'sulit@gmail.com', '12345', '0000-00-00', '', ''),
(13, 'carlo', 'malixi', 'malixi@gmail.com', '12345', '0000-00-00', '', ''),
(14, 'khelly', 'taguinod', 'khellytaguinod@gmail.com', '12345', '0000-00-00', '', ''),
(15, 'joanne', 'daroya', 'daroya@gmail.com', '123456', '0000-00-00', '', ''),
(17, 'lou', 'roy', 'roy@gmail.com', '12345', '2016-12-08', '', ''),
(18, 'bea', 'lou', 'bea@yahoo.com', '12345', '2014-06-18', '', ''),
(19, 'remy', 'dan', 'dan@gmail.com', '12345', '2016-12-09', '', ''),
(20, 'remylou', 'dan', 'danlou@gmail.com', '567', '1996-07-25', '', ''),
(21, 'zaNe', 'Gozon', 'gozon@yahoo.com', '12345', '1996-07-11', 'M', ''),
(22, 'james', 'tarobal', 'tarobal@hotmail.com', '12345', '1995-07-27', 'M', 'December 8, 2016 7:49:pm  '),
(23, 'james', 'gozon', 'jamesgozon@gmail.com', '1234567', '1995-02-07', 'M', 'December 14, 2016 11:20:pm  '),
(24, 'jheremy', 'taguinod', 'khellytaguinod@gmail.com', '123', '1999-07-14', 'M', 'December 15, 2016 6:30:pm  '),
(25, 'jkt', 'tags', 'khellytaguinod@gmail.com', '1234', '1997-06-10', 'M', 'December 15, 2016 6:31:pm  ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `userinfo`
--
ALTER TABLE `userinfo`
  ADD PRIMARY KEY (`customer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `brand_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `userinfo`
--
ALTER TABLE `userinfo`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
