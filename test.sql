-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2023 at 03:44 PM
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
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `clientaddresses`
--

CREATE TABLE `clientaddresses` (
  `ClientID` varchar(40) NOT NULL,
  `ClientAddressLine1` varchar(43) DEFAULT NULL,
  `ClientAddressLine2` varchar(43) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `clientaddresses`
--

INSERT INTO `clientaddresses` (`ClientID`, `ClientAddressLine1`, `ClientAddressLine2`) VALUES
('[001]', '[13 Gio Street]', '[London]'),
('[value-1]', '[value-2]', '[value-3]');

-- --------------------------------------------------------

--
-- Table structure for table `clientnames`
--

CREATE TABLE `clientnames` (
  `ClientID` varchar(40) NOT NULL,
  `ClientName` varchar(43) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `clientnames`
--

INSERT INTO `clientnames` (`ClientID`, `ClientName`) VALUES
('[001]', 'Joe Gold');

-- --------------------------------------------------------

--
-- Table structure for table `clientorganisations`
--

CREATE TABLE `clientorganisations` (
  `ClientID` varchar(40) DEFAULT NULL,
  `OrganisationName` varchar(43) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `clientorganisations`
--

INSERT INTO `clientorganisations` (`ClientID`, `OrganisationName`) VALUES
('drvghbnj', 'fghjkl'),
('[01]', '[fakeorg]'),
('001', 'Fo'),
('[001]', '[Forg]');

-- --------------------------------------------------------

--
-- Table structure for table `clientpf`
--

CREATE TABLE `clientpf` (
  `ClientID` varchar(40) DEFAULT NULL,
  `PreferredContact` enum('post','email') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `clientpf`
--

INSERT INTO `clientpf` (`ClientID`, `PreferredContact`) VALUES
('[001]', 'post'),
('[value-1111]', 'email');

-- --------------------------------------------------------

--
-- Table structure for table `clientsprojects`
--

CREATE TABLE `clientsprojects` (
  `cID` int(11) NOT NULL,
  `ClientProjectsWanted` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `clientsprojects`
--

INSERT INTO `clientsprojects` (`cID`, `ClientProjectsWanted`) VALUES
(0, '[200000]');

-- --------------------------------------------------------

--
-- Table structure for table `poolmemberaddresses`
--

CREATE TABLE `poolmemberaddresses` (
  `memberID` varchar(40) DEFAULT NULL,
  `AddressLine1` varchar(40) DEFAULT NULL,
  `AddressLine2` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `poolmemberaddresses`
--

INSERT INTO `poolmemberaddresses` (`memberID`, `AddressLine1`, `AddressLine2`) VALUES
('[001]', '[12 And Street]', '[London]');

-- --------------------------------------------------------

--
-- Table structure for table `poolmemberscontactdetails`
--

CREATE TABLE `poolmemberscontactdetails` (
  `memberID` varchar(40) DEFAULT NULL,
  `memberEmail` varchar(40) DEFAULT NULL,
  `memberPhoneNumber` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `poolmemberscontactdetails`
--

INSERT INTO `poolmemberscontactdetails` (`memberID`, `memberEmail`, `memberPhoneNumber`) VALUES
('[001]', '[001@pm.com]', '[0709090954]');

-- --------------------------------------------------------

--
-- Table structure for table `poolmembersnames`
--

CREATE TABLE `poolmembersnames` (
  `memberID` varchar(40) DEFAULT NULL,
  `Membernames` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `poolmembersnames`
--

INSERT INTO `poolmembersnames` (`memberID`, `Membernames`) VALUES
('[001]', '[Ben James]');

-- --------------------------------------------------------

--
-- Table structure for table `poolmembersskills`
--

CREATE TABLE `poolmembersskills` (
  `memberID` varchar(40) DEFAULT NULL,
  `Skillname` varchar(20) DEFAULT NULL,
  `Skilltype` varchar(20) DEFAULT NULL,
  `ProjectSkillNeeded` varchar(255) DEFAULT NULL,
  `Level` varchar(40) DEFAULT NULL,
  `OtherAvailableSkills` enum('Python','Front End','Processing','JavaScript','Other','PHP','C#') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `poolmembersskills`
--

INSERT INTO `poolmembersskills` (`memberID`, `Skillname`, `Skilltype`, `ProjectSkillNeeded`, `Level`, `OtherAvailableSkills`) VALUES
('[001]', '[Java]', '[Testing]', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `projectID` varchar(43) NOT NULL,
  `projectName` varchar(43) DEFAULT NULL,
  `startDate` varchar(20) DEFAULT NULL,
  `cID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`projectID`, `projectName`, `startDate`, `cID`) VALUES
('[001]', '[J778]', '[17/02/21]', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `projectsenddate`
--

CREATE TABLE `projectsenddate` (
  `projectID` varchar(43) DEFAULT NULL,
  `endDate` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `projectsenddate`
--

INSERT INTO `projectsenddate` (`projectID`, `endDate`) VALUES
('[001]', '[20/01/22]');

-- --------------------------------------------------------

--
-- Table structure for table `projectskillrequired`
--

CREATE TABLE `projectskillrequired` (
  `projectID` varchar(43) NOT NULL,
  `ProjectSkillNeeded` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projectsphase`
--

CREATE TABLE `projectsphase` (
  `projectID` varchar(43) DEFAULT NULL,
  `ProjectPhase` enum('design','development','testing') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `projectsphase`
--

INSERT INTO `projectsphase` (`projectID`, `ProjectPhase`) VALUES
('[001]', 'testing');

-- --------------------------------------------------------

--
-- Table structure for table `unassignedprojects`
--

CREATE TABLE `unassignedprojects` (
  `UnassignedProject` varchar(100) DEFAULT NULL,
  `AvailableStaff` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clientaddresses`
--
ALTER TABLE `clientaddresses`
  ADD PRIMARY KEY (`ClientID`);

--
-- Indexes for table `clientnames`
--
ALTER TABLE `clientnames`
  ADD PRIMARY KEY (`ClientID`);

--
-- Indexes for table `clientsprojects`
--
ALTER TABLE `clientsprojects`
  ADD PRIMARY KEY (`cID`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`projectID`),
  ADD KEY `cID` (`cID`);

--
-- Indexes for table `projectskillrequired`
--
ALTER TABLE `projectskillrequired`
  ADD PRIMARY KEY (`projectID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_ibfk_1` FOREIGN KEY (`cID`) REFERENCES `clientsprojects` (`cID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
