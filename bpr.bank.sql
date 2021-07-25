

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";



--
-- Database: `bpr bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'Abhishek', 'Tharun', 2000, '2021-02-17 18:58:27'),
(2, 'Shashank', 'Kavish', 100, '2021-03-17 19:00:31'),
(3, 'Srikant', 'Jeevan', 50, '2021-04-17 19:01:32'),
(4, 'Kishore', 'Lavanya', 2500, '2021-02-22 17:06:15'),
(5, 'Arya', 'Anu', 300, '2021-04-17 19:28:24'),
(6, 'Likith', 'Aditi', 670, '2021-10-06 19:30:31'),
(7, 'Sanju', 'Amulya', 150, '2021-07-17 19:31:22'),
(8, 'Sagar', 'Amar', 420, '2021-04-18 07:39:58'),
(9, 'Navya', 'Kavya',1000 '2021-05-08 09:37:08'),
(10, 'Sany', 'Ram', 680, '2021-04-18 11:52:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(100, 'Ram', 'ram26@gmail.com',12000),
(2654, 'Navya', 'nav@gmail.com', 73560),
(1065, 'Arya', 'arya2@gmail.com', 38300),
(1115, 'Manu', 'manu7@gmail.com', 89400),
(2000, 'Aditi', 'sabaji@gmail.com', 39600),
(2654, 'Amar', 'amar4@gmail.com', 50020),
(2745, 'Amar', 'amar@gmail.com', 92000),
(3334, 'Kishore', 'kilav@gmail.com', 46790),
(3624, 'Gani', 'g4am@gmail.com', 42400),
(4542, 'Anjali', 'amit@gmail.com', 65470);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54655;
COMMIT;

