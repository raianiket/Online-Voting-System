-- phpMyAdmin SQL Dump
-- version 4.5.1
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinevotingsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `administartor`
--

CREATE TABLE `administartor` (
  `id` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Dumping data for table `administartor`
--

INSERT INTO `administartor` (`id`, `fname`, `lname`, `email`, `password`) VALUES
(1, 'Aniket', 'rai', 'aniket@gmail.com', 'ani'),
(2, 'sandy', 'mishra', 'sandy@gmail.com', 'ani');

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `candidate_id` int(11) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `position` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`candidate_id`, `first_name`, `last_name`, `email`, `password`, `position`) VALUES
(1, 'Sandesh', 'Mishra', 'sandesh@gmail.com', 'sandy', 'Home Minister'),
(2, 'Aditya', 'gupta', 'adi@gmail.com', 'adi', 'Chairperson'),
(3, 'James', 'R', 'j@gmail.com', 'jame', 'Secretary'),
(4, 'Ani', 'Rai', 'ani@gmail.com', 'ani', 'Chairperson'),
(5, 'Paul', 'A', 'paul@gmail.com', 'paul', 'Secretary'),
(6, 'Rahul', 'G', 'rahul@gmail.com', 'rahul', 'Vice-Secretary'),
(7, 'Modi', 'G', 'modi@gmail.com', 'modi', 'Organizer Head'),
(8, 'Sonia', 'G', 'sona@gmail.com', 'sonia', 'CounterPerson'),
(9, 'Akhilesh', 'S', 'akhi@gmail.com', 'akhi', 'Minister'),
(10, 'Mayawati', 'G', 'may@gmail.com', 'maya', 'Education Minister'),
(11, 'Mohan', 'S', 'm@gmail.com', 'mohan', 'Cabinet Minister'),
(12, 'Indira', 'G', 'i@gmail.com', 'indira', 'Education Minister'),
(13, 'Narendra', 'G', 'n@gmail.com', 'narendra', 'Home Minister');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `regno` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `first_name`, `last_name`, `regno`, `email`, `password`) VALUES
(1, 'Anik', 'roy', '11709773', 'ani@gmail.com', 'admin'),
(2, 'Sandy', 'mishra', '11717772', 's@gmail.com', 'admin'),
(3, 'Aditya', 'Gupta','11709774', 'adi@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `position_id` int(11) NOT NULL,
  `Position` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`position_id`, `Position`) VALUES
(4, 'Chairperson'),
(5, 'Secretary'),
(6, 'Vice-Secretary'),
(7, 'Organizer Head'),
(8, 'CounterPerson'),
(9, 'Minister'),
(10, 'Speaker'),
(11, 'Cabinet Minister'),
(12, 'Education Minister'),
(13, 'Home Minister');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `votes_id` int(11) NOT NULL,
  `Position` varchar(20) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `regno` varchar(20) NOT NULL,
  `votesnumber` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`votes_id`, `Position`, `candidate_id`, `regno`, `votesnumber`) VALUES
(56, 'Home Minister', 1, '11709895', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administartor`
--
ALTER TABLE `administartor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`candidate_id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `regno` (`regno`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`position_id`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`votes_id`),
  ADD UNIQUE KEY `regno_2` (`regno`),
  ADD KEY `regno` (`regno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administartor`
--
ALTER TABLE `administartor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `candidate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `position`
--
ALTER TABLE `position`
  MODIFY `position_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `votes_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `votes`
--
ALTER TABLE `votes`
  ADD CONSTRAINT `fk_regno` FOREIGN KEY (`regno`) REFERENCES `members` (`regno`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
