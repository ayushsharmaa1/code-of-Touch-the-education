-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 19, 2018 at 09:05 AM
-- Server version: 5.5.25a
-- PHP Version: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tted`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `classid` int(11) NOT NULL,
  `category` text NOT NULL,
  `description` text NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=58 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `title`, `classid`, `category`, `description`, `status`) VALUES
(1, 'English', 3, 'Theory', 'English', 1),
(2, 'Nepali', 3, 'theory', 'nepali', 1),
(3, 'Maths', 3, 'practical', 'Maths', 1),
(4, 'Science', 3, 'practical', 'science', 1),
(5, 'EHP', 3, 'practical', 'EHP', 1),
(6, 'Computer', 3, 'practical', 'computer', 1),
(7, 'English', 4, 'Theory', 'English', 1),
(8, 'Nepali', 4, 'Theory', 'nepali', 1),
(9, 'Science', 4, 'practical', 'science', 1),
(10, 'EHP', 4, 'Theory', 'EHP', 1),
(11, 'Maths', 4, 'practical', 'Maths', 1),
(12, 'Computer', 4, 'practical', 'computer', 1),
(13, 'Social', 4, 'Theory', 'Social', 1),
(14, 'English', 5, 'Theory', 'English', 1),
(15, 'Nepali', 5, 'Theory', 'nepali', 1),
(16, 'Maths', 5, 'practical', 'Maths', 1),
(17, 'Science', 5, 'practical', 'science', 1),
(19, 'Social', 5, 'Theory', 'Social', 0),
(20, 'EHP', 5, 'Theory', 'EHP', 1),
(21, 'Computer', 5, 'Theory', 'computer', 1),
(22, 'English', 6, 'Theory', 'English', 1),
(23, 'Nepali', 6, 'Theory', 'nepali', 1),
(24, 'Maths', 6, 'practical', 'maths', 1),
(25, 'Science', 6, 'Theory', 'science', 1),
(26, 'Social', 6, 'Theory', 'Social', 1),
(27, 'EHP', 6, 'Theory', 'EHP', 1),
(28, 'Computer', 6, 'Theory', 'computer', 1),
(29, 'English', 7, 'theory', 'English', 1),
(30, 'Nepali', 7, 'theory', 'nepali', 1),
(31, 'maths', 7, 'practical', 'Maths', 1),
(32, 'Science', 7, 'Theory', 'science', 1),
(33, 'Social', 7, 'Theory', 'Social', 1),
(34, 'EHP', 7, 'Theory', 'EHP', 1),
(35, 'Computer', 7, 'Theory', 'computer', 1),
(36, 'English', 8, 'Theory', 'English', 1),
(37, 'Nepali', 8, 'Theory', 'neplai', 1),
(38, 'Maths', 8, 'practical', 'Maths', 1),
(39, 'Science', 8, 'practical', 'science', 1),
(40, 'Social', 8, 'Theory', 'Social', 1),
(41, 'EHP', 8, 'Theory', 'EHP', 1),
(42, 'Computer', 8, 'Theory', 'computer', 1),
(43, 'English', 9, 'Theory', 'English', 1),
(44, 'Nepali', 9, 'Theory', 'nepali', 1),
(45, 'Maths', 9, 'Theory', 'Maths', 1),
(46, 'Science', 9, 'Theory', 'science', 1),
(47, 'Social', 9, 'Theory', 'Social', 1),
(48, 'EHP', 9, 'Theory', 'EHP', 1),
(49, 'Computer', 9, 'Theory', 'computer', 1),
(50, 'English', 10, 'Theory', 'English', 1),
(51, 'Nepali', 10, 'Theory', 'nepali', 1),
(52, 'Maths', 10, 'practical', 'Maths', 1),
(53, 'Science', 10, 'practical', 'science', 1),
(54, 'Social', 10, 'Theory', 'Social', 1),
(55, 'EHP', 10, 'Theory', 'EHP', 1),
(56, 'Computer', 10, 'Theory', 'computer', 1),
(57, 'English', 1, 'theory ', 'English', 1);

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE IF NOT EXISTS `class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(222) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`id`, `name`, `status`) VALUES
(1, 'Class One', 1),
(2, 'Class Two', 1),
(3, 'Class Three', 1),
(4, 'Class Four', 1),
(5, 'Class FIve', 1),
(6, 'Class Six', 1),
(7, 'Class Seven', 1),
(8, 'Class Eight', 1),
(9, 'Class Nine', 1),
(10, 'Class Ten', 1),
(11, 'Class Eleven', 1),
(12, 'Class Twelve', 1);

-- --------------------------------------------------------

--
-- Table structure for table `content_vid`
--

CREATE TABLE IF NOT EXISTS `content_vid` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) NOT NULL,
  `video_url` text NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `posteddate` varchar(255) NOT NULL,
  `details` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `cat_id`, `class_id`, `title`, `content`, `posteddate`, `details`) VALUES
(3, 4, 5, 'NETWORK AND TELE COMMUNICATION', '', '2018-05-10', '<p>1.</p>\r\n\r\n<p>a. True</p>\r\n\r\n<p>b. False</p>\r\n\r\n<p>c. False</p>\r\n\r\n<p>d. True</p>\r\n\r\n<p>e. False</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>2.</p>\r\n\r\n<p>Host Computer ------------------ A powerful, centralized computer system</p>\r\n\r\n<p>NIC -------------------------------- A computer circuit board</p>\r\n\r\n<p>Windows NT ----------------------- popular network operating</p>\r\n\r\n<p>TCP/IP --------------------------- Network Protocol</p>\r\n\r\n<p>Peer --------------------------- A self-sufficient computer</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>3.</p>\r\n\r\n<p>a. Peer</p>\r\n\r\n<p>b. WAN</p>\r\n\r\n<p>c. HTTP</p>\r\n\r\n<p>d. Infrared Transmission</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>4.</p>\r\n\r\n<p>a. LAN = Local Area Network</p>\r\n\r\n<p>b WAN = Wide Area Network</p>\r\n\r\n<p>c. MAN = Metropolitan Area Network</p>\r\n\r\n<p>d. UTP = Unshielded Twisted Pair</p>\r\n\r\n<p>e. STP = Shielded Twisted Pair</p>\r\n\r\n<p>f. NIC = Network Interface Card</p>\r\n\r\n<p>g. MODEM = Modulator Demodulator</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>5.</p>\r\n\r\n<p>a. Network Protocol</p>\r\n\r\n<p>b. Peer to Peer Network</p>\r\n\r\n<p>c. Metropolitan Area Network</p>\r\n\r\n<p>d. Bus Topology</p>\r\n\r\n<p>e. Half Duplex Mode Communication</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>6.</p>\r\n\r\n<p>a. A computer network is a logical or physical interconnection between two or more computers such that they could communicate with each other.</p>\r\n\r\n<p>The advantages and disadvantages of computer network are as follows:</p>\r\n\r\n<p>Advantages</p>\r\n\r\n<p>i. A computer networked environment allows faster, easier and reliable transfer of data files from one computer to another.</p>\r\n\r\n<p>ii. A network computer allows sharing of networked connected peripherals and simultaneous access to programs and data irrespective of the physical location of the resources and the user.</p>\r\n\r\n<p>Disadvantages</p>\r\n\r\n<p>i. Computer network faults can cause loss of data and resources.</p>\r\n\r\n<p>ii. Proper maintenance of a network computer requires a considerable time and expertise.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The hardware and software of computer network are as follows:</p>\r\n\r\n<p>Hardware components</p>\r\n\r\n<p>i. Computer systems (servers or clients) = A server is a computer designed to process requests and deliver data to other computers over a local network or the Internet.</p>\r\n\r\n<p>A client is a network computer that utilizes the resources of other network computers, including other clients.</p>\r\n\r\n<p>ii. Connectors = The connectors are used to connect network cables to terminals or other devices. The type of connector depends on the cable types or devices used in the network.</p>\r\n\r\n<p>iii. Network Cables = Network cables are the medium through which the information moves from one network to another network</p>\r\n\r\n<p>iv. Network Interface Card (NIC) = It is a computer circuit board that is installed on a computer so that it can be connected in a network.</p>\r\n\r\n<p>Software Components</p>\r\n\r\n<p>i. Network Operating System = Network Operating System is required when a number of computers are connected together in a network. The operating system controls who logs on to network by means of user names and passwords, in order to protect the data and programs stored on the network.</p>\r\n\r\n<p>ii. Network Protocol = Network protocol is a formal description of message formats and the rules that two or more machines must follow to exchange those messages.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>c. Each computer on any types of network needs a hardware component to control the flow of data. The device that performs this function is Network Interface Card (NIC), commonly called network card.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>d. Protocols are the sets of rules that the computer on the network must follow to communicate and to exchange the data with each other. Some of the popular network protocols are as follows:</p>\r\n\r\n<p>i. TCP/IP</p>\r\n\r\n<p>ii. HTTP</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>e. It is a type of network in which each computer in a network is either a client or a server. It is an arrangement where some programs, files or other resources located on one computer called the server but are available to other systems on the network, called clients.</p>\r\n\r\n<p><img src="http://www.khullakitab.com/images/solution/class-10/img30.jpg" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>f. Peer to peer network is a type of decentralized and distributed network architecture in which individual nodes in the network acts as both suppliers and consumers of resources in contrast to centralized client server model.</p>\r\n\r\n<p><img src="http://www.khullakitab.com/images/solution/class-10/img31.jpg" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>g. Difference between LAN and WAN are as follows:</p>\r\n\r\n<table cellpadding="7" cellspacing="0">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>LAN</p>\r\n			</td>\r\n			<td>\r\n			<p>WAN</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<ul>\r\n				<li>\r\n				<p>A LAN is restricted to a limited geographical coverage of a few kilometers.</p>\r\n				</li>\r\n			</ul>\r\n			</td>\r\n			<td>\r\n			<ul>\r\n				<li>\r\n				<p>WAN spans greater distance and may operate nationwide or even worldwide</p>\r\n				</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<ul>\r\n				<li>\r\n				<p>Data transmission speed is much higher in LAN.</p>\r\n				</li>\r\n			</ul>\r\n			</td>\r\n			<td>\r\n			<ul>\r\n				<li>\r\n				<p>Data transmission speed is slower in WAN than in a LAN</p>\r\n				</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>h. A network topology refers to the shape of the network in which all the computers are connected together.</p>\r\n\r\n<p>The different types of network topologies are as follows:</p>\r\n\r\n<p>i. Bus Topology ii. Star Topology iii. Ring Topology</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>i. Ring topology is a network topology in which each node connects to exactly two other nodes, forming a single continuous pathway for signals through each node &acirc;&euro;&ldquo; a ring. Data travel from node to node with each node along the way handling every packet.</p>\r\n\r\n<p><img src="http://www.khullakitab.com/images/solution/class-10/img32.png" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>j. A router is a device used to connect networks that use different architectures and protocols. It can switch and transfer packets of information across multiple networks. This process is called routing.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>k. A communication media is refers to any form of media that is primarily used for the transfer of signals. They are the physical pathways over which data travels from a sending device to a receiving device in a telecommunication system.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>l. Difference between bounded media and unbounded media are as follows:</p>\r\n\r\n<table cellpadding="7" cellspacing="0">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>Bounded Media</p>\r\n			</td>\r\n			<td>\r\n			<p>Unbounded Media</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>i. It is the transmission medium in which data is guided by the cable or wire.</p>\r\n			</td>\r\n			<td>\r\n			<p>i. It is the transmission medium in which data is sent through the air instead of cables.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>ii. It requires wire transmission such as coaxial cable, untwisted pair cable etc.</p>\r\n			</td>\r\n			<td>\r\n			<p>ii. It includes wireless transmission such as radio networking, infrared transmission etc.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>m. Modem is the short form of Modulator-Demodulator. This is a device used to transfer data of one computer to another using telephone lines. During the modulation phase, it is used to translate digital signals of a computer to another signal, which are then transmitted across the standard telephone line. The reverse takes place during its demodulation phase, as the MODEM receives analog signals from a phone line and converts them into digital signals for the computer.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>n.</p>\r\n\r\n<p>i. Microwave transmission</p>\r\n\r\n<p>Microwave signals are similar to radio and television signals and are used to transmit data through the space without the use of cables. Microwaves signals provide very high speed transmission. These signals cannot bend or pass obstacles like hill, towers and should be in a line of sight.</p>\r\n\r\n<p>ii. Simplex mode of transmission</p>\r\n\r\n<p>It is a mode of transmission in which communication takes place between two stations in only one direction at a time. There is no return path. Radio and television broadcasts operate in simplex mode.</p>\r\n\r\n<p>iii. Bandwidth</p>\r\n\r\n<p>A term used to describe the data handling capacity of a communication system is called a bandwidth. Bandwidth is the range of frequency that is available for the transmission of data. Bandwidth is measured in bits per second (bps).</p>\r\n'),
(4, 46, 9, 'Videos Related with Classification of Living Things', '', '2018-05-12', '<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>All the living beings of the world are divided into various groups depending upon their similarities and characteristics. like appearance, reproduction, mobility, It makes easy to study about the organisms. We cannot study about the organisms separately, it is very difficult. They are arranged into different groups on the basis of their similarities and dissimilarities. The arrangement of living organisms into different groups is known as a classification of living organisms. CarolosLinnaeus divided the world of living organisms into two kingdoms: animal kingdom and plant kingdom.</p>\r\n\r\n<p>Taxonomy</p>\r\n\r\n<p>Taxonomy is the branch of science that deals with identification, nomenclature and classification of the living organisms. It is derived from two greek words- taxis means classification and nomos mean law. It is the science of naming, describing and classifying all the living organisms of the world.</p>\r\n\r\n<p>Classification</p>\r\n\r\n<p>The arrangement of organisms into groups based on particular characters is called classification. There are 7 levels of classification of living organisms: Kingdom, Phylum, Classes, Order, Families, Genus, and Species.</p>\r\n\r\n<p>Nomenclature</p>\r\n\r\n<p>The process of giving scientific names to plants and animals is called nomenclature. Linnaeus is known as the<strong>&nbsp;father of nomenclature</strong>&nbsp;as he was the first person to assign the generic name (first name) and the specific name (second name) to the plants and animals. The system of assigning two names, first generic name and second specific name in Latin to an organism is called&nbsp;<strong>binomial system of nomenclature</strong>. The generic and specific names should be underlined when written by hand and given in&nbsp;<em>italics</em>&nbsp;when printed. The group of closely related species is known as Genus. For example, dog, jackal, wolf are placed in the same genus. Species includes a group of individuals which resemble one another in all essential morphological and reproductive characters. Some of the examples are given below in table,</p>\r\n\r\n<table style="width:666px">\r\n	<tbody>\r\n		<tr>\r\n			<td>Common name</td>\r\n			<td>Generic name</td>\r\n			<td>Specific name</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Frog</td>\r\n			<td><em>Rana</em></td>\r\n			<td><em>tigrina</em></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Man</td>\r\n			<td><em>Homo</em></td>\r\n			<td><em>sapiens</em></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Tiger</td>\r\n			<td><em>Panthera</em></td>\r\n			<td><em>tigris</em></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Rice</td>\r\n			<td><em>Oryza</em></td>\r\n			<td><em>sativa</em></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Pea</td>\r\n			<td><em>Pisum</em></td>\r\n			<td><em>sativum</em></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><img alt="Classification of Living Things" src="https://www.kullabs.com/uploads/classification_of_living_things_kullabs.jpg" style="height:429px; width:583px" /></p>\r\n\r\n<p>Classification of Living Things</p>\r\n\r\n<p>Importance of classification</p>\r\n\r\n<p>Classification of organisms helps us in following ways:</p>\r\n\r\n<ol>\r\n	<li>It provides support in favor of evolution.</li>\r\n	<li>It takes a short period for the understanding of organisms.</li>\r\n	<li>It suggests us ways of giving scientific names to the organisms.</li>\r\n	<li>It shows natural relationship of organisms.</li>\r\n	<li>It makes the study of organisms easier and scientific.</li>\r\n</ol>\r\n'),
(5, 46, 9, 'Videos Related with Mosquito', '', '2018-05-12', '<ul>\r\n	<li>Note</li>\r\n	<li>&nbsp;</li>\r\n	<li>Things to remember</li>\r\n	<li>&nbsp;</li>\r\n	<li>Videos</li>\r\n	<li>&nbsp;</li>\r\n	<li>Exercise</li>\r\n	<li>&nbsp;</li>\r\n	<li>Quiz</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>There are various kinds of animals in the&nbsp;earth. They are divided into vertebrates and invertebrates. In this topic, we study about invertebrates (Mosquito). Mosquitoes are found all over the world but they are mostly common in humid and temperate climate. There are 2,700 species of mosquito in Nepal.Carbon dioxide gives mosquitoes the signal that blood is nearby, and since we exhale CO2, we make it easy for mosquitoes to find us.</p>\r\n\r\n<h3>Classification of Mosquito</h3>\r\n\r\n<p>Kingdom: Animalia<br />\r\nSub kingdom: Invertebrata<br />\r\nPhylum: Arthopoda<br />\r\nClass: Insecta<br />\r\nCommon name: Mosquito</p>\r\n\r\n<p><em>Culex tarsalis</em>&nbsp;and&nbsp;<em>Anopheles freeborni</em>&nbsp;are two main mosquitoes found in Nepal.</p>\r\n\r\n<p>Structure</p>\r\n\r\n<p>The body of mosquito is divided into three parts: head, thorax and abdomen.</p>\r\n\r\n<p><img alt="" src="http://i.imgur.com/MukLeXF.png" style="width:438px" /></p>\r\n\r\n<p><strong>Head:</strong>&nbsp;The head of the mosquito is very small and almost spherical in shape which is joined to thorax by the means of a short and narrow segment. The head bears a pair of compound eyes called palps and proboscis. There are 13 segments in each antenna. The second segment of each antenna possesses hearing organs called Johnston&rsquo;s organs.</p>\r\n\r\n<p><strong>Thorax:</strong>&nbsp;The thorax consists of three parts: Prothorax, Mesothorax and Metathorax.</p>\r\n\r\n<p><strong>Abdomen:</strong>&nbsp;The abdomen of a mosquito is made of nine segments. The abdomen possesses an anal opening and a genital opening. The ninth segment of a male mosquito bears an anal which helps in copulation.</p>\r\n\r\n<p><strong>Difference between male and female mosquitoes</strong></p>\r\n\r\n<table border="1" style="width:100%">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>Male</strong></td>\r\n			<td><strong>Female</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Male mosquitoes only feed on sap of plant.</td>\r\n			<td>Female mosquitoes bite and suck blood.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Antenna is provided with long hairs.</td>\r\n			<td>Antenna is provided with short hairs.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Mouthparts are adapted for sucking.</td>\r\n			<td>Mouthparts are adapted for sucking and biting.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Abdomen is smaller.</td>\r\n			<td>Abdomen is larger.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n'),
(6, 1, 1, 'Note on Plant Kingdom', '', '', '<p>Carolos Linnaeus divided the world of living organisms into two kingdoms: animal kingdom and plant kingdom . There are millions of species of plants. They vary from small size to a large size. On the basis of presence or absence of flowers, all the plants are divided into two major sub-kingdoms: cryptogams and phanerogams.</p>\r\n\r\n<h3>Sub kingdom: Cryptogams</h3>\r\n\r\n<p>They are promitive and somplest plants without flowers. They are On the basis of appearance and stage of development, cryptogams are divided into three divisions. They are: Thallophyta, bryophyta and pteridophyta.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Division: Thallophyta</p>\r\n\r\n<p>They are the most primitive and the simplest plants. They may be multicellular or multicellular. They possess following characteristics:</p>\r\n\r\n<ol>\r\n	<li>Thallophytes may be unicellular or multicellular plants.</li>\r\n	<li>The plant body is not differentiated into root, stem and leaves.</li>\r\n	<li>They reproduce both by asexual and sexual method.</li>\r\n</ol>\r\n\r\n<p>Thallophyta is divided into&nbsp;<strong>two sub-divisions</strong>. They are algae and fungi.</p>\r\n\r\n<p><img alt="" src="http://i.imgur.com/ZFoXJzQ.jpg" style="height:170px; width:300px" /></p>\r\n\r\n<p>algae</p>\r\n\r\n<p><img alt="" src="http://i.imgur.com/pwKq8Vk.jpg" style="height:170px; width:300px" /></p>\r\n\r\n<p>fungi</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Sub-division: Algae</p>\r\n\r\n<p>Algae are the green thallophytes which have the following characteristics:</p>\r\n\r\n<ol>\r\n	<li>Mostly, algae are usually aquatic but few are grown in moist soil.</li>\r\n	<li>They contain chlorophyll, so they can prepare their food.</li>\r\n	<li>The cell wall of plants is made up of cellulose.</li>\r\n	<li>They store food in the form of starch.</li>\r\n	<li>Reproduction takes place by vegetative, asexual and sexual method.</li>\r\n</ol>\r\n\r\n<p><strong>Examples: spirogyra, sea-weeds, volvox, etc.</strong></p>\r\n\r\n<p><img alt="" src="http://i.imgur.com/lttFzvD.jpg" style="height:170px; width:300px" /></p>\r\n\r\n<p>spirogyra</p>\r\n\r\n<p><img alt="" src="http://i.imgur.com/UXhmrnV.jpg" style="height:170px; width:300px" /></p>\r\n\r\n<p>sea-weeds</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Sub-division: Fungi</p>\r\n\r\n<p><img alt="" src="http://i.imgur.com/CvUVrBb.jpg" style="height:150px; width:240px" /></p>\r\n\r\n<p>Fungi include non-green plants and have following characteristics:</p>\r\n\r\n<ol>\r\n	<li>They are grown in damp, moist and dark places.</li>\r\n	<li>They cannot make their own food due to absence of chlorophyll.</li>\r\n	<li>The fungi consist of network of mycelium which consists of thread like structures called hyphae.</li>\r\n	<li>They store food in the form of glycogen, and oil globules.</li>\r\n	<li>They reproduce by vegetative, asexual and sexual method.</li>\r\n</ol>\r\n\r\n<p><strong>Examples:</strong>&nbsp;mushroom, mucor, yeast, ring worm etc.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Division: Bryophyta</p>\r\n\r\n<p><img alt="" src="http://i.imgur.com/n5nzajI.jpg" style="height:150px; width:240px" /></p>\r\n\r\n<p>Bryophyta have the following characteristics:</p>\r\n\r\n<ol>\r\n	<li>They are grown in damp, moist and shady places.</li>\r\n	<li>They contain chlorophyll so they are autotrophic.</li>\r\n	<li>They need water for fertilization so they are also called amphibian plants.</li>\r\n	<li>They show distinct alternation of generation in their life cycle.</li>\r\n	<li>They reproduce by vegetative, asexual and sexual method.</li>\r\n</ol>\r\n\r\n<p><strong>Examples:</strong>&nbsp;moss, liverworts etc.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Division: Pteridophyta</p>\r\n\r\n<p>Pteridophyta are seedless vascular plants . They are seedless vascular plants and have the following characteristics:</p>\r\n\r\n<ol>\r\n	<li>They are mostly found in moist, shady and cool places.</li>\r\n	<li>Plant body is differentiated into roots, stem and leaves.</li>\r\n	<li>They are vascular plants and bear feather like leaves.</li>\r\n	<li>They contain chlorophyll so they are autotrophic.</li>\r\n	<li>They are well developed among all non-flowering plants.</li>\r\n</ol>\r\n\r\n<p><strong>Examples:</strong>&nbsp;fern, horsetail, paniamala etc.</p>\r\n\r\n<p><img alt="" src="http://i.imgur.com/qYhuOht.jpg" style="width:300px" /></p>\r\n\r\n<p>Fern</p>\r\n\r\n<p><img alt="" src="http://i.imgur.com/FuHAvoi.jpg" style="width:300px" /></p>\r\n'),
(7, 46, 9, 'Note on Life Cycle of Mosquito', '', '2018-05-12', '<p><img alt="" src="http://i.imgur.com/LU161Pi.gif" style="width:300px" /></p>\r\n\r\n<p>The life cycle of a mosquito completes in the following four phases:</p>\r\n\r\n<p><strong>Eggs:</strong></p>\r\n\r\n<p>Mosquitoes copulate in the evening during flight. After copulation, female mosquitoes lay their eggs in stagnant water. The female anopheles lays 40 to 100 eggs at a time. Their eggs are spindle in shape having lateral air floats. A culex lays 200-300 eggs at a time. Their eggs are cigar shaped.</p>\r\n\r\n<p><strong>Larva:</strong></p>\r\n\r\n<p>The eggs are hatched into larvae within 2-3 days under suitable conditions. These are transparent and emerge from the lower end of each egg. They are also called Wriggler because of their caterpillar like movements. The body of larvae is divided into head, thorax, and abdomen. The larva of a culex mosquito at rest hangs at an angle from the surface of water whereas the larva of an anopheles lies parallel to the surface of water.</p>\r\n\r\n<p><strong>Pupa:</strong></p>\r\n\r\n<p>After about a week, the larva moults for the last time and develops into pupa. They are commonly known as tumblers. The body of pupa is comma-shaped. The pupa of a mosquito is very active in comparison to the pupae of other insects. Pupa metamorphoses into mosquito after a short duration.</p>\r\n\r\n<p><strong>Adult mosquito:</strong></p>\r\n\r\n<p>After metamorphosis, the pupa develops the body organs. Thus animago is formed. Imago is a complete insect stage in which mosquito is completely young. The imago emerges when the pupalskin splits. The mosquito dries its wings by vibrating and then flies in air. After mating between male and female, the female starts laying eggs. The complete lifecycle from eggs to adult takes ten to several days.</p>\r\n\r\n<p>Some related terms</p>\r\n\r\n<p><strong>Moulting:</strong></p>\r\n\r\n<p>The periodic shedding of the outer layer of the skin of larvae of insects to allow further growth is called Moulting.</p>\r\n\r\n<p><strong>Histogenesis:</strong></p>\r\n\r\n<p>Differentiation of tissues inside the puparium of insects is called Histogenesis.</p>\r\n\r\n<p><strong>Metamorphosis:</strong></p>\r\n\r\n<p>Period of rapid transformation from larval to adult stage is called metamorphosis.</p>\r\n\r\n<p>Mosquito and Diseases</p>\r\n\r\n<p>Mosquito is harmful to human as well as other animals. Mosquito causes different diseases like malaria, filaria, yellow fever, meningitis, encephalitis, dengue, etc.</p>\r\n\r\n<p><strong>Malarial fever:</strong></p>\r\n\r\n<p>Plasmodium is an intracellular blood parasite which causes malarial fever. Its primary host is human where the asexual cycle is completed. The secondary host is a female anopheles mosquito. When an infected female anopheles mosquito bites one, several sporozoites with its saliva enter the blood.</p>\r\n\r\n<ol>\r\n	<li>Control measures of mosquitoes</li>\r\n	<li>Destruction of breeding places</li>\r\n	<li>Killing of larvae and pupae by spraying kerosene in stagnant</li>\r\n	<li>Killing the adult mosquitoes by using insecticides</li>\r\n	<li>Personal protection by using anti-mosquitoes cream like odomos</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n'),
(8, 46, 9, 'Videos Related with Animal Kingdom I', '', '2018-05-12', '<p>On the basis of presence or absence of vertebral column, animal kingdom is divided into invertebrate and vertebrate.</p>\r\n\r\n<p><img alt="Animal Kingdom" src="https://www.kullabs.com/uploads/animalkingdom_kullabs1.jpg" style="height:495px; width:698px" /></p>\r\n\r\n<p>Animal Kingdom</p>\r\n\r\n<p>Sub-Kingdom: Invertebrate</p>\r\n\r\n<p>The animals which lack backbone or vertebral column are called invertebrates. The invertebrate animals are divided into nine phyla. All the unicellular organisms are included in protozoa while the multicellular organisms are in metazoan.</p>\r\n\r\n<p><strong>Differences between vertebrates and invertebrates:</strong></p>\r\n\r\n<table border="1" cellpadding="5" style="width:678px">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>Invertebrates</strong></td>\r\n			<td><strong>Vertebrates</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Backbone or vertebral column is absent.</td>\r\n			<td>Backbone or vertebral column is present.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Brain is absent or in the form of paired ganglia above the pharynx.</td>\r\n			<td>Brain is present.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>They are cold-blooded.</td>\r\n			<td>They are cold or warm blooded.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Skin consists of only a single layer.</td>\r\n			<td>Skin consists of two layers: epidermis and dermis.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Red blood cells are mainly absent.</td>\r\n			<td>Red blood cells are present.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Body shape is either irregular or regular.</td>\r\n			<td>Body shape is mostly regular.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Asexual reproduction predominant.</td>\r\n			<td>Sexual reproduction predominant.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>The invertebrates are further divided into the following nine phyla,</p>\r\n\r\n<p>Phylum: Protozoa</p>\r\n\r\n<p>They have the following characteristics:</p>\r\n\r\n<ol>\r\n	<li>The protozoans are small and microscopic animals.</li>\r\n	<li>They are unicellular organisms.</li>\r\n	<li>Excretion and respiration take place by general body surface or by contractile vacuole.</li>\r\n	<li>They commonly move with the help of pseudopodia.</li>\r\n	<li>Their body is naked or bounded by a pellicle.</li>\r\n</ol>\r\n\r\n<p><strong>Examples: amoeba, paramecium, euglena, plasmodium etc.</strong></p>\r\n\r\n<p><strong><img alt="" src="http://i.imgur.com/OT2DVLc.jpg" style="height:180px" /><img alt="" src="http://i.imgur.com/JJRoHow.jpg" style="height:180px" /></strong></p>\r\n\r\n<p><img alt="" src="http://i.imgur.com/60pC2eg.jpg" style="width:220px" /></p>\r\n\r\n<p>Phylum: Porifera</p>\r\n\r\n<p>They are called sponges and have the following characteristics:</p>\r\n\r\n<ol>\r\n	<li>They do not move from place to place. Thus, they are called sessile.</li>\r\n	<li>Most of the sponges are marine except spongilla.</li>\r\n	<li>Sponges have two types of openings in their body. Small pores are called ostia and large pores are called osculum.</li>\r\n	<li>The presence of sponging fibre, calcium and silicon make the sponges body rigid and strong.</li>\r\n	<li>Both asexual and sexual reproduction occurs in sponges.</li>\r\n</ol>\r\n\r\n<p><strong>Examples: sycon, spongilla, euspongia etc.</strong></p>\r\n\r\n<p><img alt="" src="http://i.imgur.com/WLI0eFQ.jpg" style="width:220px" /></p>\r\n\r\n<p>Phylum: Coelenterata</p>\r\n\r\n<p>They have the following characteristics:</p>\r\n\r\n<ol>\r\n	<li>The bodies of coelenterates are hollow and tubular cavity called coelentron.</li>\r\n	<li>Mouth serves for both ingestion and egestion of food.</li>\r\n	<li>Mouth is surrounded by tentacles which help in locomotion and capturing of prey.</li>\r\n	<li>They are diploblastic animals.</li>\r\n	<li>They reproduce by both asexual and sexual method.</li>\r\n</ol>\r\n\r\n<p><strong>Examples: hydra, obelia, jellyfish, corals etc.</strong></p>\r\n\r\n<p><img alt="" src="http://i.imgur.com/04e0r9h.jpg" style="width:220px" /></p>\r\n\r\n<p>Phylum: Platyhelminthes</p>\r\n\r\n<p>These animals are known as flat worms and have the following characteristics:</p>\r\n\r\n<ol>\r\n	<li>The flat worms are soft and flat either leaf-like or tape-like.</li>\r\n	<li>Their head is provided with hooks and suckers.</li>\r\n	<li>They have mouth but no anus in their alimentary canal.</li>\r\n	<li>They are hermaphrodite as their body contains both male and female reproductive organ.</li>\r\n	<li>They are usually parasites but few of them are free living.</li>\r\n</ol>\r\n\r\n<p><strong>Examples: liver fluke, tapeworm, etc.</strong></p>\r\n\r\n<p><img alt="" src="http://i.imgur.com/DIImVkq.jpg" style="width:220px" /></p>\r\n\r\n<p>Phylum: Aschelminthes or Nemathhelminthes</p>\r\n\r\n<p>They are commonly called round worms and have following characteristics:</p>\r\n\r\n<ol>\r\n	<li>The body of round worms is cylindrical and unsegmented.</li>\r\n	<li>Their body is covered with thick cuticle.</li>\r\n	<li>The digestive system is complete with mouth and anus.</li>\r\n	<li>The circulatory and respiratory systems are absent.</li>\r\n	<li>They reproduce by sexual method.</li>\r\n</ol>\r\n\r\n<p><strong>Examples: hookworm, earthworm, pinworm etc.</strong></p>\r\n\r\n<p><strong>Differences between male and female ascaris:</strong></p>\r\n\r\n<table border="1px" style="width:543px">\r\n	<tbody>\r\n		<tr>\r\n			<td>Male Ascaris</td>\r\n			<td>Female Ascaris</td>\r\n		</tr>\r\n		<tr>\r\n			<td>The male is smaller than female.</td>\r\n			<td>The female is larger than male.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>The tail of male is curved.</td>\r\n			<td>The tail is straight and pointed.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>In male, genital pore and anus open onto a common chamber, the cloca.</td>\r\n			<td>In female, the genital pore and anus open separately.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Tail of male is provided with a pair of penial setae.</td>\r\n			<td>Penial setae are absent.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Phylum: Annelida</p>\r\n\r\n<p>They are known as segmented worms and have following characteristics:</p>\r\n\r\n<ol>\r\n	<li>These animals are cylindrical, segmented and elongated.<img alt="" src="http://i.imgur.com/gKmkrEr.jpg" style="height:259px; width:173px" /></li>\r\n	<li>They have moist skin through which they respire.</li>\r\n	<li>Locomotory organs are called setae or parapodia.</li>\r\n	<li>Digestive system is complete, having mouth and anus.</li>\r\n	<li>They are usually hermaphrodite while a few of them are unisexual.</li>\r\n</ol>\r\n'),
(9, 47, 9, 'WE, OUR COMMUNITY AND OUR NATION', '', '2018-05-02', '<p><strong>1. Development:</strong></p>\r\n\r\n<p><img alt="" src="http://www.khullakitab.com/uploads/kcfinder-2.51/upload/images/class%209/Capture.PNG" /></p>\r\n\r\n<p>The process that brings positive change is commonly known as development. Development is necessary because nothing remains the same forever. Development activities are the pathways for the economic development of people. If development activities will take place in certain place then the people and the lifestyle of people will also develop gradually. When there will be road construction in one of the place which is the part of development then the products that are produced in that place will get market which will enhance the economic development of people. In such ways development activities enhance the economic development of the people. Development environment and have very close relationship with each other.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Development work is very important for the progress of the country. Development work is important for the country because development works like agriculture, operation of industry, production of electricity, tourism, construction of road, etc. help in promoting income generating activities. From these works economic development can be observed. Such development activities provide employment to people. Skill is developed in them. The level of their work increases. It results the economic development of a person, society and country. The life standard of people does not change without the developmental activities. Similarly transportation for goods from one place to another becomes easier. Basic goods and services are required for livelihood of people. Food, clothes, shelter, education, health services, drinking water, hygiene, fuel, entertainment, safety, etc are basic things; the first and primary goal of development is to fulfill these basic needs of people. Various development and construction works help to fulfill the basic needs. Each country has its own kind of geographical structure. It affects the development works. Development activities should be operated in different parts of the country considering the geographical situation. It helps to distribute facilities in all regions. It helps to maintain the balance of population distribution. Development activities are essential for the development of the society. Development works encourage people to utilize the resources like land, water, forest, etc. The development helps to make the people self dependent. Economic status of people will be improved. It brings change in the lifestyle of people. Thus, it will help to protect the environment if the feeling of environment conservation can be aroused in people.<br />\r\n&nbsp;</p>\r\n\r\n<p><strong>2. Measurement of human development:</strong></p>\r\n\r\n<p>There are different factors that determine human development.</p>\r\n\r\n<p>A. The&nbsp;Human Development&nbsp;Index (HDI):</p>\r\n\r\n<p>The&nbsp;Human Development&nbsp;Index (HDI) is a summary&nbsp;measure&nbsp;of average achievement in key dimensions of&nbsp;human development: a long and healthy life, being knowledgeable and have a decent standard of living. The HDI is the geometric mean of normalized indices for each of the three dimensions.</p>\r\n\r\n<p>B.GDI gender-related development index:</p>\r\n\r\n<p>The&nbsp;Gender Development Index&nbsp;(GDI) is an&nbsp;index&nbsp;designed to measure of&nbsp;gender&nbsp;equality.&nbsp;GDI&nbsp;together with the&nbsp;Gender Empowerment Measure (GEM) were introduced in 1995 in the Human Development&nbsp;Report written by the United Nations&nbsp;Development Program.</p>\r\n\r\n<p>C. Objectives of the measurement of human development:</p>\r\n\r\n<p>Human development&nbsp;is a concept within a field of international&nbsp;development. It involves studies of the&nbsp;human&nbsp;condition with its core being the capability approach. The progress that a country has made in economic development, arms and ammunition or nuclear weapons, etc does not have any meaning if the welfare of the people is not given priority. The people are the asset of the country. They make the country, not the other way round. If the people are progressive, the country develops automatically.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>3. Study of human development of our won community</strong>:</p>\r\n\r\n<p>There are many definitions of community development but the basic concept was stated by the United Nations in 1948. &quot;Community Development is a process designed to create conditions of economic and social progress for the whole community with its active participation and fullest possible reliance upon the community&#39;s initiative.&quot;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Community development&nbsp;is a process where community&nbsp;members come together to take collective action and generate solutions to common problems.&nbsp;Community&nbsp;wellbeing (economic, social, environmental and cultural) often evolves from this type of collective action being taken at a grassroots level.</p>\r\n\r\n<p><strong>4. Sustainable development:</strong></p>\r\n\r\n<p><img alt="" src="http://www.khullakitab.com/uploads/kcfinder-2.51/upload/images/class%209/Capture(1).PNG" /></p>\r\n\r\n<p>Development activity that does not cause harm or disturbance to the ecology and which benefits us is called sustainable development. To maintain coordination among the existing population, the available resources, environment and development is the main goal of sustainable development.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; There are huge cultural differences inherent in developing and developed countries. The lifestyle of people in developed countries has reached its state gradually. The people in developed countries are already economically sound and allocate their resources on luxury goods and recreation according to their means. In trying to imitate that, some people in our country allocate a substantial amount of their income in such leisurely activities and goods. This is against the concept of sustainable development, which actually encourages people and societies to live within their means and save for the future.</p>\r\n\r\n<p>Countries like Nepal hardly pay attention to sustainable development because they are not in an economically strong position to do so. The majority of the people are poor and it is difficult for them to meet their basic needs. It is also difficult for the government to pursue development based on their meager resources. In such circumstances, people tend to act for immediate gains rather than think of the future. The present becomes much more important than the future and this is basically why it is difficult to implement the concept of sustainable development in our country.</p>\r\n\r\n<p>&nbsp;</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `isadmin` int(11) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`, `isadmin`) VALUES
(1, 'kushal', 'kushalkhadkaa@gmail.com', '098f6bcd4621d373cade4e832627b4f6', 0),
(2, 'ashess', 'ashishchand@gmail.com', '72b302bf297a228a75730123efef7c41', 1),
(3, 'ash', 'aashish.chand786@gmail.com', '040b7cf4a55014e185813e0644502ea9', 0),
(4, 'chand', 'ashishchand1@gmail.com', '72b302bf297a228a75730123efef7c41', 0),
(5, 'Aavash', 'Aavash@gmail.com', '700cfd6ad90cd1f04e8ecbe1a7c6b589', 0),
(6, 'manish', 'manish@gmail.com', '912ec803b2ce49e4a541068d495ab570', 0),
(7, 'ram', 'ram@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 0),
(8, 'aashish', 'aashish@gmail.com', '1f3870be274f6c49b3e31a0c6728957f', 0);

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE IF NOT EXISTS `videos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `url` varchar(222) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `title`, `cat_id`, `url`, `status`) VALUES
(3, 'ABC SONG | ABC Songs for Children - 13 Alphabet Songs & 26 Videos', 0, 'BQtAKms_hk', 1),
(4, 'Phonics Song with TWO Words - A For Apple - ABC Alphabet Songs with Sounds for Children', 0, 'g3qSQ0Z9vqA', 1),
(5, 'ChuChu TV Numbers Song - NEW Short Version - Number Rhymes For Children', 0, 's5L85KPL2t4', 1),
(6, 'Learn Colors with Numbers in Kids Learning Video - Learn Numbers for Children Kids Toddlers', 0, 'obWhBNDXhQs', 1),
(7, 'Learn Colors with Tiger and Water Truck 3D For Kids #y | Colours Animals Fruits For Children', 0, 'p9vmzIKVciQ', 1),
(8, 'Learn Colors with The Lizard Finger Family Song', 0, 'HbzIKstvecQ', 1),
(9, 'Learn Animals Name and Sound for Kids - Learning Video Educational for Children Babies', 0, 'C8FSCb5g4ck', 1),
(10, 'Aprenda Cores com BebÃª MAU CORINGA Johny Johny YES Papa CanÃ§Ãµes de Ninar MÃºsica para CrianÃ§as Novo', 0, '0i8aU1SJOoY', 1),
(11, 'Johny Johny Yes Papa Rhyme children song colors 2018  63', 0, '138nNxXUJXw', 1),
(12, 'Happy Birthday To You Song - Nursery Rhames for Toddlers - Children and Babies', 0, 'RS06djXz1Lc', 1),
(13, 'Johny johny Yes Papa Kids Songs For Children - Nursery Rhames - Ä°ngilizce Ã‡ocuk ÅžarkÄ±larÄ±', 0, '76Y3u_d6yXc', 1),
(14, 'SING : BEST Video Clips & Trailers ! (2017) Animation, Kids Movie HD', 5, 'ybbOiMe6hTU', 1),
(15, 'Play Fun Cooking Sushi Kids Game - Learn to Prepare Tasty Food TO-FU Oh!SUSHI Kitchen Toddlers Game', 5, '3Yj2mD3AZYQ', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
