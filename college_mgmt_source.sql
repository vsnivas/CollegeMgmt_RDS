-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2022 at 01:09 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `college_mgmt`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_college`
--

CREATE TABLE `tbl_college` (
  `college_id` int(11) NOT NULL,
  `collegename` varchar(200) NOT NULL,
  `branch` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_college`
--

INSERT INTO `tbl_college` (`college_id`, `collegename`, `branch`) VALUES
(1, 'Demo College', 'Demo Branch'),
(2, 'GECP_Trupti', 'Computer_Engineering'),
(3, 'GreenField College', 'JP Nagar'),
(4, 'DK College', 'Noida'),
(5, 'test_college1_abhinav', 'test_college1_branch1_abhinav'),
(6, 'RaghuCollege', 'BSK'),
(7, 'D Y Patil College of Engg & Tech', 'Mechanical'),
(8, 'KIIT', 'Electronics and Telecommnunications'),
(9, 'Star College', 'Demo Branch'),
(10, 'Shashi.Colleage1', 'PVP1'),
(11, 'Shashi.Colleage1', 'PVP1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_roles`
--

CREATE TABLE `tbl_roles` (
  `role_id` int(11) NOT NULL,
  `rolename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_roles`
--

INSERT INTO `tbl_roles` (`role_id`, `rolename`) VALUES
(1, 'Admin'),
(2, 'Co Admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student`
--

CREATE TABLE `tbl_student` (
  `id` int(11) NOT NULL,
  `studentname` varchar(200) NOT NULL,
  `college_id` int(11) NOT NULL,
  `gender` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `course` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_student`
--

INSERT INTO `tbl_student` (`id`, `studentname`, `college_id`, `gender`, `email`, `course`) VALUES
(1, 'Student 1', 1, 'female', 'student1@demo.com', 'BA'),
(2, 'DK Student ', 4, 'male', 'dk@gmail.com', 'B.Tech'),
(3, 'Steve Harry', 3, 'male', 'Steve3433@gmail.com', 'Java'),
(4, 'RaghuStudent', 6, 'male', 'raghu1234@gmail', 'PMCS'),
(5, 'Alison mary', 3, 'female', 'Alison283@gmail.com', 'Java'),
(7, 'Priyanshu_Sharama', 2, 'male', 'prisharma@gmail.com', 'Computer'),
(8, 'Pavani Shah', 2, 'female', 'pavanishah@gmail.com', 'IT Engineering'),
(9, 'Bhawesh', 7, 'male', 'bhawesh.hariom@gmail.com', 'Mechanical'),
(10, 'Sowmiya Jain', 3, 'female', 'sowmiya_jain@gmail.com', 'Electronics'),
(11, 'test_college1_branch1_student1', 5, 'male', 'ab.abhinav@outlook.com', 'test_college1_branch1_course1'),
(12, 'RaghuStudent2', 6, 'male', 'student2@yahoo.com', 'CBZ'),
(13, 'Jacky', 9, 'male', 'jacky@in.ibm.com', 'Java'),
(14, 'Mike', 9, 'male', 'Mike@gmail.com', 'Hadoop'),
(15, 'Rashid khan', 9, 'male', 'Rashid@gmail.com', 'Computer Engineering'),
(16, 'Rahul', 8, 'male', 'Rahul1@demo.com', 'Civil'),
(17, 'Shashi.Student', 10, 'male', 'shashikantgarg1000@yahoo.co.uk', 'Cloud.Test.1'),
(18, 'Shankar', 8, 'male', 'Shankar1@example.com', 'CSE'),
(19, 'Aditya', 8, 'male', 'Aditya1@example.com', 'Civil'),
(20, 'Akansha', 8, 'female', 'Akansha@example.com', 'Electrical'),
(21, 'Sowmiya Jain', 2, 'female', 'sowmiya_jain@gmail.com', 'Electronics'),
(22, 'DK Student 2', 4, 'male', 'dk@gmail.com', 'MCA');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `college_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `role_id` int(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `confpwd` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`user_id`, `username`, `college_id`, `email`, `gender`, `role_id`, `password`, `confpwd`) VALUES
(1, 'Verity Admin', 0, 'verityaws18@gmail.com', 'male', 1, '7c4a8d09ca3762af61e59520943dc26494f8941b', '7c4a8d09ca3762af61e59520943dc26494f8941b'),
(5, 'Moderator1', 1, 'moderator@demo.com', 'male', 2, '7c4a8d09ca3762af61e59520943dc26494f8941b', '7c4a8d09ca3762af61e59520943dc26494f8941b'),
(6, 'Moderator Admin', 1, 'moderatoradmin@demo.com', 'female', 1, '7c4a8d09ca3762af61e59520943dc26494f8941b', '7c4a8d09ca3762af61e59520943dc26494f8941b'),
(7, 'verityaws18@gmail.com', 3, 'verityaws18@gmail.com', 'male', 1, '7c4a8d09ca3762af61e59520943dc26494f8941b', '7c4a8d09ca3762af61e59520943dc26494f8941b'),
(8, 'DK', 4, 'dk@gmail.com', 'male', 2, '7c4a8d09ca3762af61e59520943dc26494f8941b', '7c4a8d09ca3762af61e59520943dc26494f8941b'),
(9, 'RaghuModerator', 1, 'raghu1234@yahoo.com', 'male', 1, 'f865b53623b121fd34ee5426c792e5c33af8c227', 'f865b53623b121fd34ee5426c792e5c33af8c227'),
(10, 'Shashi_Admin', 0, 'shashikantgarg1000@yahoo.co.uk', 'male', 1, 'b2c86d880e546515ca2a3bda85922eb24c11837f', 'b2c86d880e546515ca2a3bda85922eb24c11837f'),
(11, 'Trupti', 2, 'trupti.mahavadiya@gmail.com', 'female', 1, 'd9c4e99a174c9471bbbff15488d37a5f4f3607ea', 'd9c4e99a174c9471bbbff15488d37a5f4f3607ea'),
(12, 'Shashi_CoAdmin', 0, 'shashikantgarg1000@yahoo.co.uk', 'male', 2, 'b2c86d880e546515ca2a3bda85922eb24c11837f', 'b2c86d880e546515ca2a3bda85922eb24c11837f'),
(13, 'test_user1_ab', 5, 'ab.abhinav@outlook.com', 'male', 1, 'd608820f66dbd99963675529921f06f31ab47646', 'd608820f66dbd99963675529921f06f31ab47646'),
(14, 'Nayaz', 9, 'Starsupport@gmail.com', 'male', 1, '8cb2237d0679ca88db6464eac60da96345513964', '8cb2237d0679ca88db6464eac60da96345513964'),
(15, 'Bhawesh', 7, 'bhawesh.hariom@gmail.com', 'male', 2, '6d1a9efd231c54ce018b15ac7445338528d01446', '6d1a9efd231c54ce018b15ac7445338528d01446'),
(16, 'Savaliya_GECP', 2, 'trupti.mahavadiya@gmail.com', 'male', 2, 'd9c4e99a174c9471bbbff15488d37a5f4f3607ea', 'd9c4e99a174c9471bbbff15488d37a5f4f3607ea'),
(17, 'RaghuCoadmin', 6, 'raghucoadmin@yahoo.com', 'male', 2, 'f865b53623b121fd34ee5426c792e5c33af8c227', 'f865b53623b121fd34ee5426c792e5c33af8c227'),
(18, 'animesh123', 8, 'animesh489@gmail.com', 'male', 1, 'a29c57c6894dee6e8251510d58c07078ee3f49bf', 'a29c57c6894dee6e8251510d58c07078ee3f49bf'),
(19, 'Shashi.Moderator', 10, 'shashikantgarg1000@yahoo.co.uk', 'male', 1, 'b2c86d880e546515ca2a3bda85922eb24c11837f', 'b2c86d880e546515ca2a3bda85922eb24c11837f'),
(20, 'Raghuadmin', 6, 'raghuadmin@yahoo.com', 'male', 1, 'f865b53623b121fd34ee5426c792e5c33af8c227', 'f865b53623b121fd34ee5426c792e5c33af8c227');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_college`
--
ALTER TABLE `tbl_college`
  ADD PRIMARY KEY (`college_id`);

--
-- Indexes for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `tbl_student`
--
ALTER TABLE `tbl_student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_college`
--
ALTER TABLE `tbl_college`
  MODIFY `college_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_student`
--
ALTER TABLE `tbl_student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
