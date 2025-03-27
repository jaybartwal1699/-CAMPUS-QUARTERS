-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2021 at 05:04 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ehostel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admission`
--

CREATE TABLE `admission` (
  `admission_id` int(10) NOT NULL,
  `hostellerid` int(10) NOT NULL,
  `room_id` int(10) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `food_type` varchar(25) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admission`
--

INSERT INTO `admission` (`admission_id`, `hostellerid`, `room_id`, `start_date`, `end_date`, `food_type`, `status`) VALUES
(122383, 3237, 22, '2019-03-20', '2020-03-20', 'Veg', 'Active'),
(122384, 3243, 202, '2019-03-24', '2020-03-24', 'Veg', 'Active'),
(122385, 3243, 205, '2019-04-01', '2020-04-01', 'Veg', 'Active'),
(122386, 3244, 204, '2019-04-02', '2020-04-02', 'Nonveg', 'Active'),
(122387, 3245, 204, '2019-03-31', '2020-03-31', 'Nonveg', 'Active'),
(122388, 3246, 205, '2019-04-01', '2020-04-01', 'Nonveg', 'Active'),
(122389, 3248, 25, '2019-04-01', '2020-04-01', 'Nonveg', 'Active'),
(122390, 3250, 26, '2019-04-01', '2020-04-01', 'Nonveg', 'Active'),
(122391, 3251, 27, '2019-04-01', '2020-04-01', 'Veg', 'Active'),
(122392, 0, 0, '0000-00-00', '0000-00-00', '', 'Pending'),
(122393, 0, 0, '0000-00-00', '0000-00-00', '', 'Pending'),
(122394, 3254, 29, '2019-04-28', '2020-04-28', 'Veg', 'Active'),
(122395, 0, 0, '0000-00-00', '0000-00-00', '', 'Pending'),
(122396, 0, 0, '0000-00-00', '0000-00-00', '', 'Pending'),
(122397, 3254, 210, '2019-04-07', '2020-04-07', 'Veg', 'Pending'),
(122398, 3254, 210, '2019-04-05', '2020-04-05', 'Nonveg', 'Active'),
(122399, 0, 0, '2019-04-05', '2020-04-05', 'Veg', 'Pending'),
(122400, 0, 0, '2019-04-05', '2020-04-05', 'Veg', 'Pending'),
(122401, 3238, 205, '2019-04-06', '2020-04-06', 'Veg', 'Pending'),
(122402, 3238, 0, '2019-04-06', '2020-04-06', 'Veg', 'Pending'),
(122403, 3238, 205, '2019-04-06', '2020-04-06', 'Veg', 'Pending'),
(122404, 3238, 211, '2019-04-08', '2020-04-08', 'Veg', 'Pending'),
(122405, 3260, 205, '2019-04-09', '2020-04-09', 'Nonveg', 'Active'),
(122406, 3261, 204, '2019-04-11', '2020-04-11', 'Nonveg', 'Active'),
(122407, 3261, 204, '2019-04-11', '2020-04-11', 'Veg', 'Active'),
(122408, 3261, 217, '2019-04-11', '2020-04-11', 'Veg', 'Active'),
(122409, 3262, 204, '2019-04-11', '2020-04-11', 'Veg', 'Pending'),
(122410, 3263, 28, '2019-04-11', '2020-04-11', 'Veg', 'Active'),
(122411, 123, 212, '2019-04-11', '2020-04-11', 'Veg', 'Active'),
(122412, 123, 21, '2021-03-10', '2022-04-10', 'Veg', 'Active'),
(122413, 3265, 202, '2021-04-07', '2022-04-07', 'Veg', 'Active'),
(122414, 3266, 202, '2021-04-05', '2022-04-10', 'Veg', 'Active'),
(122415, 3268, 22, '2021-05-30', '2022-05-30', 'Veg', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `attendanceid` int(10) NOT NULL,
  `admission_id` int(10) NOT NULL,
  `attdate` date NOT NULL,
  `attendancestatus` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`attendanceid`, `admission_id`, `attdate`, `attendancestatus`) VALUES
(296, 122345, '2019-02-21', 'Absent'),
(297, 122351, '2019-02-21', 'Present'),
(302, 122370, '2019-02-21', 'Present'),
(303, 122371, '2019-02-21', 'Present'),
(304, 122372, '2019-02-21', 'Present'),
(305, 122374, '2019-02-21', 'Present'),
(306, 122375, '2019-02-21', 'Present'),
(307, 122377, '2019-02-21', 'Present'),
(308, 122345, '2019-02-20', 'Present'),
(309, 122351, '2019-02-20', 'Present'),
(310, 122353, '2019-02-20', 'Absent'),
(311, 122355, '2019-02-20', 'Absent'),
(312, 122356, '2019-02-20', 'Absent'),
(313, 122369, '2019-02-20', 'Absent'),
(314, 122370, '2019-02-20', 'Present'),
(315, 122371, '2019-02-20', 'Present'),
(316, 122372, '2019-02-20', 'Present'),
(317, 122374, '2019-02-20', 'Present'),
(318, 122375, '2019-02-20', 'Present'),
(319, 122377, '2019-02-20', 'Present'),
(362, 122382, '2019-02-28', 'Present'),
(363, 122383, '2019-02-28', 'Present'),
(364, 122384, '2019-02-28', 'Present'),
(365, 122382, '2019-02-27', 'Present'),
(366, 122383, '2019-02-27', 'Absent'),
(367, 122384, '2019-02-27', 'Present'),
(368, 122382, '2019-02-26', 'Absent'),
(369, 122383, '2019-02-26', 'Present'),
(370, 122384, '2019-02-26', 'Absent'),
(371, 122382, '2019-02-25', 'Present'),
(372, 122383, '2019-02-25', 'Present'),
(373, 122384, '2019-02-25', 'Present'),
(374, 122382, '2019-02-24', 'Present'),
(375, 122383, '2019-02-24', 'Present'),
(376, 122384, '2019-02-24', 'Present'),
(377, 122382, '2019-02-23', 'Present'),
(378, 122383, '2019-02-23', 'Present'),
(379, 122384, '2019-02-23', 'Present'),
(380, 122382, '2019-02-22', 'Present'),
(381, 122383, '2019-02-22', 'Present'),
(382, 122384, '2019-02-22', 'Present'),
(383, 122382, '2019-02-08', 'Present'),
(384, 122383, '2019-02-08', 'Absent'),
(385, 122384, '2019-02-08', 'Present'),
(386, 122382, '2019-02-07', 'Present'),
(387, 122383, '2019-02-07', 'Absent'),
(388, 122384, '2019-02-07', 'Present'),
(389, 122382, '2019-02-06', 'Present'),
(390, 122383, '2019-02-06', 'Present'),
(391, 122384, '2019-02-06', 'Absent'),
(458, 122382, '2019-04-01', 'Present'),
(459, 122383, '2019-04-01', 'Absent'),
(460, 122384, '2019-04-01', 'Present'),
(461, 122385, '2019-04-01', 'Present'),
(462, 122387, '2019-04-01', 'Present'),
(463, 122388, '2019-04-01', 'Present'),
(464, 122389, '2019-04-01', 'Present'),
(465, 122390, '2019-04-01', 'Present'),
(466, 122382, '2019-03-01', 'Present'),
(467, 122383, '2019-03-01', 'Present'),
(468, 122384, '2019-03-01', 'Present'),
(469, 122385, '2019-03-01', 'Present'),
(470, 122386, '2019-03-01', 'Present'),
(471, 122387, '2019-03-01', 'Present'),
(472, 122388, '2019-03-01', 'Present'),
(473, 122389, '2019-03-01', 'Present'),
(474, 122390, '2019-03-01', 'Present'),
(475, 122391, '2019-03-01', 'Present'),
(476, 122382, '2019-03-02', 'Present'),
(477, 122383, '2019-03-02', 'Present'),
(478, 122384, '2019-03-02', 'Present'),
(479, 122385, '2019-03-02', 'Present'),
(480, 122386, '2019-03-02', 'Present'),
(481, 122387, '2019-03-02', 'Present'),
(482, 122388, '2019-03-02', 'Present'),
(483, 122389, '2019-03-02', 'Present'),
(484, 122390, '2019-03-02', 'Present'),
(485, 122391, '2019-03-02', 'Present'),
(486, 122382, '2019-03-03', 'Present'),
(487, 122383, '2019-03-03', 'Present'),
(488, 122384, '2019-03-03', 'Present'),
(489, 122385, '2019-03-03', 'Present'),
(490, 122386, '2019-03-03', 'Present'),
(491, 122387, '2019-03-03', 'Present'),
(492, 122388, '2019-03-03', 'Present'),
(493, 122389, '2019-03-03', 'Present'),
(494, 122390, '2019-03-03', 'Present'),
(495, 122391, '2019-03-03', 'Present'),
(496, 122382, '2019-03-04', 'Present'),
(497, 122383, '2019-03-04', 'Present'),
(498, 122384, '2019-03-04', 'Present'),
(499, 122385, '2019-03-04', 'Present'),
(500, 122386, '2019-03-04', 'Present'),
(501, 122387, '2019-03-04', 'Present'),
(502, 122388, '2019-03-04', 'Present'),
(503, 122389, '2019-03-04', 'Present'),
(504, 122390, '2019-03-04', 'Present'),
(505, 122391, '2019-03-04', 'Present'),
(506, 122382, '2019-03-05', 'Present'),
(507, 122383, '2019-03-05', 'Present'),
(508, 122384, '2019-03-05', 'Present'),
(509, 122385, '2019-03-05', 'Present'),
(510, 122386, '2019-03-05', 'Present'),
(511, 122387, '2019-03-05', 'Present'),
(512, 122388, '2019-03-05', 'Present'),
(513, 122389, '2019-03-05', 'Present'),
(514, 122390, '2019-03-05', 'Present'),
(515, 122391, '2019-03-05', 'Present'),
(516, 122382, '2019-03-06', 'Present'),
(517, 122383, '2019-03-06', 'Present'),
(518, 122384, '2019-03-06', 'Present'),
(519, 122385, '2019-03-06', 'Present'),
(520, 122386, '2019-03-06', 'Present'),
(521, 122387, '2019-03-06', 'Present'),
(522, 122388, '2019-03-06', 'Present'),
(523, 122389, '2019-03-06', 'Present'),
(524, 122390, '2019-03-06', 'Present'),
(525, 122391, '2019-03-06', 'Present'),
(526, 122382, '2019-03-07', 'Present'),
(527, 122383, '2019-03-07', 'Present'),
(528, 122384, '2019-03-07', 'Present'),
(529, 122385, '2019-03-07', 'Present'),
(530, 122386, '2019-03-07', 'Present'),
(531, 122387, '2019-03-07', 'Present'),
(532, 122388, '2019-03-07', 'Present'),
(533, 122389, '2019-03-07', 'Present'),
(534, 122390, '2019-03-07', 'Present'),
(535, 122391, '2019-03-07', 'Present'),
(546, 122382, '2019-03-09', 'Present'),
(547, 122383, '2019-03-09', 'Present'),
(548, 122384, '2019-03-09', 'Present'),
(549, 122385, '2019-03-09', 'Present'),
(550, 122386, '2019-03-09', 'Present'),
(551, 122387, '2019-03-09', 'Present'),
(552, 122388, '2019-03-09', 'Present'),
(553, 122389, '2019-03-09', 'Present'),
(554, 122390, '2019-03-09', 'Present'),
(555, 122391, '2019-03-09', 'Present'),
(556, 122382, '2019-03-10', 'Absent'),
(557, 122383, '2019-03-10', 'Present'),
(558, 122384, '2019-03-10', 'Present'),
(559, 122385, '2019-03-10', 'Present'),
(560, 122386, '2019-03-10', 'Present'),
(561, 122387, '2019-03-10', 'Present'),
(562, 122388, '2019-03-10', 'Present'),
(563, 122389, '2019-03-10', 'Present'),
(564, 122390, '2019-03-10', 'Present'),
(565, 122391, '2019-03-10', 'Present'),
(566, 122382, '2019-03-11', 'Present'),
(567, 122383, '2019-03-11', 'Present'),
(568, 122384, '2019-03-11', 'Present'),
(569, 122385, '2019-03-11', 'Present'),
(570, 122386, '2019-03-11', 'Present'),
(571, 122387, '2019-03-11', 'Present'),
(572, 122388, '2019-03-11', 'Present'),
(573, 122389, '2019-03-11', 'Present'),
(574, 122390, '2019-03-11', 'Present'),
(575, 122391, '2019-03-11', 'Present'),
(576, 122382, '2019-03-12', 'Present'),
(577, 122383, '2019-03-12', 'Present'),
(578, 122384, '2019-03-12', 'Present'),
(579, 122385, '2019-03-12', 'Present'),
(580, 122386, '2019-03-12', 'Present'),
(581, 122387, '2019-03-12', 'Present'),
(582, 122388, '2019-03-12', 'Present'),
(583, 122389, '2019-03-12', 'Present'),
(584, 122390, '2019-03-12', 'Present'),
(585, 122391, '2019-03-12', 'Present'),
(586, 122382, '2019-03-13', 'Present'),
(587, 122383, '2019-03-13', 'Present'),
(588, 122384, '2019-03-13', 'Present'),
(589, 122385, '2019-03-13', 'Present'),
(590, 122386, '2019-03-13', 'Present'),
(591, 122387, '2019-03-13', 'Present'),
(592, 122388, '2019-03-13', 'Present'),
(593, 122389, '2019-03-13', 'Present'),
(594, 122390, '2019-03-13', 'Present'),
(595, 122391, '2019-03-13', 'Present'),
(596, 122382, '2019-03-14', 'Present'),
(597, 122383, '2019-03-14', 'Present'),
(598, 122384, '2019-03-14', 'Present'),
(599, 122385, '2019-03-14', 'Present'),
(600, 122386, '2019-03-14', 'Present'),
(601, 122387, '2019-03-14', 'Present'),
(602, 122388, '2019-03-14', 'Present'),
(603, 122389, '2019-03-14', 'Present'),
(604, 122390, '2019-03-14', 'Present'),
(605, 122391, '2019-03-14', 'Present'),
(606, 122382, '2019-03-15', 'Present'),
(607, 122383, '2019-03-15', 'Present'),
(608, 122384, '2019-03-15', 'Present'),
(609, 122385, '2019-03-15', 'Present'),
(610, 122386, '2019-03-15', 'Present'),
(611, 122387, '2019-03-15', 'Present'),
(612, 122388, '2019-03-15', 'Present'),
(613, 122389, '2019-03-15', 'Present'),
(614, 122390, '2019-03-15', 'Present'),
(615, 122391, '2019-03-15', 'Present'),
(616, 122382, '2019-03-16', 'Present'),
(617, 122383, '2019-03-16', 'Present'),
(618, 122384, '2019-03-16', 'Absent'),
(619, 122385, '2019-03-16', 'Present'),
(620, 122386, '2019-03-16', 'Absent'),
(621, 122387, '2019-03-16', 'Present'),
(622, 122388, '2019-03-16', 'Present'),
(623, 122389, '2019-03-16', 'Present'),
(624, 122390, '2019-03-16', 'Present'),
(625, 122391, '2019-03-16', 'Present'),
(626, 122382, '2019-03-17', 'Present'),
(627, 122383, '2019-03-17', 'Absent'),
(628, 122384, '2019-03-17', 'Present'),
(629, 122385, '2019-03-17', 'Present'),
(630, 122386, '2019-03-17', 'Absent'),
(631, 122387, '2019-03-17', 'Present'),
(632, 122388, '2019-03-17', 'Present'),
(633, 122389, '2019-03-17', 'Present'),
(634, 122390, '2019-03-17', 'Present'),
(635, 122391, '2019-03-17', 'Present'),
(646, 122382, '2019-03-18', 'Present'),
(647, 122383, '2019-03-18', 'Absent'),
(648, 122384, '2019-03-18', 'Present'),
(649, 122385, '2019-03-18', 'Present'),
(650, 122386, '2019-03-18', 'Absent'),
(651, 122387, '2019-03-18', 'Present'),
(652, 122388, '2019-03-18', 'Present'),
(653, 122389, '2019-03-18', 'Absent'),
(654, 122390, '2019-03-18', 'Present'),
(655, 122391, '2019-03-18', 'Present'),
(656, 122382, '2019-03-19', 'Present'),
(657, 122383, '2019-03-19', 'Present'),
(658, 122384, '2019-03-19', 'Present'),
(659, 122385, '2019-03-19', 'Present'),
(660, 122386, '2019-03-19', 'Present'),
(661, 122387, '2019-03-19', 'Present'),
(662, 122388, '2019-03-19', 'Present'),
(663, 122389, '2019-03-19', 'Absent'),
(664, 122390, '2019-03-19', 'Present'),
(665, 122391, '2019-03-19', 'Absent'),
(666, 122382, '2019-03-20', 'Present'),
(667, 122383, '2019-03-20', 'Present'),
(668, 122384, '2019-03-20', 'Present'),
(669, 122385, '2019-03-20', 'Present'),
(670, 122386, '2019-03-20', 'Present'),
(671, 122387, '2019-03-20', 'Absent'),
(672, 122388, '2019-03-20', 'Present'),
(673, 122389, '2019-03-20', 'Present'),
(674, 122390, '2019-03-20', 'Present'),
(675, 122391, '2019-03-20', 'Present'),
(676, 122382, '2019-03-21', 'Present'),
(677, 122383, '2019-03-21', 'Present'),
(678, 122384, '2019-03-21', 'Present'),
(679, 122385, '2019-03-21', 'Present'),
(680, 122386, '2019-03-21', 'Absent'),
(681, 122387, '2019-03-21', 'Present'),
(682, 122388, '2019-03-21', 'Absent'),
(683, 122389, '2019-03-21', 'Present'),
(684, 122390, '2019-03-21', 'Present'),
(685, 122391, '2019-03-21', 'Present'),
(686, 122382, '2019-03-22', 'Present'),
(687, 122383, '2019-03-22', 'Present'),
(688, 122384, '2019-03-22', 'Present'),
(689, 122385, '2019-03-22', 'Absent'),
(690, 122386, '2019-03-22', 'Present'),
(691, 122387, '2019-03-22', 'Present'),
(692, 122388, '2019-03-22', 'Present'),
(693, 122389, '2019-03-22', 'Present'),
(694, 122390, '2019-03-22', 'Present'),
(695, 122391, '2019-03-22', 'Present'),
(696, 122382, '2019-03-23', 'Present'),
(697, 122383, '2019-03-23', 'Present'),
(698, 122384, '2019-03-23', 'Absent'),
(699, 122385, '2019-03-23', 'Absent'),
(700, 122386, '2019-03-23', 'Present'),
(701, 122387, '2019-03-23', 'Present'),
(702, 122388, '2019-03-23', 'Absent'),
(703, 122389, '2019-03-23', 'Present'),
(704, 122390, '2019-03-23', 'Present'),
(705, 122391, '2019-03-23', 'Present'),
(706, 122382, '2019-03-24', 'Present'),
(707, 122383, '2019-03-24', 'Absent'),
(708, 122384, '2019-03-24', 'Absent'),
(709, 122385, '2019-03-24', 'Present'),
(710, 122386, '2019-03-24', 'Present'),
(711, 122387, '2019-03-24', 'Present'),
(712, 122388, '2019-03-24', 'Present'),
(713, 122389, '2019-03-24', 'Present'),
(714, 122390, '2019-03-24', 'Present'),
(715, 122391, '2019-03-24', 'Present'),
(716, 122382, '2019-03-25', 'Present'),
(717, 122383, '2019-03-25', 'Present'),
(718, 122384, '2019-03-25', 'Present'),
(719, 122385, '2019-03-25', 'Present'),
(720, 122386, '2019-03-25', 'Present'),
(721, 122387, '2019-03-25', 'Absent'),
(722, 122388, '2019-03-25', 'Present'),
(723, 122389, '2019-03-25', 'Absent'),
(724, 122390, '2019-03-25', 'Present'),
(725, 122391, '2019-03-25', 'Present'),
(726, 122382, '2019-03-26', 'Present'),
(727, 122383, '2019-03-26', 'Present'),
(728, 122384, '2019-03-26', 'Present'),
(729, 122385, '2019-03-26', 'Present'),
(730, 122386, '2019-03-26', 'Present'),
(731, 122387, '2019-03-26', 'Present'),
(732, 122388, '2019-03-26', 'Present'),
(733, 122389, '2019-03-26', 'Present'),
(734, 122390, '2019-03-26', 'Absent'),
(735, 122391, '2019-03-26', 'Absent'),
(736, 122382, '2019-03-27', 'Absent'),
(737, 122383, '2019-03-27', 'Present'),
(738, 122384, '2019-03-27', 'Present'),
(739, 122385, '2019-03-27', 'Present'),
(740, 122386, '2019-03-27', 'Present'),
(741, 122387, '2019-03-27', 'Present'),
(742, 122388, '2019-03-27', 'Present'),
(743, 122389, '2019-03-27', 'Present'),
(744, 122390, '2019-03-27', 'Present'),
(745, 122391, '2019-03-27', 'Present'),
(746, 122382, '2019-03-28', 'Present'),
(747, 122383, '2019-03-28', 'Present'),
(748, 122384, '2019-03-28', 'Present'),
(749, 122385, '2019-03-28', 'Absent'),
(750, 122386, '2019-03-28', 'Present'),
(751, 122387, '2019-03-28', 'Present'),
(752, 122388, '2019-03-28', 'Present'),
(753, 122389, '2019-03-28', 'Present'),
(754, 122390, '2019-03-28', 'Present'),
(755, 122391, '2019-03-28', 'Present'),
(766, 122382, '2019-03-29', 'Present'),
(767, 122383, '2019-03-29', 'Present'),
(768, 122384, '2019-03-29', 'Present'),
(769, 122385, '2019-03-29', 'Absent'),
(770, 122386, '2019-03-29', 'Present'),
(771, 122387, '2019-03-29', 'Absent'),
(772, 122388, '2019-03-29', 'Present'),
(773, 122389, '2019-03-29', 'Present'),
(774, 122390, '2019-03-29', 'Present'),
(775, 122391, '2019-03-29', 'Present'),
(776, 122382, '2019-03-30', 'Present'),
(777, 122383, '2019-03-30', 'Present'),
(778, 122384, '2019-03-30', 'Present'),
(779, 122385, '2019-03-30', 'Absent'),
(780, 122386, '2019-03-30', 'Present'),
(781, 122387, '2019-03-30', 'Present'),
(782, 122388, '2019-03-30', 'Present'),
(783, 122389, '2019-03-30', 'Present'),
(784, 122390, '2019-03-30', 'Present'),
(785, 122391, '2019-03-30', 'Absent'),
(786, 122382, '2019-03-31', 'Present'),
(787, 122383, '2019-03-31', 'Present'),
(788, 122384, '2019-03-31', 'Present'),
(789, 122385, '2019-03-31', 'Present'),
(790, 122386, '2019-03-31', 'Present'),
(791, 122387, '2019-03-31', 'Present'),
(792, 122388, '2019-03-31', 'Absent'),
(793, 122389, '2019-03-31', 'Present'),
(794, 122390, '2019-03-31', 'Present'),
(795, 122391, '2019-03-31', 'Present'),
(796, 122382, '2019-04-03', 'Absent'),
(797, 122383, '2019-04-03', 'Present'),
(798, 122384, '2019-04-03', 'Present'),
(799, 122385, '2019-04-03', 'Present'),
(800, 122386, '2019-04-03', 'Present'),
(801, 122387, '2019-04-03', 'Present'),
(802, 122388, '2019-04-03', 'Present'),
(803, 122389, '2019-04-03', 'Present'),
(804, 122390, '2019-04-03', 'Present'),
(805, 122391, '2019-04-03', 'Present'),
(806, 122382, '2019-03-08', 'Present'),
(807, 122383, '2019-03-08', 'Present'),
(808, 122384, '2019-03-08', 'Present'),
(809, 122385, '2019-03-08', 'Absent'),
(810, 122386, '2019-03-08', 'Present'),
(811, 122387, '2019-03-08', 'Present'),
(812, 122388, '2019-03-08', 'Present'),
(813, 122389, '2019-03-08', 'Absent'),
(814, 122390, '2019-03-08', 'Present'),
(815, 122391, '2019-03-08', 'Present'),
(827, 122382, '2019-04-05', 'Present'),
(828, 122383, '2019-04-05', 'Present'),
(829, 122384, '2019-04-05', 'Present'),
(830, 122385, '2019-04-05', 'Present'),
(831, 122386, '2019-04-05', 'Present'),
(832, 122387, '2019-04-05', 'Present'),
(833, 122388, '2019-04-05', 'Present'),
(834, 122389, '2019-04-05', 'Present'),
(835, 122390, '2019-04-05', 'Present'),
(836, 122391, '2019-04-05', 'Present'),
(837, 122398, '2019-04-05', 'Present'),
(853, 122382, '2019-04-11', 'Present'),
(854, 122383, '2019-04-11', 'Absent'),
(855, 122384, '2019-04-11', 'Present'),
(856, 122385, '2019-04-11', 'Absent'),
(857, 122386, '2019-04-11', 'Present'),
(858, 122387, '2019-04-11', 'Absent'),
(859, 122388, '2019-04-11', 'Absent'),
(860, 122389, '2019-04-11', 'Present'),
(861, 122390, '2019-04-11', 'Present'),
(862, 122391, '2019-04-11', 'Present'),
(863, 122398, '2019-04-11', 'Present'),
(864, 122405, '2019-04-11', 'Present'),
(865, 122406, '2019-04-11', 'Present'),
(866, 122407, '2019-04-11', 'Absent'),
(867, 122408, '2019-04-11', 'Present'),
(868, 122412, '2021-04-07', 'Present'),
(869, 122413, '2021-04-07', 'Present'),
(870, 122412, '2021-04-10', 'Present'),
(871, 122413, '2021-04-10', 'Present'),
(872, 122414, '2021-04-10', 'Present'),
(873, 122412, '2021-04-09', 'Present'),
(874, 122413, '2021-04-09', 'Present'),
(875, 122414, '2021-04-09', 'Present');

-- --------------------------------------------------------

--
-- Table structure for table `billing`
--

CREATE TABLE `billing` (
  `billid` int(10) NOT NULL,
  `admission_id` int(10) NOT NULL,
  `guestid` int(10) NOT NULL,
  `bill_type` varchar(50) NOT NULL COMMENT 'Hostel Fees, Mess Bill, Water Electricity bill(Generates on blockwise), Mess Bill Penalty, Hostel Fees Payment, Mess Bill Payment, Water Electricity bill Payment, Mess Bill Penalty Payment, Guest Payment, Maintanance Charge, Maintanance Charge payment,',
  `paid_amt` double(10,2) NOT NULL,
  `paid_date` date NOT NULL,
  `payment_type` varchar(25) NOT NULL,
  `particulars` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `billing`
--

INSERT INTO `billing` (`billid`, `admission_id`, `guestid`, `bill_type`, `paid_amt`, `paid_date`, `payment_type`, `particulars`, `status`) VALUES
(2, 0, 0, '', 88000.00, '2019-02-01', '', 'fees', 'Active'),
(3, 0, 0, '', 0.00, '0000-00-00', '', '', ''),
(4, 0, 0, '', 0.00, '0000-00-00', '', '', ''),
(5, 0, 0, '', 0.00, '0000-00-00', '', '', ''),
(6, 122350, 0, '', 3590.00, '2019-02-17', '', 'gfh', 'Active'),
(7, 122348, 2, '', 2000.00, '2019-02-14', '', 'gthyt', 'Active'),
(8, 122366, 0, 'Hostel Fees', 0.00, '2019-02-15', '', '', 'Pending'),
(9, 122367, 0, 'Hostel Fees', 25000.00, '2019-02-15', '', '', 'Pending'),
(10, 0, 0, '', 5000.00, '2019-02-23', '', '', 'Active'),
(11, 0, 0, '', 2500.00, '2019-02-27', '', '', 'Active'),
(12, 0, 0, '', 8000.00, '2019-02-16', '', '', 'Active'),
(13, 0, 0, '', 10000.00, '2015-11-01', '', '', 'Active'),
(14, 122368, 0, 'Hostel Fees', 25000.00, '2019-02-15', '', '', 'Pending'),
(15, 122369, 0, 'Hostel Fees', 25000.00, '2019-02-15', '', '', 'Pending'),
(16, 122369, 0, 'Hostel Fees Payment', 25000.00, '2019-02-15', 'Debit card', 'Card Holder:  <br> Card number: 1234567891123456 <br> CVV Number: 879 <br> Expiry Date: ', 'Active'),
(17, 122370, 0, 'Hostel Fees Payment', 0.00, '2019-02-17', 'Credit car', 'Card Holder: ddd <br> Card number: 12345678 <br> CVV Number: 33333 <br> Expiry Date: ', 'Active'),
(18, 122371, 0, 'Hostel Fees Payment', 0.00, '2019-02-17', 'Credit car', 'Card Holder: jjjj <br> Card number: 1222 <br> CVV Number: 333 <br> Expiry Date: ', 'Active'),
(19, 122372, 0, 'Hostel Fees Payment', 0.00, '2019-02-17', 'Debit card', 'Card Holder: ffffff <br> Card number: 455555 <br> CVV Number: 2333 <br> Expiry Date: ', 'Active'),
(20, 122373, 0, 'Hostel Fees Payment', 0.00, '2019-02-21', '', 'Card Holder:  <br> Card number:  <br> CVV Number:  <br> Expiry Date: ', 'Active'),
(21, 122374, 0, 'Hostel Fees Payment', 0.00, '2019-02-21', '', 'Card Holder:  <br> Card number:  <br> CVV Number:  <br> Expiry Date: ', 'Active'),
(22, 122375, 0, 'Hostel Fees Payment', 0.00, '2019-02-21', '', 'Card Holder:  <br> Card number:  <br> CVV Number:  <br> Expiry Date: ', 'Active'),
(23, 122376, 0, 'Hostel Fees Payment', 25000.00, '2019-02-22', 'Credit car', 'Card Holder: Raj kiran <br> Card number: 123456789012345678 <br> CVV Number: 5456 <br> Expiry Date: ', 'Active'),
(24, 122377, 0, 'Hostel Fees Payment', 25000.00, '2019-02-22', 'Credit card', 'Card Holder: Raj kiran <br> Card number: 4567846546469 <br> CVV Number: 546 <br> Expiry Date: ', 'Active'),
(25, 0, 0, 'Hostel Fees Payment', 0.00, '2019-03-10', '', 'Card Holder:  <br> Card number:  <br> CVV Number:  <br> Expiry Date: ', 'Active'),
(26, 0, 0, 'Hostel Fees Payment', 0.00, '2019-03-10', '', 'Card Holder:  <br> Card number:  <br> CVV Number:  <br> Expiry Date: ', 'Active'),
(61, 0, 0, 'Hostel Fees Payment', 0.00, '2019-03-14', 'Credit card', 'Card Holder: smita <br> Card number: 132476879 <br> CVV Number:  <br> Expiry Date: ', 'Active'),
(62, 122378, 0, 'Hostel Fees Payment', 25000.00, '2019-03-14', '', 'Card Holder:  <br> Card number:  <br> CVV Number:  <br> Expiry Date: ', 'Active'),
(63, 122379, 0, 'Hostel Fees Payment', 0.00, '2019-03-14', '', 'Card Holder:  <br> Card number:  <br> CVV Number:  <br> Expiry Date: ', 'Active'),
(64, 122380, 0, 'Hostel Fees Payment', 0.00, '2019-03-14', '', 'Card Holder:  <br> Card number:  <br> CVV Number:  <br> Expiry Date: ', 'Active'),
(65, 0, 0, 'Hostel Fees Payment', 0.00, '2019-03-14', '', 'Card Holder:  <br> Card number:  <br> CVV Number:  <br> Expiry Date: ', 'Active'),
(66, 122382, 0, 'Hostel Fees Payment', 25000.00, '2019-03-20', 'Debit card', 'Card Holder: anvitha <br> Card number: 2345 <br> CVV Number: 345 <br> Expiry Date: ', 'Active'),
(67, 122383, 0, 'Hostel Fees Payment', 25000.00, '2019-03-20', 'Credit card', 'Card Holder: harshini <br> Card number: 23445 <br> CVV Number: 344344 <br> Expiry Date: ', 'Active'),
(71, 122384, 0, 'Hostel Fees Payment', 25000.00, '2019-03-22', 'Debit card', 'Card Holder: radha <br> Card number: 7895 <br> CVV Number: 678 <br> Expiry Date: ', 'Active'),
(72, 122385, 0, 'Hostel Fees Payment', 10000.00, '2019-03-22', 'Debit card', 'Card Holder: Raj kiran <br> Card number: 1234567890123456 <br> CVV Number: 244 <br> Expiry Date: ', 'Active'),
(81, 0, 20, 'Guest Payment', 2750.00, '2019-03-26', 'Credit card', 'a:12:{i:0;s:10:\"2019-03-27\";i:1;s:10:\"2019-03-31\";i:2;s:1:\"5\";i:3;s:8:\"For Tour\";i:4;s:30:\"Kindly check for avaialblitity\";i:5;s:6:\"550.00\";i:6;s:4:\"2750\";i:7;s:8:\"Preetham\";i:8;s:11:\"Credit card\";i:9;s:18:\"342423475675672342\";i:10;s:3:\"342\";i:11;s:7:\"2019-03\";}', 'Paid'),
(82, 0, 20, 'Guest Payment', 0.00, '0000-00-00', '', 'a:5:{i:0;s:10:\"2019-03-28\";i:1;s:10:\"2019-03-30\";i:2;d:3;i:3;s:4:\"test\";i:4;s:3:\"tse\";}', 'Rejected'),
(87, 122382, 0, 'Mess bill', 2403.00, '2019-03-30', 'Debit card', '2019-02', 'Active'),
(88, 122386, 0, 'Hostel Fees Payment', 3700.00, '2019-03-31', 'Debit card', 'Card Holder: priya <br> Card number: 7654323456 <br> CVV Number: 567 <br> Expiry Date: ', 'Active'),
(89, 122386, 0, 'Hostel Fees Payment', 3700.00, '2019-03-31', 'Debit card', 'Card Holder: priya <br> Card number: 7654323456 <br> CVV Number: 567 <br> Expiry Date: ', 'Active'),
(90, 122387, 0, 'Hostel Fees Payment', 3700.00, '2019-03-31', 'Debit card', 'Card Holder: kavana <br> Card number: 13253564 <br> CVV Number: 5667 <br> Expiry Date: ', 'Active'),
(91, 122383, 0, 'Mess bill', 1700.00, '2019-04-01', 'Debit card', '2019-03', 'Active'),
(92, 122382, 0, 'Mess bill', 1700.00, '2019-04-01', 'Debit card', '2019-03', 'Active'),
(93, 0, 21, 'Guest Payment', 1650.00, '2019-04-01', 'Debit card', 'a:12:{i:0;s:10:\"2019-04-01\";i:1;s:10:\"2019-04-03\";i:2;s:1:\"3\";i:3;s:21:\" PUC paper valuation \";i:4;s:16:\"non veg required\";i:5;s:6:\"550.00\";i:6;s:4:\"1650\";i:7;s:6:\"savita\";i:8;s:10:\"Debit card\";i:9;s:5:\"34567\";i:10;s:3:\"234\";i:11;s:7:\"2019-04\";}', 'Paid'),
(94, 122388, 0, 'Hostel Fees Payment', 10000.00, '2019-04-01', 'Credit card', 'Card Holder: sugama <br> Card number: 1234567 <br> CVV Number: 235 <br> Expiry Date: ', 'Active'),
(95, 122389, 0, 'Hostel Fees Payment', 25000.00, '2019-04-01', 'Debit card', 'Card Holder: smita <br> Card number: 7688994 <br> CVV Number: 567 <br> Expiry Date: ', 'Active'),
(96, 122390, 0, 'Hostel Fees Payment', 25000.00, '2019-04-01', 'Debit card', 'Card Holder: smit <br> Card number: 344 <br> CVV Number: 45 <br> Expiry Date: ', 'Active'),
(97, 122388, 0, 'Mess bill', 1160.00, '2019-04-01', 'Debit card', '2019-04', 'Active'),
(98, 0, 22, 'Guest Payment', 1650.00, '2019-04-01', 'Debit card', 'a:12:{i:0;s:10:\"2019-04-02\";i:1;s:10:\"2019-04-04\";i:2;s:1:\"3\";i:3;s:15:\"For appointment\";i:4;s:0:\"\";i:5;s:6:\"550.00\";i:6;s:4:\"1650\";i:7;s:5:\"smita\";i:8;s:10:\"Debit card\";i:9;s:3:\"345\";i:10;s:4:\"3455\";i:11;s:7:\"2019-04\";}', 'Paid'),
(99, 122391, 0, 'Hostel Fees Payment', 25000.00, '2019-04-01', 'Debit card', 'Card Holder: anvitha <br> Card number: 123455677 <br> CVV Number: 444 <br> Expiry Date: ', 'Active'),
(100, 122394, 0, 'Hostel Fees Payment', 25000.00, '2019-04-02', 'Credit card', 'Card Holder: anvitha <br> Card number: 12345678901234 <br> CVV Number:  <br> Expiry Date: ', 'Active'),
(101, 0, 0, 'Hostel Fees Payment', 0.00, '2019-04-02', '', 'Card Holder:  <br> Card number:  <br> CVV Number:  <br> Expiry Date: ', 'Active'),
(102, 0, 0, 'Hostel Fees Payment', 0.00, '2019-04-02', '', 'Card Holder:  <br> Card number:  <br> CVV Number:  <br> Expiry Date: ', 'Active'),
(103, 0, 0, 'Hostel Fees Payment', 0.00, '2019-04-02', '', 'Card Holder:  <br> Card number:  <br> CVV Number:  <br> Expiry Date: ', 'Active'),
(104, 0, 0, 'Hostel Fees Payment', 0.00, '2019-04-02', '', 'Card Holder:  <br> Card number:  <br> CVV Number:  <br> Expiry Date: ', 'Active'),
(105, 0, 0, 'Hostel Fees Payment', 0.00, '2019-04-02', '', 'Card Holder: 34 <br> Card number:  <br> CVV Number:  <br> Expiry Date: ', 'Active'),
(106, 0, 0, 'Hostel Fees Payment', 0.00, '2019-04-02', '', 'Card Holder:  <br> Card number:  <br> CVV Number:  <br> Expiry Date: ', 'Active'),
(107, 0, 0, 'Hostel Fees Payment', 0.00, '2019-04-02', '', 'Card Holder:  <br> Card number:  <br> CVV Number:  <br> Expiry Date: ', 'Active'),
(108, 0, 0, 'Hostel Fees Payment', 0.00, '2019-04-02', '', 'Card Holder:  <br> Card number:  <br> CVV Number:  <br> Expiry Date: ', 'Active'),
(109, 0, 45, 'Guest Payment', 0.00, '0000-00-00', '', 'a:5:{i:0;s:10:\"2019-04-03\";i:1;s:10:\"2019-04-04\";i:2;d:2;i:3;s:21:\"For Medical treatment\";i:4;s:21:\"non veg food required\";}', 'Pending'),
(110, 0, 46, 'Guest Payment', 1650.00, '2019-04-03', 'Debit card', 'a:12:{i:0;s:10:\"2019-04-03\";i:1;s:10:\"2019-04-05\";i:2;s:1:\"3\";i:3;s:13:\"For valuation\";i:4;s:17:\"veg food required\";i:5;s:6:\"550.00\";i:6;s:4:\"1650\";i:7;s:6:\"kamala\";i:8;s:10:\"Debit card\";i:9;s:15:\"123446789354643\";i:10;s:0:\"\";i:11;s:0:\"\";}', 'Paid'),
(111, 0, 47, 'Guest Payment', 0.00, '0000-00-00', '', 'a:5:{i:0;s:10:\"2019-04-04\";i:1;s:10:\"2019-04-05\";i:2;d:2;i:3;s:15:\"For appointment\";i:4;s:17:\"veg food required\";}', 'Rejected'),
(112, 122398, 0, 'Hostel Fees Payment', 10000.00, '2019-04-03', 'Debit card', 'Card Holder: kangana <br> Card number: 1234566781234566 <br> CVV Number: 124 <br> Expiry Date: ', 'Active'),
(113, 122383, 0, 'Mess bill', 2990.00, '2019-04-03', 'Debit card', '2018-12', 'Active'),
(114, 0, 18, 'Guest Payment', 1100.00, '2019-04-03', '', 'a:12:{i:0;s:10:\"2019-04-03\";i:1;s:10:\"2019-04-04\";i:2;s:1:\"2\";i:3;s:15:\"For appointment\";i:4;s:0:\"\";i:5;s:6:\"550.00\";i:6;s:4:\"1100\";i:7;s:0:\"\";i:8;s:0:\"\";i:9;s:0:\"\";i:10;s:0:\"\";i:11;s:0:\"\";}', 'Paid'),
(115, 0, 18, 'Guest Payment', 1100.00, '2019-04-03', 'Debit card', 'a:12:{i:0;s:10:\"2019-04-04\";i:1;s:10:\"2019-04-05\";i:2;s:1:\"2\";i:3;s:15:\"For appointment\";i:4;s:0:\"\";i:5;s:6:\"550.00\";i:6;s:4:\"1100\";i:7;s:7:\"anvitha\";i:8;s:10:\"Debit card\";i:9;s:16:\"1234567890987754\";i:10;s:3:\"124\";i:11;s:7:\"2019-04\";}', 'Paid'),
(116, 0, 18, 'Guest Payment', 1100.00, '2019-04-03', 'Debit card', 'a:12:{i:0;s:10:\"2019-04-03\";i:1;s:10:\"2019-04-04\";i:2;s:1:\"2\";i:3;s:15:\"For appointment\";i:4;s:0:\"\";i:5;s:6:\"550.00\";i:6;s:4:\"1100\";i:7;s:4:\"jaya\";i:8;s:10:\"Debit card\";i:9;s:16:\"1234567890123456\";i:10;s:3:\"123\";i:11;s:7:\"2019-04\";}', 'Paid'),
(117, 0, 18, 'Guest Payment', 2200.00, '2019-04-03', 'Debit card', 'a:12:{i:0;s:10:\"2019-04-10\";i:1;s:10:\"2019-04-13\";i:2;s:1:\"4\";i:3;s:11:\"test record\";i:4;s:9:\"test note\";i:5;s:6:\"550.00\";i:6;s:4:\"2200\";i:7;s:7:\"anvitha\";i:8;s:10:\"Debit card\";i:9;s:16:\"1234567890123456\";i:10;s:3:\"485\";i:11;s:7:\"2020-01\";}', 'Paid'),
(118, 0, 21, 'Guest Payment', 1100.00, '2019-04-06', 'Debit card', 'a:12:{i:0;s:10:\"2019-04-06\";i:1;s:10:\"2019-04-07\";i:2;s:1:\"2\";i:3;s:21:\"For Medical treatment\";i:4;s:17:\"Veg food required\";i:5;s:6:\"550.00\";i:6;s:4:\"1100\";i:7;s:6:\"savita\";i:8;s:10:\"Debit card\";i:9;s:16:\"6753829632457842\";i:10;s:3:\"342\";i:11;s:7:\"2019-04\";}', 'Paid'),
(119, 0, 21, 'Guest Payment', 0.00, '0000-00-00', '', 'a:5:{i:0;s:10:\"2019-04-06\";i:1;s:10:\"2019-04-07\";i:2;d:2;i:3;s:21:\"For Medical treatment\";i:4;s:17:\"Veg food required\";}', 'Pending'),
(120, 122405, 0, 'Hostel Fees Payment', 10000.00, '2019-04-08', 'Debit card', 'Card Holder: diya <br> Card number: 1234567890123456 <br> CVV Number: 333 <br> Expiry Date: ', 'Active'),
(121, 122406, 0, 'Hostel Fees Payment', 3700.00, '2019-04-11', 'Debit card', 'Card Holder: sushmitha <br> Card number: 1267489344784324 <br> CVV Number: 123 <br> Expiry Date: ', 'Active'),
(122, 122407, 0, 'Hostel Fees Payment', 3700.00, '2019-04-11', 'Debit card', 'Card Holder: sushmitha <br> Card number: 1378482372812342 <br> CVV Number: 134 <br> Expiry Date: ', 'Active'),
(123, 122408, 0, 'Hostel Fees Payment', 10000.00, '2019-04-11', 'Debit card', 'Card Holder: savita <br> Card number: 1234567890123456 <br> CVV Number: 234 <br> Expiry Date: ', 'Active'),
(124, 0, 19, 'Guest Payment', 0.00, '0000-00-00', '', 'a:5:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;d:1;i:3;s:0:\"\";i:4;s:0:\"\";}', 'Pending'),
(125, 0, 20, 'Guest Payment', 0.00, '0000-00-00', '', 'a:5:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;d:1;i:3;s:0:\"\";i:4;s:0:\"\";}', 'Pending'),
(126, 0, 56, 'Guest Payment', 0.00, '0000-00-00', '', 'a:5:{i:0;s:10:\"2019-04-11\";i:1;s:10:\"2019-04-12\";i:2;d:2;i:3;s:21:\"For Medical treatment\";i:4;s:0:\"\";}', 'Approved'),
(127, 0, 57, 'Guest Payment', 0.00, '0000-00-00', '', 'a:5:{i:0;s:10:\"2019-04-12\";i:1;s:10:\"2019-04-14\";i:2;d:3;i:3;s:21:\"For Medical treatment\";i:4;s:0:\"\";}', 'Pending'),
(128, 0, 59, 'Guest Payment', 0.00, '0000-00-00', '', 'a:5:{i:0;s:10:\"2019-04-11\";i:1;s:10:\"2019-04-13\";i:2;d:3;i:3;s:15:\"For appointment\";i:4;s:0:\"\";}', 'Pending'),
(129, 122410, 0, 'Hostel Fees Payment', 25000.00, '2019-04-11', 'Debit card', 'Card Holder: harshini <br> Card number: 1234567890123456 <br> CVV Number: 567 <br> Expiry Date: ', 'Active'),
(130, 122411, 0, 'Hostel Fees Payment', 1000.00, '2019-04-11', 'Credit card', 'Card Holder: harshini <br> Card number: 1234568778945612 <br> CVV Number: 232 <br> Expiry Date: ', 'Active'),
(131, 122412, 0, 'Hostel Fees Payment', 25000.00, '2021-04-07', 'Credit card', 'Card Holder: Ram kiran <br> Card number: 1234567890123456 <br> CVV Number: 158 <br> Expiry Date: ', 'Active'),
(132, 122413, 0, 'Hostel Fees Payment', 25000.00, '2021-04-07', 'Credit card', 'Card Holder: Pranesh <br> Card number: 1234567890123456 <br> CVV Number: 157 <br> Expiry Date: ', 'Active'),
(133, 122413, 0, 'Mess bill', 86.00, '2021-04-08', 'Debit card', '2021-04', 'Active'),
(134, 122414, 0, 'Hostel Fees Payment', 25000.00, '2021-04-05', 'Credit card', 'Card Holder: Rajesh kumar <br> Card number: 1234567890123456 <br> CVV Number: 158 <br> Expiry Date: ', 'Active'),
(135, 122415, 0, 'Hostel Fees Payment', 25000.00, '2021-05-23', 'Debit card', 'Card Holder: Raj <br> Card number: 7894561230123456 <br> CVV Number: 158 <br> Expiry Date: ', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `blocks`
--

CREATE TABLE `blocks` (
  `block_id` int(10) NOT NULL,
  `block_name` varchar(25) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blocks`
--

INSERT INTO `blocks` (`block_id`, `block_name`, `description`, `status`) VALUES
(1, 'GIRLS HOSTEL I', 'GIRL HOSTEL I FOR FRESHERS : FIRST YEAR \r\nSTEPPING INTO NEW YEAR', 'Active'),
(2, 'GIRL HOSTEL II', 'GIRLS HOSTEL II FOR SECOND, THIRD AND FOURTH YEAR STUDENTS', 'Active'),
(4, 'GIRL HOSTEL III', 'GIRLS HOSTEL 3 \r\nFOR SECOND, THIRD AND FOURTH YEAR GIRLS', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `emp_id` int(10) NOT NULL,
  `emp_name` varchar(50) NOT NULL,
  `login_id` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `emp_type` varchar(20) NOT NULL COMMENT 'Admin, Accountant, Warden',
  `gender` varchar(10) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`emp_id`, `emp_name`, `login_id`, `password`, `emp_type`, `gender`, `designation`, `status`) VALUES
(11, 'jayanti', 'jayanti102', 'jayanti', 'warden', 'female', 'warden', 'Active'),
(12, 'Admin', 'admin', 'admin', 'Admin', 'Male', 'Administrator', 'Active'),
(14, 'kamini', 'kamini123', 'kamini', 'Warden', 'Female', 'warden', 'Active'),
(15, 'usha', 'usha@gmail.com', 'ushahegde', 'Admin', 'Female', 'admin', 'Active'),
(16, 'kamini', 'kamini@gmail.com', 'kamini', 'Warden', 'Female', 'warden', 'Active'),
(18, 'sudha', 'sudha@gmail.com', 'sudha123', 'Warden', 'Female', 'warden', 'Active'),
(19, '', '', '', '', '', '', ''),
(20, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `eventid` int(10) NOT NULL,
  `event_title` varchar(250) NOT NULL,
  `event_banner` text NOT NULL,
  `event_description` text NOT NULL,
  `event_date` date NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=hp8;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`eventid`, `event_title`, `event_banner`, `event_description`, `event_date`, `status`) VALUES
(1048, ' AKTU Sports, Cultural and Technical fests', 'a:1:{i:0;s:25:\"1097095580AKTUSports6.jpg\";}', 'AKGEC participated with full enthusiasm and put up a phenomenal performance during the Dr. A.P.J. Abdul Kalam Technical University Zonal and States Sports Fests and bagged many awards.', '2021-11-06', 'Published'),
(1049, 'Convocation', 'a:3:{i:0;s:27:\"1536666881convocation_2.jpg\";i:1;s:26:\"357932579convocation_1.jpg\";i:2;s:24:\"458474776convocation.jpg\";}', 'Ajay Kumar Garg Engineering College, Ghaziabad conducted its 17th Annual Convocation with all the grandeur and magnificence on 16 March, 2019.\r\n\r\nThe ceremony was graced by the presence of Sh. Anuj Khanna, Managing Director,C&S Electric Limited & Chairman, Western UP Zonal Council, Confederation of Indian Industry (CII) and Dr. Vinay Kumar Pathak, Hon?ble Vice Chancellor, Dr. A.P.J. Abdul Kalam Technical University, Lucknow, Members of Management Committee, Director, Heads of Departments, Deans, Section Incharges, faculty, staff, guests, parents of degree recipients, press and the graduating students.\r\n\r\nPresenting the College annual report, Director Dr. R.K. Agarwal highlighted the progress of the College and various academic, cultural, social and sports achievements of the students at College as well as University level.\r\n\r\nHon?ble Vice Chancellor, AKTU, Dr. Vinay Kumar Pathak conferred the degrees. The meritorious students were presented cash awards and certificates by the Chief Guest and the Vice Chancellor.\r\n\r\nIn his address to the students, the Vice Chancellor appreciated the academic achievements of the college with 18 students being in the branch wise merit lists of AKTU and a record tally of 3 Gold, 1 Silver and 2 Bronze medals. He emphasized on the significance of the Convocation Ceremony and advised the students to be focused towards their professional and social goals.\r\n\r\nIn his convocation address, the Chief Guest Sh Anuj Khanna appreciated the Centres of Excellence in the college, the industry academia interface and the vast range of student activities beyond the curriculum. The chief Guest advised the students to practice and upgrade their technical skills regularly as well as to strengthen their soft skills and build a risk taking capability. He further advised them to be grateful to the Almighty for all the blessings and live a selfless and giving life.\r\n\r\nAs per the College tradition, the meritorious students were invited to plant a tree in the College lawns.', '2022-02-24', 'Published'),
(1050, 'Freshers Party', 'a:3:{i:0;s:22:\"1972410759DSC_8852.jpg\";i:1;s:21:\"906795940DSC_8709.jpg\";i:2;s:21:\"535770102DSC_8753.jpg\";}', 'Pulsating ambience, flashing lights, and foot tapping music, marked the dawn of SAHASRA? 2019 ? The Freshers? Party for AKGEC B.Tech, AKGEC MCA and AKGIM MBA newly admitted students on 30 September, 2019. The excitement inflated to a high as performances graced the stage. Joy and happiness could be seen on the faces all around.\r\n\r\nThe evening gave room to the newcomers to build a rapport with their batch mates, seniors and faculty and become part of the AKGEC fraternity. Dr. R.K Agarwal, Director General, AKGEC, welcomed the young energy in the clan and inspired them to put in their best for a happy, successful and prosperous life ahead.\r\n\r\nMr. & Ms. Fresher\r\n\r\nB.Tech	Kartikey Verma & Anushree Gupta\r\nMr. & Ms. Personality	B.Tech	Aditya Mishra & Parul Choudhary\r\nBlissful gestures, flickering faces, enthralled beats of dance floor and sumptuous dinner were the defining moments of the evening.', '2021-06-16', 'Published'),
(1051, 'Farewell Party', 'a:5:{i:0;s:20:\"1379932112fair_1.jpg\";i:1;s:24:\"1571699356fair_2 (1).jpg\";i:2;s:20:\"1833776487fair_3.jpg\";i:3;s:19:\"142843965fair_5.jpg\";i:4;s:19:\"807032073fair_2.jpg\";}', 'Sandishya ? perfect ending of a beautiful journey, the Farewell Function for the B. Tech 4th Year batch (2015-19) was successfully organized by the 3rd year students on 8 June, 2019.\r\n\r\nThe 3rd year students presented a scintillating cultural evening with performances by the Cultural societies ? Taal, Verve, Euphony. Reminiscences of the four years spent inthe College were recollected by 4th year students Shagun Singh and Kunal Rajput on behalf of the entire passing out batch. Video screening the four years of journey through academics, activities and fun times was a highlight of the evening. The evening ended with a vibrant DJ night enjoyed by all.', '2021-07-08', 'Published');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedback_id` int(10) NOT NULL,
  `hostellerid` int(10) NOT NULL,
  `feedbackdttime` datetime NOT NULL,
  `feedbacksubject` varchar(150) NOT NULL,
  `feedbackmessage` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedback_id`, `hostellerid`, `feedbackdttime`, `feedbacksubject`, `feedbackmessage`) VALUES
(1, 123, '2019-03-30 14:45:51', 'test', 'etst message'),
(2, 123, '2019-03-30 14:45:59', 'test', 'etst message'),
(3, 123, '2019-03-30 14:46:45', 'test', 'etst message'),
(4, 0, '2019-04-02 13:08:35', '', ''),
(5, 0, '2019-04-02 13:11:24', '', ''),
(6, 0, '2019-04-02 13:11:28', '', ''),
(7, 0, '2019-04-02 13:12:37', '', ''),
(8, 0, '2019-04-02 13:12:40', '', ''),
(9, 0, '2019-04-02 13:13:41', '', ''),
(10, 0, '2019-04-02 13:13:45', '', ''),
(11, 0, '2019-04-02 13:14:45', '', ''),
(12, 0, '2019-04-02 13:14:49', '', ''),
(13, 0, '2019-04-02 13:19:40', '', ''),
(14, 0, '2019-04-02 13:20:34', '', ''),
(15, 0, '2019-04-02 13:21:35', '', ''),
(16, 0, '2019-04-02 13:21:38', '', ''),
(17, 0, '2019-04-02 13:21:53', '', ''),
(18, 0, '2019-04-02 13:25:43', '', ''),
(19, 0, '2019-04-02 13:42:45', '', ''),
(20, 0, '2019-04-02 20:33:55', '', ''),
(21, 0, '2019-04-02 20:34:38', '', ''),
(22, 0, '2019-04-02 20:34:43', '', ''),
(23, 0, '2019-04-02 20:35:42', '', ''),
(24, 0, '2019-04-02 20:37:04', '', ''),
(25, 0, '2019-04-02 20:37:08', '', ''),
(26, 0, '2019-04-02 20:37:32', '', ''),
(27, 0, '2019-04-02 20:37:35', '', ''),
(28, 3248, '2019-04-05 10:19:15', '', ''),
(29, 3251, '2019-04-08 07:46:22', 'test', 'test'),
(30, 3261, '2019-04-11 07:56:06', 'test', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE `fees` (
  `fee_id` int(10) NOT NULL,
  `admission_id` int(10) NOT NULL,
  `fee_str_id` int(10) NOT NULL,
  `total_fees` double(10,2) NOT NULL,
  `invoice_date` date NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fees`
--

INSERT INTO `fees` (`fee_id`, `admission_id`, `fee_str_id`, `total_fees`, `invoice_date`, `status`) VALUES
(1, 0, 0, 6777.00, '2019-01-04', 'Active'),
(2, 0, 0, 250.00, '2019-01-03', 'Active'),
(3, 122353, 2, 2233.00, '2019-02-15', ''),
(4, 122350, 1, 4000.00, '2019-02-14', ''),
(5, 122366, 3, 0.00, '2019-02-15', 'Pending'),
(6, 122367, 3, 25000.00, '2019-02-15', 'Pending'),
(7, 122368, 3, 25000.00, '2019-02-15', 'Pending'),
(8, 122369, 3, 25000.00, '2019-02-15', 'Active'),
(9, 122370, 3, 25000.00, '2019-02-17', 'Active'),
(10, 122371, 3, 25000.00, '2019-02-17', 'Active'),
(11, 122372, 3, 25000.00, '2019-02-17', 'Active'),
(12, 122373, 3, 25000.00, '2019-02-21', 'Active'),
(13, 122374, 3, 25000.00, '2019-02-21', 'Active'),
(14, 122375, 3, 25000.00, '2019-02-21', 'Active'),
(15, 122376, 3, 25000.00, '2019-02-22', 'Active'),
(16, 122377, 3, 25000.00, '2019-02-22', 'Active'),
(17, 122349, 3, 9000.00, '2019-03-14', 'Active'),
(18, 122378, 3, 25000.00, '2019-03-14', 'Active'),
(19, 122379, 0, 0.00, '2019-03-14', 'Active'),
(20, 122380, 0, 0.00, '2019-03-14', 'Active'),
(21, 122381, 0, 0.00, '2019-03-14', 'Pending'),
(22, 122382, 3, 25000.00, '2019-03-20', 'Active'),
(23, 122383, 3, 25000.00, '2019-03-20', 'Active'),
(24, 122384, 11, 25000.00, '2019-03-22', 'Active'),
(25, 122385, 14, 10000.00, '2019-03-22', 'Active'),
(26, 122386, 13, 3700.00, '2019-03-31', 'Active'),
(27, 122387, 13, 3700.00, '2019-03-31', 'Active'),
(28, 122388, 14, 10000.00, '2019-04-01', 'Active'),
(29, 122389, 3, 25000.00, '2019-04-01', 'Active'),
(30, 122390, 3, 25000.00, '2019-04-01', 'Active'),
(31, 122391, 3, 25000.00, '2019-04-01', 'Active'),
(32, 122392, 0, 0.00, '2019-04-01', 'Pending'),
(33, 122393, 0, 0.00, '2019-04-01', 'Pending'),
(34, 0, 0, 0.00, '0000-00-00', 'Active'),
(35, 122394, 3, 25000.00, '2019-04-02', 'Active'),
(36, 122395, 0, 0.00, '2019-04-02', 'Pending'),
(37, 122396, 0, 0.00, '2019-04-02', 'Pending'),
(38, 122397, 16, 10000.00, '2019-04-03', 'Pending'),
(39, 122398, 16, 10000.00, '2019-04-03', 'Active'),
(40, 122399, 0, 0.00, '2019-04-05', 'Pending'),
(41, 122400, 0, 0.00, '2019-04-05', 'Pending'),
(42, 122382, 3, 9000.00, '2019-04-06', 'Active'),
(43, 122382, 12, 4000.00, '2019-04-06', 'Active'),
(44, 122401, 14, 10000.00, '2019-04-06', 'Pending'),
(45, 122402, 0, 0.00, '2019-04-06', 'Pending'),
(46, 122403, 14, 10000.00, '2019-04-06', 'Pending'),
(47, 122404, 14, 10000.00, '2019-04-08', 'Pending'),
(48, 122405, 14, 10000.00, '2019-04-08', 'Active'),
(49, 122406, 13, 3700.00, '2019-04-11', 'Active'),
(50, 122407, 13, 3700.00, '2019-04-11', 'Active'),
(51, 122408, 27, 10000.00, '2019-04-11', 'Active'),
(52, 122409, 13, 3700.00, '2019-04-11', 'Pending'),
(53, 122410, 3, 25000.00, '2019-04-11', 'Active'),
(54, 122411, 5, 1000.00, '2019-04-11', 'Active'),
(55, 122412, 3, 25000.00, '2021-04-07', 'Active'),
(56, 122413, 11, 25000.00, '2021-04-07', 'Active'),
(57, 122414, 11, 25000.00, '2021-04-10', 'Active'),
(58, 122415, 3, 25000.00, '2021-05-23', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `fees_structure`
--

CREATE TABLE `fees_structure` (
  `fee_str_id` int(10) NOT NULL,
  `block_id` int(10) NOT NULL,
  `hostellertype` varchar(15) NOT NULL COMMENT 'Employee and Student',
  `room_type` varchar(25) NOT NULL COMMENT 'Single, Double, Thriple',
  `cost` float(10,2) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fees_structure`
--

INSERT INTO `fees_structure` (`fee_str_id`, `block_id`, `hostellertype`, `room_type`, `cost`, `status`) VALUES
(3, 1, 'Student', 'Single Occupancy', 25000.00, 'Active'),
(4, 1, 'Employee', 'Single Occupancy', 50000.00, 'Active'),
(5, 1, 'Student', 'Double Sharing', 1000.00, 'Active'),
(6, 1, 'Student', 'Triple Sharing', 500.00, 'Active'),
(7, 1, 'Student', 'Dormitory', 300.00, 'Active'),
(10, 0, 'Guest', '', 550.00, 'Active'),
(11, 2, 'Employee', 'Double Sharing', 25000.00, 'Active'),
(12, 2, 'Student', 'Triple Sharing', 150000.00, 'Active'),
(13, 2, 'Student', 'Dormitory', 3700.00, 'Active'),
(14, 2, 'Employee', 'Triple Sharing', 10000.00, 'Active'),
(15, 1, 'Student', 'Double Sharing', 10000.00, 'Active'),
(16, 2, 'Student', 'Dormitory', 10000.00, 'Active'),
(17, 1, 'Student', 'Triple Sharing', 10000.00, 'Active'),
(18, 0, '', '', 0.00, ''),
(20, 0, '', '', 0.00, ''),
(21, 0, '', '', 0.00, ''),
(22, 0, '', '', 0.00, ''),
(23, 0, '', '', 0.00, ''),
(24, 0, '', '', 0.00, ''),
(25, 3, 'Employee', 'Triple Sharing', 8000.00, 'Active'),
(26, 3, 'Employee', 'Triple Sharing', 8000.00, 'Active'),
(27, 3, 'Student', 'Dormitory', 10000.00, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_type`
--

CREATE TABLE `gallery_type` (
  `gallery_type_id` int(11) NOT NULL,
  `gallery_type` varchar(200) NOT NULL,
  `gallery_type_description` text NOT NULL,
  `gallery_type_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gallery_type`
--

INSERT INTO `gallery_type` (`gallery_type_id`, `gallery_type`, `gallery_type_description`, `gallery_type_status`) VALUES
(4, 'GIRLS HOSTEL', '', 'Active'),
(5, 'BOYS HOSTEL', 'ALL THE FACILITIES THERE', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `guest`
--

CREATE TABLE `guest` (
  `guestid` int(10) NOT NULL,
  `name` varchar(25) NOT NULL,
  `visitreason` varchar(100) NOT NULL,
  `emailid` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `contactno` varchar(15) NOT NULL,
  `comment` text NOT NULL,
  `fromdate` date NOT NULL,
  `todate` date NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guest`
--

INSERT INTO `guest` (`guestid`, `name`, `visitreason`, `emailid`, `password`, `contactno`, `comment`, `fromdate`, `todate`, `status`) VALUES
(18, 'jaya', 'test record', 'jaya@gmail.com', 'jaya', '96564789', 'test note', '2019-04-10', '2019-04-13', 'Active'),
(19, 'Raj kiran', '', 'rajkiran@gmail.com', '123456789', '9876543210', '', '0000-00-00', '0000-00-00', 'Active'),
(20, 'Rajsh Raj', '', 'rajeshraj@gmail.com', 'q1w2e3r4/', '9876543210', '', '0000-00-00', '0000-00-00', 'Active'),
(21, 'savita', 'For Medical treatment', 'savita@gmail.com', 'savita', '890743211', 'Veg food required', '2019-04-06', '2019-04-07', 'Active'),
(22, 'geeta', 'For appointment', 'geeta@gmail.com', 'geeta', '24567898', '', '2019-04-02', '2019-04-04', 'Active'),
(25, '67', '', '', '', '', '', '0000-00-00', '0000-00-00', 'Active'),
(27, '', '', '', '', 'wrrtyy', '', '0000-00-00', '0000-00-00', 'Active'),
(28, '', '', '', '', 'dfhjk', '', '0000-00-00', '0000-00-00', 'Active'),
(29, 'ram', '', 'ram@gmail.com', 'ram1234', '9656478933', '', '0000-00-00', '0000-00-00', ''),
(30, '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'Active'),
(31, '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'Active'),
(32, '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'Active'),
(33, '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'Active'),
(34, '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'Active'),
(36, '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'Active'),
(42, '', '', '', '', 'dfgjfss', '', '0000-00-00', '0000-00-00', 'Active'),
(43, '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'Active'),
(44, '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'Active'),
(45, 'sumathi', 'For Medical treatment', 'sumathi@gmail.com', 'sumathi', '9076543272', 'non veg food required', '2019-04-03', '2019-04-04', 'Active'),
(46, 'kamala', 'For valuation', 'kamala@gmail.com', 'kamala', '8077654221', 'veg food required', '2019-04-03', '2019-04-05', 'Active'),
(47, 'ranjini', 'For appointment', 'ranjini@gmail.com', 'ranjini', '9087645227', 'veg food required', '2019-04-04', '2019-04-05', 'Active'),
(48, 'gouri', '', 'gouri@gmail.com', 'gourihegde', '9088763411', '', '0000-00-00', '0000-00-00', 'Active'),
(49, 'gouri', '', 'gouri@gmail.com', 'gourihegde', '9088763411', '', '0000-00-00', '0000-00-00', 'Active'),
(50, 'radha', '', 'radha@gmail.com', 'radha123', '9656478912', '', '0000-00-00', '0000-00-00', 'Active'),
(51, 'seetha', '', 'seetha@gmail.com', 'seetha123', '9876234111', '', '0000-00-00', '0000-00-00', 'Active'),
(52, 'seetharaman', '', 'seetha@gmail.com', 'seetharaman', '9876234111', '', '0000-00-00', '0000-00-00', 'Active'),
(53, 'tanu', '', 'tanu@gmail.com', 'tanu123', '9876543210', '', '0000-00-00', '0000-00-00', 'Active'),
(54, 'tanu', '', 'tanu@gmail.com', 'tanu123', '9876543210', '', '0000-00-00', '0000-00-00', 'Active'),
(55, 'Raj kiran', '', 'rajkiran@gmail.com', 'rajkiran', '9876543210', '', '0000-00-00', '0000-00-00', 'Active'),
(56, 'rashmi', 'For Medical treatment', 'rashmi@gmail.com', 'rashmi', '9874456213', '', '2019-04-11', '2019-04-12', 'Active'),
(57, 'kavya', 'For Medical treatment', 'kavya@gmail.com', 'kavya123', '9088763442', '', '2019-04-12', '2019-04-14', 'Active'),
(58, 'kavya', '', 'kavya@gmail.com', 'kavya123', '9088763442', '', '0000-00-00', '0000-00-00', 'Active'),
(59, 'navya', 'For appointment', 'navya@gmail.com', 'navya123', '9874561230', '', '2019-04-11', '2019-04-13', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `hosteller`
--

CREATE TABLE `hosteller` (
  `hostellerid` int(10) NOT NULL,
  `hostellertype` varchar(15) NOT NULL COMMENT 'Student, Employee, Others',
  `name` varchar(50) NOT NULL,
  `emailid` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `father_name` varchar(50) NOT NULL,
  `mother_name` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_no` varchar(15) NOT NULL,
  `status` varchar(10) NOT NULL,
  `place_belong` varchar(30) NOT NULL,
  `jee_main_rank` varchar(30) NOT NULL,
  `management_quota` varchar(30) NOT NULL,
  `ccgpa10` varchar(30) NOT NULL,
  `a12` varchar(30) NOT NULL,
  `cocurricular_activities` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hosteller`
--

INSERT INTO `hosteller` (`hostellerid`, `hostellertype`, `name`, `emailid`, `password`, `dob`, `father_name`, `mother_name`, `address`, `contact_no`, `status`, `place_belong`, `jee_main_rank`, `management_quota`, `ccgpa10`, `a12`, `cocurricular_activities`) VALUES
(123, 'student', 'Anvitha', 'anvithas014@gmail.com', '123456789', '2019-03-05', 'suresh', 'sushma', 'kerala', '78667654454', 'Active', '', '', '', '', '', ''),
(3237, 'Student', 'Harshini', 'harshini@gmail.com', 'harshini', '2019-03-20', 'balachandra', 'seethadevi', 'kerala', '978754692', 'Active', '', '', '', '', '', ''),
(3238, 'Employee', 'suma', 'suma@gmail.com', 'suma', '2019-03-16', 'sumanth', 'sumana', 'kundapura', '768932511', 'Active', '', '', '', '', '', ''),
(3241, 'Employee', 'rajkiran', 'rajkiran@gmail.com', 'raju', '2019-03-17', 'ravi', 'ramya', 'udupi', '908876543', 'Active', '', '', '', '', '', ''),
(3242, 'Student', 'Preetham', 'preetham@gmail.com', 'preetham', '2019-03-20', 'balachandra', 'seethadevi', 'kerala', '978754692', 'Active', '', '', '', '', '', ''),
(3243, 'Employee', 'radha', 'radha@gmail.com', 'radha', '2019-03-16', 'sumanth', 'sumana', 'kundapura', '768932511', 'Active', '', '', '', '', '', ''),
(3245, 'Student', 'kavana', 'kavana@gmail.com', 'kavana', '2019-03-09', 'kumar', 'suma', 'udupi', '98765411', 'Active', '', '', '', '', '', ''),
(3246, 'Employee', 'sugama', 'smhegde416@gmail.com', 'q1w2e3r4/', '1999-02-12', 'suresh', 'soukya', 'karwar', '93456789', 'Active', '', '', '', '', '', ''),
(3248, 'Student', 'smita', 'smita@gmail.com', 'smita', '2019-03-28', 'parameshwar', 'jaya', 'kumta', '678990221', 'Active', '', '', '', '', '', ''),
(3249, 'Student', 'gamana', 'gamana@gmail.com', 'gamana', '2019-04-04', 'raman', 'kavana', 'goa', '578993', 'Active', '', '', '', '', '', ''),
(3250, 'Student', 'smit', 'smit@gmail.com', 'smit', '2019-04-01', 'ram', '', 'kumta', '93456789', 'Active', '', '', '', '', '', ''),
(3251, 'Student', 'anvitha', 'anvitha@gmail.com', 'anvitha', '1998-03-31', 'ram', 'soukya', 'Bangalore', '9875632562', 'Active', '', '', '', '', '', ''),
(3254, 'Student', 'kangana', 'kangana@gmail.com', 'kangana', '2019-04-02', 'guru', 'greeshma', 'kerala', '9078665422', 'Active', '', '', '', '', '', ''),
(3255, 'Employee', 'Sunitha', 'sunitha@gmail.com', 'sunitha', '1990-04-06', 'raman', 'radha', 'Bangalore', '7834213454', 'Active', '', '', '', '', '', ''),
(3256, 'Student', 'akshatha', 'akshatha@gmail.com', 'akshatha', '1990-09-12', 'subramanya', 'sushma', 'Ballari', '9535185266', 'Active', '', '', '', '', '', ''),
(3257, 'Student', 'deepa', 'deepa@gmail.com', 'deepa123', '2019-04-05', 'Mahesh kiran', 'mahathi', 'honnavar', '9088765433', 'Active', '', '', '', '', '', ''),
(3258, 'Student', 'hhjg', 'peterking@gmail.com', '1234567', '2019-04-25', 'ftfuy', 'ttutti7uiyiu', 'khgkjhk', '7894561230', 'Active', '', '', '', '', '', ''),
(3260, 'Employee', 'diya', 'diya@gmail.com', 'diya123', '2000-05-04', 'dinesh', 'divya', 'kerala', '8976549872', 'Active', '', '', '', '', '', ''),
(3261, 'Student', 'sushmitha', 'sushmitha@gmail.com', 'sushmitha', '1990-08-12', 'guru', 'gouri', 'kundapur', '9088345261', 'Active', '', '', '', '', '', ''),
(3262, 'Student', 'rubina', 'rubina@gmail.com', 'rubina', '1990-04-12', 'raees', 'rustam', 'mangaluru', '9345678911', 'Active', '', '', '', '', '', ''),
(3263, 'Student', 'divya', 'divya@gmail.com', 'divya123', '2000-05-04', 'ganesh', 'leela', 'Bangalore', '9986478324', 'Active', '', '', '', '', '', ''),
(3264, 'Student', 'Manvitha', 'manvitha@gmail.com', 'q1w2e3r4', '1986-05-04', 'Manju', 'Arati', '3rd floor,\r\nCity light', '9874536210', 'Active', '', '', '', '', '', ''),
(3265, 'Employee', 'Preetha', 'preetha@gmail.com', 'q1w2e3r4', '1999-05-04', 'Amin', 'Shama', '5th cross,\r\nJalahalli\r\n', '7894561230', 'Active', ' Hiroshima', '70', '71', '72', '73', ''),
(3266, 'Employee', 'Jaysheela', 'jaysheela@gmail.com', 'q1w2e3r4', '1889-05-04', 'Ratan', 'Misrina', 'iCity, BLR road', '7894561231', 'Active', 'Meghalaya', '88', '99', '77', '55', ''),
(3267, 'Student', 'SHRADDHA MISHRA', 'shruu2102@gmail.com', 'SHRADDHA', '1997-02-21', 'RAJEEV NAYAN MISHRA', 'ANJU MISHRA', 'HI', '7985151351', 'Active', 'Kerala', '75', '75', '85', '85', ''),
(3268, 'Student', 'Manthan', 'manthan2@gmail.com', 'q1w2e3r4', '1999-04-05', 'Rajshekar', 'Meera', '5th floor,\r\nJE apartment', '7894561202', 'Active', 'Rajkit', '55', '88', '66', '10', 'singing'),
(3269, 'Student', 'SHRADDHA MISHRA', 'shruu2102@gmail.com', 'sunshine', '2021-05-29', 'RAJEEV NAYAN MISHRA', 'ANJU MISHRA', '5/5 HAL colony', '7985151351', 'Active', 'KANPUR', '77', '88', '67', '100', 'singing');

-- --------------------------------------------------------

--
-- Table structure for table `leave_application`
--

CREATE TABLE `leave_application` (
  `leave_application_id` bigint(20) NOT NULL,
  `hostellerid` bigint(20) NOT NULL,
  `application_dt` date NOT NULL,
  `from_dt` date NOT NULL,
  `to_dt` date NOT NULL,
  `leave_reason` text NOT NULL,
  `person_visiting` text NOT NULL,
  `guardian` text NOT NULL,
  `warden_remark` text NOT NULL,
  `cheif_warden_remark` text NOT NULL,
  `leave_status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `leave_application`
--

INSERT INTO `leave_application` (`leave_application_id`, `hostellerid`, `application_dt`, `from_dt`, `to_dt`, `leave_reason`, `person_visiting`, `guardian`, `warden_remark`, `cheif_warden_remark`, `leave_status`) VALUES
(1, 3265, '2021-04-08', '2021-04-14', '2021-04-23', 'This is new application', 'raj', 'kiran', '', '', 'Pending'),
(2, 3266, '2021-04-10', '2021-04-10', '2021-04-11', 'For Sisters marriage', 'Dad comes to pick', 'Rajendra', 'This is test record', 'This is remark records', 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `mess_bill`
--

CREATE TABLE `mess_bill` (
  `mess_bill_id` int(10) NOT NULL,
  `admission_id` int(10) NOT NULL,
  `charge_type` varchar(20) NOT NULL COMMENT 'Monthly mess bill , Penalty 25 per day, Milk Charge',
  `date` date NOT NULL,
  `mess_bill` double(10,2) NOT NULL,
  `note` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mess_bill`
--

INSERT INTO `mess_bill` (`mess_bill_id`, `admission_id`, `charge_type`, `date`, `mess_bill`, `note`, `status`) VALUES
(3299, 0, 'Room rent', '2019-02-01', 750.00, '', 'Charges'),
(3300, 0, 'Mess Bill', '2019-02-01', 2200.00, '', 'Charges'),
(3301, 0, 'Water Electricity', '2019-02-01', 100.00, '', 'Charges'),
(3302, 0, 'Maintenance', '2019-02-01', 25.00, '', 'Charges'),
(3303, 0, 'Total Charges', '2019-02-01', 3075.00, '', 'Charges'),
(3304, 122383, 'Room Rent', '2019-02-01', 750.00, 'For mess bill', 'Active'),
(3305, 122383, 'Mess Bill', '2019-02-01', 550.00, 'For mess bill', 'Active'),
(3306, 122383, 'Water Electricity', '2019-02-01', 100.00, 'For mess bill', 'Active'),
(3307, 122383, 'Maintenance', '2019-02-01', 25.00, 'For mess bill', 'Active'),
(3308, 122383, 'Total Charges', '2019-02-01', 1425.00, 'For mess bill', 'Active'),
(3309, 122384, 'Room Rent', '2019-02-01', 750.00, 'For mess bill', 'Active'),
(3310, 122384, 'Mess Bill', '2019-02-01', 628.00, 'For mess bill', 'Active'),
(3311, 122384, 'Water Electricity', '2019-02-01', 100.00, 'For mess bill', 'Active'),
(3312, 122384, 'Maintenance', '2019-02-01', 25.00, 'For mess bill', 'Active'),
(3313, 122384, 'Total Charges', '2019-02-01', 1503.00, 'For mess bill', 'Active'),
(3314, 122385, 'Room Rent', '2019-02-01', 750.00, 'For mess bill', 'Active'),
(3315, 122385, 'Mess Bill', '2019-02-01', 0.00, 'For mess bill', 'Active'),
(3316, 122385, 'Water Electricity', '2019-02-01', 100.00, 'For mess bill', 'Active'),
(3317, 122385, 'Maintenance', '2019-02-01', 25.00, 'For mess bill', 'Active'),
(3318, 122385, 'Total Charges', '2019-02-01', 875.00, 'For mess bill', 'Active'),
(3319, 122386, 'Room Rent', '2019-02-01', 750.00, 'For mess bill', 'Active'),
(3320, 122386, 'Mess Bill', '2019-02-01', 0.00, 'For mess bill', 'Active'),
(3321, 122386, 'Water Electricity', '2019-02-01', 100.00, 'For mess bill', 'Active'),
(3322, 122386, 'Maintenance', '2019-02-01', 25.00, 'For mess bill', 'Active'),
(3323, 122386, 'Total Charges', '2019-02-01', 875.00, 'For mess bill', 'Active'),
(3324, 122387, 'Room Rent', '2019-02-01', 750.00, 'For mess bill', 'Active'),
(3325, 122387, 'Mess Bill', '2019-02-01', 0.00, 'For mess bill', 'Active'),
(3326, 122387, 'Water Electricity', '2019-02-01', 100.00, 'For mess bill', 'Active'),
(3327, 122387, 'Maintenance', '2019-02-01', 25.00, 'For mess bill', 'Active'),
(3328, 122387, 'Total Charges', '2019-02-01', 875.00, 'For mess bill', 'Active'),
(3329, 122388, 'Room Rent', '2019-02-01', 750.00, 'For mess bill', 'Active'),
(3330, 122388, 'Mess Bill', '2019-02-01', 0.00, 'For mess bill', 'Active'),
(3331, 122388, 'Water Electricity', '2019-02-01', 100.00, 'For mess bill', 'Active'),
(3332, 122388, 'Maintenance', '2019-02-01', 25.00, 'For mess bill', 'Active'),
(3333, 122388, 'Total Charges', '2019-02-01', 875.00, 'For mess bill', 'Active'),
(3334, 122389, 'Room Rent', '2019-02-01', 750.00, 'For mess bill', 'Active'),
(3335, 122389, 'Mess Bill', '2019-02-01', 0.00, 'For mess bill', 'Active'),
(3336, 122389, 'Water Electricity', '2019-02-01', 100.00, 'For mess bill', 'Active'),
(3337, 122389, 'Maintenance', '2019-02-01', 25.00, 'For mess bill', 'Active'),
(3338, 122389, 'Total Charges', '2019-02-01', 875.00, 'For mess bill', 'Active'),
(3339, 122390, 'Room Rent', '2019-02-01', 750.00, 'For mess bill', 'Active'),
(3340, 122390, 'Mess Bill', '2019-02-01', 0.00, 'For mess bill', 'Active'),
(3341, 122390, 'Water Electricity', '2019-02-01', 100.00, 'For mess bill', 'Active'),
(3342, 122390, 'Maintenance', '2019-02-01', 25.00, 'For mess bill', 'Active'),
(3343, 122390, 'Total Charges', '2019-02-01', 875.00, 'For mess bill', 'Active'),
(3344, 122391, 'Room Rent', '2019-02-01', 750.00, 'For mess bill', 'Active'),
(3345, 122391, 'Mess Bill', '2019-02-01', 0.00, 'For mess bill', 'Active'),
(3346, 122391, 'Water Electricity', '2019-02-01', 100.00, 'For mess bill', 'Active'),
(3347, 122391, 'Maintenance', '2019-02-01', 25.00, 'For mess bill', 'Active'),
(3348, 122391, 'Total Charges', '2019-02-01', 875.00, 'For mess bill', 'Active'),
(3349, 122398, 'Room Rent', '2019-02-01', 750.00, 'For mess bill', 'Active'),
(3350, 122398, 'Mess Bill', '2019-02-01', 0.00, 'For mess bill', 'Active'),
(3351, 122398, 'Water Electricity', '2019-02-01', 100.00, 'For mess bill', 'Active'),
(3352, 122398, 'Maintenance', '2019-02-01', 25.00, 'For mess bill', 'Active'),
(3353, 122398, 'Total Charges', '2019-02-01', 875.00, 'For mess bill', 'Active'),
(3354, 122405, 'Room Rent', '2019-02-01', 750.00, 'For mess bill', 'Active'),
(3355, 122405, 'Mess Bill', '2019-02-01', 0.00, 'For mess bill', 'Active'),
(3356, 122405, 'Water Electricity', '2019-02-01', 100.00, 'For mess bill', 'Active'),
(3357, 122405, 'Maintenance', '2019-02-01', 25.00, 'For mess bill', 'Active'),
(3358, 122405, 'Total Charges', '2019-02-01', 875.00, 'For mess bill', 'Active'),
(3359, 122406, 'Room Rent', '2019-02-01', 750.00, 'For mess bill', 'Active'),
(3360, 122406, 'Mess Bill', '2019-02-01', 0.00, 'For mess bill', 'Active'),
(3361, 122406, 'Water Electricity', '2019-02-01', 100.00, 'For mess bill', 'Active'),
(3362, 122406, 'Maintenance', '2019-02-01', 25.00, 'For mess bill', 'Active'),
(3363, 122406, 'Total Charges', '2019-02-01', 875.00, 'For mess bill', 'Active'),
(3364, 122407, 'Room Rent', '2019-02-01', 750.00, 'For mess bill', 'Active'),
(3365, 122407, 'Mess Bill', '2019-02-01', 0.00, 'For mess bill', 'Active'),
(3366, 122407, 'Water Electricity', '2019-02-01', 100.00, 'For mess bill', 'Active'),
(3367, 122407, 'Maintenance', '2019-02-01', 25.00, 'For mess bill', 'Active'),
(3368, 122407, 'Total Charges', '2019-02-01', 875.00, 'For mess bill', 'Active'),
(3369, 122408, 'Room Rent', '2019-02-01', 750.00, 'For mess bill', 'Active'),
(3370, 122408, 'Mess Bill', '2019-02-01', 0.00, 'For mess bill', 'Active'),
(3371, 122408, 'Water Electricity', '2019-02-01', 100.00, 'For mess bill', 'Active'),
(3372, 122408, 'Maintenance', '2019-02-01', 25.00, 'For mess bill', 'Active'),
(3373, 122408, 'Total Charges', '2019-02-01', 875.00, 'For mess bill', 'Active'),
(3374, 122410, 'Room Rent', '2019-02-01', 750.00, 'For mess bill', 'Active'),
(3375, 122410, 'Mess Bill', '2019-02-01', 0.00, 'For mess bill', 'Active'),
(3376, 122410, 'Water Electricity', '2019-02-01', 100.00, 'For mess bill', 'Active'),
(3377, 122410, 'Maintenance', '2019-02-01', 25.00, 'For mess bill', 'Active'),
(3378, 122410, 'Total Charges', '2019-02-01', 875.00, 'For mess bill', 'Active'),
(3379, 0, 'Room rent', '2019-03-01', 800.00, '', 'Charges'),
(3380, 0, 'Mess Bill', '2019-03-01', 2500.00, '', 'Charges'),
(3381, 0, 'Water Electricity', '2019-03-01', 100.00, '', 'Charges'),
(3382, 0, 'Maintenance', '2019-03-01', 150.00, '', 'Charges'),
(3383, 0, 'Total Charges', '2019-03-01', 3550.00, '', 'Charges'),
(3384, 122383, 'Room Rent', '2019-03-01', 800.00, '', 'Active'),
(3385, 122383, 'Mess Bill', '2019-03-01', 2258.00, '', 'Active'),
(3386, 122383, 'Water Electricity', '2019-03-01', 100.00, '', 'Active'),
(3387, 122383, 'Maintenance', '2019-03-01', 150.00, '', 'Active'),
(3388, 122383, 'Total Charges', '2019-03-01', 3308.00, '', 'Active'),
(3389, 122384, 'Room Rent', '2019-03-01', 800.00, '', 'Active'),
(3390, 122384, 'Mess Bill', '2019-03-01', 2258.00, '', 'Active'),
(3391, 122384, 'Water Electricity', '2019-03-01', 100.00, '', 'Active'),
(3392, 122384, 'Maintenance', '2019-03-01', 150.00, '', 'Active'),
(3393, 122384, 'Total Charges', '2019-03-01', 3308.00, '', 'Active'),
(3394, 122385, 'Room Rent', '2019-03-01', 800.00, '', 'Active'),
(3395, 122385, 'Mess Bill', '2019-03-01', 2016.00, '', 'Active'),
(3396, 122385, 'Water Electricity', '2019-03-01', 100.00, '', 'Active'),
(3397, 122385, 'Maintenance', '2019-03-01', 150.00, '', 'Active'),
(3398, 122385, 'Total Charges', '2019-03-01', 3066.00, '', 'Active'),
(3399, 122386, 'Room Rent', '2019-03-01', 800.00, '', 'Active'),
(3400, 122386, 'Mess Bill', '2019-03-01', 2177.00, '', 'Active'),
(3401, 122386, 'Water Electricity', '2019-03-01', 100.00, '', 'Active'),
(3402, 122386, 'Maintenance', '2019-03-01', 150.00, '', 'Active'),
(3403, 122386, 'Total Charges', '2019-03-01', 3227.00, '', 'Active'),
(3404, 122387, 'Room Rent', '2019-03-01', 800.00, '', 'Active'),
(3405, 122387, 'Mess Bill', '2019-03-01', 2258.00, '', 'Active'),
(3406, 122387, 'Water Electricity', '2019-03-01', 100.00, '', 'Active'),
(3407, 122387, 'Maintenance', '2019-03-01', 150.00, '', 'Active'),
(3408, 122387, 'Total Charges', '2019-03-01', 3308.00, '', 'Active'),
(3409, 122388, 'Room Rent', '2019-03-01', 800.00, '', 'Active'),
(3410, 122388, 'Mess Bill', '2019-03-01', 2258.00, '', 'Active'),
(3411, 122388, 'Water Electricity', '2019-03-01', 100.00, '', 'Active'),
(3412, 122388, 'Maintenance', '2019-03-01', 150.00, '', 'Active'),
(3413, 122388, 'Total Charges', '2019-03-01', 3308.00, '', 'Active'),
(3414, 122389, 'Room Rent', '2019-03-01', 800.00, '', 'Active'),
(3415, 122389, 'Mess Bill', '2019-03-01', 2177.00, '', 'Active'),
(3416, 122389, 'Water Electricity', '2019-03-01', 100.00, '', 'Active'),
(3417, 122389, 'Maintenance', '2019-03-01', 150.00, '', 'Active'),
(3418, 122389, 'Total Charges', '2019-03-01', 3227.00, '', 'Active'),
(3419, 122390, 'Room Rent', '2019-03-01', 800.00, '', 'Active'),
(3420, 122390, 'Mess Bill', '2019-03-01', 2419.00, '', 'Active'),
(3421, 122390, 'Water Electricity', '2019-03-01', 100.00, '', 'Active'),
(3422, 122390, 'Maintenance', '2019-03-01', 150.00, '', 'Active'),
(3423, 122390, 'Total Charges', '2019-03-01', 3469.00, '', 'Active'),
(3424, 122391, 'Room Rent', '2019-03-01', 800.00, '', 'Active'),
(3425, 122391, 'Mess Bill', '2019-03-01', 2258.00, '', 'Active'),
(3426, 122391, 'Water Electricity', '2019-03-01', 100.00, '', 'Active'),
(3427, 122391, 'Maintenance', '2019-03-01', 150.00, '', 'Active'),
(3428, 122391, 'Total Charges', '2019-03-01', 3308.00, '', 'Active'),
(3429, 122398, 'Room Rent', '2019-03-01', 800.00, '', 'Active'),
(3430, 122398, 'Mess Bill', '2019-03-01', 0.00, '', 'Active'),
(3431, 122398, 'Water Electricity', '2019-03-01', 100.00, '', 'Active'),
(3432, 122398, 'Maintenance', '2019-03-01', 150.00, '', 'Active'),
(3433, 122398, 'Total Charges', '2019-03-01', 1050.00, '', 'Active'),
(3434, 122405, 'Room Rent', '2019-03-01', 800.00, '', 'Active'),
(3435, 122405, 'Mess Bill', '2019-03-01', 0.00, '', 'Active'),
(3436, 122405, 'Water Electricity', '2019-03-01', 100.00, '', 'Active'),
(3437, 122405, 'Maintenance', '2019-03-01', 150.00, '', 'Active'),
(3438, 122405, 'Total Charges', '2019-03-01', 1050.00, '', 'Active'),
(3439, 122406, 'Room Rent', '2019-03-01', 800.00, '', 'Active'),
(3440, 122406, 'Mess Bill', '2019-03-01', 0.00, '', 'Active'),
(3441, 122406, 'Water Electricity', '2019-03-01', 100.00, '', 'Active'),
(3442, 122406, 'Maintenance', '2019-03-01', 150.00, '', 'Active'),
(3443, 122406, 'Total Charges', '2019-03-01', 1050.00, '', 'Active'),
(3444, 122407, 'Room Rent', '2019-03-01', 800.00, '', 'Active'),
(3445, 122407, 'Mess Bill', '2019-03-01', 0.00, '', 'Active'),
(3446, 122407, 'Water Electricity', '2019-03-01', 100.00, '', 'Active'),
(3447, 122407, 'Maintenance', '2019-03-01', 150.00, '', 'Active'),
(3448, 122407, 'Total Charges', '2019-03-01', 1050.00, '', 'Active'),
(3449, 122408, 'Room Rent', '2019-03-01', 800.00, '', 'Active'),
(3450, 122408, 'Mess Bill', '2019-03-01', 0.00, '', 'Active'),
(3451, 122408, 'Water Electricity', '2019-03-01', 100.00, '', 'Active'),
(3452, 122408, 'Maintenance', '2019-03-01', 150.00, '', 'Active'),
(3453, 122408, 'Total Charges', '2019-03-01', 1050.00, '', 'Active'),
(3454, 122410, 'Room Rent', '2019-03-01', 800.00, '', 'Active'),
(3455, 122410, 'Mess Bill', '2019-03-01', 0.00, '', 'Active'),
(3456, 122410, 'Water Electricity', '2019-03-01', 100.00, '', 'Active'),
(3457, 122410, 'Maintenance', '2019-03-01', 150.00, '', 'Active'),
(3458, 122410, 'Total Charges', '2019-03-01', 1050.00, '', 'Active'),
(3459, 0, 'Room rent', '2019-01-01', 750.00, '', 'Charges'),
(3460, 0, 'Mess Bill', '2019-01-01', 100.00, '', 'Charges'),
(3461, 0, 'Water Electricity', '2019-01-01', 20.00, '', 'Charges'),
(3462, 0, 'Maintenance', '2019-01-01', 25.00, '', 'Charges'),
(3463, 0, 'Total Charges', '2019-01-01', 895.00, '', 'Charges'),
(3464, 122383, 'Room Rent', '2019-01-01', 750.00, '', 'Active'),
(3465, 122383, 'Mess Bill', '2019-01-01', 0.00, '', 'Active'),
(3466, 122383, 'Water Electricity', '2019-01-01', 20.00, '', 'Active'),
(3467, 122383, 'Maintenance', '2019-01-01', 25.00, '', 'Active'),
(3468, 122383, 'Total Charges', '2019-01-01', 795.00, '', 'Active'),
(3469, 122384, 'Room Rent', '2019-01-01', 750.00, '', 'Active'),
(3470, 122384, 'Mess Bill', '2019-01-01', 0.00, '', 'Active'),
(3471, 122384, 'Water Electricity', '2019-01-01', 20.00, '', 'Active'),
(3472, 122384, 'Maintenance', '2019-01-01', 25.00, '', 'Active'),
(3473, 122384, 'Total Charges', '2019-01-01', 795.00, '', 'Active'),
(3474, 122385, 'Room Rent', '2019-01-01', 750.00, '', 'Active'),
(3475, 122385, 'Mess Bill', '2019-01-01', 0.00, '', 'Active'),
(3476, 122385, 'Water Electricity', '2019-01-01', 20.00, '', 'Active'),
(3477, 122385, 'Maintenance', '2019-01-01', 25.00, '', 'Active'),
(3478, 122385, 'Total Charges', '2019-01-01', 795.00, '', 'Active'),
(3479, 122386, 'Room Rent', '2019-01-01', 750.00, '', 'Active'),
(3480, 122386, 'Mess Bill', '2019-01-01', 0.00, '', 'Active'),
(3481, 122386, 'Water Electricity', '2019-01-01', 20.00, '', 'Active'),
(3482, 122386, 'Maintenance', '2019-01-01', 25.00, '', 'Active'),
(3483, 122386, 'Total Charges', '2019-01-01', 795.00, '', 'Active'),
(3484, 122387, 'Room Rent', '2019-01-01', 750.00, '', 'Active'),
(3485, 122387, 'Mess Bill', '2019-01-01', 0.00, '', 'Active'),
(3486, 122387, 'Water Electricity', '2019-01-01', 20.00, '', 'Active'),
(3487, 122387, 'Maintenance', '2019-01-01', 25.00, '', 'Active'),
(3488, 122387, 'Total Charges', '2019-01-01', 795.00, '', 'Active'),
(3489, 122388, 'Room Rent', '2019-01-01', 750.00, '', 'Active'),
(3490, 122388, 'Mess Bill', '2019-01-01', 0.00, '', 'Active'),
(3491, 122388, 'Water Electricity', '2019-01-01', 20.00, '', 'Active'),
(3492, 122388, 'Maintenance', '2019-01-01', 25.00, '', 'Active'),
(3493, 122388, 'Total Charges', '2019-01-01', 795.00, '', 'Active'),
(3494, 122389, 'Room Rent', '2019-01-01', 750.00, '', 'Active'),
(3495, 122389, 'Mess Bill', '2019-01-01', 0.00, '', 'Active'),
(3496, 122389, 'Water Electricity', '2019-01-01', 20.00, '', 'Active'),
(3497, 122389, 'Maintenance', '2019-01-01', 25.00, '', 'Active'),
(3498, 122389, 'Total Charges', '2019-01-01', 795.00, '', 'Active'),
(3499, 122390, 'Room Rent', '2019-01-01', 750.00, '', 'Active'),
(3500, 122390, 'Mess Bill', '2019-01-01', 0.00, '', 'Active'),
(3501, 122390, 'Water Electricity', '2019-01-01', 20.00, '', 'Active'),
(3502, 122390, 'Maintenance', '2019-01-01', 25.00, '', 'Active'),
(3503, 122390, 'Total Charges', '2019-01-01', 795.00, '', 'Active'),
(3504, 122391, 'Room Rent', '2019-01-01', 750.00, '', 'Active'),
(3505, 122391, 'Mess Bill', '2019-01-01', 0.00, '', 'Active'),
(3506, 122391, 'Water Electricity', '2019-01-01', 20.00, '', 'Active'),
(3507, 122391, 'Maintenance', '2019-01-01', 25.00, '', 'Active'),
(3508, 122391, 'Total Charges', '2019-01-01', 795.00, '', 'Active'),
(3509, 122398, 'Room Rent', '2019-01-01', 750.00, '', 'Active'),
(3510, 122398, 'Mess Bill', '2019-01-01', 0.00, '', 'Active'),
(3511, 122398, 'Water Electricity', '2019-01-01', 20.00, '', 'Active'),
(3512, 122398, 'Maintenance', '2019-01-01', 25.00, '', 'Active'),
(3513, 122398, 'Total Charges', '2019-01-01', 795.00, '', 'Active'),
(3514, 122405, 'Room Rent', '2019-01-01', 750.00, '', 'Active'),
(3515, 122405, 'Mess Bill', '2019-01-01', 0.00, '', 'Active'),
(3516, 122405, 'Water Electricity', '2019-01-01', 20.00, '', 'Active'),
(3517, 122405, 'Maintenance', '2019-01-01', 25.00, '', 'Active'),
(3518, 122405, 'Total Charges', '2019-01-01', 795.00, '', 'Active'),
(3519, 122406, 'Room Rent', '2019-01-01', 750.00, '', 'Active'),
(3520, 122406, 'Mess Bill', '2019-01-01', 0.00, '', 'Active'),
(3521, 122406, 'Water Electricity', '2019-01-01', 20.00, '', 'Active'),
(3522, 122406, 'Maintenance', '2019-01-01', 25.00, '', 'Active'),
(3523, 122406, 'Total Charges', '2019-01-01', 795.00, '', 'Active'),
(3524, 122407, 'Room Rent', '2019-01-01', 750.00, '', 'Active'),
(3525, 122407, 'Mess Bill', '2019-01-01', 0.00, '', 'Active'),
(3526, 122407, 'Water Electricity', '2019-01-01', 20.00, '', 'Active'),
(3527, 122407, 'Maintenance', '2019-01-01', 25.00, '', 'Active'),
(3528, 122407, 'Total Charges', '2019-01-01', 795.00, '', 'Active'),
(3529, 122408, 'Room Rent', '2019-01-01', 750.00, '', 'Active'),
(3530, 122408, 'Mess Bill', '2019-01-01', 0.00, '', 'Active'),
(3531, 122408, 'Water Electricity', '2019-01-01', 20.00, '', 'Active'),
(3532, 122408, 'Maintenance', '2019-01-01', 25.00, '', 'Active'),
(3533, 122408, 'Total Charges', '2019-01-01', 795.00, '', 'Active'),
(3534, 122410, 'Room Rent', '2019-01-01', 750.00, '', 'Active'),
(3535, 122410, 'Mess Bill', '2019-01-01', 0.00, '', 'Active'),
(3536, 122410, 'Water Electricity', '2019-01-01', 20.00, '', 'Active'),
(3537, 122410, 'Maintenance', '2019-01-01', 25.00, '', 'Active'),
(3538, 122410, 'Total Charges', '2019-01-01', 795.00, '', 'Active'),
(3555, 122384, 'Penalty', '2019-03-01', 25.00, '', 'Active'),
(3556, 122385, 'Penalty', '2019-03-01', 25.00, '', 'Active'),
(3557, 122386, 'Penalty', '2019-03-01', 25.00, '', 'Active'),
(3558, 122387, 'Penalty', '2019-03-01', 25.00, '', 'Active'),
(3559, 122388, 'Penalty', '2019-03-01', 25.00, '', 'Active'),
(3560, 122389, 'Penalty', '2019-03-01', 25.00, '', 'Active'),
(3561, 122390, 'Penalty', '2019-03-01', 25.00, '', 'Active'),
(3562, 122391, 'Penalty', '2019-03-01', 25.00, '', 'Active'),
(3563, 122394, 'Penalty', '2019-03-01', 25.00, '', 'Active'),
(3564, 122398, 'Penalty', '2019-03-01', 25.00, '', 'Active'),
(3565, 122405, 'Penalty', '2019-03-01', 25.00, '', 'Active'),
(3566, 122406, 'Penalty', '2019-03-01', 25.00, '', 'Active'),
(3567, 122407, 'Penalty', '2019-03-01', 25.00, '', 'Active'),
(3568, 122408, 'Penalty', '2019-03-01', 25.00, '', 'Active'),
(3569, 122410, 'Penalty', '2019-03-01', 25.00, '', 'Active'),
(3680, 0, 'Room rent', '2021-04-01', 10.00, '', 'Charges'),
(3681, 0, 'Mess Bill', '2021-04-01', 200.00, '', 'Charges'),
(3682, 0, 'Water Electricity', '2021-04-01', 30.00, '', 'Charges'),
(3683, 0, 'Maintenance', '2021-04-01', 40.00, '', 'Charges'),
(3684, 0, 'Total Charges', '2021-04-01', 280.00, '', 'Charges'),
(3685, 122412, 'Room Rent', '2021-04-01', 10.00, 'test', 'Active'),
(3686, 122412, 'Mess Bill', '2021-04-01', 6.00, 'test', 'Active'),
(3687, 122412, 'Water Electricity', '2021-04-01', 30.00, 'test', 'Active'),
(3688, 122412, 'Maintenance', '2021-04-01', 40.00, 'test', 'Active'),
(3689, 122412, 'Total Charges', '2021-04-01', 86.00, 'test', 'Active'),
(3690, 122413, 'Room Rent', '2021-04-01', 10.00, 'test', 'Active'),
(3691, 122413, 'Mess Bill', '2021-04-01', 6.00, 'test', 'Active'),
(3692, 122413, 'Water Electricity', '2021-04-01', 30.00, 'test', 'Active'),
(3693, 122413, 'Maintenance', '2021-04-01', 40.00, 'test', 'Active'),
(3694, 122413, 'Total Charges', '2021-04-01', 86.00, 'test', 'Active'),
(3752, 122383, 'Penalty', '2021-04-01', 0.00, '', 'Active'),
(3753, 122384, 'Penalty', '2021-04-01', 0.00, '', 'Active'),
(3754, 122385, 'Penalty', '2021-04-01', 0.00, '', 'Active'),
(3755, 122386, 'Penalty', '2021-04-01', 0.00, '', 'Active'),
(3756, 122387, 'Penalty', '2021-04-01', 0.00, '', 'Active'),
(3757, 122388, 'Penalty', '2021-04-01', 0.00, '', 'Active'),
(3758, 122389, 'Penalty', '2021-04-01', 0.00, '', 'Active'),
(3759, 122390, 'Penalty', '2021-04-01', 0.00, '', 'Active'),
(3760, 122391, 'Penalty', '2021-04-01', 0.00, '', 'Active'),
(3761, 122394, 'Penalty', '2021-04-01', 0.00, '', 'Active'),
(3762, 122398, 'Penalty', '2021-04-01', 0.00, '', 'Active'),
(3763, 122405, 'Penalty', '2021-04-01', 0.00, '', 'Active'),
(3764, 122406, 'Penalty', '2021-04-01', 0.00, '', 'Active'),
(3765, 122407, 'Penalty', '2021-04-01', 0.00, '', 'Active'),
(3766, 122408, 'Penalty', '2021-04-01', 0.00, '', 'Active'),
(3767, 122410, 'Penalty', '2021-04-01', 0.00, '', 'Active'),
(3768, 122411, 'Penalty', '2021-04-01', 0.00, '', 'Active'),
(3769, 122412, 'Penalty', '2021-04-01', 0.00, '', 'Active'),
(3770, 122413, 'Penalty', '2021-04-01', 0.00, '', 'Active'),
(3811, 122383, 'Penalty', '0000-00-00', 467925.00, '', 'Active'),
(3812, 122384, 'Penalty', '0000-00-00', 467925.00, '', 'Active'),
(3813, 122385, 'Penalty', '0000-00-00', 467925.00, '', 'Active'),
(3814, 122386, 'Penalty', '0000-00-00', 467925.00, '', 'Active'),
(3815, 122387, 'Penalty', '0000-00-00', 467925.00, '', 'Active'),
(3816, 122388, 'Penalty', '0000-00-00', 467925.00, '', 'Active'),
(3817, 122389, 'Penalty', '0000-00-00', 467925.00, '', 'Active'),
(3818, 122390, 'Penalty', '0000-00-00', 467925.00, '', 'Active'),
(3819, 122391, 'Penalty', '0000-00-00', 467925.00, '', 'Active'),
(3820, 122394, 'Penalty', '0000-00-00', 467925.00, '', 'Active'),
(3821, 122398, 'Penalty', '0000-00-00', 467925.00, '', 'Active'),
(3822, 122405, 'Penalty', '0000-00-00', 467925.00, '', 'Active'),
(3823, 122406, 'Penalty', '0000-00-00', 467925.00, '', 'Active'),
(3824, 122407, 'Penalty', '0000-00-00', 467925.00, '', 'Active'),
(3825, 122408, 'Penalty', '0000-00-00', 467925.00, '', 'Active'),
(3826, 122410, 'Penalty', '0000-00-00', 467925.00, '', 'Active'),
(3827, 122411, 'Penalty', '0000-00-00', 467925.00, '', 'Active'),
(3828, 122412, 'Penalty', '0000-00-00', 467925.00, '', 'Active'),
(3829, 122413, 'Penalty', '0000-00-00', 467925.00, '', 'Active'),
(3830, 122414, 'Penalty', '0000-00-00', 467925.00, '', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `photo`
--

CREATE TABLE `photo` (
  `photo_id` int(11) NOT NULL,
  `gallery_type_id` int(11) NOT NULL,
  `photo_title` varchar(100) NOT NULL,
  `photo_img` varchar(300) NOT NULL,
  `photo_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `photo`
--

INSERT INTO `photo` (`photo_id`, `gallery_type_id`, `photo_title`, `photo_img`, `photo_status`) VALUES
(7, 4, 'Girls Hostel 3', '1803769584Girl_1.jpg', 'Published'),
(8, 4, 'MESS', '2079655783Girl_2.jpg', 'Published'),
(9, 4, 'STUDY ROOM', '633213291Girl_3.jpg', 'Published'),
(10, 4, 'GYM GIRLS HOSTEL', '1434822460gym girls.jpg', 'Published'),
(11, 4, 'TV ROOM', '199992883Girl_4.jpg', 'Published'),
(12, 4, 'GIRLS HOSTEL 1', '79313339FIRSTYR.PNG', 'Published'),
(13, 4, 'GH3 NIGHT', '2022696542GH3 NGT.jpg', 'Published'),
(14, 4, 'YOGA', '1970679090YOGA DAY.jpg', 'Published'),
(15, 4, 'GARBA1', '1733040252garba night.jpg', 'Published'),
(16, 4, 'GARBA2', '1729183179garba1.jpg', 'Published'),
(17, 4, 'GARBA', '1344909672gb.jpg', 'Published'),
(18, 4, 'GARBA', '683692506garbaa.jpg', 'Published'),
(19, 4, 'GIRLS HOSTEL 1', '1659159692girls-hostel.jpg', 'Published'),
(20, 4, 'GIRL BADMINTON COURT', '346809477GIRL BADMINTON COURT.jpg', 'Published'),
(21, 4, 'READING ROOM', '2010324834TV ROOM.jpg', 'Published'),
(22, 4, 'GH3', '238383435GH3...jpg', 'Published'),
(23, 4, 'FIRST YEAR HOSTEL', '71589671girls-hostel.jpg', 'Published'),
(24, 4, 'BASKETBALL', '1884400839basketball.jpg', 'Published'),
(25, 4, 'BADMINTON', '828006308BD GIRL.jpg', 'Published'),
(26, 4, 'KHO KHO', '1664053453kho kho.jpg', 'Published'),
(27, 4, 'GH2', '303001188LIB.jpg', 'Published'),
(28, 4, 'LIBRARY', '470006417LIBRARY.jpg', 'Published'),
(29, 4, 'BASKETBALL', '2074898427basketball.jpg', 'Published'),
(30, 4, 'OUTSIDE VIEW', '1176586520FIRSTYR.PNG', 'Published'),
(31, 4, 'ROOM GIRLS', '1072477970BOYDS HOPSTEL ROOM.jpg', 'Published'),
(32, 5, 'GYM', '712954339boy_5.jpg', 'Published'),
(33, 5, 'BOYS HOSTEL', '599138433BOYDS HOPSTEL ROOM.jpg', 'Published'),
(34, 5, 'TV ROOM', '1712258049TV ROOM BOYS1.jpg', 'Published'),
(35, 5, 'SNOOKER', '1178208844SNOOKER.PNG', 'Published'),
(36, 5, 'YOGA', '1712269543yoga.jpg', 'Published'),
(37, 5, 'BADMINTON COURT', '1653930790boys hostel badminton.jpg', 'Published'),
(38, 5, 'HOSTEL GROUND', '1769757300BOYS HOSTEL GROUND.jpg', 'Published'),
(39, 5, 'MESS', '2085981489BOYS MESS.jpg', 'Published'),
(40, 5, 'NIGHT VIEW', '1069783532NIGHT VIEW.PNG', 'Published'),
(41, 5, 'GYM', '1937873700gym boys.jpg', 'Published'),
(42, 5, 'KHO-KHO', '1352957844kho kho.jpg', 'Published'),
(43, 5, 'SPORTS ROOM', '530090798boy_5.jpg', 'Published'),
(44, 5, 'FAREWELL', '827767257gh3 farewell.jpg', 'Published'),
(45, 5, 'FRESHER', '302686100freshers2.jpg', 'Published'),
(46, 5, 'FRESHER', '805683224freshers boys hostel.jpg', 'Published'),
(47, 5, 'FRESHER', '1891621087freshers2.jpg', 'Published'),
(48, 5, 'SPORTS CLUB', '1514778589boys hostel badminton.jpg', 'Published'),
(49, 5, 'TV ROOM BOYS', '572958658TV ROOM BOYS1.jpg', 'Published'),
(50, 5, 'FRESHER', '1334412686FRESHER.jpg', 'Published');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_id` int(10) NOT NULL,
  `block_id` int(10) NOT NULL,
  `fee_str_id` int(10) NOT NULL,
  `room_no` int(10) NOT NULL,
  `no_of_beds` int(5) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_id`, `block_id`, `fee_str_id`, `room_no`, `no_of_beds`, `description`, `status`) VALUES
(21, 1, 3, 102, 1, 'Single occupancy room', 'Active'),
(22, 1, 3, 102, 1, 'Single occupancy', 'Active'),
(25, 1, 3, 105, 1, 'Single occupancy', 'Active'),
(26, 1, 3, 106, 1, 'Single occupancy', 'Active'),
(27, 1, 3, 107, 1, 'Single occupancy', 'Active'),
(28, 1, 3, 108, 1, 'Single occupancy', 'Active'),
(29, 1, 3, 109, 1, 'Single occupancy', 'Active'),
(30, 1, 3, 110, 1, 'Single occupancy', 'Active'),
(200, 2, 2, 21, 3, '', 'active'),
(202, 2, 11, 115, 2, '', 'Active'),
(203, 2, 6, 109, 3, '', 'Active'),
(204, 2, 13, 120, 15, '', 'Active'),
(205, 2, 14, 333, 3, '', 'Active'),
(206, 1, 15, 180, 2, '', 'Active'),
(207, 2, 16, 300, 15, '', 'Active'),
(208, 2, 17, 400, 3, '', 'Active'),
(210, 2, 16, 100, 20, '', 'Active'),
(212, 1, 5, 566, 2, 'go', 'Active'),
(213, 1, 17, 139, 3, '', 'Active'),
(216, 3, 26, 3, 3, '', 'Active'),
(217, 3, 27, 4, 15, '', 'Active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admission`
--
ALTER TABLE `admission`
  ADD PRIMARY KEY (`admission_id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`attendanceid`);

--
-- Indexes for table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`billid`);

--
-- Indexes for table `blocks`
--
ALTER TABLE `blocks`
  ADD PRIMARY KEY (`block_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`eventid`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedback_id`);

--
-- Indexes for table `fees`
--
ALTER TABLE `fees`
  ADD PRIMARY KEY (`fee_id`);

--
-- Indexes for table `fees_structure`
--
ALTER TABLE `fees_structure`
  ADD PRIMARY KEY (`fee_str_id`);

--
-- Indexes for table `gallery_type`
--
ALTER TABLE `gallery_type`
  ADD PRIMARY KEY (`gallery_type_id`);

--
-- Indexes for table `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`guestid`);

--
-- Indexes for table `hosteller`
--
ALTER TABLE `hosteller`
  ADD PRIMARY KEY (`hostellerid`);

--
-- Indexes for table `leave_application`
--
ALTER TABLE `leave_application`
  ADD PRIMARY KEY (`leave_application_id`);

--
-- Indexes for table `mess_bill`
--
ALTER TABLE `mess_bill`
  ADD PRIMARY KEY (`mess_bill_id`);

--
-- Indexes for table `photo`
--
ALTER TABLE `photo`
  ADD PRIMARY KEY (`photo_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admission`
--
ALTER TABLE `admission`
  MODIFY `admission_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122416;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `attendanceid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=876;

--
-- AUTO_INCREMENT for table `billing`
--
ALTER TABLE `billing`
  MODIFY `billid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `blocks`
--
ALTER TABLE `blocks`
  MODIFY `block_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `emp_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `eventid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1052;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedback_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `fees`
--
ALTER TABLE `fees`
  MODIFY `fee_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `fees_structure`
--
ALTER TABLE `fees_structure`
  MODIFY `fee_str_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `gallery_type`
--
ALTER TABLE `gallery_type`
  MODIFY `gallery_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `guest`
--
ALTER TABLE `guest`
  MODIFY `guestid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `hosteller`
--
ALTER TABLE `hosteller`
  MODIFY `hostellerid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3270;

--
-- AUTO_INCREMENT for table `leave_application`
--
ALTER TABLE `leave_application`
  MODIFY `leave_application_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mess_bill`
--
ALTER TABLE `mess_bill`
  MODIFY `mess_bill_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3831;

--
-- AUTO_INCREMENT for table `photo`
--
ALTER TABLE `photo`
  MODIFY `photo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `room_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
