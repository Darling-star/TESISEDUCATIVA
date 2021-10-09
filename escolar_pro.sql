-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-10-2021 a las 23:31:00
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `escolar_pro`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alert`
--

CREATE TABLE `alert` (
  `alertID` int(11) UNSIGNED NOT NULL,
  `noticeID` int(128) NOT NULL,
  `username` varchar(128) NOT NULL,
  `usertype` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `alert`
--

INSERT INTO `alert` (`alertID`, `noticeID`, `username`, `usertype`) VALUES
(1, 1, 'admin', 'Administrador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `assignment`
--

CREATE TABLE `assignment` (
  `assignmentID` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `description` text NOT NULL,
  `deadlinedate` date NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `originalfile` text NOT NULL,
  `file` text NOT NULL,
  `classesID` longtext NOT NULL,
  `schoolyearID` int(11) NOT NULL,
  `sectionID` longtext,
  `subjectID` longtext,
  `assignusertypeID` int(11) DEFAULT NULL,
  `assignuserID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `assignment`
--

INSERT INTO `assignment` (`assignmentID`, `title`, `description`, `deadlinedate`, `usertypeID`, `userID`, `originalfile`, `file`, `classesID`, `schoolyearID`, `sectionID`, `subjectID`, `assignusertypeID`, `assignuserID`) VALUES
(1, 'Idioma', 'lenguas', '2021-09-23', 1, 1, '1.png', '93476b188749faab9f897ee8bcb6beb5c6d25c14718c05555fb99f5fb5b5e2f5a8e97f154223ac7cd4cbb8b65db5cbb256145a45968aa047ceefa46e0dc90bfe.png', '2', 1, '[\"2\"]', '1', 0, 0),
(2, 'EXAMENES', 'segundo examen', '2021-09-30', 1, 1, 'JEST.pdf', '3617f88e87c6107afccf1825f59139969849f81de03037a0ca9977fcfc8a862d08ef7099f8a2e144cab8e1d9c53d2afe1b29509cb14e0eed3858ca6483bada8c.pdf', '2', 1, '[\"2\"]', '1', 0, 0),
(4, 'Actividad 1', 'Visto en clase', '2021-09-23', 1, 1, 'darling_SGanttChart.pdf', 'aa3832870791fbbafd60b308d7449f013c08e63d3ff61e420ecf75ea8051c7fb8c1abed6bc344ccabec0e1d82255f150c1d7ec7ce53edcbe04fbc8ac20155296.pdf', '4', 1, '[\"4\"]', '4', 0, 0),
(6, 'examen', '1', '2021-10-20', 2, 2, 'logo.png', 'dff4c4f9375a3324949e3f08e3c6501939402dfd7fb4059251bc29b594d889f3849e19e3a7e008858ad1c1bfe19ecbe42c6afd2c41a34ecf93dd08cf029ed893.png', '3', 1, '[\"3\"]', '2', 0, 0),
(7, 'examen', '1', '2021-10-20', 2, 2, 'default.png', '52883dfaa578736848ca5b440572b5c8d0220f1e688d6b7ced31d7ffcea96d4ed7580ae9f1c07fac6505267d61b3e2eaafb55003b0847a621b6ac6abcae5a5eb.png', '3', 1, '[\"3\"]', '2', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `assignmentanswer`
--

CREATE TABLE `assignmentanswer` (
  `assignmentanswerID` int(11) NOT NULL,
  `assignmentID` int(11) NOT NULL,
  `schoolyearID` int(11) NOT NULL,
  `uploaderID` int(11) NOT NULL,
  `uploadertypeID` int(11) NOT NULL,
  `answerfile` text NOT NULL,
  `answerfileoriginal` text NOT NULL,
  `answerdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `assignmentanswer`
--

INSERT INTO `assignmentanswer` (`assignmentanswerID`, `assignmentID`, `schoolyearID`, `uploaderID`, `uploadertypeID`, `answerfile`, `answerfileoriginal`, `answerdate`) VALUES
(1, 6, 1, 11, 3, '420e5fd17c0dbab44bc30a1f6f2eb2d7ffd5fe2760093509fb67fb07461ad4a2eefb457e9bb7510147d01c6ce20d15ec7e5b5931fa2236844dd86899c2a8d74b.png', 'holiday.png', '2021-10-09'),
(2, 7, 1, 11, 3, '644fded6ca20a839ab26618dbdff8c04cfa7619228623106c64c639396b6ffdcc7610970402ccb73d89000d83b2ef8977f102fced36501377902e27285ccde53.png', 'logo.png', '2021-10-09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `attendance`
--

CREATE TABLE `attendance` (
  `attendanceID` int(200) UNSIGNED NOT NULL,
  `schoolyearID` int(11) NOT NULL,
  `studentID` int(11) NOT NULL,
  `classesID` int(11) NOT NULL,
  `sectionID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `usertype` varchar(20) NOT NULL,
  `monthyear` varchar(10) NOT NULL,
  `a1` varchar(3) DEFAULT NULL,
  `a2` varchar(3) DEFAULT NULL,
  `a3` varchar(3) DEFAULT NULL,
  `a4` varchar(3) DEFAULT NULL,
  `a5` varchar(3) DEFAULT NULL,
  `a6` varchar(3) DEFAULT NULL,
  `a7` varchar(3) DEFAULT NULL,
  `a8` varchar(3) DEFAULT NULL,
  `a9` varchar(3) DEFAULT NULL,
  `a10` varchar(3) DEFAULT NULL,
  `a11` varchar(3) DEFAULT NULL,
  `a12` varchar(3) DEFAULT NULL,
  `a13` varchar(3) DEFAULT NULL,
  `a14` varchar(3) DEFAULT NULL,
  `a15` varchar(3) DEFAULT NULL,
  `a16` varchar(3) DEFAULT NULL,
  `a17` varchar(3) DEFAULT NULL,
  `a18` varchar(3) DEFAULT NULL,
  `a19` varchar(3) DEFAULT NULL,
  `a20` varchar(3) DEFAULT NULL,
  `a21` varchar(3) DEFAULT NULL,
  `a22` varchar(3) DEFAULT NULL,
  `a23` varchar(3) DEFAULT NULL,
  `a24` varchar(3) DEFAULT NULL,
  `a25` varchar(3) DEFAULT NULL,
  `a26` varchar(3) DEFAULT NULL,
  `a27` varchar(3) DEFAULT NULL,
  `a28` varchar(3) DEFAULT NULL,
  `a29` varchar(3) DEFAULT NULL,
  `a30` varchar(3) DEFAULT NULL,
  `a31` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `automation_rec`
--

CREATE TABLE `automation_rec` (
  `automation_recID` int(11) UNSIGNED NOT NULL,
  `studentID` int(11) NOT NULL,
  `date` date NOT NULL,
  `day` varchar(3) NOT NULL,
  `month` varchar(3) NOT NULL,
  `year` year(4) NOT NULL,
  `nofmodule` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `automation_shudulu`
--

CREATE TABLE `automation_shudulu` (
  `automation_shuduluID` int(11) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `day` varchar(3) NOT NULL,
  `month` varchar(3) NOT NULL,
  `year` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `automation_shudulu`
--

INSERT INTO `automation_shudulu` (`automation_shuduluID`, `date`, `day`, `month`, `year`) VALUES
(1, '2017-11-05', '05', '11', 2017),
(2, '2021-09-11', '11', '09', 2021),
(3, '2021-10-09', '09', '10', 2021);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `book`
--

CREATE TABLE `book` (
  `bookID` int(11) UNSIGNED NOT NULL,
  `book` varchar(60) NOT NULL,
  `subject_code` tinytext NOT NULL,
  `author` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `due_quantity` int(11) NOT NULL,
  `rack` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

CREATE TABLE `category` (
  `categoryID` int(11) UNSIGNED NOT NULL,
  `hostelID` int(11) NOT NULL,
  `class_type` varchar(60) NOT NULL,
  `hbalance` varchar(20) NOT NULL,
  `note` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `classes`
--

CREATE TABLE `classes` (
  `classesID` int(11) UNSIGNED NOT NULL,
  `classes` varchar(60) NOT NULL,
  `classes_numeric` int(11) NOT NULL,
  `teacherID` int(11) NOT NULL,
  `studentmaxID` int(11) DEFAULT NULL,
  `note` text,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_username` varchar(40) NOT NULL,
  `create_usertype` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `classes`
--

INSERT INTO `classes` (`classesID`, `classes`, `classes_numeric`, `teacherID`, `studentmaxID`, `note`, `create_date`, `modify_date`, `create_userID`, `create_username`, `create_usertype`) VALUES
(1, 'Matemáticas', 10, 1, 999999999, '100', '2021-09-20 06:31:20', '2021-09-21 01:27:51', 1, 'admin', 'Administrador'),
(2, 'Idioma', 0, 1, 999999999, '100', '2021-09-21 01:27:36', '2021-09-21 01:27:36', 1, 'admin', 'Administrador'),
(3, 'Matematica', 9, 2, 999999999, '100', '2021-09-22 08:24:14', '2021-10-09 03:06:49', 1, 'admin', 'Administrador'),
(4, 'filosofia', 1, 3, 999999999, '100', '2021-09-23 02:46:29', '2021-09-23 02:46:29', 1, 'admin', 'Administrador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conversations`
--

CREATE TABLE `conversations` (
  `id` int(11) NOT NULL,
  `status` int(11) DEFAULT '0',
  `draft` int(11) DEFAULT '0',
  `fav_status` int(11) DEFAULT '0',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modify_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conversation_msg`
--

CREATE TABLE `conversation_msg` (
  `msg_id` int(11) NOT NULL,
  `conversation_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `msg` text NOT NULL,
  `attach` text,
  `attach_file_name` text,
  `usertypeID` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modify_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conversation_user`
--

CREATE TABLE `conversation_user` (
  `conversation_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `is_sender` int(11) DEFAULT '0',
  `trash` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eattendance`
--

CREATE TABLE `eattendance` (
  `eattendanceID` int(200) UNSIGNED NOT NULL,
  `schoolyearID` int(11) NOT NULL,
  `examID` int(11) NOT NULL,
  `classesID` int(11) NOT NULL,
  `sectionID` int(11) NOT NULL,
  `subjectID` int(11) NOT NULL,
  `date` date NOT NULL,
  `studentID` int(11) DEFAULT NULL,
  `s_name` varchar(60) DEFAULT NULL,
  `eattendance` varchar(20) DEFAULT NULL,
  `year` year(4) NOT NULL,
  `eextra` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `eattendance`
--

INSERT INTO `eattendance` (`eattendanceID`, `schoolyearID`, `examID`, `classesID`, `sectionID`, `subjectID`, `date`, `studentID`, `s_name`, `eattendance`, `year`, `eextra`) VALUES
(1, 1, 9, 1, 1, 3, '2021-09-23', 8, 'meredith', 'Presente', 2021, NULL),
(2, 1, 9, 1, 1, 3, '2021-09-23', 9, 'yasmin', 'Presente', 2021, NULL),
(3, 1, 9, 1, 1, 3, '2021-09-23', 7, 'alfredo', 'Presente', 2021, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `event`
--

CREATE TABLE `event` (
  `eventID` int(11) UNSIGNED NOT NULL,
  `fdate` date NOT NULL,
  `ftime` time NOT NULL,
  `tdate` date NOT NULL,
  `ttime` time NOT NULL,
  `title` varchar(128) NOT NULL,
  `details` text NOT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventcounter`
--

CREATE TABLE `eventcounter` (
  `eventcounterID` int(11) UNSIGNED NOT NULL,
  `eventID` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `type` varchar(20) NOT NULL,
  `name` varchar(128) NOT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `eventcounter`
--

INSERT INTO `eventcounter` (`eventcounterID`, `eventID`, `username`, `type`, `name`, `photo`, `status`, `create_date`) VALUES
(1, 1, 'admin', 'Administrador', 'admin', 'defualt.png', 1, '2017-11-11 22:09:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exam`
--

CREATE TABLE `exam` (
  `examID` int(11) UNSIGNED NOT NULL,
  `exam` varchar(60) NOT NULL,
  `date` date NOT NULL,
  `note` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `exam`
--

INSERT INTO `exam` (`examID`, `exam`, `date`, `note`) VALUES
(2, '4º semestre', '2017-12-20', ''),
(3, '3º semestre', '2017-12-14', ''),
(8, '5º semestre', '2017-11-09', ''),
(9, 'matematicas', '2021-08-30', '10'),
(10, 'ciencias', '2021-08-30', '10'),
(11, 'Filosofia', '2021-09-27', '100');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `examschedule`
--

CREATE TABLE `examschedule` (
  `examscheduleID` int(11) UNSIGNED NOT NULL,
  `examID` int(11) NOT NULL,
  `classesID` int(11) NOT NULL,
  `sectionID` int(11) NOT NULL,
  `subjectID` int(11) NOT NULL,
  `edate` date NOT NULL,
  `examfrom` varchar(10) NOT NULL,
  `examto` varchar(10) NOT NULL,
  `room` tinytext,
  `schoolyearID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `examschedule`
--

INSERT INTO `examschedule` (`examscheduleID`, `examID`, `classesID`, `sectionID`, `subjectID`, `edate`, `examfrom`, `examto`, `room`, `schoolyearID`) VALUES
(1, 9, 1, 1, 3, '2021-10-05', '7:30 AM', '11:30 PM', '2', 1),
(2, 11, 4, 4, 4, '2021-09-23', '9:00 AM', '1:00 PM', '3', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `expense`
--

CREATE TABLE `expense` (
  `expenseID` int(11) UNSIGNED NOT NULL,
  `create_date` date NOT NULL,
  `date` date NOT NULL,
  `expenseday` varchar(11) NOT NULL,
  `expensemonth` varchar(11) NOT NULL,
  `expenseyear` year(4) NOT NULL,
  `expense` varchar(128) NOT NULL,
  `amount` double NOT NULL,
  `userID` int(11) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `uname` varchar(40) NOT NULL,
  `schoolyearID` int(11) NOT NULL,
  `note` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `feetypes`
--

CREATE TABLE `feetypes` (
  `feetypesID` int(11) UNSIGNED NOT NULL,
  `feetypes` varchar(60) NOT NULL,
  `note` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `feetypes`
--

INSERT INTO `feetypes` (`feetypesID`, `feetypes`, `note`) VALUES
(1, 'Transporte', ''),
(2, 'Comedor', ''),
(3, 'Sala de computacion', ''),
(4, 'Libros', ''),
(6, 'baile', NULL),
(7, 'clas', NULL),
(8, 'inglés', NULL),
(10, 'Clases de verano', NULL),
(11, 'Transporte', NULL),
(12, 'Cuota para el examen', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grade`
--

CREATE TABLE `grade` (
  `gradeID` int(11) UNSIGNED NOT NULL,
  `grade` varchar(60) NOT NULL,
  `point` varchar(11) NOT NULL,
  `gradefrom` int(11) NOT NULL,
  `gradeupto` int(11) NOT NULL,
  `note` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `grade`
--

INSERT INTO `grade` (`gradeID`, `grade`, `point`, `gradefrom`, `gradeupto`, `note`) VALUES
(1, 'Cuarto', '100', 1, 99, '100'),
(2, 'quinto', '99', 0, 100, '100');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hmember`
--

CREATE TABLE `hmember` (
  `hmemberID` int(11) UNSIGNED NOT NULL,
  `hostelID` int(11) NOT NULL,
  `categoryID` int(11) NOT NULL,
  `studentID` int(11) NOT NULL,
  `hbalance` varchar(20) DEFAULT NULL,
  `hjoindate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `holiday`
--

CREATE TABLE `holiday` (
  `holidayID` int(11) UNSIGNED NOT NULL,
  `schoolyearID` int(11) NOT NULL,
  `fdate` date NOT NULL,
  `tdate` date NOT NULL,
  `title` varchar(128) NOT NULL,
  `details` text NOT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hostel`
--

CREATE TABLE `hostel` (
  `hostelID` int(11) UNSIGNED NOT NULL,
  `name` varchar(128) NOT NULL,
  `htype` varchar(11) NOT NULL,
  `address` varchar(200) NOT NULL,
  `note` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `idmanager`
--

CREATE TABLE `idmanager` (
  `idmanagerID` int(11) NOT NULL,
  `schooltype` varchar(20) NOT NULL,
  `idtitle` varchar(128) NOT NULL,
  `idtype` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `idmanager`
--

INSERT INTO `idmanager` (`idmanagerID`, `schooltype`, `idtitle`, `idtype`) VALUES
(1, 'semesterbase', 'Year+Semester Code+Department Code+Student Max ID', 'schoolyear+semestercode+classes_numeric+studentmaxID'),
(2, 'semesterbase', 'Year+Department Code+Semester Code+Student Max ID', 'schoolyear+classes_numeric+semestercode+studentmaxID'),
(3, 'semesterbase', 'Year+Semester Code+Student Max ID', 'schoolyear+semestercode+studentmaxID'),
(4, 'semesterbase', 'Year+Department Code+Student Max ID', 'schoolyear+classes_numeric+studentmaxID'),
(5, 'semesterbase', 'Student Max ID+Year+Semester Code+Department Code', 'studentmaxID+schoolyear+semestercode+classes_numeric'),
(6, 'semesterbase', 'Student Max ID+Semester Code+Department Code+Year', 'studentmaxID+semestercode+classes_numeric+schoolyear'),
(7, 'semesterbase', 'Student Max ID+Semester Code+Department Code', 'studentmaxID+semestercode+classes_numeric'),
(8, 'semesterbase', 'Student Max ID+Department Code+Semester Code', 'studentmaxID+classes_numeric+semestercode'),
(9, 'semesterbase', 'Semester Code+Department Code+Student Max ID', 'semestercode+classes_numeric+studentmaxID'),
(10, 'semesterbase', 'Department Code+Semester Code+Student Max ID', 'classes_numeric+semestercode+studentmaxID'),
(11, 'semesterbase', 'Semester Code+Student Max ID', 'semestercode+studentmaxID'),
(12, 'semesterbase', 'Department Code+Student Max ID', 'classes_numeric+studentmaxID'),
(13, 'semesterbase', 'Student Max ID', 'studentmaxID'),
(14, 'classbase', 'Year+Class Numeric+Student Max ID', 'schoolyear+classes_numeric+studentmaxID'),
(15, 'Classbase', 'Class Numeric+Year+Student Max ID', 'classes_numeric+schoolyear+studentmaxID'),
(16, 'classbase', 'Year+Student Max ID', 'schoolyear+studentmaxID'),
(17, 'classbase', 'Class Numeric+Student Max ID', 'classes_numeric+studentmaxID'),
(18, 'classbase', 'Student Max ID', 'studentmaxID'),
(19, 'semesterbase', 'None', 'none'),
(20, 'classbase', 'None', 'none');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ini_config`
--

CREATE TABLE `ini_config` (
  `configID` int(11) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `config_key` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ini_config`
--

INSERT INTO `ini_config` (`configID`, `type`, `config_key`, `value`) VALUES
(6, 'stripe', 'stripe_secret', ''),
(8, 'stripe', 'stripe_demo', ''),
(13, 'stripe', 'stripe_status', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `invoice`
--

CREATE TABLE `invoice` (
  `invoiceID` int(11) UNSIGNED NOT NULL,
  `schoolyearID` int(11) NOT NULL,
  `classesID` int(11) NOT NULL,
  `studentID` int(11) NOT NULL,
  `feetype` varchar(128) NOT NULL,
  `amount` double NOT NULL,
  `discount` double NOT NULL DEFAULT '0',
  `userID` int(11) DEFAULT NULL,
  `usertypeID` int(11) DEFAULT NULL,
  `uname` varchar(60) DEFAULT NULL,
  `date` date NOT NULL,
  `create_date` date NOT NULL,
  `day` varchar(20) DEFAULT NULL,
  `month` varchar(20) DEFAULT NULL,
  `year` year(4) NOT NULL,
  `paidstatus` int(11) DEFAULT NULL,
  `deleted_at` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `issue`
--

CREATE TABLE `issue` (
  `issueID` int(11) UNSIGNED NOT NULL,
  `lID` varchar(128) NOT NULL,
  `bookID` int(11) NOT NULL,
  `serial_no` varchar(40) NOT NULL,
  `issue_date` date NOT NULL,
  `due_date` date NOT NULL,
  `return_date` date DEFAULT NULL,
  `note` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `leaveapp`
--

CREATE TABLE `leaveapp` (
  `leaveID` int(11) UNSIGNED NOT NULL,
  `fdate` date NOT NULL,
  `tdate` date NOT NULL,
  `title` varchar(128) NOT NULL,
  `details` text NOT NULL,
  `touserID` int(11) NOT NULL,
  `tousertypeID` int(11) NOT NULL,
  `fromuserID` int(11) NOT NULL,
  `fromusertypeID` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `schoolyearID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lmember`
--

CREATE TABLE `lmember` (
  `lmemberID` int(11) UNSIGNED NOT NULL,
  `lID` varchar(40) NOT NULL,
  `studentID` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(40) DEFAULT NULL,
  `phone` tinytext,
  `lbalance` varchar(20) DEFAULT NULL,
  `ljoindate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `loginlog`
--

CREATE TABLE `loginlog` (
  `loginlogID` int(11) NOT NULL,
  `ip` varchar(45) NOT NULL,
  `browser` varchar(128) NOT NULL,
  `operatingsystem` varchar(128) NOT NULL,
  `login` int(11) UNSIGNED NOT NULL,
  `logout` int(11) UNSIGNED DEFAULT NULL,
  `usertypeID` int(11) NOT NULL,
  `userID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `loginlog`
--

INSERT INTO `loginlog` (`loginlogID`, `ip`, `browser`, `operatingsystem`, `login`, `logout`, `usertypeID`, `userID`) VALUES
(6, '127.0.0.1', 'Google Chrome', 'windows', 1631359739, 1631360039, 1, 1),
(7, '127.0.0.1', 'Google Chrome', 'windows', 1631785443, 1631785743, 1, 1),
(8, '127.0.0.1', 'Google Chrome', 'windows', 1631785443, 1631785743, 1, 1),
(9, '127.0.0.1', 'Google Chrome', 'windows', 1631883083, 1631975485, 1, 1),
(10, '127.0.0.1', 'Google Chrome', 'windows', 1631975214, 1631975514, 1, 1),
(11, '127.0.0.1', 'Google Chrome', 'windows', 1631975491, 1631975791, 1, 1),
(12, '127.0.0.1', 'Google Chrome', 'windows', 1632120262, 1632122619, 1, 1),
(13, '127.0.0.1', 'Google Chrome', 'windows', 1632122636, 1632122811, 1, 1),
(14, '127.0.0.1', 'Google Chrome', 'windows', 1632122817, 1632123056, 1, 2),
(15, '127.0.0.1', 'Google Chrome', 'windows', 1632123062, 1632123238, 1, 3),
(16, '127.0.0.1', 'Google Chrome', 'windows', 1632123244, 1632123544, 1, 1),
(17, '127.0.0.1', 'Google Chrome', 'windows', 1632133024, 1632140535, 1, 1),
(18, '127.0.0.1', 'Google Chrome', 'windows', 1632140556, 1632140574, 1, 1),
(19, '127.0.0.1', 'Google Chrome', 'windows', 1632140589, 1632140710, 3, 3),
(20, '127.0.0.1', 'Google Chrome', 'windows', 1632140717, 1632141017, 1, 1),
(21, '127.0.0.1', 'Google Chrome', 'windows', 1632242395, 1632200544, 1, 1),
(22, '127.0.0.1', 'Google Chrome', 'windows', 1632200550, 1632202534, 1, 1),
(23, '127.0.0.1', 'Google Chrome', 'windows', 1632202541, 1632202841, 1, 1),
(24, '127.0.0.1', 'Google Chrome', 'windows', 1632242045, 1632242437, 3, 4),
(25, '127.0.0.1', 'Google Chrome', 'windows', 1632242442, 1632202435, 1, 1),
(26, '127.0.0.1', 'Google Chrome', 'windows', 1632202442, 1632202481, 2, 1),
(27, '127.0.0.1', 'Google Chrome', 'windows', 1632202496, 1632202611, 3, 5),
(28, '127.0.0.1', 'Google Chrome', 'windows', 1632202618, 1632202987, 1, 1),
(29, '127.0.0.1', 'Google Chrome', 'windows', 1632203005, 1632203338, 3, 5),
(30, '127.0.0.1', 'Google Chrome', 'windows', 1632203344, 1632203689, 1, 1),
(31, '127.0.0.1', 'Google Chrome', 'windows', 1632204828, 1632207403, 1, 1),
(32, '127.0.0.1', 'Google Chrome', 'windows', 1632207409, 1632208291, 1, 1),
(33, '127.0.0.1', 'Google Chrome', 'windows', 1632208297, 1632208317, 3, 5),
(34, '127.0.0.1', 'Google Chrome', 'windows', 1632208328, 1632208350, 2, 1),
(35, '127.0.0.1', 'Google Chrome', 'windows', 1632208355, 1632208838, 1, 1),
(36, '127.0.0.1', 'Google Chrome', 'windows', 1632208846, 1632208850, 3, 5),
(37, '127.0.0.1', 'Google Chrome', 'windows', 1632208855, 1632209155, 1, 1),
(38, '127.0.0.1', 'Google Chrome', 'windows', 1632225050, 1632225684, 1, 1),
(39, '127.0.0.1', 'Google Chrome', 'windows', 1632225690, 1632225698, 3, 5),
(40, '127.0.0.1', 'Google Chrome', 'windows', 1632225706, 1632225722, 2, 1),
(41, '127.0.0.1', 'Google Chrome', 'windows', 1632225728, 1632226057, 1, 1),
(42, '127.0.0.1', 'Google Chrome', 'windows', 1632226063, 1632227513, 1, 1),
(43, '127.0.0.1', 'Google Chrome', 'windows', 1632227520, 1632227525, 1, 1),
(44, '127.0.0.1', 'Google Chrome', 'windows', 1632227539, 1632227554, 3, 5),
(45, '127.0.0.1', 'Google Chrome', 'windows', 1632227561, 1632227859, 1, 1),
(46, '127.0.0.1', 'Google Chrome', 'windows', 1632227865, 1632228824, 1, 1),
(47, '127.0.0.1', 'Google Chrome', 'windows', 1632328745, 1632289879, 1, 1),
(48, '127.0.0.1', 'Google Chrome', 'windows', 1632289886, 1632289918, 3, 6),
(49, '127.0.0.1', 'Google Chrome', 'windows', 1632289930, 1632290009, 2, 1),
(50, '127.0.0.1', 'Google Chrome', 'windows', 1632290023, 1632290101, 3, 6),
(51, '127.0.0.1', 'Google Chrome', 'windows', 1632290108, 1632290547, 1, 1),
(52, '127.0.0.1', 'Google Chrome', 'windows', 1632290554, 1632290581, 3, 7),
(53, '127.0.0.1', 'Google Chrome', 'windows', 1632290592, 1632290892, 1, 1),
(54, '127.0.0.1', 'Google Chrome', 'windows', 1632326742, 1632329363, 1, 1),
(55, '127.0.0.1', 'Google Chrome', 'windows', 1632329368, 1632329668, 1, 1),
(56, '127.0.0.1', 'Google Chrome', 'windows', 1632311119, 1632311340, 1, 1),
(57, '127.0.0.1', 'Google Chrome', 'windows', 1632311349, 1632312266, 1, 1),
(58, '127.0.0.1', 'Google Chrome', 'windows', 1632312272, 1632312955, 1, 1),
(59, '127.0.0.1', 'Google Chrome', 'windows', 1632312960, 1632313260, 1, 1),
(60, '127.0.0.1', 'Google Chrome', 'windows', 1632415102, 1632373404, 1, 1),
(61, '127.0.0.1', 'Google Chrome', 'windows', 1632373410, 1632373756, 3, 10),
(62, '127.0.0.1', 'Google Chrome', 'windows', 1632373762, 1632373988, 1, 1),
(63, '127.0.0.1', 'Google Chrome', 'windows', 1632373994, 1632374001, 2, 1),
(64, '127.0.0.1', 'Google Chrome', 'windows', 1632374009, 1632374013, 3, 10),
(65, '127.0.0.1', 'Google Chrome', 'windows', 1632374020, 1632375589, 1, 1),
(66, '127.0.0.1', 'Google Chrome', 'windows', 1632375602, 1632375734, 3, 10),
(67, '127.0.0.1', 'Google Chrome', 'windows', 1632375740, 1632376672, 1, 1),
(68, '127.0.0.1', 'Google Chrome', 'windows', 1632376686, 1632376790, 3, 10),
(69, '127.0.0.1', 'Google Chrome', 'windows', 1632376798, 1632378731, 1, 1),
(70, '127.0.0.1', 'Google Chrome', 'windows', 1632378737, 1632378759, 3, 10),
(71, '127.0.0.1', 'Google Chrome', 'windows', 1632378766, 1632378876, 2, 1),
(72, '127.0.0.1', 'Google Chrome', 'windows', 1632378881, 1632379037, 1, 1),
(73, '127.0.0.1', 'Google Chrome', 'windows', 1632379043, 1632379162, 2, 1),
(74, '127.0.0.1', 'Google Chrome', 'windows', 1632379168, 1632379468, 1, 1),
(75, '127.0.0.1', 'Google Chrome', 'windows', 1632409763, 1632501729, 1, 1),
(76, '127.0.0.1', 'Google Chrome', 'windows', 1632501735, 1632501739, 3, 10),
(77, '127.0.0.1', 'Google Chrome', 'windows', 1632501746, 1632501752, 2, 1),
(78, '127.0.0.1', 'Google Chrome', 'windows', 1632501761, 1632502061, 1, 1),
(79, '127.0.0.1', 'Google Chrome', 'windows', 1633760640, 1633760777, 1, 1),
(80, '127.0.0.1', 'Google Chrome', 'windows', 1633760783, 1633760801, 3, 11),
(81, '127.0.0.1', 'Google Chrome', 'windows', 1633760809, 1633760859, 2, 2),
(82, '127.0.0.1', 'Google Chrome', 'windows', 1633760871, 1633761171, 3, 11),
(83, '127.0.0.1', 'Google Chrome', 'windows', 1633760912, 1633760950, 3, 11),
(84, '127.0.0.1', 'Google Chrome', 'windows', 1633760961, 1633761261, 2, 2),
(85, '127.0.0.1', 'Google Chrome', 'windows', 1633761203, 1633761503, 2, 2),
(86, '127.0.0.1', 'Google Chrome', 'windows', 1633761308, 1633761409, 2, 2),
(87, '127.0.0.1', 'Google Chrome', 'windows', 1633761578, 1633761586, 1, 1),
(88, '127.0.0.1', 'Google Chrome', 'windows', 1633761593, 1633761893, 2, 2),
(89, '127.0.0.1', 'Google Chrome', 'windows', 1633761655, 1633761669, 1, 1),
(90, '127.0.0.1', 'Google Chrome', 'windows', 1633761676, 1633762511, 2, 2),
(91, '127.0.0.1', 'Google Chrome', 'windows', 1633762521, 1633762821, 3, 11),
(92, '127.0.0.1', 'Google Chrome', 'windows', 1633762747, 1633762824, 2, 2),
(93, '127.0.0.1', 'Google Chrome', 'windows', 1633762832, 1633762869, 3, 11),
(94, '127.0.0.1', 'Google Chrome', 'windows', 1633762879, 1633762905, 2, 2),
(95, '127.0.0.1', 'Google Chrome', 'windows', 1633762912, 1633763156, 1, 1),
(96, '127.0.0.1', 'Google Chrome', 'windows', 1633763164, 1633763314, 2, 2),
(97, '127.0.0.1', 'Google Chrome', 'windows', 1633763321, 1633763356, 1, 1),
(98, '127.0.0.1', 'Google Chrome', 'windows', 1633763368, 1633763394, 2, 2),
(99, '127.0.0.1', 'Google Chrome', 'windows', 1633763404, 1633763412, 1, 1),
(100, '127.0.0.1', 'Google Chrome', 'windows', 1633763436, 1633763693, 1, 1),
(101, '127.0.0.1', 'Google Chrome', 'windows', 1633763702, 1633764046, 1, 2),
(102, '127.0.0.1', 'Google Chrome', 'windows', 1633764052, 1633764129, 1, 1),
(103, '127.0.0.1', 'Google Chrome', 'windows', 1633764136, 1633764239, 1, 2),
(104, '127.0.0.1', 'Google Chrome', 'windows', 1633764246, 1633764338, 3, 11),
(105, '127.0.0.1', 'Google Chrome', 'windows', 1633764346, 1633764571, 1, 1),
(106, '127.0.0.1', 'Google Chrome', 'windows', 1633764577, 1633764595, 1, 1),
(107, '127.0.0.1', 'Google Chrome', 'windows', 1633764600, 1633764657, 4, 6),
(108, '127.0.0.1', 'Google Chrome', 'windows', 1633764664, 1633764810, 1, 1),
(109, '127.0.0.1', 'Google Chrome', 'windows', 1633764815, 1633764857, 4, 6),
(110, '127.0.0.1', 'Google Chrome', 'windows', 1633764864, 1633764928, 1, 1),
(111, '127.0.0.1', 'Google Chrome', 'windows', 1633764935, 1633765235, 3, 11),
(112, '127.0.0.1', 'Google Chrome', 'windows', 1633766449, 1633766463, 1, 1),
(113, '127.0.0.1', 'Google Chrome', 'windows', 1633766472, 1633766609, 1, 2),
(114, '127.0.0.1', 'Google Chrome', 'windows', 1633756606, 1633756803, 1, 1),
(115, '127.0.0.1', 'Google Chrome', 'windows', 1633756831, 1633756878, 1, 3),
(116, '127.0.0.1', 'Google Chrome', 'windows', 1633758170, 1633761831, 1, 1),
(117, '127.0.0.1', 'Google Chrome', 'windows', 1633761842, 1633762609, 3, 11),
(118, '127.0.0.1', 'Google Chrome', 'windows', 1633762617, 1633762957, 2, 2),
(119, '127.0.0.1', 'Google Chrome', 'windows', 1633764452, 1633764468, 1, 2),
(120, '127.0.0.1', 'Google Chrome', 'windows', 1633764473, 1633765237, 3, 11),
(121, '127.0.0.1', 'Google Chrome', 'windows', 1633771447, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mailandsms`
--

CREATE TABLE `mailandsms` (
  `mailandsmsID` int(11) UNSIGNED NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `users` text NOT NULL,
  `type` varchar(10) NOT NULL,
  `senderusertypeID` int(11) NOT NULL,
  `senderID` int(11) NOT NULL,
  `message` text NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `year` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mailandsmstemplate`
--

CREATE TABLE `mailandsmstemplate` (
  `mailandsmstemplateID` int(11) UNSIGNED NOT NULL,
  `name` varchar(128) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `type` varchar(10) NOT NULL,
  `template` text NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mailandsmstemplatetag`
--

CREATE TABLE `mailandsmstemplatetag` (
  `mailandsmstemplatetagID` int(11) UNSIGNED NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `tagname` varchar(128) NOT NULL,
  `mailandsmstemplatetag_extra` varchar(255) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `mailandsmstemplatetag`
--

INSERT INTO `mailandsmstemplatetag` (`mailandsmstemplatetagID`, `usertypeID`, `tagname`, `mailandsmstemplatetag_extra`, `create_date`) VALUES
(1, 1, '[nombre]', NULL, '2016-12-11 20:36:33'),
(2, 1, '[dob]', NULL, '2016-12-11 20:37:31'),
(3, 1, '[genero]', NULL, '2016-12-11 20:37:31'),
(4, 1, '[religion]', NULL, '2016-12-11 20:39:51'),
(5, 1, '[email]', NULL, '2016-12-11 20:39:51'),
(6, 1, '[telefono]', NULL, '2016-12-11 20:39:51'),
(7, 1, '[direccion]', NULL, '2016-12-11 20:39:51'),
(8, 1, '[trabajo]', NULL, '2016-12-11 20:39:51'),
(9, 1, '[usuario]', NULL, '2016-12-11 20:39:51'),
(10, 2, '[nombre]', NULL, '2016-12-11 20:40:50'),
(11, 2, '[designacion]', NULL, '2016-12-11 20:43:27'),
(12, 2, '[dob]', NULL, '2016-12-11 20:46:21'),
(13, 2, '[genero]', NULL, '2016-12-11 20:46:21'),
(14, 2, '[religion]', NULL, '2016-12-11 20:46:21'),
(15, 2, '[email]', NULL, '2016-12-11 20:46:21'),
(16, 2, '[telefono]', NULL, '2016-12-11 20:46:21'),
(17, 2, '[direccion]', NULL, '2016-12-11 20:46:21'),
(18, 2, '[jod]', NULL, '2016-12-11 20:46:21'),
(19, 2, '[usuario]', NULL, '2016-12-11 20:46:21'),
(20, 3, '[nombre]', NULL, '2016-12-11 20:47:09'),
(21, 3, '[clase/departamento]', NULL, '2016-12-19 21:34:20'),
(22, 3, '[roll]', NULL, '2017-02-12 18:22:56'),
(23, 3, '[dob]', NULL, '2016-12-11 20:55:54'),
(24, 3, '[genero]', NULL, '2016-12-11 20:55:54'),
(25, 3, '[religion]', NULL, '2016-12-11 20:55:54'),
(26, 3, '[email]', NULL, '2016-12-11 20:55:54'),
(27, 3, '[telefono]', NULL, '2016-12-11 20:55:54'),
(28, 3, '[seccion]', NULL, '2016-12-11 20:55:54'),
(29, 3, '[usuario]', NULL, '2016-12-11 20:55:54'),
(30, 3, '[result_table]', NULL, '2016-12-11 20:55:54'),
(31, 4, '[nombre]', NULL, '2016-12-11 20:57:31'),
(32, 4, '[nombre_padre]', NULL, '2016-12-11 21:04:19'),
(33, 4, '[nombre_madre]', NULL, '2016-12-11 21:04:19'),
(34, 4, '[profesion_padre]', NULL, '2016-12-11 21:04:19'),
(35, 4, '[profesion_madre]', NULL, '2016-12-11 21:04:19'),
(36, 4, '[email]', NULL, '2016-12-11 21:04:19'),
(37, 4, '[telefono]', NULL, '2016-12-11 21:04:19'),
(38, 4, '[direccion]', NULL, '2016-12-11 21:04:19'),
(39, 4, '[usuario]', NULL, '2016-12-11 21:04:19'),
(40, 3, '[ciudad]', NULL, '2017-02-12 18:21:27'),
(41, 3, '[no_registro]', NULL, '2017-02-12 18:21:27'),
(42, 3, '[estado]', NULL, '2017-02-12 18:21:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mark`
--

CREATE TABLE `mark` (
  `markID` int(200) UNSIGNED NOT NULL,
  `schoolyearID` int(11) NOT NULL,
  `examID` int(11) NOT NULL,
  `exam` varchar(60) NOT NULL,
  `studentID` int(11) NOT NULL,
  `classesID` int(11) NOT NULL,
  `subjectID` int(11) NOT NULL,
  `subject` varchar(60) NOT NULL,
  `year` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `markpercentage`
--

CREATE TABLE `markpercentage` (
  `markpercentageID` int(11) NOT NULL,
  `markpercentagetype` varchar(100) NOT NULL,
  `percentage` double NOT NULL,
  `examID` int(11) DEFAULT NULL,
  `classesID` int(11) DEFAULT NULL,
  `subjectID` int(11) DEFAULT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_username` varchar(40) NOT NULL,
  `create_usertype` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `markpercentage`
--

INSERT INTO `markpercentage` (`markpercentageID`, `markpercentagetype`, `percentage`, `examID`, `classesID`, `subjectID`, `create_date`, `modify_date`, `create_userID`, `create_username`, `create_usertype`) VALUES
(1, 'Practicas', 100, NULL, NULL, NULL, '2017-01-05 06:11:54', '2017-11-11 04:24:21', 1, 'admin', 'Admin'),
(2, 'Presentaciones', 100, NULL, NULL, NULL, '2017-11-07 01:42:57', '2017-11-11 04:24:45', 1, 'admin', 'Administrador'),
(3, 'Examenes', 100, NULL, NULL, NULL, '2017-11-11 04:24:59', '2017-11-11 04:24:59', 1, 'admin', 'Administrador'),
(4, '10', 10, NULL, NULL, NULL, '2021-09-22 12:44:31', '2021-09-22 12:44:31', 1, 'admin', 'Administrador'),
(5, '20', 10, NULL, NULL, NULL, '2021-09-23 02:54:14', '2021-09-23 02:54:14', 1, 'admin', 'Administrador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `markrelation`
--

CREATE TABLE `markrelation` (
  `markrelationID` int(11) UNSIGNED NOT NULL,
  `markID` int(11) NOT NULL,
  `markpercentageID` int(11) NOT NULL,
  `mark` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `media`
--

CREATE TABLE `media` (
  `mediaID` int(11) UNSIGNED NOT NULL,
  `userID` int(11) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `mcategoryID` int(11) NOT NULL DEFAULT '0',
  `file_name` varchar(255) NOT NULL,
  `file_name_display` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `media`
--

INSERT INTO `media` (`mediaID`, `userID`, `usertypeID`, `mcategoryID`, `file_name`, `file_name_display`) VALUES
(1, 1, 1, 0, '49568022.pdf', 'Actividades de aprendizaje capitulo 2.pdf'),
(2, 1, 1, 0, '380516190.png', '1.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `media_category`
--

CREATE TABLE `media_category` (
  `mcategoryID` int(11) UNSIGNED NOT NULL,
  `userID` int(11) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `folder_name` varchar(255) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `media_share`
--

CREATE TABLE `media_share` (
  `shareID` int(11) UNSIGNED NOT NULL,
  `classesID` int(11) NOT NULL,
  `public` int(11) NOT NULL,
  `file_or_folder` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

CREATE TABLE `menu` (
  `menuID` int(11) NOT NULL,
  `menuName` varchar(128) NOT NULL,
  `link` varchar(512) NOT NULL,
  `icon` varchar(128) DEFAULT NULL,
  `pullRight` text,
  `status` int(11) NOT NULL DEFAULT '1',
  `parentID` int(11) NOT NULL DEFAULT '0',
  `priority` int(11) NOT NULL DEFAULT '1000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `menu`
--

INSERT INTO `menu` (`menuID`, `menuName`, `link`, `icon`, `pullRight`, `status`, `parentID`, `priority`) VALUES
(1, 'dashboard', 'dashboard', 'fa-laptop', NULL, 1, 0, 1000),
(2, 'student', 'student', 'icon-student', NULL, 1, 0, 1000),
(3, 'parents', 'parents', 'fa-user', NULL, 1, 0, 1000),
(4, 'teacher', 'teacher', 'icon-teacher', NULL, 1, 0, 1000),
(5, 'user', 'user', 'fa-users', NULL, 1, 0, 1000),
(6, 'main_academic', '#', 'icon-academicmain', NULL, 1, 0, 1000),
(7, 'main_attendance', '#', 'icon-attendance', NULL, 1, 0, 1000),
(8, 'main_exam', '#', 'icon-exam', NULL, 1, 0, 1000),
(9, 'main_mark', '#', 'icon-markmain', NULL, 1, 0, 1000),
(10, 'conversation', 'conversation', 'fa-envelope', NULL, 1, 0, 1000),
(11, 'media', 'media', 'fa-film', NULL, 1, 0, 1000),
(12, 'mailandsms', 'mailandsms', 'icon-mailandsms', NULL, 1, 0, 1000),
(13, 'main_library', '#', 'icon-library', NULL, 1, 0, 1000),
(14, 'main_transport', '#', 'icon-bus', NULL, 1, 0, 1000),
(15, 'main_hostel', '#', 'icon-hhostel', NULL, 1, 0, 1000),
(16, 'main_account', '#', 'icon-account', NULL, 1, 0, 1000),
(17, 'main_announcement', '#', 'icon-noticemain', NULL, 1, 0, 1000),
(18, 'main_report', '#', 'fa-clipboard', NULL, 1, 0, 1000),
(19, 'other', 'other', 'other', NULL, 1, 0, 1000),
(20, 'main_administrator', '#', 'icon-administrator', NULL, 1, 0, 1000),
(21, 'main_settings', '#', 'fa-gavel', NULL, 1, 0, 1000),
(22, 'classes', 'classes', 'fa-sitemap', NULL, 1, 6, 5000),
(23, 'section', 'section', 'fa-star', NULL, 1, 6, 4000),
(24, 'subject', 'subject', 'icon-subject', NULL, 1, 6, 4500),
(25, 'routine', 'routine', 'icon-routine', NULL, 1, 6, 1000),
(26, 'syllabus', 'syllabus', 'icon-syllabus', NULL, 1, 6, 3500),
(27, 'assignment', 'assignment', 'icon-assignment', NULL, 1, 6, 3000),
(28, 'sattendance', 'sattendance', 'icon-sattendance', NULL, 1, 7, 1000),
(29, 'tattendance', 'tattendance', 'icon-tattendance', NULL, 1, 7, 1000),
(30, 'exam', 'exam', 'fa-pencil', NULL, 1, 8, 1000),
(31, 'examschedule', 'examschedule', 'fa-puzzle-piece', NULL, 1, 8, 1000),
(32, 'grade', 'grade', 'fa-signal', NULL, 1, 8, 1000),
(33, 'eattendance', 'eattendance', 'icon-eattendance', NULL, 1, 8, 1000),
(34, 'mark', 'mark', 'fa-flask', NULL, 1, 9, 1000),
(35, 'markpercentage', 'markpercentage', 'icon-markpercentage', NULL, 1, 9, 1000),
(36, 'promotion', 'promotion', 'icon-promotion', NULL, 1, 9, 1000),
(37, 'notice', 'notice', 'fa-calendar', NULL, 1, 17, 1000),
(38, 'event', 'event', 'fa-calendar-check-o', NULL, 1, 17, 1000),
(39, 'holiday', 'holiday', 'icon-holiday', NULL, 1, 17, 1000),
(40, 'classreport', 'report/classreport', 'icon-classreport', NULL, 1, 18, 1000),
(41, 'attendancereport', 'report/attendancereport', 'icon-attendancereport', NULL, 1, 18, 1000),
(42, 'studentreport', 'report/studentreport', 'icon-studentreport', NULL, 1, 18, 1000),
(43, 'schoolyear', 'schoolyear', 'fa fa-calendar-plus-o', NULL, 1, 20, 5000),
(44, 'mailandsmstemplate', 'mailandsmstemplate', 'icon-template', NULL, 1, 20, 3500),
(46, 'backup', 'backup', 'fa-download', NULL, 1, 20, 2500),
(47, 'systemadmin', 'systemadmin', 'icon-systemadmin', NULL, 1, 20, 4500),
(48, 'resetpassword', 'resetpassword', 'icon-reset_password', NULL, 1, 20, 4000),
(49, 'permission', 'permission', 'icon-permission', NULL, 1, 20, 1000),
(50, 'usertype', 'usertype', 'icon-role', NULL, 1, 20, 2000),
(51, 'setting', 'setting', 'fa-gears', NULL, 1, 21, 1000),
(52, 'other', 'other', 'other', NULL, 1, 21, 1000),
(53, 'other', 'other', 'other', NULL, 1, 21, 1000),
(54, 'invoice', 'invoice', 'icon-invoice', NULL, 1, 16, 100),
(55, 'paymenthistory', 'paymenthistory', 'icon-payment', NULL, 1, 16, 99),
(56, 'transport', 'transport', 'icon-sbus', NULL, 1, 14, 5000),
(57, 'member', 'tmember', 'icon-member', NULL, 1, 14, 1000),
(58, 'hostel', 'hostel', 'icon-hostel', NULL, 1, 15, 1000),
(59, 'category', 'category', 'fa-leaf', NULL, 1, 15, 1000),
(61, 'member', 'hmember', 'icon-member', NULL, 1, 15, 1000),
(62, 'feetypes', 'feetypes', 'icon-feetypes', NULL, 1, 16, 1000),
(63, 'expense', 'expense', 'icon-expense', NULL, 1, 16, 98),
(64, 'member', 'lmember', 'icon-member', NULL, 1, 13, 1000),
(65, 'books', 'book', 'icon-lbooks', NULL, 1, 13, 1000),
(66, 'issue', 'issue', 'icon-issue', NULL, 1, 13, 1000),
(69, 'other', 'other', 'other', NULL, 1, 20, 3000),
(70, 'other', 'other', 'other', NULL, 1, 20, 1000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `message`
--

CREATE TABLE `message` (
  `messageID` int(11) UNSIGNED NOT NULL,
  `email` varchar(128) NOT NULL,
  `receiverID` int(11) NOT NULL,
  `receiverType` varchar(20) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `attach` text,
  `attach_file_name` text,
  `userID` int(11) NOT NULL,
  `usertype` varchar(20) NOT NULL,
  `useremail` varchar(40) NOT NULL,
  `year` year(4) NOT NULL,
  `date` date NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `read_status` tinyint(1) NOT NULL,
  `from_status` int(11) NOT NULL,
  `to_status` int(11) NOT NULL,
  `fav_status` tinyint(1) NOT NULL,
  `fav_status_sent` tinyint(1) NOT NULL,
  `reply_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `version` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`version`) VALUES
(1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notice`
--

CREATE TABLE `notice` (
  `noticeID` int(11) UNSIGNED NOT NULL,
  `title` varchar(128) NOT NULL,
  `notice` text NOT NULL,
  `schoolyearID` int(11) NOT NULL,
  `date` date NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parents`
--

CREATE TABLE `parents` (
  `parentsID` int(11) UNSIGNED NOT NULL,
  `dni` varchar(60) NOT NULL,
  `name` varchar(60) NOT NULL,
  `father_name` varchar(60) NOT NULL,
  `mother_name` varchar(60) NOT NULL,
  `father_profession` varchar(40) NOT NULL,
  `mother_profession` varchar(40) NOT NULL,
  `email` varchar(40) DEFAULT NULL,
  `phone` tinytext,
  `address` text,
  `photo` varchar(200) DEFAULT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(128) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_username` varchar(40) NOT NULL,
  `create_usertype` varchar(20) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `parents`
--

INSERT INTO `parents` (`parentsID`, `dni`, `name`, `father_name`, `mother_name`, `father_profession`, `mother_profession`, `email`, `phone`, `address`, `photo`, `username`, `password`, `usertypeID`, `create_date`, `modify_date`, `create_userID`, `create_username`, `create_usertype`, `active`) VALUES
(6, '1', 'Mario', 'Jorge', 'Carina', 'Policia', 'poli', 'elida1@gmail.com', '30107233', 'Barrio las Joyas', 'ba96e32e5691cc294bcdd99354bc7c5f1d9c822b27ddf4dd5b86d7b534225f8d5ef8f36fecf6b718432fce238c5d3fd1a3ef6f0c4b09e7c13a2256c451b5b5e6.png', 'cari', '0aabca54ed36e6dd7e11f37899af0329406b95a472e0ca129166290c1728f5c0eb17b536ee78c04e745a23fa8b4a5afc7365edcd7c57d01679fb4989500ebf67', 4, '2021-09-22 01:15:09', '2021-09-22 08:03:58', 1, 'admin', 'Administrador', 1),
(7, '26', 'Karinaa', 'pepe', 'moly', 'chinga', 'licenciada', 'pepe@gmail.com', '30107233', 'Aldea el barrial', 'f851c7060e70b56ef159a83fa7285402714cec4fc237f183740a8bbdc22b844337bbd4ef86b04eefd2c1935b0783f094f19686c5f5a5302ffe43300b9a85eadc.jpg', 'pepe', '0aabca54ed36e6dd7e11f37899af0329406b95a472e0ca129166290c1728f5c0eb17b536ee78c04e745a23fa8b4a5afc7365edcd7c57d01679fb4989500ebf67', 4, '2021-09-22 07:57:28', '2021-09-22 07:57:28', 1, 'admin', 'Administrador', 1),
(8, '32', 'yoselin', 'pepe', 'Maricel', 'Doctor', 'licenciada', 'pepe2@gmail.com', '58662110', 'barrio el barrial', 'a41afc7bd26a350905b7b53dfc03393dcaef758d7bedf6aedf225a22ed21f981380325bfe4ea8f5819def74fd97f5233f38233ce1fe2ec5ba100772c0365688c.png', 'otto', '0aabca54ed36e6dd7e11f37899af0329406b95a472e0ca129166290c1728f5c0eb17b536ee78c04e745a23fa8b4a5afc7365edcd7c57d01679fb4989500ebf67', 4, '2021-09-23 02:42:29', '2021-09-23 02:42:29', 1, 'admin', 'Administrador', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payment`
--

CREATE TABLE `payment` (
  `paymentID` int(11) UNSIGNED NOT NULL,
  `schoolyearID` int(11) NOT NULL,
  `invoiceID` int(11) NOT NULL,
  `studentID` int(11) NOT NULL,
  `paymentamount` double NOT NULL,
  `paymenttype` varchar(128) NOT NULL,
  `paymentdate` date NOT NULL,
  `paymentday` varchar(11) NOT NULL,
  `paymentmonth` varchar(10) NOT NULL,
  `paymentyear` year(4) NOT NULL,
  `userID` int(11) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `uname` varchar(40) NOT NULL,
  `transactionID` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `permissionID` int(10) UNSIGNED NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'In most cases, this should be the name of the module (e.g. news)',
  `active` enum('yes','no') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`permissionID`, `description`, `name`, `active`) VALUES
(501, 'Dashboard', 'dashboard', 'yes'),
(502, 'Estudiante', 'student', 'yes'),
(503, 'Agregar estudiante', 'student_add', 'yes'),
(504, 'Editar estudiante', 'student_edit', 'yes'),
(505, 'Borrar estudiante', 'student_delete', 'yes'),
(506, 'Visualizar estudiante', 'student_view', 'yes'),
(507, 'Padres', 'parents', 'yes'),
(508, 'Agregar padres', 'parents_add', 'yes'),
(509, 'Editar padres', 'parents_edit', 'yes'),
(510, 'Borrar padres', 'parents_delete', 'yes'),
(511, 'Visualizar padres', 'parents_view', 'yes'),
(512, 'Docente', 'teacher', 'yes'),
(513, 'Agregar docente', 'teacher_add', 'yes'),
(514, 'Editar docente', 'teacher_edit', 'yes'),
(515, 'Borrar docente', 'teacher_delete', 'yes'),
(516, 'Visualizar docente', 'teacher_view', 'yes'),
(517, 'Usuario', 'user', 'yes'),
(518, 'Agregar usuario', 'user_add', 'yes'),
(519, 'Editar usuario', 'user_edit', 'yes'),
(520, 'Borrar usuario', 'user_delete', 'yes'),
(521, 'Visualizar usuario', 'user_view', 'yes'),
(522, 'Clases', 'classes', 'yes'),
(523, 'Agregar clases', 'classes_add', 'yes'),
(524, 'Editar clases', 'classes_edit', 'yes'),
(525, 'Borrar clases', 'classes_delete', 'yes'),
(526, 'Tema', 'subject', 'yes'),
(527, 'Agregar tema', 'subject_add', 'yes'),
(528, 'Editar tema', 'subject_edit', 'yes'),
(529, 'Borrar tema', 'subject_delete', 'yes'),
(530, 'Seccion', 'section', 'yes'),
(531, 'Agregar sección', 'section_add', 'yes'),
(532, 'Editar sección', 'section_edit', 'yes'),
(533, 'Borrar semestre', 'semester_delete', 'yes'),
(534, 'Borrar sección', 'section_delete', 'yes'),
(535, 'Plan de estudios', 'syllabus', 'yes'),
(536, 'Agregar plan de estudios', 'syllabus_add', 'yes'),
(537, 'Editar plan de estudios', 'syllabus_edit', 'yes'),
(538, 'Borrar plan de estudios', 'syllabus_delete', 'yes'),
(539, 'Asignación', 'assignment', 'yes'),
(540, 'Agregar asignación', 'assignment_add', 'yes'),
(541, 'Editar asignación', 'assignment_edit', 'yes'),
(542, 'Borrar asignación', 'assignment_delete', 'yes'),
(543, 'Visualizar asignación', 'assignment_view', 'yes'),
(544, 'Horario', 'routine', 'yes'),
(545, 'Agregar horario', 'routine_add', 'yes'),
(546, 'Editar horario', 'routine_edit', 'yes'),
(547, 'Borrar horario', 'routine_delete', 'yes'),
(548, 'Asistencia de estudiante', 'sattendance', 'yes'),
(549, 'Agregar asistencia estudiante', 'sattendance_add', 'yes'),
(550, 'Visualizar asistencia estudiante', 'sattendance_view', 'yes'),
(551, 'Asistencia docente', 'tattendance', 'yes'),
(552, 'Agregar asistencia docente', 'tattendance_add', 'yes'),
(553, 'Visualizar asistencia docente', 'tattendance_view', 'yes'),
(554, 'Examen', 'exam', 'yes'),
(555, 'Agregar examen', 'exam_add', 'yes'),
(556, 'Editar examen', 'exam_edit', 'yes'),
(557, 'Borrar examen', 'exam_delete', 'yes'),
(558, 'Horario de examen', 'examschedule', 'yes'),
(559, 'Agregar horario examen', 'examschedule_add', 'yes'),
(560, 'Editar horario examen', 'examschedule_edit', 'yes'),
(561, 'Borrar horario examen', 'examschedule_delete', 'yes'),
(562, 'Grado', 'grade', 'yes'),
(563, 'Agregar grado', 'grade_add', 'yes'),
(564, 'Editar grado', 'grade_edit', 'yes'),
(565, 'Borrar grado', 'grade_delete', 'yes'),
(566, 'Asistencia examen', 'eattendance', 'yes'),
(567, 'Agregar asistencia examen', 'eattendance_add', 'yes'),
(568, 'Promedio', 'mark', 'yes'),
(569, 'Agregar promedio', 'mark_add', 'yes'),
(570, 'Visualizar promedio', 'mark_view', 'yes'),
(571, 'Porcentaje promedio', 'markpercentage', 'yes'),
(572, 'Agregar porcentaje promedio', 'markpercentage_add', 'yes'),
(573, 'Editar porcentaje promedio', 'markpercentage_edit', 'yes'),
(574, 'Borrar porcentaje promedio', 'markpercentage_delete', 'yes'),
(575, 'Promoción', 'promotion', 'yes'),
(576, 'Conversación', 'conversation', 'yes'),
(577, 'Multimedia', 'media', 'yes'),
(578, 'Agregar multimedia', 'media_add', 'yes'),
(579, 'Borrar multimedia', 'media_delete', 'yes'),
(580, 'Correo', 'mailandsms', 'yes'),
(581, 'Agregar correo', 'mailandsms_add', 'yes'),
(582, 'Visualizar correo', 'mailandsms_view', 'yes'),
(583, 'Miembro de la biblioteca', 'lmember', 'yes'),
(584, 'Agregar miembro biblioteca', 'lmember_add', 'yes'),
(585, 'Editar miembro biblioteca', 'lmember_edit', 'yes'),
(586, 'Borrar miembro biblioteca', 'lmember_delete', 'yes'),
(587, 'Visualizar miembro biblioteca', 'lmember_view', 'yes'),
(588, 'Libros', 'book', 'yes'),
(589, 'Agregar libros', 'book_add', 'yes'),
(590, 'Editar libros', 'book_edit', 'yes'),
(591, 'Borrar libros', 'book_delete', 'yes'),
(592, 'Libro de publicación', 'issue', 'yes'),
(593, 'Agregar libro de publicación', 'issue_add', 'yes'),
(594, 'Editar libro de publicación', 'issue_edit', 'yes'),
(595, 'Visualizar libro de publicación', 'issue_view', 'yes'),
(596, 'Transporte', 'transport', 'yes'),
(597, 'Agregar transporte', 'transport_add', 'yes'),
(598, 'Editar transporte', 'transport_edit', 'yes'),
(599, 'Borrar transporte', 'transport_delete', 'yes'),
(600, 'Miembro transporte', 'tmember', 'yes'),
(601, 'Agregar miembro transporte', 'tmember_add', 'yes'),
(602, 'Editar miembro transporte', 'tmember_edit', 'yes'),
(603, 'Borrar miembro transporte', 'tmember_delete', 'yes'),
(604, 'Visualizar miembro transporte', 'tmember_view', 'yes'),
(605, 'Hospedaje', 'hostel', 'yes'),
(606, 'Agregar hospedaje', 'hostel_add', 'yes'),
(607, 'Editar hospedaje', 'hostel_edit', 'yes'),
(608, 'Borrar hospedaje', 'hostel_delete', 'yes'),
(609, 'Categoría hospedaje', 'category', 'yes'),
(610, 'Agregar categoría hospedaje', 'category_add', 'yes'),
(611, 'Editar categoría hospedaje', 'category_edit', 'yes'),
(612, 'Borrar categoría hospedaje', 'category_delete', 'yes'),
(613, 'Miembro hospedaje', 'hmember', 'yes'),
(614, 'Agregar miembro hospedaje', 'hmember_add', 'yes'),
(615, 'Editar miembro hospedaje', 'hmember_edit', 'yes'),
(616, 'Borrar miembro hospedaje', 'hmember_delete', 'yes'),
(617, 'Visualizar miembro hospedaje', 'hmember_view', 'yes'),
(618, 'Tipo de tarifa', 'feetypes', 'yes'),
(619, 'Agregar tipo de tarifa', 'feetypes_add', 'yes'),
(620, 'Editar tipo de tarifa', 'feetypes_edit', 'yes'),
(621, 'Borrar tipo de tarifa', 'feetypes_delete', 'yes'),
(622, 'Factura', 'invoice', 'yes'),
(623, 'Agregar factura', 'invoice_add', 'yes'),
(624, 'Editar factura', 'invoice_edit', 'yes'),
(625, 'Borrar factura', 'invoice_delete', 'yes'),
(626, 'Visualizar factura', 'invoice_view', 'yes'),
(627, 'Historial de pago', 'paymenthistory', 'yes'),
(628, 'Editar historial de pago', 'paymenthistory_edit', 'yes'),
(629, 'Borrar historial de pago', 'paymenthistory_delete', 'yes'),
(630, 'Gasto', 'expense', 'yes'),
(631, 'Agregar gasto', 'expense_add', 'yes'),
(632, 'Editar gasto', 'expense_edit', 'yes'),
(633, 'Borrar gasto', 'expense_delete', 'yes'),
(634, 'Noticias', 'notice', 'yes'),
(635, 'Agregar noticias', 'notice_add', 'yes'),
(636, 'Editar noticias', 'notice_edit', 'yes'),
(637, 'Borrar noticias', 'notice_delete', 'yes'),
(638, 'Visualizar noticias', 'notice_view', 'yes'),
(639, 'Evento', 'event', 'yes'),
(640, 'Agregar evento', 'event_add', 'yes'),
(641, 'Editar evento', 'event_edit', 'yes'),
(642, 'Borrar evento', 'event_delete', 'yes'),
(643, 'Visualizar evento', 'event_view', 'yes'),
(644, 'Vacaciones', 'holiday', 'yes'),
(645, 'Agregar vacaciones', 'holiday_add', 'yes'),
(646, 'Editar vacaciones', 'holiday_edit', 'yes'),
(647, 'Borrar vacaciones', 'holiday_delete', 'yes'),
(648, 'Visualizar vacaciones', 'holiday_view', 'yes'),
(649, 'Reportes', 'report', 'yes'),
(650, 'informacion del visitante', 'visitorinfo', 'yes'),
(651, 'Visitor Information Delete', 'visitorinfo_delete', 'yes'),
(652, 'Visitor Infomation View', 'visitorinfo_view', 'yes'),
(653, 'Año académico', 'schoolyear', 'yes'),
(654, 'Agregar año académico', 'schoolyear_add', 'yes'),
(655, 'Editar año académico', 'schoolyear_edit', 'yes'),
(656, 'Borrar año académico', 'schoolyear_delete', 'yes'),
(657, 'Administrador del sistema', 'systemadmin', 'yes'),
(658, 'Agregar administrador del sistema', 'systemadmin_add', 'yes'),
(659, 'Editar administrador del sistema', 'systemadmin_edit', 'yes'),
(660, 'Borrar administrador del sistema', 'systemadmin_delete', 'yes'),
(661, 'Visualizar administrador del sistema', 'systemadmin_view', 'yes'),
(662, 'Reiniciar contraseña', 'resetpassword', 'yes'),
(663, 'Plantilla mail', 'mailandsmstemplate', 'yes'),
(664, 'Agregar plantilla mail', 'mailandsmstemplate_add', 'yes'),
(665, 'Editar plantilla mail', 'mailandsmstemplate_edit', 'yes'),
(666, 'Borrar plantilla mail', 'mailandsmstemplate_delete', 'yes'),
(667, 'Visualizar plantilla', 'mailandsmstemplate_view', 'yes'),
(668, 'Importar', 'bulkimport ', 'yes'),
(669, 'Backup', 'backup', 'yes'),
(670, 'usuarios/rol', 'usertype', 'yes'),
(671, 'Agregar usuarios/rol', 'usertype_add', 'yes'),
(672, 'Editar usuarios/rol', 'usertype_edit', 'yes'),
(673, 'Borrar usuarios/rol', 'usertype_delete', 'yes'),
(674, 'Permiso', 'permission', 'yes'),
(675, 'Actualizacion', 'update', 'yes'),
(676, 'Configuación general', 'setting', 'yes'),
(677, 'Editar Configuación', 'setting_edit', 'yes'),
(678, 'Configuación de pago', 'paymentsettings', 'yes'),
(679, 'Configuación sms', 'smssettings', 'yes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permission_relationships`
--

CREATE TABLE `permission_relationships` (
  `permission_id` int(11) NOT NULL,
  `usertype_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `permission_relationships`
--

INSERT INTO `permission_relationships` (`permission_id`, `usertype_id`) VALUES
(501, 5),
(512, 5),
(516, 5),
(576, 5),
(577, 5),
(596, 5),
(600, 5),
(601, 5),
(602, 5),
(603, 5),
(604, 5),
(605, 5),
(609, 5),
(613, 5),
(614, 5),
(615, 5),
(616, 5),
(617, 5),
(618, 5),
(619, 5),
(620, 5),
(621, 5),
(622, 5),
(623, 5),
(624, 5),
(625, 5),
(626, 5),
(627, 5),
(628, 5),
(629, 5),
(630, 5),
(631, 5),
(632, 5),
(633, 5),
(634, 5),
(638, 5),
(639, 5),
(643, 5),
(644, 5),
(648, 5),
(501, 6),
(512, 6),
(516, 6),
(526, 6),
(576, 6),
(577, 6),
(583, 6),
(584, 6),
(585, 6),
(586, 6),
(587, 6),
(588, 6),
(589, 6),
(590, 6),
(591, 6),
(592, 6),
(593, 6),
(594, 6),
(595, 6),
(596, 6),
(605, 6),
(609, 6),
(634, 6),
(638, 6),
(639, 6),
(643, 6),
(644, 6),
(648, 6),
(501, 7),
(512, 7),
(516, 7),
(576, 7),
(577, 7),
(605, 7),
(609, 7),
(613, 7),
(617, 7),
(634, 7),
(638, 7),
(639, 7),
(643, 7),
(644, 7),
(648, 7),
(650, 7),
(651, 7),
(652, 7),
(502, 8),
(503, 8),
(504, 8),
(505, 8),
(506, 8),
(507, 8),
(508, 8),
(509, 8),
(510, 8),
(511, 8),
(522, 8),
(523, 8),
(524, 8),
(525, 8),
(526, 8),
(527, 8),
(528, 8),
(529, 8),
(530, 8),
(531, 8),
(532, 8),
(534, 8),
(535, 8),
(536, 8),
(537, 8),
(538, 8),
(539, 8),
(540, 8),
(541, 8),
(542, 8),
(543, 8),
(544, 8),
(545, 8),
(546, 8),
(547, 8),
(548, 8),
(549, 8),
(550, 8),
(558, 8),
(559, 8),
(560, 8),
(561, 8),
(562, 8),
(563, 8),
(564, 8),
(565, 8),
(566, 8),
(567, 8),
(568, 8),
(569, 8),
(570, 8),
(571, 8),
(572, 8),
(573, 8),
(574, 8),
(575, 8),
(577, 8),
(578, 8),
(579, 8),
(653, 8),
(654, 8),
(655, 8),
(656, 8),
(501, 3),
(512, 3),
(526, 3),
(535, 3),
(539, 3),
(543, 3),
(548, 3),
(549, 3),
(550, 3),
(558, 3),
(568, 3),
(570, 3),
(577, 3),
(578, 3),
(634, 3),
(638, 3),
(639, 3),
(643, 3),
(544, 3),
(522, 3),
(523, 3),
(524, 3),
(525, 3),
(530, 3),
(531, 3),
(532, 3),
(534, 3),
(554, 3),
(555, 3),
(562, 3),
(563, 3),
(566, 3),
(567, 3),
(501, 2),
(502, 2),
(506, 2),
(512, 2),
(516, 2),
(526, 2),
(527, 2),
(528, 2),
(529, 2),
(535, 2),
(536, 2),
(537, 2),
(538, 2),
(539, 2),
(540, 2),
(541, 2),
(542, 2),
(543, 2),
(544, 2),
(545, 2),
(546, 2),
(547, 2),
(548, 2),
(550, 2),
(551, 2),
(552, 2),
(553, 2),
(558, 2),
(559, 2),
(560, 2),
(561, 2),
(566, 2),
(567, 2),
(568, 2),
(569, 2),
(570, 2),
(577, 2),
(578, 2),
(579, 2),
(634, 2),
(635, 2),
(636, 2),
(637, 2),
(638, 2),
(639, 2),
(640, 2),
(641, 2),
(642, 2),
(643, 2),
(507, 2),
(511, 2),
(517, 2),
(521, 2),
(522, 2),
(523, 2),
(524, 2),
(525, 2),
(554, 2),
(555, 2),
(556, 2),
(557, 2),
(562, 2),
(563, 2),
(564, 2),
(565, 2),
(571, 2),
(572, 2),
(573, 2),
(574, 2),
(575, 2),
(530, 2),
(531, 2),
(532, 2),
(534, 2),
(668, 2),
(501, 1),
(502, 1),
(503, 1),
(504, 1),
(505, 1),
(506, 1),
(507, 1),
(508, 1),
(509, 1),
(510, 1),
(511, 1),
(512, 1),
(513, 1),
(514, 1),
(515, 1),
(516, 1),
(517, 1),
(518, 1),
(519, 1),
(520, 1),
(521, 1),
(522, 1),
(523, 1),
(524, 1),
(525, 1),
(526, 1),
(527, 1),
(528, 1),
(529, 1),
(530, 1),
(531, 1),
(532, 1),
(534, 1),
(535, 1),
(536, 1),
(537, 1),
(538, 1),
(539, 1),
(540, 1),
(541, 1),
(542, 1),
(543, 1),
(544, 1),
(545, 1),
(546, 1),
(547, 1),
(548, 1),
(549, 1),
(550, 1),
(551, 1),
(552, 1),
(553, 1),
(554, 1),
(555, 1),
(556, 1),
(557, 1),
(558, 1),
(559, 1),
(560, 1),
(561, 1),
(562, 1),
(563, 1),
(564, 1),
(565, 1),
(566, 1),
(567, 1),
(568, 1),
(569, 1),
(570, 1),
(571, 1),
(572, 1),
(573, 1),
(574, 1),
(575, 1),
(577, 1),
(578, 1),
(579, 1),
(580, 1),
(581, 1),
(582, 1),
(634, 1),
(635, 1),
(636, 1),
(637, 1),
(638, 1),
(639, 1),
(640, 1),
(641, 1),
(642, 1),
(643, 1),
(650, 1),
(651, 1),
(652, 1),
(653, 1),
(654, 1),
(655, 1),
(656, 1),
(657, 1),
(658, 1),
(659, 1),
(660, 1),
(661, 1),
(662, 1),
(663, 1),
(664, 1),
(665, 1),
(666, 1),
(667, 1),
(668, 1),
(670, 1),
(671, 1),
(672, 1),
(673, 1),
(674, 1),
(675, 1),
(679, 1),
(501, 4),
(512, 4),
(516, 4),
(535, 4),
(544, 4),
(558, 4),
(568, 4),
(570, 4),
(634, 4),
(635, 4),
(636, 4),
(637, 4),
(638, 4),
(639, 4),
(643, 4),
(554, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promotionlog`
--

CREATE TABLE `promotionlog` (
  `promotionLogID` int(11) UNSIGNED NOT NULL,
  `promotionType` varchar(50) DEFAULT NULL,
  `classesID` int(11) NOT NULL,
  `jumpClassID` int(11) NOT NULL,
  `schoolYearID` int(11) NOT NULL,
  `jumpSchoolYearID` int(11) NOT NULL,
  `subjectandsubjectcodeandmark` longtext,
  `exams` longtext,
  `markpercentages` longtext,
  `promoteStudents` longtext,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `create_userID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `promotionlog`
--

INSERT INTO `promotionlog` (`promotionLogID`, `promotionType`, `classesID`, `jumpClassID`, `schoolYearID`, `jumpSchoolYearID`, `subjectandsubjectcodeandmark`, `exams`, `markpercentages`, `promoteStudents`, `status`, `created_at`, `create_userID`) VALUES
(1, 'advance', 2, 1, 1, 3, '{\"1\":\"100\"}', '{\"4\":\"on\",\"7\":\"on\",\"3\":\"on\",\"2\":\"on\",\"8\":\"on\",\"10\":\"on\",\"9\":\"on\"}', '{\"3\":\"on\"}', NULL, 0, '2021-09-22 12:52:21', 1),
(2, 'advance', 4, 2, 3, 1, '{\"4\":\"61\"}', '{\"3\":\"on\",\"2\":\"on\",\"8\":\"on\",\"10\":\"on\",\"11\":\"on\",\"9\":\"on\"}', '{\"3\":\"on\"}', NULL, 0, '2021-09-23 02:54:28', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reply_msg`
--

CREATE TABLE `reply_msg` (
  `replyID` int(11) UNSIGNED NOT NULL,
  `messageID` int(11) NOT NULL,
  `reply_msg` text NOT NULL,
  `status` int(11) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reset`
--

CREATE TABLE `reset` (
  `resetID` int(11) UNSIGNED NOT NULL,
  `keyID` varchar(128) NOT NULL,
  `email` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `routine`
--

CREATE TABLE `routine` (
  `routineID` int(11) UNSIGNED NOT NULL,
  `classesID` int(11) NOT NULL,
  `sectionID` int(11) NOT NULL,
  `subjectID` int(11) NOT NULL,
  `schoolyearID` int(11) NOT NULL,
  `teacherID` int(11) NOT NULL,
  `day` varchar(60) NOT NULL,
  `start_time` varchar(10) NOT NULL,
  `end_time` varchar(10) NOT NULL,
  `room` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `routine`
--

INSERT INTO `routine` (`routineID`, `classesID`, `sectionID`, `subjectID`, `schoolyearID`, `teacherID`, `day`, `start_time`, `end_time`, `room`) VALUES
(1, 2, 2, 1, 1, 1, 'LUNES', '10:45 AM', '11:45 AM', '2'),
(2, 4, 4, 4, 3, 3, 'LUNES', '8:00 AM', '9:00 AM', '3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schoolyear`
--

CREATE TABLE `schoolyear` (
  `schoolyearID` int(11) NOT NULL,
  `schooltype` varchar(40) DEFAULT NULL,
  `schoolyear` varchar(128) NOT NULL,
  `schoolyeartitle` varchar(128) DEFAULT NULL,
  `semestercode` int(11) DEFAULT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_username` varchar(100) NOT NULL,
  `create_usertype` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `schoolyear`
--

INSERT INTO `schoolyear` (`schoolyearID`, `schooltype`, `schoolyear`, `schoolyeartitle`, `semestercode`, `create_date`, `modify_date`, `create_userID`, `create_username`, `create_usertype`) VALUES
(1, 'classbase', '2021', 'primera gestion', 0, '2017-01-01 06:21:11', '2021-09-21 07:54:19', 1, 'admin', 'Admin'),
(2, 'semesterbase', '2017-2018', 'Spring', 11, '2017-01-01 08:19:17', '2017-01-06 08:23:15', 1, 'admin', 'Admin'),
(3, 'classbase', '2021', '2022', NULL, '2021-09-22 12:52:01', '2021-09-22 12:52:01', 1, 'admin', 'Administrador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `school_sessions`
--

CREATE TABLE `school_sessions` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `school_sessions`
--

INSERT INTO `school_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('2jaat73p0k07ono5tkfa0p8fm9lbtair', '::1', 1633762541, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333736323532313b6c616e677c733a373a227370616e697368223b6c6f67696e7573657249447c733a323a223131223b6e616d657c733a373a22796f73656c696e223b656d61696c7c733a31343a22796f736540676d61696c2e636f6d223b757365727479706549447c733a313a2233223b75736572747970657c733a31303a22457374756469616e7465223b757365726e616d657c733a343a22796f7369223b70686f746f7c733a3133323a2234653262356537356235376539623236323166656232663561346362396338663265363030376135346635626664366464616130613837323161353132626532646331616361373664663164393038306466353535656438383932646238613163336430323433613134393534383862336537653730343931663130663830382e706e67223b64656661756c747363686f6f6c7965617249447c733a313a2231223b6c6f67676564696e7c623a313b6765745f7065726d697373696f6e7c623a313b6d61737465725f7065726d697373696f6e5f7365747c613a3138343a7b733a393a2264617368626f617264223b733a333a22796573223b733a373a2274656163686572223b733a333a22796573223b733a373a227375626a656374223b733a333a22796573223b733a383a2273796c6c61627573223b733a333a22796573223b733a31303a2261737369676e6d656e74223b733a333a22796573223b733a31353a2261737369676e6d656e745f76696577223b733a333a22796573223b733a31313a2273617474656e64616e6365223b733a333a22796573223b733a31353a2273617474656e64616e63655f616464223b733a333a22796573223b733a31323a226578616d7363686564756c65223b733a333a22796573223b733a343a226d61726b223b733a333a22796573223b733a393a226d61726b5f76696577223b733a333a22796573223b733a31323a22636f6e766572736174696f6e223b733a333a22796573223b733a353a226d65646961223b733a333a22796573223b733a393a226d656469615f616464223b733a333a22796573223b733a373a226c6d656d626572223b733a333a22796573223b733a363a226e6f74696365223b733a333a22796573223b733a31313a226e6f746963655f76696577223b733a333a22796573223b733a353a226576656e74223b733a333a22796573223b733a31303a226576656e745f76696577223b733a333a22796573223b733a373a22726f7574696e65223b733a333a22796573223b733a373a22636c6173736573223b733a333a22796573223b733a31313a22636c61737365735f616464223b733a333a22796573223b733a31323a22636c61737365735f65646974223b733a333a22796573223b733a31343a22636c61737365735f64656c657465223b733a333a22796573223b733a373a2273656374696f6e223b733a333a22796573223b733a31313a2273656374696f6e5f616464223b733a333a22796573223b733a31323a2273656374696f6e5f65646974223b733a333a22796573223b733a31343a2273656374696f6e5f64656c657465223b733a333a22796573223b733a343a226578616d223b733a333a22796573223b733a383a226578616d5f616464223b733a333a22796573223b733a353a226772616465223b733a333a22796573223b733a393a2267726164655f616464223b733a333a22796573223b733a31313a2265617474656e64616e6365223b733a333a22796573223b733a31353a2265617474656e64616e63655f616464223b733a333a22796573223b733a373a2273747564656e74223b733a323a226e6f223b733a31313a2273747564656e745f616464223b733a323a226e6f223b733a31323a2273747564656e745f65646974223b733a323a226e6f223b733a31343a2273747564656e745f64656c657465223b733a323a226e6f223b733a31323a2273747564656e745f76696577223b733a323a226e6f223b733a373a22706172656e7473223b733a323a226e6f223b733a31313a22706172656e74735f616464223b733a323a226e6f223b733a31323a22706172656e74735f65646974223b733a323a226e6f223b733a31343a22706172656e74735f64656c657465223b733a323a226e6f223b733a31323a22706172656e74735f76696577223b733a323a226e6f223b733a31313a22746561636865725f616464223b733a323a226e6f223b733a31323a22746561636865725f65646974223b733a323a226e6f223b733a31343a22746561636865725f64656c657465223b733a323a226e6f223b733a31323a22746561636865725f76696577223b733a323a226e6f223b733a343a2275736572223b733a323a226e6f223b733a383a22757365725f616464223b733a323a226e6f223b733a393a22757365725f65646974223b733a323a226e6f223b733a31313a22757365725f64656c657465223b733a323a226e6f223b733a393a22757365725f76696577223b733a323a226e6f223b733a31313a227375626a6563745f616464223b733a323a226e6f223b733a31323a227375626a6563745f65646974223b733a323a226e6f223b733a31343a227375626a6563745f64656c657465223b733a323a226e6f223b733a31353a2273656d65737465725f64656c657465223b733a323a226e6f223b733a31323a2273796c6c616275735f616464223b733a323a226e6f223b733a31333a2273796c6c616275735f65646974223b733a323a226e6f223b733a31353a2273796c6c616275735f64656c657465223b733a323a226e6f223b733a31343a2261737369676e6d656e745f616464223b733a323a226e6f223b733a31353a2261737369676e6d656e745f65646974223b733a323a226e6f223b733a31373a2261737369676e6d656e745f64656c657465223b733a323a226e6f223b733a31313a22726f7574696e655f616464223b733a323a226e6f223b733a31323a22726f7574696e655f65646974223b733a323a226e6f223b733a31343a22726f7574696e655f64656c657465223b733a323a226e6f223b733a31363a2273617474656e64616e63655f76696577223b733a323a226e6f223b733a31313a2274617474656e64616e6365223b733a323a226e6f223b733a31353a2274617474656e64616e63655f616464223b733a323a226e6f223b733a31363a2274617474656e64616e63655f76696577223b733a323a226e6f223b733a393a226578616d5f65646974223b733a323a226e6f223b733a31313a226578616d5f64656c657465223b733a323a226e6f223b733a31363a226578616d7363686564756c655f616464223b733a323a226e6f223b733a31373a226578616d7363686564756c655f65646974223b733a323a226e6f223b733a31393a226578616d7363686564756c655f64656c657465223b733a323a226e6f223b733a31303a2267726164655f65646974223b733a323a226e6f223b733a31323a2267726164655f64656c657465223b733a323a226e6f223b733a383a226d61726b5f616464223b733a323a226e6f223b733a31343a226d61726b70657263656e74616765223b733a323a226e6f223b733a31383a226d61726b70657263656e746167655f616464223b733a323a226e6f223b733a31393a226d61726b70657263656e746167655f65646974223b733a323a226e6f223b733a32313a226d61726b70657263656e746167655f64656c657465223b733a323a226e6f223b733a393a2270726f6d6f74696f6e223b733a323a226e6f223b733a31323a226d656469615f64656c657465223b733a323a226e6f223b733a31303a226d61696c616e64736d73223b733a323a226e6f223b733a31343a226d61696c616e64736d735f616464223b733a323a226e6f223b733a31353a226d61696c616e64736d735f76696577223b733a323a226e6f223b733a31313a226c6d656d6265725f616464223b733a323a226e6f223b733a31323a226c6d656d6265725f65646974223b733a323a226e6f223b733a31343a226c6d656d6265725f64656c657465223b733a323a226e6f223b733a31323a226c6d656d6265725f76696577223b733a323a226e6f223b733a343a22626f6f6b223b733a323a226e6f223b733a383a22626f6f6b5f616464223b733a323a226e6f223b733a393a22626f6f6b5f65646974223b733a323a226e6f223b733a31313a22626f6f6b5f64656c657465223b733a323a226e6f223b733a353a226973737565223b733a323a226e6f223b733a393a2269737375655f616464223b733a323a226e6f223b733a31303a2269737375655f65646974223b733a323a226e6f223b733a31303a2269737375655f76696577223b733a323a226e6f223b733a393a227472616e73706f7274223b733a323a226e6f223b733a31333a227472616e73706f72745f616464223b733a323a226e6f223b733a31343a227472616e73706f72745f65646974223b733a323a226e6f223b733a31363a227472616e73706f72745f64656c657465223b733a323a226e6f223b733a373a22746d656d626572223b733a323a226e6f223b733a31313a22746d656d6265725f616464223b733a323a226e6f223b733a31323a22746d656d6265725f65646974223b733a323a226e6f223b733a31343a22746d656d6265725f64656c657465223b733a323a226e6f223b733a31323a22746d656d6265725f76696577223b733a323a226e6f223b733a363a22686f7374656c223b733a323a226e6f223b733a31303a22686f7374656c5f616464223b733a323a226e6f223b733a31313a22686f7374656c5f65646974223b733a323a226e6f223b733a31333a22686f7374656c5f64656c657465223b733a323a226e6f223b733a383a2263617465676f7279223b733a323a226e6f223b733a31323a2263617465676f72795f616464223b733a323a226e6f223b733a31333a2263617465676f72795f65646974223b733a323a226e6f223b733a31353a2263617465676f72795f64656c657465223b733a323a226e6f223b733a373a22686d656d626572223b733a323a226e6f223b733a31313a22686d656d6265725f616464223b733a323a226e6f223b733a31323a22686d656d6265725f65646974223b733a323a226e6f223b733a31343a22686d656d6265725f64656c657465223b733a323a226e6f223b733a31323a22686d656d6265725f76696577223b733a323a226e6f223b733a383a226665657479706573223b733a323a226e6f223b733a31323a2266656574797065735f616464223b733a323a226e6f223b733a31333a2266656574797065735f65646974223b733a323a226e6f223b733a31353a2266656574797065735f64656c657465223b733a323a226e6f223b733a373a22696e766f696365223b733a323a226e6f223b733a31313a22696e766f6963655f616464223b733a323a226e6f223b733a31323a22696e766f6963655f65646974223b733a323a226e6f223b733a31343a22696e766f6963655f64656c657465223b733a323a226e6f223b733a31323a22696e766f6963655f76696577223b733a323a226e6f223b733a31343a227061796d656e74686973746f7279223b733a323a226e6f223b733a31393a227061796d656e74686973746f72795f65646974223b733a323a226e6f223b733a32313a227061796d656e74686973746f72795f64656c657465223b733a323a226e6f223b733a373a22657870656e7365223b733a323a226e6f223b733a31313a22657870656e73655f616464223b733a323a226e6f223b733a31323a22657870656e73655f65646974223b733a323a226e6f223b733a31343a22657870656e73655f64656c657465223b733a323a226e6f223b733a31303a226e6f746963655f616464223b733a323a226e6f223b733a31313a226e6f746963655f65646974223b733a323a226e6f223b733a31333a226e6f746963655f64656c657465223b733a323a226e6f223b733a393a226576656e745f616464223b733a323a226e6f223b733a31303a226576656e745f65646974223b733a323a226e6f223b733a31323a226576656e745f64656c657465223b733a323a226e6f223b733a373a22686f6c69646179223b733a323a226e6f223b733a31313a22686f6c696461795f616464223b733a323a226e6f223b733a31323a22686f6c696461795f65646974223b733a323a226e6f223b733a31343a22686f6c696461795f64656c657465223b733a323a226e6f223b733a31323a22686f6c696461795f76696577223b733a323a226e6f223b733a363a227265706f7274223b733a323a226e6f223b733a32303a227265706f72742f73747564656e747265706f7274223b733a323a226e6f223b733a31383a227265706f72742f636c6173737265706f7274223b733a323a226e6f223b733a32333a227265706f72742f617474656e64616e63657265706f7274223b733a323a226e6f223b733a31383a227265706f72742f6365727469666963617465223b733a323a226e6f223b733a31313a2276697369746f72696e666f223b733a323a226e6f223b733a31383a2276697369746f72696e666f5f64656c657465223b733a323a226e6f223b733a31363a2276697369746f72696e666f5f76696577223b733a323a226e6f223b733a31303a227363686f6f6c79656172223b733a323a226e6f223b733a31343a227363686f6f6c796561725f616464223b733a323a226e6f223b733a31353a227363686f6f6c796561725f65646974223b733a323a226e6f223b733a31373a227363686f6f6c796561725f64656c657465223b733a323a226e6f223b733a31313a2273797374656d61646d696e223b733a323a226e6f223b733a31353a2273797374656d61646d696e5f616464223b733a323a226e6f223b733a31363a2273797374656d61646d696e5f65646974223b733a323a226e6f223b733a31383a2273797374656d61646d696e5f64656c657465223b733a323a226e6f223b733a31363a2273797374656d61646d696e5f76696577223b733a323a226e6f223b733a31333a22726573657470617373776f7264223b733a323a226e6f223b733a31383a226d61696c616e64736d7374656d706c617465223b733a323a226e6f223b733a32323a226d61696c616e64736d7374656d706c6174655f616464223b733a323a226e6f223b733a32333a226d61696c616e64736d7374656d706c6174655f65646974223b733a323a226e6f223b733a32353a226d61696c616e64736d7374656d706c6174655f64656c657465223b733a323a226e6f223b733a32333a226d61696c616e64736d7374656d706c6174655f76696577223b733a323a226e6f223b733a31313a2262756c6b696d706f727420223b733a323a226e6f223b733a363a226261636b7570223b733a323a226e6f223b733a383a227573657274797065223b733a323a226e6f223b733a31323a2275736572747970655f616464223b733a323a226e6f223b733a31333a2275736572747970655f65646974223b733a323a226e6f223b733a31353a2275736572747970655f64656c657465223b733a323a226e6f223b733a31303a227065726d697373696f6e223b733a323a226e6f223b733a363a22757064617465223b733a323a226e6f223b733a373a2273657474696e67223b733a323a226e6f223b733a31323a2273657474696e675f65646974223b733a323a226e6f223b733a31353a227061796d656e7473657474696e6773223b733a323a226e6f223b733a31313a22736d7373657474696e6773223b733a323a226e6f223b733a393a2274616b655f6578616d223b733a333a22796573223b7d),
('491f0muvi7ikea1c94n2fehmd4t07ue8', '::1', 1633801387, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333830313337303b6c616e677c733a373a227370616e697368223b6c6f67696e7573657249447c733a313a2231223b6e616d657c733a32333a224461726c696e6720436174616c616e204d6f72616c6573223b656d61696c7c733a32333a2264636174616c616e6d32406d69756d672e6564752e6774223b757365727479706549447c733a313a2231223b75736572747970657c733a31333a2241646d696e6973747261646f72223b757365726e616d657c733a353a2261646d696e223b70686f746f7c733a3133323a2236386636326430373361656435376230646632306230633364616331336231663939633531306333616330366665393238393537343330343738626231633737323465386131396634363331336431633765656335653166356235643366353439616532316361636663333739663464303231626432323539626638636661622e6a7067223b64656661756c747363686f6f6c7965617249447c733a313a2231223b6c6f67676564696e7c623a313b6765745f7065726d697373696f6e7c623a313b6d61737465725f7065726d697373696f6e5f7365747c613a3138343a7b733a393a2264617368626f617264223b733a333a22796573223b733a373a2273747564656e74223b733a333a22796573223b733a31313a2273747564656e745f616464223b733a333a22796573223b733a31323a2273747564656e745f65646974223b733a333a22796573223b733a31343a2273747564656e745f64656c657465223b733a333a22796573223b733a31323a2273747564656e745f76696577223b733a333a22796573223b733a373a22706172656e7473223b733a333a22796573223b733a31313a22706172656e74735f616464223b733a333a22796573223b733a31323a22706172656e74735f65646974223b733a333a22796573223b733a31343a22706172656e74735f64656c657465223b733a333a22796573223b733a31323a22706172656e74735f76696577223b733a333a22796573223b733a373a2274656163686572223b733a333a22796573223b733a31313a22746561636865725f616464223b733a333a22796573223b733a31323a22746561636865725f65646974223b733a333a22796573223b733a31343a22746561636865725f64656c657465223b733a333a22796573223b733a31323a22746561636865725f76696577223b733a333a22796573223b733a343a2275736572223b733a333a22796573223b733a383a22757365725f616464223b733a333a22796573223b733a393a22757365725f65646974223b733a333a22796573223b733a31313a22757365725f64656c657465223b733a333a22796573223b733a393a22757365725f76696577223b733a333a22796573223b733a373a22636c6173736573223b733a333a22796573223b733a31313a22636c61737365735f616464223b733a333a22796573223b733a31323a22636c61737365735f65646974223b733a333a22796573223b733a31343a22636c61737365735f64656c657465223b733a333a22796573223b733a373a227375626a656374223b733a333a22796573223b733a31313a227375626a6563745f616464223b733a333a22796573223b733a31323a227375626a6563745f65646974223b733a333a22796573223b733a31343a227375626a6563745f64656c657465223b733a333a22796573223b733a373a2273656374696f6e223b733a333a22796573223b733a31313a2273656374696f6e5f616464223b733a333a22796573223b733a31323a2273656374696f6e5f65646974223b733a333a22796573223b733a31353a2273656d65737465725f64656c657465223b733a333a22796573223b733a31343a2273656374696f6e5f64656c657465223b733a333a22796573223b733a383a2273796c6c61627573223b733a333a22796573223b733a31323a2273796c6c616275735f616464223b733a333a22796573223b733a31333a2273796c6c616275735f65646974223b733a333a22796573223b733a31353a2273796c6c616275735f64656c657465223b733a333a22796573223b733a31303a2261737369676e6d656e74223b733a333a22796573223b733a31343a2261737369676e6d656e745f616464223b733a333a22796573223b733a31353a2261737369676e6d656e745f65646974223b733a333a22796573223b733a31373a2261737369676e6d656e745f64656c657465223b733a333a22796573223b733a31353a2261737369676e6d656e745f76696577223b733a333a22796573223b733a373a22726f7574696e65223b733a333a22796573223b733a31313a22726f7574696e655f616464223b733a333a22796573223b733a31323a22726f7574696e655f65646974223b733a333a22796573223b733a31343a22726f7574696e655f64656c657465223b733a333a22796573223b733a31313a2273617474656e64616e6365223b733a333a22796573223b733a31353a2273617474656e64616e63655f616464223b733a333a22796573223b733a31363a2273617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2274617474656e64616e6365223b733a333a22796573223b733a31353a2274617474656e64616e63655f616464223b733a333a22796573223b733a31363a2274617474656e64616e63655f76696577223b733a333a22796573223b733a343a226578616d223b733a333a22796573223b733a383a226578616d5f616464223b733a333a22796573223b733a393a226578616d5f65646974223b733a333a22796573223b733a31313a226578616d5f64656c657465223b733a333a22796573223b733a31323a226578616d7363686564756c65223b733a333a22796573223b733a31363a226578616d7363686564756c655f616464223b733a333a22796573223b733a31373a226578616d7363686564756c655f65646974223b733a333a22796573223b733a31393a226578616d7363686564756c655f64656c657465223b733a333a22796573223b733a353a226772616465223b733a333a22796573223b733a393a2267726164655f616464223b733a333a22796573223b733a31303a2267726164655f65646974223b733a333a22796573223b733a31323a2267726164655f64656c657465223b733a333a22796573223b733a31313a2265617474656e64616e6365223b733a333a22796573223b733a31353a2265617474656e64616e63655f616464223b733a333a22796573223b733a343a226d61726b223b733a333a22796573223b733a383a226d61726b5f616464223b733a333a22796573223b733a393a226d61726b5f76696577223b733a333a22796573223b733a31343a226d61726b70657263656e74616765223b733a333a22796573223b733a31383a226d61726b70657263656e746167655f616464223b733a333a22796573223b733a31393a226d61726b70657263656e746167655f65646974223b733a333a22796573223b733a32313a226d61726b70657263656e746167655f64656c657465223b733a333a22796573223b733a393a2270726f6d6f74696f6e223b733a333a22796573223b733a31323a22636f6e766572736174696f6e223b733a333a22796573223b733a353a226d65646961223b733a333a22796573223b733a393a226d656469615f616464223b733a333a22796573223b733a31323a226d656469615f64656c657465223b733a333a22796573223b733a31303a226d61696c616e64736d73223b733a333a22796573223b733a31343a226d61696c616e64736d735f616464223b733a333a22796573223b733a31353a226d61696c616e64736d735f76696577223b733a333a22796573223b733a373a226c6d656d626572223b733a333a22796573223b733a31313a226c6d656d6265725f616464223b733a333a22796573223b733a31323a226c6d656d6265725f65646974223b733a333a22796573223b733a31343a226c6d656d6265725f64656c657465223b733a333a22796573223b733a31323a226c6d656d6265725f76696577223b733a333a22796573223b733a343a22626f6f6b223b733a333a22796573223b733a383a22626f6f6b5f616464223b733a333a22796573223b733a393a22626f6f6b5f65646974223b733a333a22796573223b733a31313a22626f6f6b5f64656c657465223b733a333a22796573223b733a353a226973737565223b733a333a22796573223b733a393a2269737375655f616464223b733a333a22796573223b733a31303a2269737375655f65646974223b733a333a22796573223b733a31303a2269737375655f76696577223b733a333a22796573223b733a393a227472616e73706f7274223b733a333a22796573223b733a31333a227472616e73706f72745f616464223b733a333a22796573223b733a31343a227472616e73706f72745f65646974223b733a333a22796573223b733a31363a227472616e73706f72745f64656c657465223b733a333a22796573223b733a373a22746d656d626572223b733a333a22796573223b733a31313a22746d656d6265725f616464223b733a333a22796573223b733a31323a22746d656d6265725f65646974223b733a333a22796573223b733a31343a22746d656d6265725f64656c657465223b733a333a22796573223b733a31323a22746d656d6265725f76696577223b733a333a22796573223b733a363a22686f7374656c223b733a333a22796573223b733a31303a22686f7374656c5f616464223b733a333a22796573223b733a31313a22686f7374656c5f65646974223b733a333a22796573223b733a31333a22686f7374656c5f64656c657465223b733a333a22796573223b733a383a2263617465676f7279223b733a333a22796573223b733a31323a2263617465676f72795f616464223b733a333a22796573223b733a31333a2263617465676f72795f65646974223b733a333a22796573223b733a31353a2263617465676f72795f64656c657465223b733a333a22796573223b733a373a22686d656d626572223b733a333a22796573223b733a31313a22686d656d6265725f616464223b733a333a22796573223b733a31323a22686d656d6265725f65646974223b733a333a22796573223b733a31343a22686d656d6265725f64656c657465223b733a333a22796573223b733a31323a22686d656d6265725f76696577223b733a333a22796573223b733a383a226665657479706573223b733a333a22796573223b733a31323a2266656574797065735f616464223b733a333a22796573223b733a31333a2266656574797065735f65646974223b733a333a22796573223b733a31353a2266656574797065735f64656c657465223b733a333a22796573223b733a373a22696e766f696365223b733a333a22796573223b733a31313a22696e766f6963655f616464223b733a333a22796573223b733a31323a22696e766f6963655f65646974223b733a333a22796573223b733a31343a22696e766f6963655f64656c657465223b733a333a22796573223b733a31323a22696e766f6963655f76696577223b733a333a22796573223b733a31343a227061796d656e74686973746f7279223b733a333a22796573223b733a31393a227061796d656e74686973746f72795f65646974223b733a333a22796573223b733a32313a227061796d656e74686973746f72795f64656c657465223b733a333a22796573223b733a373a22657870656e7365223b733a333a22796573223b733a31313a22657870656e73655f616464223b733a333a22796573223b733a31323a22657870656e73655f65646974223b733a333a22796573223b733a31343a22657870656e73655f64656c657465223b733a333a22796573223b733a363a226e6f74696365223b733a333a22796573223b733a31303a226e6f746963655f616464223b733a333a22796573223b733a31313a226e6f746963655f65646974223b733a333a22796573223b733a31333a226e6f746963655f64656c657465223b733a333a22796573223b733a31313a226e6f746963655f76696577223b733a333a22796573223b733a353a226576656e74223b733a333a22796573223b733a393a226576656e745f616464223b733a333a22796573223b733a31303a226576656e745f65646974223b733a333a22796573223b733a31323a226576656e745f64656c657465223b733a333a22796573223b733a31303a226576656e745f76696577223b733a333a22796573223b733a373a22686f6c69646179223b733a333a22796573223b733a31313a22686f6c696461795f616464223b733a333a22796573223b733a31323a22686f6c696461795f65646974223b733a333a22796573223b733a31343a22686f6c696461795f64656c657465223b733a333a22796573223b733a31323a22686f6c696461795f76696577223b733a333a22796573223b733a363a227265706f7274223b733a333a22796573223b733a32303a227265706f72742f73747564656e747265706f7274223b733a333a22796573223b733a31383a227265706f72742f636c6173737265706f7274223b733a333a22796573223b733a32333a227265706f72742f617474656e64616e63657265706f7274223b733a333a22796573223b733a31383a227265706f72742f6365727469666963617465223b733a333a22796573223b733a31313a2276697369746f72696e666f223b733a333a22796573223b733a31383a2276697369746f72696e666f5f64656c657465223b733a333a22796573223b733a31363a2276697369746f72696e666f5f76696577223b733a333a22796573223b733a31303a227363686f6f6c79656172223b733a333a22796573223b733a31343a227363686f6f6c796561725f616464223b733a333a22796573223b733a31353a227363686f6f6c796561725f65646974223b733a333a22796573223b733a31373a227363686f6f6c796561725f64656c657465223b733a333a22796573223b733a31313a2273797374656d61646d696e223b733a333a22796573223b733a31353a2273797374656d61646d696e5f616464223b733a333a22796573223b733a31363a2273797374656d61646d696e5f65646974223b733a333a22796573223b733a31383a2273797374656d61646d696e5f64656c657465223b733a333a22796573223b733a31363a2273797374656d61646d696e5f76696577223b733a333a22796573223b733a31333a22726573657470617373776f7264223b733a333a22796573223b733a31383a226d61696c616e64736d7374656d706c617465223b733a333a22796573223b733a32323a226d61696c616e64736d7374656d706c6174655f616464223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f65646974223b733a333a22796573223b733a32353a226d61696c616e64736d7374656d706c6174655f64656c657465223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f76696577223b733a333a22796573223b733a31303a2262756c6b696d706f7274223b733a333a22796573223b733a363a226261636b7570223b733a333a22796573223b733a383a227573657274797065223b733a333a22796573223b733a31323a2275736572747970655f616464223b733a333a22796573223b733a31333a2275736572747970655f65646974223b733a333a22796573223b733a31353a2275736572747970655f64656c657465223b733a333a22796573223b733a31303a227065726d697373696f6e223b733a333a22796573223b733a363a22757064617465223b733a333a22796573223b733a373a2273657474696e67223b733a333a22796573223b733a31323a2273657474696e675f65646974223b733a333a22796573223b733a31353a227061796d656e7473657474696e6773223b733a333a22796573223b733a31313a22736d7373657474696e6773223b733a333a22796573223b733a393a2274616b655f6578616d223b733a333a22796573223b7d),
('4m4i0u54f7eqvnl6ab4v2enhbot579l3', '::1', 1633807673, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333830373637333b6c616e677c733a373a227370616e697368223b6c6f67696e7573657249447c733a323a223131223b6e616d657c733a373a22796f73656c696e223b656d61696c7c733a31343a22796f736540676d61696c2e636f6d223b757365727479706549447c733a313a2233223b75736572747970657c733a31303a22457374756469616e7465223b757365726e616d657c733a343a22796f7369223b70686f746f7c733a3133323a2264336561383865313431343436616231663261643432366633336539386462626239323036616534316132346364623464623635663830653064653834306662326261333262643961366164633135346365323537396433623161313065343063353163363234623961633462393166613366383933373331623764666562652e706e67223b64656661756c747363686f6f6c7965617249447c733a313a2231223b6c6f67676564696e7c623a313b6765745f7065726d697373696f6e7c623a313b6d61737465725f7065726d697373696f6e5f7365747c613a3138343a7b733a393a2264617368626f617264223b733a333a22796573223b733a373a2274656163686572223b733a333a22796573223b733a373a227375626a656374223b733a333a22796573223b733a383a2273796c6c61627573223b733a333a22796573223b733a31303a2261737369676e6d656e74223b733a333a22796573223b733a31353a2261737369676e6d656e745f76696577223b733a333a22796573223b733a31313a2273617474656e64616e6365223b733a333a22796573223b733a31353a2273617474656e64616e63655f616464223b733a333a22796573223b733a31363a2273617474656e64616e63655f76696577223b733a333a22796573223b733a31323a226578616d7363686564756c65223b733a333a22796573223b733a343a226d61726b223b733a333a22796573223b733a393a226d61726b5f76696577223b733a333a22796573223b733a353a226d65646961223b733a333a22796573223b733a393a226d656469615f616464223b733a333a22796573223b733a363a226e6f74696365223b733a333a22796573223b733a31313a226e6f746963655f76696577223b733a333a22796573223b733a353a226576656e74223b733a333a22796573223b733a31303a226576656e745f76696577223b733a333a22796573223b733a373a22726f7574696e65223b733a333a22796573223b733a373a22636c6173736573223b733a333a22796573223b733a31313a22636c61737365735f616464223b733a333a22796573223b733a31323a22636c61737365735f65646974223b733a333a22796573223b733a31343a22636c61737365735f64656c657465223b733a333a22796573223b733a373a2273656374696f6e223b733a333a22796573223b733a31313a2273656374696f6e5f616464223b733a333a22796573223b733a31323a2273656374696f6e5f65646974223b733a333a22796573223b733a31343a2273656374696f6e5f64656c657465223b733a333a22796573223b733a343a226578616d223b733a333a22796573223b733a383a226578616d5f616464223b733a333a22796573223b733a353a226772616465223b733a333a22796573223b733a393a2267726164655f616464223b733a333a22796573223b733a31313a2265617474656e64616e6365223b733a333a22796573223b733a31353a2265617474656e64616e63655f616464223b733a333a22796573223b733a373a2273747564656e74223b733a323a226e6f223b733a31313a2273747564656e745f616464223b733a323a226e6f223b733a31323a2273747564656e745f65646974223b733a323a226e6f223b733a31343a2273747564656e745f64656c657465223b733a323a226e6f223b733a31323a2273747564656e745f76696577223b733a323a226e6f223b733a373a22706172656e7473223b733a323a226e6f223b733a31313a22706172656e74735f616464223b733a323a226e6f223b733a31323a22706172656e74735f65646974223b733a323a226e6f223b733a31343a22706172656e74735f64656c657465223b733a323a226e6f223b733a31323a22706172656e74735f76696577223b733a323a226e6f223b733a31313a22746561636865725f616464223b733a323a226e6f223b733a31323a22746561636865725f65646974223b733a323a226e6f223b733a31343a22746561636865725f64656c657465223b733a323a226e6f223b733a31323a22746561636865725f76696577223b733a323a226e6f223b733a343a2275736572223b733a323a226e6f223b733a383a22757365725f616464223b733a323a226e6f223b733a393a22757365725f65646974223b733a323a226e6f223b733a31313a22757365725f64656c657465223b733a323a226e6f223b733a393a22757365725f76696577223b733a323a226e6f223b733a31313a227375626a6563745f616464223b733a323a226e6f223b733a31323a227375626a6563745f65646974223b733a323a226e6f223b733a31343a227375626a6563745f64656c657465223b733a323a226e6f223b733a31353a2273656d65737465725f64656c657465223b733a323a226e6f223b733a31323a2273796c6c616275735f616464223b733a323a226e6f223b733a31333a2273796c6c616275735f65646974223b733a323a226e6f223b733a31353a2273796c6c616275735f64656c657465223b733a323a226e6f223b733a31343a2261737369676e6d656e745f616464223b733a323a226e6f223b733a31353a2261737369676e6d656e745f65646974223b733a323a226e6f223b733a31373a2261737369676e6d656e745f64656c657465223b733a323a226e6f223b733a31313a22726f7574696e655f616464223b733a323a226e6f223b733a31323a22726f7574696e655f65646974223b733a323a226e6f223b733a31343a22726f7574696e655f64656c657465223b733a323a226e6f223b733a31313a2274617474656e64616e6365223b733a323a226e6f223b733a31353a2274617474656e64616e63655f616464223b733a323a226e6f223b733a31363a2274617474656e64616e63655f76696577223b733a323a226e6f223b733a393a226578616d5f65646974223b733a323a226e6f223b733a31313a226578616d5f64656c657465223b733a323a226e6f223b733a31363a226578616d7363686564756c655f616464223b733a323a226e6f223b733a31373a226578616d7363686564756c655f65646974223b733a323a226e6f223b733a31393a226578616d7363686564756c655f64656c657465223b733a323a226e6f223b733a31303a2267726164655f65646974223b733a323a226e6f223b733a31323a2267726164655f64656c657465223b733a323a226e6f223b733a383a226d61726b5f616464223b733a323a226e6f223b733a31343a226d61726b70657263656e74616765223b733a323a226e6f223b733a31383a226d61726b70657263656e746167655f616464223b733a323a226e6f223b733a31393a226d61726b70657263656e746167655f65646974223b733a323a226e6f223b733a32313a226d61726b70657263656e746167655f64656c657465223b733a323a226e6f223b733a393a2270726f6d6f74696f6e223b733a323a226e6f223b733a31323a22636f6e766572736174696f6e223b733a323a226e6f223b733a31323a226d656469615f64656c657465223b733a323a226e6f223b733a31303a226d61696c616e64736d73223b733a323a226e6f223b733a31343a226d61696c616e64736d735f616464223b733a323a226e6f223b733a31353a226d61696c616e64736d735f76696577223b733a323a226e6f223b733a373a226c6d656d626572223b733a323a226e6f223b733a31313a226c6d656d6265725f616464223b733a323a226e6f223b733a31323a226c6d656d6265725f65646974223b733a323a226e6f223b733a31343a226c6d656d6265725f64656c657465223b733a323a226e6f223b733a31323a226c6d656d6265725f76696577223b733a323a226e6f223b733a343a22626f6f6b223b733a323a226e6f223b733a383a22626f6f6b5f616464223b733a323a226e6f223b733a393a22626f6f6b5f65646974223b733a323a226e6f223b733a31313a22626f6f6b5f64656c657465223b733a323a226e6f223b733a353a226973737565223b733a323a226e6f223b733a393a2269737375655f616464223b733a323a226e6f223b733a31303a2269737375655f65646974223b733a323a226e6f223b733a31303a2269737375655f76696577223b733a323a226e6f223b733a393a227472616e73706f7274223b733a323a226e6f223b733a31333a227472616e73706f72745f616464223b733a323a226e6f223b733a31343a227472616e73706f72745f65646974223b733a323a226e6f223b733a31363a227472616e73706f72745f64656c657465223b733a323a226e6f223b733a373a22746d656d626572223b733a323a226e6f223b733a31313a22746d656d6265725f616464223b733a323a226e6f223b733a31323a22746d656d6265725f65646974223b733a323a226e6f223b733a31343a22746d656d6265725f64656c657465223b733a323a226e6f223b733a31323a22746d656d6265725f76696577223b733a323a226e6f223b733a363a22686f7374656c223b733a323a226e6f223b733a31303a22686f7374656c5f616464223b733a323a226e6f223b733a31313a22686f7374656c5f65646974223b733a323a226e6f223b733a31333a22686f7374656c5f64656c657465223b733a323a226e6f223b733a383a2263617465676f7279223b733a323a226e6f223b733a31323a2263617465676f72795f616464223b733a323a226e6f223b733a31333a2263617465676f72795f65646974223b733a323a226e6f223b733a31353a2263617465676f72795f64656c657465223b733a323a226e6f223b733a373a22686d656d626572223b733a323a226e6f223b733a31313a22686d656d6265725f616464223b733a323a226e6f223b733a31323a22686d656d6265725f65646974223b733a323a226e6f223b733a31343a22686d656d6265725f64656c657465223b733a323a226e6f223b733a31323a22686d656d6265725f76696577223b733a323a226e6f223b733a383a226665657479706573223b733a323a226e6f223b733a31323a2266656574797065735f616464223b733a323a226e6f223b733a31333a2266656574797065735f65646974223b733a323a226e6f223b733a31353a2266656574797065735f64656c657465223b733a323a226e6f223b733a373a22696e766f696365223b733a323a226e6f223b733a31313a22696e766f6963655f616464223b733a323a226e6f223b733a31323a22696e766f6963655f65646974223b733a323a226e6f223b733a31343a22696e766f6963655f64656c657465223b733a323a226e6f223b733a31323a22696e766f6963655f76696577223b733a323a226e6f223b733a31343a227061796d656e74686973746f7279223b733a323a226e6f223b733a31393a227061796d656e74686973746f72795f65646974223b733a323a226e6f223b733a32313a227061796d656e74686973746f72795f64656c657465223b733a323a226e6f223b733a373a22657870656e7365223b733a323a226e6f223b733a31313a22657870656e73655f616464223b733a323a226e6f223b733a31323a22657870656e73655f65646974223b733a323a226e6f223b733a31343a22657870656e73655f64656c657465223b733a323a226e6f223b733a31303a226e6f746963655f616464223b733a323a226e6f223b733a31313a226e6f746963655f65646974223b733a323a226e6f223b733a31333a226e6f746963655f64656c657465223b733a323a226e6f223b733a393a226576656e745f616464223b733a323a226e6f223b733a31303a226576656e745f65646974223b733a323a226e6f223b733a31323a226576656e745f64656c657465223b733a323a226e6f223b733a373a22686f6c69646179223b733a323a226e6f223b733a31313a22686f6c696461795f616464223b733a323a226e6f223b733a31323a22686f6c696461795f65646974223b733a323a226e6f223b733a31343a22686f6c696461795f64656c657465223b733a323a226e6f223b733a31323a22686f6c696461795f76696577223b733a323a226e6f223b733a363a227265706f7274223b733a323a226e6f223b733a32303a227265706f72742f73747564656e747265706f7274223b733a323a226e6f223b733a31383a227265706f72742f636c6173737265706f7274223b733a323a226e6f223b733a32333a227265706f72742f617474656e64616e63657265706f7274223b733a323a226e6f223b733a31383a227265706f72742f6365727469666963617465223b733a323a226e6f223b733a31313a2276697369746f72696e666f223b733a323a226e6f223b733a31383a2276697369746f72696e666f5f64656c657465223b733a323a226e6f223b733a31363a2276697369746f72696e666f5f76696577223b733a323a226e6f223b733a31303a227363686f6f6c79656172223b733a323a226e6f223b733a31343a227363686f6f6c796561725f616464223b733a323a226e6f223b733a31353a227363686f6f6c796561725f65646974223b733a323a226e6f223b733a31373a227363686f6f6c796561725f64656c657465223b733a323a226e6f223b733a31313a2273797374656d61646d696e223b733a323a226e6f223b733a31353a2273797374656d61646d696e5f616464223b733a323a226e6f223b733a31363a2273797374656d61646d696e5f65646974223b733a323a226e6f223b733a31383a2273797374656d61646d696e5f64656c657465223b733a323a226e6f223b733a31363a2273797374656d61646d696e5f76696577223b733a323a226e6f223b733a31333a22726573657470617373776f7264223b733a323a226e6f223b733a31383a226d61696c616e64736d7374656d706c617465223b733a323a226e6f223b733a32323a226d61696c616e64736d7374656d706c6174655f616464223b733a323a226e6f223b733a32333a226d61696c616e64736d7374656d706c6174655f65646974223b733a323a226e6f223b733a32353a226d61696c616e64736d7374656d706c6174655f64656c657465223b733a323a226e6f223b733a32333a226d61696c616e64736d7374656d706c6174655f76696577223b733a323a226e6f223b733a31313a2262756c6b696d706f727420223b733a323a226e6f223b733a363a226261636b7570223b733a323a226e6f223b733a383a227573657274797065223b733a323a226e6f223b733a31323a2275736572747970655f616464223b733a323a226e6f223b733a31333a2275736572747970655f65646974223b733a323a226e6f223b733a31353a2275736572747970655f64656c657465223b733a323a226e6f223b733a31303a227065726d697373696f6e223b733a323a226e6f223b733a363a22757064617465223b733a323a226e6f223b733a373a2273657474696e67223b733a323a226e6f223b733a31323a2273657474696e675f65646974223b733a323a226e6f223b733a31353a227061796d656e7473657474696e6773223b733a323a226e6f223b733a31313a22736d7373657474696e6773223b733a323a226e6f223b733a393a2274616b655f6578616d223b733a333a22796573223b7d),
('5fgc3k9cpjbo0mkj7nd4md6l8c99p7nm', '::1', 1633806931, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333830363833393b6c616e677c733a373a227370616e697368223b),
('5s8ilgmfm22e738jk2hnuv7n4q38pc4v', '::1', 1633805485, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333830353433333b6c616e677c733a373a227370616e697368223b6c6f67696e7573657249447c733a323a223131223b6e616d657c733a373a22796f73656c696e223b656d61696c7c733a31343a22796f736540676d61696c2e636f6d223b757365727479706549447c733a313a2233223b75736572747970657c733a31303a22457374756469616e7465223b757365726e616d657c733a343a22796f7369223b70686f746f7c733a3133323a2264336561383865313431343436616231663261643432366633336539386462626239323036616534316132346364623464623635663830653064653834306662326261333262643961366164633135346365323537396433623161313065343063353163363234623961633462393166613366383933373331623764666562652e706e67223b64656661756c747363686f6f6c7965617249447c733a313a2231223b6c6f67676564696e7c623a313b6765745f7065726d697373696f6e7c623a313b6d61737465725f7065726d697373696f6e5f7365747c613a3138343a7b733a393a2264617368626f617264223b733a333a22796573223b733a373a2274656163686572223b733a333a22796573223b733a373a227375626a656374223b733a333a22796573223b733a383a2273796c6c61627573223b733a333a22796573223b733a31303a2261737369676e6d656e74223b733a333a22796573223b733a31353a2261737369676e6d656e745f76696577223b733a333a22796573223b733a31313a2273617474656e64616e6365223b733a333a22796573223b733a31353a2273617474656e64616e63655f616464223b733a333a22796573223b733a31363a2273617474656e64616e63655f76696577223b733a333a22796573223b733a31323a226578616d7363686564756c65223b733a333a22796573223b733a343a226d61726b223b733a333a22796573223b733a393a226d61726b5f76696577223b733a333a22796573223b733a353a226d65646961223b733a333a22796573223b733a393a226d656469615f616464223b733a333a22796573223b733a363a226e6f74696365223b733a333a22796573223b733a31313a226e6f746963655f76696577223b733a333a22796573223b733a353a226576656e74223b733a333a22796573223b733a31303a226576656e745f76696577223b733a333a22796573223b733a373a22726f7574696e65223b733a333a22796573223b733a373a22636c6173736573223b733a333a22796573223b733a31313a22636c61737365735f616464223b733a333a22796573223b733a31323a22636c61737365735f65646974223b733a333a22796573223b733a31343a22636c61737365735f64656c657465223b733a333a22796573223b733a373a2273656374696f6e223b733a333a22796573223b733a31313a2273656374696f6e5f616464223b733a333a22796573223b733a31323a2273656374696f6e5f65646974223b733a333a22796573223b733a31343a2273656374696f6e5f64656c657465223b733a333a22796573223b733a343a226578616d223b733a333a22796573223b733a383a226578616d5f616464223b733a333a22796573223b733a353a226772616465223b733a333a22796573223b733a393a2267726164655f616464223b733a333a22796573223b733a31313a2265617474656e64616e6365223b733a333a22796573223b733a31353a2265617474656e64616e63655f616464223b733a333a22796573223b733a373a2273747564656e74223b733a323a226e6f223b733a31313a2273747564656e745f616464223b733a323a226e6f223b733a31323a2273747564656e745f65646974223b733a323a226e6f223b733a31343a2273747564656e745f64656c657465223b733a323a226e6f223b733a31323a2273747564656e745f76696577223b733a323a226e6f223b733a373a22706172656e7473223b733a323a226e6f223b733a31313a22706172656e74735f616464223b733a323a226e6f223b733a31323a22706172656e74735f65646974223b733a323a226e6f223b733a31343a22706172656e74735f64656c657465223b733a323a226e6f223b733a31323a22706172656e74735f76696577223b733a323a226e6f223b733a31313a22746561636865725f616464223b733a323a226e6f223b733a31323a22746561636865725f65646974223b733a323a226e6f223b733a31343a22746561636865725f64656c657465223b733a323a226e6f223b733a31323a22746561636865725f76696577223b733a323a226e6f223b733a343a2275736572223b733a323a226e6f223b733a383a22757365725f616464223b733a323a226e6f223b733a393a22757365725f65646974223b733a323a226e6f223b733a31313a22757365725f64656c657465223b733a323a226e6f223b733a393a22757365725f76696577223b733a323a226e6f223b733a31313a227375626a6563745f616464223b733a323a226e6f223b733a31323a227375626a6563745f65646974223b733a323a226e6f223b733a31343a227375626a6563745f64656c657465223b733a323a226e6f223b733a31353a2273656d65737465725f64656c657465223b733a323a226e6f223b733a31323a2273796c6c616275735f616464223b733a323a226e6f223b733a31333a2273796c6c616275735f65646974223b733a323a226e6f223b733a31353a2273796c6c616275735f64656c657465223b733a323a226e6f223b733a31343a2261737369676e6d656e745f616464223b733a323a226e6f223b733a31353a2261737369676e6d656e745f65646974223b733a323a226e6f223b733a31373a2261737369676e6d656e745f64656c657465223b733a323a226e6f223b733a31313a22726f7574696e655f616464223b733a323a226e6f223b733a31323a22726f7574696e655f65646974223b733a323a226e6f223b733a31343a22726f7574696e655f64656c657465223b733a323a226e6f223b733a31313a2274617474656e64616e6365223b733a323a226e6f223b733a31353a2274617474656e64616e63655f616464223b733a323a226e6f223b733a31363a2274617474656e64616e63655f76696577223b733a323a226e6f223b733a393a226578616d5f65646974223b733a323a226e6f223b733a31313a226578616d5f64656c657465223b733a323a226e6f223b733a31363a226578616d7363686564756c655f616464223b733a323a226e6f223b733a31373a226578616d7363686564756c655f65646974223b733a323a226e6f223b733a31393a226578616d7363686564756c655f64656c657465223b733a323a226e6f223b733a31303a2267726164655f65646974223b733a323a226e6f223b733a31323a2267726164655f64656c657465223b733a323a226e6f223b733a383a226d61726b5f616464223b733a323a226e6f223b733a31343a226d61726b70657263656e74616765223b733a323a226e6f223b733a31383a226d61726b70657263656e746167655f616464223b733a323a226e6f223b733a31393a226d61726b70657263656e746167655f65646974223b733a323a226e6f223b733a32313a226d61726b70657263656e746167655f64656c657465223b733a323a226e6f223b733a393a2270726f6d6f74696f6e223b733a323a226e6f223b733a31323a22636f6e766572736174696f6e223b733a323a226e6f223b733a31323a226d656469615f64656c657465223b733a323a226e6f223b733a31303a226d61696c616e64736d73223b733a323a226e6f223b733a31343a226d61696c616e64736d735f616464223b733a323a226e6f223b733a31353a226d61696c616e64736d735f76696577223b733a323a226e6f223b733a373a226c6d656d626572223b733a323a226e6f223b733a31313a226c6d656d6265725f616464223b733a323a226e6f223b733a31323a226c6d656d6265725f65646974223b733a323a226e6f223b733a31343a226c6d656d6265725f64656c657465223b733a323a226e6f223b733a31323a226c6d656d6265725f76696577223b733a323a226e6f223b733a343a22626f6f6b223b733a323a226e6f223b733a383a22626f6f6b5f616464223b733a323a226e6f223b733a393a22626f6f6b5f65646974223b733a323a226e6f223b733a31313a22626f6f6b5f64656c657465223b733a323a226e6f223b733a353a226973737565223b733a323a226e6f223b733a393a2269737375655f616464223b733a323a226e6f223b733a31303a2269737375655f65646974223b733a323a226e6f223b733a31303a2269737375655f76696577223b733a323a226e6f223b733a393a227472616e73706f7274223b733a323a226e6f223b733a31333a227472616e73706f72745f616464223b733a323a226e6f223b733a31343a227472616e73706f72745f65646974223b733a323a226e6f223b733a31363a227472616e73706f72745f64656c657465223b733a323a226e6f223b733a373a22746d656d626572223b733a323a226e6f223b733a31313a22746d656d6265725f616464223b733a323a226e6f223b733a31323a22746d656d6265725f65646974223b733a323a226e6f223b733a31343a22746d656d6265725f64656c657465223b733a323a226e6f223b733a31323a22746d656d6265725f76696577223b733a323a226e6f223b733a363a22686f7374656c223b733a323a226e6f223b733a31303a22686f7374656c5f616464223b733a323a226e6f223b733a31313a22686f7374656c5f65646974223b733a323a226e6f223b733a31333a22686f7374656c5f64656c657465223b733a323a226e6f223b733a383a2263617465676f7279223b733a323a226e6f223b733a31323a2263617465676f72795f616464223b733a323a226e6f223b733a31333a2263617465676f72795f65646974223b733a323a226e6f223b733a31353a2263617465676f72795f64656c657465223b733a323a226e6f223b733a373a22686d656d626572223b733a323a226e6f223b733a31313a22686d656d6265725f616464223b733a323a226e6f223b733a31323a22686d656d6265725f65646974223b733a323a226e6f223b733a31343a22686d656d6265725f64656c657465223b733a323a226e6f223b733a31323a22686d656d6265725f76696577223b733a323a226e6f223b733a383a226665657479706573223b733a323a226e6f223b733a31323a2266656574797065735f616464223b733a323a226e6f223b733a31333a2266656574797065735f65646974223b733a323a226e6f223b733a31353a2266656574797065735f64656c657465223b733a323a226e6f223b733a373a22696e766f696365223b733a323a226e6f223b733a31313a22696e766f6963655f616464223b733a323a226e6f223b733a31323a22696e766f6963655f65646974223b733a323a226e6f223b733a31343a22696e766f6963655f64656c657465223b733a323a226e6f223b733a31323a22696e766f6963655f76696577223b733a323a226e6f223b733a31343a227061796d656e74686973746f7279223b733a323a226e6f223b733a31393a227061796d656e74686973746f72795f65646974223b733a323a226e6f223b733a32313a227061796d656e74686973746f72795f64656c657465223b733a323a226e6f223b733a373a22657870656e7365223b733a323a226e6f223b733a31313a22657870656e73655f616464223b733a323a226e6f223b733a31323a22657870656e73655f65646974223b733a323a226e6f223b733a31343a22657870656e73655f64656c657465223b733a323a226e6f223b733a31303a226e6f746963655f616464223b733a323a226e6f223b733a31313a226e6f746963655f65646974223b733a323a226e6f223b733a31333a226e6f746963655f64656c657465223b733a323a226e6f223b733a393a226576656e745f616464223b733a323a226e6f223b733a31303a226576656e745f65646974223b733a323a226e6f223b733a31323a226576656e745f64656c657465223b733a323a226e6f223b733a373a22686f6c69646179223b733a323a226e6f223b733a31313a22686f6c696461795f616464223b733a323a226e6f223b733a31323a22686f6c696461795f65646974223b733a323a226e6f223b733a31343a22686f6c696461795f64656c657465223b733a323a226e6f223b733a31323a22686f6c696461795f76696577223b733a323a226e6f223b733a363a227265706f7274223b733a323a226e6f223b733a32303a227265706f72742f73747564656e747265706f7274223b733a323a226e6f223b733a31383a227265706f72742f636c6173737265706f7274223b733a323a226e6f223b733a32333a227265706f72742f617474656e64616e63657265706f7274223b733a323a226e6f223b733a31383a227265706f72742f6365727469666963617465223b733a323a226e6f223b733a31313a2276697369746f72696e666f223b733a323a226e6f223b733a31383a2276697369746f72696e666f5f64656c657465223b733a323a226e6f223b733a31363a2276697369746f72696e666f5f76696577223b733a323a226e6f223b733a31303a227363686f6f6c79656172223b733a323a226e6f223b733a31343a227363686f6f6c796561725f616464223b733a323a226e6f223b733a31353a227363686f6f6c796561725f65646974223b733a323a226e6f223b733a31373a227363686f6f6c796561725f64656c657465223b733a323a226e6f223b733a31313a2273797374656d61646d696e223b733a323a226e6f223b733a31353a2273797374656d61646d696e5f616464223b733a323a226e6f223b733a31363a2273797374656d61646d696e5f65646974223b733a323a226e6f223b733a31383a2273797374656d61646d696e5f64656c657465223b733a323a226e6f223b733a31363a2273797374656d61646d696e5f76696577223b733a323a226e6f223b733a31333a22726573657470617373776f7264223b733a323a226e6f223b733a31383a226d61696c616e64736d7374656d706c617465223b733a323a226e6f223b733a32323a226d61696c616e64736d7374656d706c6174655f616464223b733a323a226e6f223b733a32333a226d61696c616e64736d7374656d706c6174655f65646974223b733a323a226e6f223b733a32353a226d61696c616e64736d7374656d706c6174655f64656c657465223b733a323a226e6f223b733a32333a226d61696c616e64736d7374656d706c6174655f76696577223b733a323a226e6f223b733a31313a2262756c6b696d706f727420223b733a323a226e6f223b733a363a226261636b7570223b733a323a226e6f223b733a383a227573657274797065223b733a323a226e6f223b733a31323a2275736572747970655f616464223b733a323a226e6f223b733a31333a2275736572747970655f65646974223b733a323a226e6f223b733a31353a2275736572747970655f64656c657465223b733a323a226e6f223b733a31303a227065726d697373696f6e223b733a323a226e6f223b733a363a22757064617465223b733a323a226e6f223b733a373a2273657474696e67223b733a323a226e6f223b733a31323a2273657474696e675f65646974223b733a323a226e6f223b733a31353a227061796d656e7473657474696e6773223b733a323a226e6f223b733a31313a22736d7373657474696e6773223b733a323a226e6f223b733a393a2274616b655f6578616d223b733a333a22796573223b7d),
('6f1ggcjqber8rc3upb8er6a83gn7egod', '::1', 1633806816, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333830363539383b6c616e677c733a373a227370616e697368223b);
INSERT INTO `school_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('7fllb4b4r4jggtd4gic87eefcgeiltei', '::1', 1633761021, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333736303935383b6c616e677c733a373a227370616e697368223b6c6f67696e7573657249447c733a313a2232223b6e616d657c733a333a224a696d223b656d61696c7c733a31333a226a696d40676d61696c2e636f6d223b757365727479706549447c733a313a2232223b75736572747970657c733a373a22446f63656e7465223b757365726e616d657c733a343a226a696d79223b70686f746f7c733a3133323a2263633462396336636261663063663130343562646536626436653535663964386366336637313937623463613162383932663463666335666531326638626635643066316563663830303964313135323838316331323266356537343637353630346334613036653030663162303261363431386337313539616561396336382e706e67223b64656661756c747363686f6f6c7965617249447c733a313a2231223b6c6f67676564696e7c623a313b6765745f7065726d697373696f6e7c623a313b6d61737465725f7065726d697373696f6e5f7365747c613a3138333a7b733a393a2264617368626f617264223b733a333a22796573223b733a373a2273747564656e74223b733a333a22796573223b733a31323a2273747564656e745f76696577223b733a333a22796573223b733a373a2274656163686572223b733a333a22796573223b733a31323a22746561636865725f76696577223b733a333a22796573223b733a373a227375626a656374223b733a333a22796573223b733a31313a227375626a6563745f616464223b733a333a22796573223b733a31323a227375626a6563745f65646974223b733a333a22796573223b733a31343a227375626a6563745f64656c657465223b733a333a22796573223b733a383a2273796c6c61627573223b733a333a22796573223b733a31323a2273796c6c616275735f616464223b733a333a22796573223b733a31333a2273796c6c616275735f65646974223b733a333a22796573223b733a31353a2273796c6c616275735f64656c657465223b733a333a22796573223b733a31303a2261737369676e6d656e74223b733a333a22796573223b733a31343a2261737369676e6d656e745f616464223b733a333a22796573223b733a31353a2261737369676e6d656e745f65646974223b733a333a22796573223b733a31373a2261737369676e6d656e745f64656c657465223b733a333a22796573223b733a31353a2261737369676e6d656e745f76696577223b733a333a22796573223b733a373a22726f7574696e65223b733a333a22796573223b733a31313a22726f7574696e655f616464223b733a333a22796573223b733a31323a22726f7574696e655f65646974223b733a333a22796573223b733a31343a22726f7574696e655f64656c657465223b733a333a22796573223b733a31313a2273617474656e64616e6365223b733a333a22796573223b733a31353a2273617474656e64616e63655f616464223b733a333a22796573223b733a31363a2273617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2274617474656e64616e6365223b733a333a22796573223b733a31353a2274617474656e64616e63655f616464223b733a333a22796573223b733a31363a2274617474656e64616e63655f76696577223b733a333a22796573223b733a31323a226578616d7363686564756c65223b733a333a22796573223b733a31363a226578616d7363686564756c655f616464223b733a333a22796573223b733a31373a226578616d7363686564756c655f65646974223b733a333a22796573223b733a31393a226578616d7363686564756c655f64656c657465223b733a333a22796573223b733a31313a2265617474656e64616e6365223b733a333a22796573223b733a31353a2265617474656e64616e63655f616464223b733a333a22796573223b733a343a226d61726b223b733a333a22796573223b733a383a226d61726b5f616464223b733a333a22796573223b733a393a226d61726b5f76696577223b733a333a22796573223b733a31323a22636f6e766572736174696f6e223b733a333a22796573223b733a353a226d65646961223b733a333a22796573223b733a393a226d656469615f616464223b733a333a22796573223b733a31323a226d656469615f64656c657465223b733a333a22796573223b733a363a226e6f74696365223b733a333a22796573223b733a31303a226e6f746963655f616464223b733a333a22796573223b733a31313a226e6f746963655f65646974223b733a333a22796573223b733a31333a226e6f746963655f64656c657465223b733a333a22796573223b733a31313a226e6f746963655f76696577223b733a333a22796573223b733a353a226576656e74223b733a333a22796573223b733a393a226576656e745f616464223b733a333a22796573223b733a31303a226576656e745f65646974223b733a333a22796573223b733a31323a226576656e745f64656c657465223b733a333a22796573223b733a31303a226576656e745f76696577223b733a333a22796573223b733a373a22706172656e7473223b733a333a22796573223b733a31323a22706172656e74735f76696577223b733a333a22796573223b733a343a2275736572223b733a333a22796573223b733a393a22757365725f76696577223b733a333a22796573223b733a373a22636c6173736573223b733a333a22796573223b733a31313a22636c61737365735f616464223b733a333a22796573223b733a31323a22636c61737365735f65646974223b733a333a22796573223b733a31343a22636c61737365735f64656c657465223b733a333a22796573223b733a343a226578616d223b733a333a22796573223b733a383a226578616d5f616464223b733a333a22796573223b733a393a226578616d5f65646974223b733a333a22796573223b733a31313a226578616d5f64656c657465223b733a333a22796573223b733a353a226772616465223b733a333a22796573223b733a393a2267726164655f616464223b733a333a22796573223b733a31303a2267726164655f65646974223b733a333a22796573223b733a31323a2267726164655f64656c657465223b733a333a22796573223b733a31343a226d61726b70657263656e74616765223b733a333a22796573223b733a31383a226d61726b70657263656e746167655f616464223b733a333a22796573223b733a31393a226d61726b70657263656e746167655f65646974223b733a333a22796573223b733a32313a226d61726b70657263656e746167655f64656c657465223b733a333a22796573223b733a393a2270726f6d6f74696f6e223b733a333a22796573223b733a31313a2273747564656e745f616464223b733a323a226e6f223b733a31323a2273747564656e745f65646974223b733a323a226e6f223b733a31343a2273747564656e745f64656c657465223b733a323a226e6f223b733a31313a22706172656e74735f616464223b733a323a226e6f223b733a31323a22706172656e74735f65646974223b733a323a226e6f223b733a31343a22706172656e74735f64656c657465223b733a323a226e6f223b733a31313a22746561636865725f616464223b733a323a226e6f223b733a31323a22746561636865725f65646974223b733a323a226e6f223b733a31343a22746561636865725f64656c657465223b733a323a226e6f223b733a383a22757365725f616464223b733a323a226e6f223b733a393a22757365725f65646974223b733a323a226e6f223b733a31313a22757365725f64656c657465223b733a323a226e6f223b733a373a2273656374696f6e223b733a323a226e6f223b733a31313a2273656374696f6e5f616464223b733a323a226e6f223b733a31323a2273656374696f6e5f65646974223b733a323a226e6f223b733a31353a2273656d65737465725f64656c657465223b733a323a226e6f223b733a31343a2273656374696f6e5f64656c657465223b733a323a226e6f223b733a31303a226d61696c616e64736d73223b733a323a226e6f223b733a31343a226d61696c616e64736d735f616464223b733a323a226e6f223b733a31353a226d61696c616e64736d735f76696577223b733a323a226e6f223b733a373a226c6d656d626572223b733a323a226e6f223b733a31313a226c6d656d6265725f616464223b733a323a226e6f223b733a31323a226c6d656d6265725f65646974223b733a323a226e6f223b733a31343a226c6d656d6265725f64656c657465223b733a323a226e6f223b733a31323a226c6d656d6265725f76696577223b733a323a226e6f223b733a343a22626f6f6b223b733a323a226e6f223b733a383a22626f6f6b5f616464223b733a323a226e6f223b733a393a22626f6f6b5f65646974223b733a323a226e6f223b733a31313a22626f6f6b5f64656c657465223b733a323a226e6f223b733a353a226973737565223b733a323a226e6f223b733a393a2269737375655f616464223b733a323a226e6f223b733a31303a2269737375655f65646974223b733a323a226e6f223b733a31303a2269737375655f76696577223b733a323a226e6f223b733a393a227472616e73706f7274223b733a323a226e6f223b733a31333a227472616e73706f72745f616464223b733a323a226e6f223b733a31343a227472616e73706f72745f65646974223b733a323a226e6f223b733a31363a227472616e73706f72745f64656c657465223b733a323a226e6f223b733a373a22746d656d626572223b733a323a226e6f223b733a31313a22746d656d6265725f616464223b733a323a226e6f223b733a31323a22746d656d6265725f65646974223b733a323a226e6f223b733a31343a22746d656d6265725f64656c657465223b733a323a226e6f223b733a31323a22746d656d6265725f76696577223b733a323a226e6f223b733a363a22686f7374656c223b733a323a226e6f223b733a31303a22686f7374656c5f616464223b733a323a226e6f223b733a31313a22686f7374656c5f65646974223b733a323a226e6f223b733a31333a22686f7374656c5f64656c657465223b733a323a226e6f223b733a383a2263617465676f7279223b733a323a226e6f223b733a31323a2263617465676f72795f616464223b733a323a226e6f223b733a31333a2263617465676f72795f65646974223b733a323a226e6f223b733a31353a2263617465676f72795f64656c657465223b733a323a226e6f223b733a373a22686d656d626572223b733a323a226e6f223b733a31313a22686d656d6265725f616464223b733a323a226e6f223b733a31323a22686d656d6265725f65646974223b733a323a226e6f223b733a31343a22686d656d6265725f64656c657465223b733a323a226e6f223b733a31323a22686d656d6265725f76696577223b733a323a226e6f223b733a383a226665657479706573223b733a323a226e6f223b733a31323a2266656574797065735f616464223b733a323a226e6f223b733a31333a2266656574797065735f65646974223b733a323a226e6f223b733a31353a2266656574797065735f64656c657465223b733a323a226e6f223b733a373a22696e766f696365223b733a323a226e6f223b733a31313a22696e766f6963655f616464223b733a323a226e6f223b733a31323a22696e766f6963655f65646974223b733a323a226e6f223b733a31343a22696e766f6963655f64656c657465223b733a323a226e6f223b733a31323a22696e766f6963655f76696577223b733a323a226e6f223b733a31343a227061796d656e74686973746f7279223b733a323a226e6f223b733a31393a227061796d656e74686973746f72795f65646974223b733a323a226e6f223b733a32313a227061796d656e74686973746f72795f64656c657465223b733a323a226e6f223b733a373a22657870656e7365223b733a323a226e6f223b733a31313a22657870656e73655f616464223b733a323a226e6f223b733a31323a22657870656e73655f65646974223b733a323a226e6f223b733a31343a22657870656e73655f64656c657465223b733a323a226e6f223b733a373a22686f6c69646179223b733a323a226e6f223b733a31313a22686f6c696461795f616464223b733a323a226e6f223b733a31323a22686f6c696461795f65646974223b733a323a226e6f223b733a31343a22686f6c696461795f64656c657465223b733a323a226e6f223b733a31323a22686f6c696461795f76696577223b733a323a226e6f223b733a363a227265706f7274223b733a323a226e6f223b733a32303a227265706f72742f73747564656e747265706f7274223b733a323a226e6f223b733a31383a227265706f72742f636c6173737265706f7274223b733a323a226e6f223b733a32333a227265706f72742f617474656e64616e63657265706f7274223b733a323a226e6f223b733a31383a227265706f72742f6365727469666963617465223b733a323a226e6f223b733a31313a2276697369746f72696e666f223b733a323a226e6f223b733a31383a2276697369746f72696e666f5f64656c657465223b733a323a226e6f223b733a31363a2276697369746f72696e666f5f76696577223b733a323a226e6f223b733a31303a227363686f6f6c79656172223b733a323a226e6f223b733a31343a227363686f6f6c796561725f616464223b733a323a226e6f223b733a31353a227363686f6f6c796561725f65646974223b733a323a226e6f223b733a31373a227363686f6f6c796561725f64656c657465223b733a323a226e6f223b733a31313a2273797374656d61646d696e223b733a323a226e6f223b733a31353a2273797374656d61646d696e5f616464223b733a323a226e6f223b733a31363a2273797374656d61646d696e5f65646974223b733a323a226e6f223b733a31383a2273797374656d61646d696e5f64656c657465223b733a323a226e6f223b733a31363a2273797374656d61646d696e5f76696577223b733a323a226e6f223b733a31333a22726573657470617373776f7264223b733a323a226e6f223b733a31383a226d61696c616e64736d7374656d706c617465223b733a323a226e6f223b733a32323a226d61696c616e64736d7374656d706c6174655f616464223b733a323a226e6f223b733a32333a226d61696c616e64736d7374656d706c6174655f65646974223b733a323a226e6f223b733a32353a226d61696c616e64736d7374656d706c6174655f64656c657465223b733a323a226e6f223b733a32333a226d61696c616e64736d7374656d706c6174655f76696577223b733a323a226e6f223b733a31313a2262756c6b696d706f727420223b733a323a226e6f223b733a363a226261636b7570223b733a323a226e6f223b733a383a227573657274797065223b733a323a226e6f223b733a31323a2275736572747970655f616464223b733a323a226e6f223b733a31333a2275736572747970655f65646974223b733a323a226e6f223b733a31353a2275736572747970655f64656c657465223b733a323a226e6f223b733a31303a227065726d697373696f6e223b733a323a226e6f223b733a363a22757064617465223b733a323a226e6f223b733a373a2273657474696e67223b733a323a226e6f223b733a31323a2273657474696e675f65646974223b733a323a226e6f223b733a31353a227061796d656e7473657474696e6773223b733a323a226e6f223b733a31313a22736d7373657474696e6773223b733a323a226e6f223b7d),
('81mpo60377gpfgraljqlul4875epo8qc', '::1', 1633761214, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333736313230333b6c616e677c733a373a227370616e697368223b6c6f67696e7573657249447c733a313a2232223b6e616d657c733a333a224a696d223b656d61696c7c733a31333a226a696d40676d61696c2e636f6d223b757365727479706549447c733a313a2232223b75736572747970657c733a373a22446f63656e7465223b757365726e616d657c733a343a226a696d79223b70686f746f7c733a3133323a2263633462396336636261663063663130343562646536626436653535663964386366336637313937623463613162383932663463666335666531326638626635643066316563663830303964313135323838316331323266356537343637353630346334613036653030663162303261363431386337313539616561396336382e706e67223b64656661756c747363686f6f6c7965617249447c733a313a2231223b6c6f67676564696e7c623a313b6765745f7065726d697373696f6e7c623a313b6d61737465725f7065726d697373696f6e5f7365747c613a3138333a7b733a393a2264617368626f617264223b733a333a22796573223b733a373a2273747564656e74223b733a333a22796573223b733a31323a2273747564656e745f76696577223b733a333a22796573223b733a373a2274656163686572223b733a333a22796573223b733a31323a22746561636865725f76696577223b733a333a22796573223b733a373a227375626a656374223b733a333a22796573223b733a31313a227375626a6563745f616464223b733a333a22796573223b733a31323a227375626a6563745f65646974223b733a333a22796573223b733a31343a227375626a6563745f64656c657465223b733a333a22796573223b733a383a2273796c6c61627573223b733a333a22796573223b733a31323a2273796c6c616275735f616464223b733a333a22796573223b733a31333a2273796c6c616275735f65646974223b733a333a22796573223b733a31353a2273796c6c616275735f64656c657465223b733a333a22796573223b733a31303a2261737369676e6d656e74223b733a333a22796573223b733a31343a2261737369676e6d656e745f616464223b733a333a22796573223b733a31353a2261737369676e6d656e745f65646974223b733a333a22796573223b733a31373a2261737369676e6d656e745f64656c657465223b733a333a22796573223b733a31353a2261737369676e6d656e745f76696577223b733a333a22796573223b733a373a22726f7574696e65223b733a333a22796573223b733a31313a22726f7574696e655f616464223b733a333a22796573223b733a31323a22726f7574696e655f65646974223b733a333a22796573223b733a31343a22726f7574696e655f64656c657465223b733a333a22796573223b733a31313a2273617474656e64616e6365223b733a333a22796573223b733a31353a2273617474656e64616e63655f616464223b733a333a22796573223b733a31363a2273617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2274617474656e64616e6365223b733a333a22796573223b733a31353a2274617474656e64616e63655f616464223b733a333a22796573223b733a31363a2274617474656e64616e63655f76696577223b733a333a22796573223b733a31323a226578616d7363686564756c65223b733a333a22796573223b733a31363a226578616d7363686564756c655f616464223b733a333a22796573223b733a31373a226578616d7363686564756c655f65646974223b733a333a22796573223b733a31393a226578616d7363686564756c655f64656c657465223b733a333a22796573223b733a31313a2265617474656e64616e6365223b733a333a22796573223b733a31353a2265617474656e64616e63655f616464223b733a333a22796573223b733a343a226d61726b223b733a333a22796573223b733a383a226d61726b5f616464223b733a333a22796573223b733a393a226d61726b5f76696577223b733a333a22796573223b733a31323a22636f6e766572736174696f6e223b733a333a22796573223b733a353a226d65646961223b733a333a22796573223b733a393a226d656469615f616464223b733a333a22796573223b733a31323a226d656469615f64656c657465223b733a333a22796573223b733a363a226e6f74696365223b733a333a22796573223b733a31303a226e6f746963655f616464223b733a333a22796573223b733a31313a226e6f746963655f65646974223b733a333a22796573223b733a31333a226e6f746963655f64656c657465223b733a333a22796573223b733a31313a226e6f746963655f76696577223b733a333a22796573223b733a353a226576656e74223b733a333a22796573223b733a393a226576656e745f616464223b733a333a22796573223b733a31303a226576656e745f65646974223b733a333a22796573223b733a31323a226576656e745f64656c657465223b733a333a22796573223b733a31303a226576656e745f76696577223b733a333a22796573223b733a373a22706172656e7473223b733a333a22796573223b733a31323a22706172656e74735f76696577223b733a333a22796573223b733a343a2275736572223b733a333a22796573223b733a393a22757365725f76696577223b733a333a22796573223b733a373a22636c6173736573223b733a333a22796573223b733a31313a22636c61737365735f616464223b733a333a22796573223b733a31323a22636c61737365735f65646974223b733a333a22796573223b733a31343a22636c61737365735f64656c657465223b733a333a22796573223b733a343a226578616d223b733a333a22796573223b733a383a226578616d5f616464223b733a333a22796573223b733a393a226578616d5f65646974223b733a333a22796573223b733a31313a226578616d5f64656c657465223b733a333a22796573223b733a353a226772616465223b733a333a22796573223b733a393a2267726164655f616464223b733a333a22796573223b733a31303a2267726164655f65646974223b733a333a22796573223b733a31323a2267726164655f64656c657465223b733a333a22796573223b733a31343a226d61726b70657263656e74616765223b733a333a22796573223b733a31383a226d61726b70657263656e746167655f616464223b733a333a22796573223b733a31393a226d61726b70657263656e746167655f65646974223b733a333a22796573223b733a32313a226d61726b70657263656e746167655f64656c657465223b733a333a22796573223b733a393a2270726f6d6f74696f6e223b733a333a22796573223b733a31313a2273747564656e745f616464223b733a323a226e6f223b733a31323a2273747564656e745f65646974223b733a323a226e6f223b733a31343a2273747564656e745f64656c657465223b733a323a226e6f223b733a31313a22706172656e74735f616464223b733a323a226e6f223b733a31323a22706172656e74735f65646974223b733a323a226e6f223b733a31343a22706172656e74735f64656c657465223b733a323a226e6f223b733a31313a22746561636865725f616464223b733a323a226e6f223b733a31323a22746561636865725f65646974223b733a323a226e6f223b733a31343a22746561636865725f64656c657465223b733a323a226e6f223b733a383a22757365725f616464223b733a323a226e6f223b733a393a22757365725f65646974223b733a323a226e6f223b733a31313a22757365725f64656c657465223b733a323a226e6f223b733a373a2273656374696f6e223b733a323a226e6f223b733a31313a2273656374696f6e5f616464223b733a323a226e6f223b733a31323a2273656374696f6e5f65646974223b733a323a226e6f223b733a31353a2273656d65737465725f64656c657465223b733a323a226e6f223b733a31343a2273656374696f6e5f64656c657465223b733a323a226e6f223b733a31303a226d61696c616e64736d73223b733a323a226e6f223b733a31343a226d61696c616e64736d735f616464223b733a323a226e6f223b733a31353a226d61696c616e64736d735f76696577223b733a323a226e6f223b733a373a226c6d656d626572223b733a323a226e6f223b733a31313a226c6d656d6265725f616464223b733a323a226e6f223b733a31323a226c6d656d6265725f65646974223b733a323a226e6f223b733a31343a226c6d656d6265725f64656c657465223b733a323a226e6f223b733a31323a226c6d656d6265725f76696577223b733a323a226e6f223b733a343a22626f6f6b223b733a323a226e6f223b733a383a22626f6f6b5f616464223b733a323a226e6f223b733a393a22626f6f6b5f65646974223b733a323a226e6f223b733a31313a22626f6f6b5f64656c657465223b733a323a226e6f223b733a353a226973737565223b733a323a226e6f223b733a393a2269737375655f616464223b733a323a226e6f223b733a31303a2269737375655f65646974223b733a323a226e6f223b733a31303a2269737375655f76696577223b733a323a226e6f223b733a393a227472616e73706f7274223b733a323a226e6f223b733a31333a227472616e73706f72745f616464223b733a323a226e6f223b733a31343a227472616e73706f72745f65646974223b733a323a226e6f223b733a31363a227472616e73706f72745f64656c657465223b733a323a226e6f223b733a373a22746d656d626572223b733a323a226e6f223b733a31313a22746d656d6265725f616464223b733a323a226e6f223b733a31323a22746d656d6265725f65646974223b733a323a226e6f223b733a31343a22746d656d6265725f64656c657465223b733a323a226e6f223b733a31323a22746d656d6265725f76696577223b733a323a226e6f223b733a363a22686f7374656c223b733a323a226e6f223b733a31303a22686f7374656c5f616464223b733a323a226e6f223b733a31313a22686f7374656c5f65646974223b733a323a226e6f223b733a31333a22686f7374656c5f64656c657465223b733a323a226e6f223b733a383a2263617465676f7279223b733a323a226e6f223b733a31323a2263617465676f72795f616464223b733a323a226e6f223b733a31333a2263617465676f72795f65646974223b733a323a226e6f223b733a31353a2263617465676f72795f64656c657465223b733a323a226e6f223b733a373a22686d656d626572223b733a323a226e6f223b733a31313a22686d656d6265725f616464223b733a323a226e6f223b733a31323a22686d656d6265725f65646974223b733a323a226e6f223b733a31343a22686d656d6265725f64656c657465223b733a323a226e6f223b733a31323a22686d656d6265725f76696577223b733a323a226e6f223b733a383a226665657479706573223b733a323a226e6f223b733a31323a2266656574797065735f616464223b733a323a226e6f223b733a31333a2266656574797065735f65646974223b733a323a226e6f223b733a31353a2266656574797065735f64656c657465223b733a323a226e6f223b733a373a22696e766f696365223b733a323a226e6f223b733a31313a22696e766f6963655f616464223b733a323a226e6f223b733a31323a22696e766f6963655f65646974223b733a323a226e6f223b733a31343a22696e766f6963655f64656c657465223b733a323a226e6f223b733a31323a22696e766f6963655f76696577223b733a323a226e6f223b733a31343a227061796d656e74686973746f7279223b733a323a226e6f223b733a31393a227061796d656e74686973746f72795f65646974223b733a323a226e6f223b733a32313a227061796d656e74686973746f72795f64656c657465223b733a323a226e6f223b733a373a22657870656e7365223b733a323a226e6f223b733a31313a22657870656e73655f616464223b733a323a226e6f223b733a31323a22657870656e73655f65646974223b733a323a226e6f223b733a31343a22657870656e73655f64656c657465223b733a323a226e6f223b733a373a22686f6c69646179223b733a323a226e6f223b733a31313a22686f6c696461795f616464223b733a323a226e6f223b733a31323a22686f6c696461795f65646974223b733a323a226e6f223b733a31343a22686f6c696461795f64656c657465223b733a323a226e6f223b733a31323a22686f6c696461795f76696577223b733a323a226e6f223b733a363a227265706f7274223b733a323a226e6f223b733a32303a227265706f72742f73747564656e747265706f7274223b733a323a226e6f223b733a31383a227265706f72742f636c6173737265706f7274223b733a323a226e6f223b733a32333a227265706f72742f617474656e64616e63657265706f7274223b733a323a226e6f223b733a31383a227265706f72742f6365727469666963617465223b733a323a226e6f223b733a31313a2276697369746f72696e666f223b733a323a226e6f223b733a31383a2276697369746f72696e666f5f64656c657465223b733a323a226e6f223b733a31363a2276697369746f72696e666f5f76696577223b733a323a226e6f223b733a31303a227363686f6f6c79656172223b733a323a226e6f223b733a31343a227363686f6f6c796561725f616464223b733a323a226e6f223b733a31353a227363686f6f6c796561725f65646974223b733a323a226e6f223b733a31373a227363686f6f6c796561725f64656c657465223b733a323a226e6f223b733a31313a2273797374656d61646d696e223b733a323a226e6f223b733a31353a2273797374656d61646d696e5f616464223b733a323a226e6f223b733a31363a2273797374656d61646d696e5f65646974223b733a323a226e6f223b733a31383a2273797374656d61646d696e5f64656c657465223b733a323a226e6f223b733a31363a2273797374656d61646d696e5f76696577223b733a323a226e6f223b733a31333a22726573657470617373776f7264223b733a323a226e6f223b733a31383a226d61696c616e64736d7374656d706c617465223b733a323a226e6f223b733a32323a226d61696c616e64736d7374656d706c6174655f616464223b733a323a226e6f223b733a32333a226d61696c616e64736d7374656d706c6174655f65646974223b733a323a226e6f223b733a32353a226d61696c616e64736d7374656d706c6174655f64656c657465223b733a323a226e6f223b733a32333a226d61696c616e64736d7374656d706c6174655f76696577223b733a323a226e6f223b733a31313a2262756c6b696d706f727420223b733a323a226e6f223b733a363a226261636b7570223b733a323a226e6f223b733a383a227573657274797065223b733a323a226e6f223b733a31323a2275736572747970655f616464223b733a323a226e6f223b733a31333a2275736572747970655f65646974223b733a323a226e6f223b733a31353a2275736572747970655f64656c657465223b733a323a226e6f223b733a31303a227065726d697373696f6e223b733a323a226e6f223b733a363a22757064617465223b733a323a226e6f223b733a373a2273657474696e67223b733a323a226e6f223b733a31323a2273657474696e675f65646974223b733a323a226e6f223b733a31353a227061796d656e7473657474696e6773223b733a323a226e6f223b733a31313a22736d7373657474696e6773223b733a323a226e6f223b7d),
('833it1pb0q1suutke9qo2kv1jmk95135', '::1', 1633761603, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333736313539333b6c616e677c733a373a227370616e697368223b6c6f67696e7573657249447c733a313a2232223b6e616d657c733a333a224a696d223b656d61696c7c733a31333a226a696d40676d61696c2e636f6d223b757365727479706549447c733a313a2232223b75736572747970657c733a373a22446f63656e7465223b757365726e616d657c733a343a226a696d79223b70686f746f7c733a3133323a2263633462396336636261663063663130343562646536626436653535663964386366336637313937623463613162383932663463666335666531326638626635643066316563663830303964313135323838316331323266356537343637353630346334613036653030663162303261363431386337313539616561396336382e706e67223b64656661756c747363686f6f6c7965617249447c733a313a2231223b6c6f67676564696e7c623a313b6765745f7065726d697373696f6e7c623a313b6d61737465725f7065726d697373696f6e5f7365747c613a3138333a7b733a393a2264617368626f617264223b733a333a22796573223b733a373a2273747564656e74223b733a333a22796573223b733a31323a2273747564656e745f76696577223b733a333a22796573223b733a373a2274656163686572223b733a333a22796573223b733a31323a22746561636865725f76696577223b733a333a22796573223b733a373a227375626a656374223b733a333a22796573223b733a31313a227375626a6563745f616464223b733a333a22796573223b733a31323a227375626a6563745f65646974223b733a333a22796573223b733a31343a227375626a6563745f64656c657465223b733a333a22796573223b733a383a2273796c6c61627573223b733a333a22796573223b733a31323a2273796c6c616275735f616464223b733a333a22796573223b733a31333a2273796c6c616275735f65646974223b733a333a22796573223b733a31353a2273796c6c616275735f64656c657465223b733a333a22796573223b733a31303a2261737369676e6d656e74223b733a333a22796573223b733a31343a2261737369676e6d656e745f616464223b733a333a22796573223b733a31353a2261737369676e6d656e745f65646974223b733a333a22796573223b733a31373a2261737369676e6d656e745f64656c657465223b733a333a22796573223b733a31353a2261737369676e6d656e745f76696577223b733a333a22796573223b733a373a22726f7574696e65223b733a333a22796573223b733a31313a22726f7574696e655f616464223b733a333a22796573223b733a31323a22726f7574696e655f65646974223b733a333a22796573223b733a31343a22726f7574696e655f64656c657465223b733a333a22796573223b733a31313a2273617474656e64616e6365223b733a333a22796573223b733a31353a2273617474656e64616e63655f616464223b733a333a22796573223b733a31363a2273617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2274617474656e64616e6365223b733a333a22796573223b733a31353a2274617474656e64616e63655f616464223b733a333a22796573223b733a31363a2274617474656e64616e63655f76696577223b733a333a22796573223b733a31323a226578616d7363686564756c65223b733a333a22796573223b733a31363a226578616d7363686564756c655f616464223b733a333a22796573223b733a31373a226578616d7363686564756c655f65646974223b733a333a22796573223b733a31393a226578616d7363686564756c655f64656c657465223b733a333a22796573223b733a31313a2265617474656e64616e6365223b733a333a22796573223b733a31353a2265617474656e64616e63655f616464223b733a333a22796573223b733a343a226d61726b223b733a333a22796573223b733a383a226d61726b5f616464223b733a333a22796573223b733a393a226d61726b5f76696577223b733a333a22796573223b733a31323a22636f6e766572736174696f6e223b733a333a22796573223b733a353a226d65646961223b733a333a22796573223b733a393a226d656469615f616464223b733a333a22796573223b733a31323a226d656469615f64656c657465223b733a333a22796573223b733a363a226e6f74696365223b733a333a22796573223b733a31303a226e6f746963655f616464223b733a333a22796573223b733a31313a226e6f746963655f65646974223b733a333a22796573223b733a31333a226e6f746963655f64656c657465223b733a333a22796573223b733a31313a226e6f746963655f76696577223b733a333a22796573223b733a353a226576656e74223b733a333a22796573223b733a393a226576656e745f616464223b733a333a22796573223b733a31303a226576656e745f65646974223b733a333a22796573223b733a31323a226576656e745f64656c657465223b733a333a22796573223b733a31303a226576656e745f76696577223b733a333a22796573223b733a373a22706172656e7473223b733a333a22796573223b733a31323a22706172656e74735f76696577223b733a333a22796573223b733a343a2275736572223b733a333a22796573223b733a393a22757365725f76696577223b733a333a22796573223b733a373a22636c6173736573223b733a333a22796573223b733a31313a22636c61737365735f616464223b733a333a22796573223b733a31323a22636c61737365735f65646974223b733a333a22796573223b733a31343a22636c61737365735f64656c657465223b733a333a22796573223b733a343a226578616d223b733a333a22796573223b733a383a226578616d5f616464223b733a333a22796573223b733a393a226578616d5f65646974223b733a333a22796573223b733a31313a226578616d5f64656c657465223b733a333a22796573223b733a353a226772616465223b733a333a22796573223b733a393a2267726164655f616464223b733a333a22796573223b733a31303a2267726164655f65646974223b733a333a22796573223b733a31323a2267726164655f64656c657465223b733a333a22796573223b733a31343a226d61726b70657263656e74616765223b733a333a22796573223b733a31383a226d61726b70657263656e746167655f616464223b733a333a22796573223b733a31393a226d61726b70657263656e746167655f65646974223b733a333a22796573223b733a32313a226d61726b70657263656e746167655f64656c657465223b733a333a22796573223b733a393a2270726f6d6f74696f6e223b733a333a22796573223b733a31313a2273747564656e745f616464223b733a323a226e6f223b733a31323a2273747564656e745f65646974223b733a323a226e6f223b733a31343a2273747564656e745f64656c657465223b733a323a226e6f223b733a31313a22706172656e74735f616464223b733a323a226e6f223b733a31323a22706172656e74735f65646974223b733a323a226e6f223b733a31343a22706172656e74735f64656c657465223b733a323a226e6f223b733a31313a22746561636865725f616464223b733a323a226e6f223b733a31323a22746561636865725f65646974223b733a323a226e6f223b733a31343a22746561636865725f64656c657465223b733a323a226e6f223b733a383a22757365725f616464223b733a323a226e6f223b733a393a22757365725f65646974223b733a323a226e6f223b733a31313a22757365725f64656c657465223b733a323a226e6f223b733a373a2273656374696f6e223b733a323a226e6f223b733a31313a2273656374696f6e5f616464223b733a323a226e6f223b733a31323a2273656374696f6e5f65646974223b733a323a226e6f223b733a31353a2273656d65737465725f64656c657465223b733a323a226e6f223b733a31343a2273656374696f6e5f64656c657465223b733a323a226e6f223b733a31303a226d61696c616e64736d73223b733a323a226e6f223b733a31343a226d61696c616e64736d735f616464223b733a323a226e6f223b733a31353a226d61696c616e64736d735f76696577223b733a323a226e6f223b733a373a226c6d656d626572223b733a323a226e6f223b733a31313a226c6d656d6265725f616464223b733a323a226e6f223b733a31323a226c6d656d6265725f65646974223b733a323a226e6f223b733a31343a226c6d656d6265725f64656c657465223b733a323a226e6f223b733a31323a226c6d656d6265725f76696577223b733a323a226e6f223b733a343a22626f6f6b223b733a323a226e6f223b733a383a22626f6f6b5f616464223b733a323a226e6f223b733a393a22626f6f6b5f65646974223b733a323a226e6f223b733a31313a22626f6f6b5f64656c657465223b733a323a226e6f223b733a353a226973737565223b733a323a226e6f223b733a393a2269737375655f616464223b733a323a226e6f223b733a31303a2269737375655f65646974223b733a323a226e6f223b733a31303a2269737375655f76696577223b733a323a226e6f223b733a393a227472616e73706f7274223b733a323a226e6f223b733a31333a227472616e73706f72745f616464223b733a323a226e6f223b733a31343a227472616e73706f72745f65646974223b733a323a226e6f223b733a31363a227472616e73706f72745f64656c657465223b733a323a226e6f223b733a373a22746d656d626572223b733a323a226e6f223b733a31313a22746d656d6265725f616464223b733a323a226e6f223b733a31323a22746d656d6265725f65646974223b733a323a226e6f223b733a31343a22746d656d6265725f64656c657465223b733a323a226e6f223b733a31323a22746d656d6265725f76696577223b733a323a226e6f223b733a363a22686f7374656c223b733a323a226e6f223b733a31303a22686f7374656c5f616464223b733a323a226e6f223b733a31313a22686f7374656c5f65646974223b733a323a226e6f223b733a31333a22686f7374656c5f64656c657465223b733a323a226e6f223b733a383a2263617465676f7279223b733a323a226e6f223b733a31323a2263617465676f72795f616464223b733a323a226e6f223b733a31333a2263617465676f72795f65646974223b733a323a226e6f223b733a31353a2263617465676f72795f64656c657465223b733a323a226e6f223b733a373a22686d656d626572223b733a323a226e6f223b733a31313a22686d656d6265725f616464223b733a323a226e6f223b733a31323a22686d656d6265725f65646974223b733a323a226e6f223b733a31343a22686d656d6265725f64656c657465223b733a323a226e6f223b733a31323a22686d656d6265725f76696577223b733a323a226e6f223b733a383a226665657479706573223b733a323a226e6f223b733a31323a2266656574797065735f616464223b733a323a226e6f223b733a31333a2266656574797065735f65646974223b733a323a226e6f223b733a31353a2266656574797065735f64656c657465223b733a323a226e6f223b733a373a22696e766f696365223b733a323a226e6f223b733a31313a22696e766f6963655f616464223b733a323a226e6f223b733a31323a22696e766f6963655f65646974223b733a323a226e6f223b733a31343a22696e766f6963655f64656c657465223b733a323a226e6f223b733a31323a22696e766f6963655f76696577223b733a323a226e6f223b733a31343a227061796d656e74686973746f7279223b733a323a226e6f223b733a31393a227061796d656e74686973746f72795f65646974223b733a323a226e6f223b733a32313a227061796d656e74686973746f72795f64656c657465223b733a323a226e6f223b733a373a22657870656e7365223b733a323a226e6f223b733a31313a22657870656e73655f616464223b733a323a226e6f223b733a31323a22657870656e73655f65646974223b733a323a226e6f223b733a31343a22657870656e73655f64656c657465223b733a323a226e6f223b733a373a22686f6c69646179223b733a323a226e6f223b733a31313a22686f6c696461795f616464223b733a323a226e6f223b733a31323a22686f6c696461795f65646974223b733a323a226e6f223b733a31343a22686f6c696461795f64656c657465223b733a323a226e6f223b733a31323a22686f6c696461795f76696577223b733a323a226e6f223b733a363a227265706f7274223b733a323a226e6f223b733a32303a227265706f72742f73747564656e747265706f7274223b733a323a226e6f223b733a31383a227265706f72742f636c6173737265706f7274223b733a323a226e6f223b733a32333a227265706f72742f617474656e64616e63657265706f7274223b733a323a226e6f223b733a31383a227265706f72742f6365727469666963617465223b733a323a226e6f223b733a31313a2276697369746f72696e666f223b733a323a226e6f223b733a31383a2276697369746f72696e666f5f64656c657465223b733a323a226e6f223b733a31363a2276697369746f72696e666f5f76696577223b733a323a226e6f223b733a31303a227363686f6f6c79656172223b733a323a226e6f223b733a31343a227363686f6f6c796561725f616464223b733a323a226e6f223b733a31353a227363686f6f6c796561725f65646974223b733a323a226e6f223b733a31373a227363686f6f6c796561725f64656c657465223b733a323a226e6f223b733a31313a2273797374656d61646d696e223b733a323a226e6f223b733a31353a2273797374656d61646d696e5f616464223b733a323a226e6f223b733a31363a2273797374656d61646d696e5f65646974223b733a323a226e6f223b733a31383a2273797374656d61646d696e5f64656c657465223b733a323a226e6f223b733a31363a2273797374656d61646d696e5f76696577223b733a323a226e6f223b733a31333a22726573657470617373776f7264223b733a323a226e6f223b733a31383a226d61696c616e64736d7374656d706c617465223b733a323a226e6f223b733a32323a226d61696c616e64736d7374656d706c6174655f616464223b733a323a226e6f223b733a32333a226d61696c616e64736d7374656d706c6174655f65646974223b733a323a226e6f223b733a32353a226d61696c616e64736d7374656d706c6174655f64656c657465223b733a323a226e6f223b733a32333a226d61696c616e64736d7374656d706c6174655f76696577223b733a323a226e6f223b733a31313a2262756c6b696d706f727420223b733a323a226e6f223b733a363a226261636b7570223b733a323a226e6f223b733a383a227573657274797065223b733a323a226e6f223b733a31323a2275736572747970655f616464223b733a323a226e6f223b733a31333a2275736572747970655f65646974223b733a323a226e6f223b733a31353a2275736572747970655f64656c657465223b733a323a226e6f223b733a31303a227065726d697373696f6e223b733a323a226e6f223b733a363a22757064617465223b733a323a226e6f223b733a373a2273657474696e67223b733a323a226e6f223b733a31323a2273657474696e675f65646974223b733a323a226e6f223b733a31353a227061796d656e7473657474696e6773223b733a323a226e6f223b733a31313a22736d7373657474696e6773223b733a323a226e6f223b7d),
('bclv3fgc83n4ks57m50f6t8iq7sdej5s', '::1', 1633762217, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333736323030303b6c616e677c733a373a227370616e697368223b6c6f67696e7573657249447c733a313a2232223b6e616d657c733a333a224a696d223b656d61696c7c733a31333a226a696d40676d61696c2e636f6d223b757365727479706549447c733a313a2232223b75736572747970657c733a373a22446f63656e7465223b757365726e616d657c733a343a226a696d79223b70686f746f7c733a3133323a2263633462396336636261663063663130343562646536626436653535663964386366336637313937623463613162383932663463666335666531326638626635643066316563663830303964313135323838316331323266356537343637353630346334613036653030663162303261363431386337313539616561396336382e706e67223b64656661756c747363686f6f6c7965617249447c733a313a2231223b6c6f67676564696e7c623a313b6765745f7065726d697373696f6e7c623a313b6d61737465725f7065726d697373696f6e5f7365747c613a3138333a7b733a393a2264617368626f617264223b733a333a22796573223b733a373a2273747564656e74223b733a333a22796573223b733a31323a2273747564656e745f76696577223b733a333a22796573223b733a373a2274656163686572223b733a333a22796573223b733a31323a22746561636865725f76696577223b733a333a22796573223b733a373a227375626a656374223b733a333a22796573223b733a31313a227375626a6563745f616464223b733a333a22796573223b733a31323a227375626a6563745f65646974223b733a333a22796573223b733a31343a227375626a6563745f64656c657465223b733a333a22796573223b733a383a2273796c6c61627573223b733a333a22796573223b733a31323a2273796c6c616275735f616464223b733a333a22796573223b733a31333a2273796c6c616275735f65646974223b733a333a22796573223b733a31353a2273796c6c616275735f64656c657465223b733a333a22796573223b733a31303a2261737369676e6d656e74223b733a333a22796573223b733a31343a2261737369676e6d656e745f616464223b733a333a22796573223b733a31353a2261737369676e6d656e745f65646974223b733a333a22796573223b733a31373a2261737369676e6d656e745f64656c657465223b733a333a22796573223b733a31353a2261737369676e6d656e745f76696577223b733a333a22796573223b733a373a22726f7574696e65223b733a333a22796573223b733a31313a22726f7574696e655f616464223b733a333a22796573223b733a31323a22726f7574696e655f65646974223b733a333a22796573223b733a31343a22726f7574696e655f64656c657465223b733a333a22796573223b733a31313a2273617474656e64616e6365223b733a333a22796573223b733a31353a2273617474656e64616e63655f616464223b733a333a22796573223b733a31363a2273617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2274617474656e64616e6365223b733a333a22796573223b733a31353a2274617474656e64616e63655f616464223b733a333a22796573223b733a31363a2274617474656e64616e63655f76696577223b733a333a22796573223b733a31323a226578616d7363686564756c65223b733a333a22796573223b733a31363a226578616d7363686564756c655f616464223b733a333a22796573223b733a31373a226578616d7363686564756c655f65646974223b733a333a22796573223b733a31393a226578616d7363686564756c655f64656c657465223b733a333a22796573223b733a31313a2265617474656e64616e6365223b733a333a22796573223b733a31353a2265617474656e64616e63655f616464223b733a333a22796573223b733a343a226d61726b223b733a333a22796573223b733a383a226d61726b5f616464223b733a333a22796573223b733a393a226d61726b5f76696577223b733a333a22796573223b733a31323a22636f6e766572736174696f6e223b733a333a22796573223b733a353a226d65646961223b733a333a22796573223b733a393a226d656469615f616464223b733a333a22796573223b733a31323a226d656469615f64656c657465223b733a333a22796573223b733a363a226e6f74696365223b733a333a22796573223b733a31303a226e6f746963655f616464223b733a333a22796573223b733a31313a226e6f746963655f65646974223b733a333a22796573223b733a31333a226e6f746963655f64656c657465223b733a333a22796573223b733a31313a226e6f746963655f76696577223b733a333a22796573223b733a353a226576656e74223b733a333a22796573223b733a393a226576656e745f616464223b733a333a22796573223b733a31303a226576656e745f65646974223b733a333a22796573223b733a31323a226576656e745f64656c657465223b733a333a22796573223b733a31303a226576656e745f76696577223b733a333a22796573223b733a373a22706172656e7473223b733a333a22796573223b733a31323a22706172656e74735f76696577223b733a333a22796573223b733a343a2275736572223b733a333a22796573223b733a393a22757365725f76696577223b733a333a22796573223b733a373a22636c6173736573223b733a333a22796573223b733a31313a22636c61737365735f616464223b733a333a22796573223b733a31323a22636c61737365735f65646974223b733a333a22796573223b733a31343a22636c61737365735f64656c657465223b733a333a22796573223b733a343a226578616d223b733a333a22796573223b733a383a226578616d5f616464223b733a333a22796573223b733a393a226578616d5f65646974223b733a333a22796573223b733a31313a226578616d5f64656c657465223b733a333a22796573223b733a353a226772616465223b733a333a22796573223b733a393a2267726164655f616464223b733a333a22796573223b733a31303a2267726164655f65646974223b733a333a22796573223b733a31323a2267726164655f64656c657465223b733a333a22796573223b733a31343a226d61726b70657263656e74616765223b733a333a22796573223b733a31383a226d61726b70657263656e746167655f616464223b733a333a22796573223b733a31393a226d61726b70657263656e746167655f65646974223b733a333a22796573223b733a32313a226d61726b70657263656e746167655f64656c657465223b733a333a22796573223b733a393a2270726f6d6f74696f6e223b733a333a22796573223b733a31313a2273747564656e745f616464223b733a323a226e6f223b733a31323a2273747564656e745f65646974223b733a323a226e6f223b733a31343a2273747564656e745f64656c657465223b733a323a226e6f223b733a31313a22706172656e74735f616464223b733a323a226e6f223b733a31323a22706172656e74735f65646974223b733a323a226e6f223b733a31343a22706172656e74735f64656c657465223b733a323a226e6f223b733a31313a22746561636865725f616464223b733a323a226e6f223b733a31323a22746561636865725f65646974223b733a323a226e6f223b733a31343a22746561636865725f64656c657465223b733a323a226e6f223b733a383a22757365725f616464223b733a323a226e6f223b733a393a22757365725f65646974223b733a323a226e6f223b733a31313a22757365725f64656c657465223b733a323a226e6f223b733a373a2273656374696f6e223b733a323a226e6f223b733a31313a2273656374696f6e5f616464223b733a323a226e6f223b733a31323a2273656374696f6e5f65646974223b733a323a226e6f223b733a31353a2273656d65737465725f64656c657465223b733a323a226e6f223b733a31343a2273656374696f6e5f64656c657465223b733a323a226e6f223b733a31303a226d61696c616e64736d73223b733a323a226e6f223b733a31343a226d61696c616e64736d735f616464223b733a323a226e6f223b733a31353a226d61696c616e64736d735f76696577223b733a323a226e6f223b733a373a226c6d656d626572223b733a323a226e6f223b733a31313a226c6d656d6265725f616464223b733a323a226e6f223b733a31323a226c6d656d6265725f65646974223b733a323a226e6f223b733a31343a226c6d656d6265725f64656c657465223b733a323a226e6f223b733a31323a226c6d656d6265725f76696577223b733a323a226e6f223b733a343a22626f6f6b223b733a323a226e6f223b733a383a22626f6f6b5f616464223b733a323a226e6f223b733a393a22626f6f6b5f65646974223b733a323a226e6f223b733a31313a22626f6f6b5f64656c657465223b733a323a226e6f223b733a353a226973737565223b733a323a226e6f223b733a393a2269737375655f616464223b733a323a226e6f223b733a31303a2269737375655f65646974223b733a323a226e6f223b733a31303a2269737375655f76696577223b733a323a226e6f223b733a393a227472616e73706f7274223b733a323a226e6f223b733a31333a227472616e73706f72745f616464223b733a323a226e6f223b733a31343a227472616e73706f72745f65646974223b733a323a226e6f223b733a31363a227472616e73706f72745f64656c657465223b733a323a226e6f223b733a373a22746d656d626572223b733a323a226e6f223b733a31313a22746d656d6265725f616464223b733a323a226e6f223b733a31323a22746d656d6265725f65646974223b733a323a226e6f223b733a31343a22746d656d6265725f64656c657465223b733a323a226e6f223b733a31323a22746d656d6265725f76696577223b733a323a226e6f223b733a363a22686f7374656c223b733a323a226e6f223b733a31303a22686f7374656c5f616464223b733a323a226e6f223b733a31313a22686f7374656c5f65646974223b733a323a226e6f223b733a31333a22686f7374656c5f64656c657465223b733a323a226e6f223b733a383a2263617465676f7279223b733a323a226e6f223b733a31323a2263617465676f72795f616464223b733a323a226e6f223b733a31333a2263617465676f72795f65646974223b733a323a226e6f223b733a31353a2263617465676f72795f64656c657465223b733a323a226e6f223b733a373a22686d656d626572223b733a323a226e6f223b733a31313a22686d656d6265725f616464223b733a323a226e6f223b733a31323a22686d656d6265725f65646974223b733a323a226e6f223b733a31343a22686d656d6265725f64656c657465223b733a323a226e6f223b733a31323a22686d656d6265725f76696577223b733a323a226e6f223b733a383a226665657479706573223b733a323a226e6f223b733a31323a2266656574797065735f616464223b733a323a226e6f223b733a31333a2266656574797065735f65646974223b733a323a226e6f223b733a31353a2266656574797065735f64656c657465223b733a323a226e6f223b733a373a22696e766f696365223b733a323a226e6f223b733a31313a22696e766f6963655f616464223b733a323a226e6f223b733a31323a22696e766f6963655f65646974223b733a323a226e6f223b733a31343a22696e766f6963655f64656c657465223b733a323a226e6f223b733a31323a22696e766f6963655f76696577223b733a323a226e6f223b733a31343a227061796d656e74686973746f7279223b733a323a226e6f223b733a31393a227061796d656e74686973746f72795f65646974223b733a323a226e6f223b733a32313a227061796d656e74686973746f72795f64656c657465223b733a323a226e6f223b733a373a22657870656e7365223b733a323a226e6f223b733a31313a22657870656e73655f616464223b733a323a226e6f223b733a31323a22657870656e73655f65646974223b733a323a226e6f223b733a31343a22657870656e73655f64656c657465223b733a323a226e6f223b733a373a22686f6c69646179223b733a323a226e6f223b733a31313a22686f6c696461795f616464223b733a323a226e6f223b733a31323a22686f6c696461795f65646974223b733a323a226e6f223b733a31343a22686f6c696461795f64656c657465223b733a323a226e6f223b733a31323a22686f6c696461795f76696577223b733a323a226e6f223b733a363a227265706f7274223b733a323a226e6f223b733a32303a227265706f72742f73747564656e747265706f7274223b733a323a226e6f223b733a31383a227265706f72742f636c6173737265706f7274223b733a323a226e6f223b733a32333a227265706f72742f617474656e64616e63657265706f7274223b733a323a226e6f223b733a31383a227265706f72742f6365727469666963617465223b733a323a226e6f223b733a31313a2276697369746f72696e666f223b733a323a226e6f223b733a31383a2276697369746f72696e666f5f64656c657465223b733a323a226e6f223b733a31363a2276697369746f72696e666f5f76696577223b733a323a226e6f223b733a31303a227363686f6f6c79656172223b733a323a226e6f223b733a31343a227363686f6f6c796561725f616464223b733a323a226e6f223b733a31353a227363686f6f6c796561725f65646974223b733a323a226e6f223b733a31373a227363686f6f6c796561725f64656c657465223b733a323a226e6f223b733a31313a2273797374656d61646d696e223b733a323a226e6f223b733a31353a2273797374656d61646d696e5f616464223b733a323a226e6f223b733a31363a2273797374656d61646d696e5f65646974223b733a323a226e6f223b733a31383a2273797374656d61646d696e5f64656c657465223b733a323a226e6f223b733a31363a2273797374656d61646d696e5f76696577223b733a323a226e6f223b733a31333a22726573657470617373776f7264223b733a323a226e6f223b733a31383a226d61696c616e64736d7374656d706c617465223b733a323a226e6f223b733a32323a226d61696c616e64736d7374656d706c6174655f616464223b733a323a226e6f223b733a32333a226d61696c616e64736d7374656d706c6174655f65646974223b733a323a226e6f223b733a32353a226d61696c616e64736d7374656d706c6174655f64656c657465223b733a323a226e6f223b733a32333a226d61696c616e64736d7374656d706c6174655f76696577223b733a323a226e6f223b733a31313a2262756c6b696d706f727420223b733a323a226e6f223b733a363a226261636b7570223b733a323a226e6f223b733a383a227573657274797065223b733a323a226e6f223b733a31323a2275736572747970655f616464223b733a323a226e6f223b733a31333a2275736572747970655f65646974223b733a323a226e6f223b733a31353a2275736572747970655f64656c657465223b733a323a226e6f223b733a31303a227065726d697373696f6e223b733a323a226e6f223b733a363a22757064617465223b733a323a226e6f223b733a373a2273657474696e67223b733a323a226e6f223b733a31323a2273657474696e675f65646974223b733a323a226e6f223b733a31353a227061796d656e7473657474696e6773223b733a323a226e6f223b733a31313a22736d7373657474696e6773223b733a323a226e6f223b7d);
INSERT INTO `school_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('bh9mteulacd4equgpe6nhvhcpp6ant44', '::1', 1633805103, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333830353034323b6c616e677c733a373a227370616e697368223b6c6f67696e7573657249447c733a323a223131223b6e616d657c733a373a22796f73656c696e223b656d61696c7c733a31343a22796f736540676d61696c2e636f6d223b757365727479706549447c733a313a2233223b75736572747970657c733a31303a22457374756469616e7465223b757365726e616d657c733a343a22796f7369223b70686f746f7c733a3133323a2264336561383865313431343436616231663261643432366633336539386462626239323036616534316132346364623464623635663830653064653834306662326261333262643961366164633135346365323537396433623161313065343063353163363234623961633462393166613366383933373331623764666562652e706e67223b64656661756c747363686f6f6c7965617249447c733a313a2231223b6c6f67676564696e7c623a313b6765745f7065726d697373696f6e7c623a313b6d61737465725f7065726d697373696f6e5f7365747c613a3138343a7b733a393a2264617368626f617264223b733a333a22796573223b733a373a2274656163686572223b733a333a22796573223b733a373a227375626a656374223b733a333a22796573223b733a383a2273796c6c61627573223b733a333a22796573223b733a31303a2261737369676e6d656e74223b733a333a22796573223b733a31353a2261737369676e6d656e745f76696577223b733a333a22796573223b733a31313a2273617474656e64616e6365223b733a333a22796573223b733a31353a2273617474656e64616e63655f616464223b733a333a22796573223b733a31363a2273617474656e64616e63655f76696577223b733a333a22796573223b733a31323a226578616d7363686564756c65223b733a333a22796573223b733a343a226d61726b223b733a333a22796573223b733a393a226d61726b5f76696577223b733a333a22796573223b733a353a226d65646961223b733a333a22796573223b733a393a226d656469615f616464223b733a333a22796573223b733a363a226e6f74696365223b733a333a22796573223b733a31313a226e6f746963655f76696577223b733a333a22796573223b733a353a226576656e74223b733a333a22796573223b733a31303a226576656e745f76696577223b733a333a22796573223b733a373a22726f7574696e65223b733a333a22796573223b733a373a22636c6173736573223b733a333a22796573223b733a31313a22636c61737365735f616464223b733a333a22796573223b733a31323a22636c61737365735f65646974223b733a333a22796573223b733a31343a22636c61737365735f64656c657465223b733a333a22796573223b733a373a2273656374696f6e223b733a333a22796573223b733a31313a2273656374696f6e5f616464223b733a333a22796573223b733a31323a2273656374696f6e5f65646974223b733a333a22796573223b733a31343a2273656374696f6e5f64656c657465223b733a333a22796573223b733a343a226578616d223b733a333a22796573223b733a383a226578616d5f616464223b733a333a22796573223b733a353a226772616465223b733a333a22796573223b733a393a2267726164655f616464223b733a333a22796573223b733a31313a2265617474656e64616e6365223b733a333a22796573223b733a31353a2265617474656e64616e63655f616464223b733a333a22796573223b733a373a2273747564656e74223b733a323a226e6f223b733a31313a2273747564656e745f616464223b733a323a226e6f223b733a31323a2273747564656e745f65646974223b733a323a226e6f223b733a31343a2273747564656e745f64656c657465223b733a323a226e6f223b733a31323a2273747564656e745f76696577223b733a323a226e6f223b733a373a22706172656e7473223b733a323a226e6f223b733a31313a22706172656e74735f616464223b733a323a226e6f223b733a31323a22706172656e74735f65646974223b733a323a226e6f223b733a31343a22706172656e74735f64656c657465223b733a323a226e6f223b733a31323a22706172656e74735f76696577223b733a323a226e6f223b733a31313a22746561636865725f616464223b733a323a226e6f223b733a31323a22746561636865725f65646974223b733a323a226e6f223b733a31343a22746561636865725f64656c657465223b733a323a226e6f223b733a31323a22746561636865725f76696577223b733a323a226e6f223b733a343a2275736572223b733a323a226e6f223b733a383a22757365725f616464223b733a323a226e6f223b733a393a22757365725f65646974223b733a323a226e6f223b733a31313a22757365725f64656c657465223b733a323a226e6f223b733a393a22757365725f76696577223b733a323a226e6f223b733a31313a227375626a6563745f616464223b733a323a226e6f223b733a31323a227375626a6563745f65646974223b733a323a226e6f223b733a31343a227375626a6563745f64656c657465223b733a323a226e6f223b733a31353a2273656d65737465725f64656c657465223b733a323a226e6f223b733a31323a2273796c6c616275735f616464223b733a323a226e6f223b733a31333a2273796c6c616275735f65646974223b733a323a226e6f223b733a31353a2273796c6c616275735f64656c657465223b733a323a226e6f223b733a31343a2261737369676e6d656e745f616464223b733a323a226e6f223b733a31353a2261737369676e6d656e745f65646974223b733a323a226e6f223b733a31373a2261737369676e6d656e745f64656c657465223b733a323a226e6f223b733a31313a22726f7574696e655f616464223b733a323a226e6f223b733a31323a22726f7574696e655f65646974223b733a323a226e6f223b733a31343a22726f7574696e655f64656c657465223b733a323a226e6f223b733a31313a2274617474656e64616e6365223b733a323a226e6f223b733a31353a2274617474656e64616e63655f616464223b733a323a226e6f223b733a31363a2274617474656e64616e63655f76696577223b733a323a226e6f223b733a393a226578616d5f65646974223b733a323a226e6f223b733a31313a226578616d5f64656c657465223b733a323a226e6f223b733a31363a226578616d7363686564756c655f616464223b733a323a226e6f223b733a31373a226578616d7363686564756c655f65646974223b733a323a226e6f223b733a31393a226578616d7363686564756c655f64656c657465223b733a323a226e6f223b733a31303a2267726164655f65646974223b733a323a226e6f223b733a31323a2267726164655f64656c657465223b733a323a226e6f223b733a383a226d61726b5f616464223b733a323a226e6f223b733a31343a226d61726b70657263656e74616765223b733a323a226e6f223b733a31383a226d61726b70657263656e746167655f616464223b733a323a226e6f223b733a31393a226d61726b70657263656e746167655f65646974223b733a323a226e6f223b733a32313a226d61726b70657263656e746167655f64656c657465223b733a323a226e6f223b733a393a2270726f6d6f74696f6e223b733a323a226e6f223b733a31323a22636f6e766572736174696f6e223b733a323a226e6f223b733a31323a226d656469615f64656c657465223b733a323a226e6f223b733a31303a226d61696c616e64736d73223b733a323a226e6f223b733a31343a226d61696c616e64736d735f616464223b733a323a226e6f223b733a31353a226d61696c616e64736d735f76696577223b733a323a226e6f223b733a373a226c6d656d626572223b733a323a226e6f223b733a31313a226c6d656d6265725f616464223b733a323a226e6f223b733a31323a226c6d656d6265725f65646974223b733a323a226e6f223b733a31343a226c6d656d6265725f64656c657465223b733a323a226e6f223b733a31323a226c6d656d6265725f76696577223b733a323a226e6f223b733a343a22626f6f6b223b733a323a226e6f223b733a383a22626f6f6b5f616464223b733a323a226e6f223b733a393a22626f6f6b5f65646974223b733a323a226e6f223b733a31313a22626f6f6b5f64656c657465223b733a323a226e6f223b733a353a226973737565223b733a323a226e6f223b733a393a2269737375655f616464223b733a323a226e6f223b733a31303a2269737375655f65646974223b733a323a226e6f223b733a31303a2269737375655f76696577223b733a323a226e6f223b733a393a227472616e73706f7274223b733a323a226e6f223b733a31333a227472616e73706f72745f616464223b733a323a226e6f223b733a31343a227472616e73706f72745f65646974223b733a323a226e6f223b733a31363a227472616e73706f72745f64656c657465223b733a323a226e6f223b733a373a22746d656d626572223b733a323a226e6f223b733a31313a22746d656d6265725f616464223b733a323a226e6f223b733a31323a22746d656d6265725f65646974223b733a323a226e6f223b733a31343a22746d656d6265725f64656c657465223b733a323a226e6f223b733a31323a22746d656d6265725f76696577223b733a323a226e6f223b733a363a22686f7374656c223b733a323a226e6f223b733a31303a22686f7374656c5f616464223b733a323a226e6f223b733a31313a22686f7374656c5f65646974223b733a323a226e6f223b733a31333a22686f7374656c5f64656c657465223b733a323a226e6f223b733a383a2263617465676f7279223b733a323a226e6f223b733a31323a2263617465676f72795f616464223b733a323a226e6f223b733a31333a2263617465676f72795f65646974223b733a323a226e6f223b733a31353a2263617465676f72795f64656c657465223b733a323a226e6f223b733a373a22686d656d626572223b733a323a226e6f223b733a31313a22686d656d6265725f616464223b733a323a226e6f223b733a31323a22686d656d6265725f65646974223b733a323a226e6f223b733a31343a22686d656d6265725f64656c657465223b733a323a226e6f223b733a31323a22686d656d6265725f76696577223b733a323a226e6f223b733a383a226665657479706573223b733a323a226e6f223b733a31323a2266656574797065735f616464223b733a323a226e6f223b733a31333a2266656574797065735f65646974223b733a323a226e6f223b733a31353a2266656574797065735f64656c657465223b733a323a226e6f223b733a373a22696e766f696365223b733a323a226e6f223b733a31313a22696e766f6963655f616464223b733a323a226e6f223b733a31323a22696e766f6963655f65646974223b733a323a226e6f223b733a31343a22696e766f6963655f64656c657465223b733a323a226e6f223b733a31323a22696e766f6963655f76696577223b733a323a226e6f223b733a31343a227061796d656e74686973746f7279223b733a323a226e6f223b733a31393a227061796d656e74686973746f72795f65646974223b733a323a226e6f223b733a32313a227061796d656e74686973746f72795f64656c657465223b733a323a226e6f223b733a373a22657870656e7365223b733a323a226e6f223b733a31313a22657870656e73655f616464223b733a323a226e6f223b733a31323a22657870656e73655f65646974223b733a323a226e6f223b733a31343a22657870656e73655f64656c657465223b733a323a226e6f223b733a31303a226e6f746963655f616464223b733a323a226e6f223b733a31313a226e6f746963655f65646974223b733a323a226e6f223b733a31333a226e6f746963655f64656c657465223b733a323a226e6f223b733a393a226576656e745f616464223b733a323a226e6f223b733a31303a226576656e745f65646974223b733a323a226e6f223b733a31323a226576656e745f64656c657465223b733a323a226e6f223b733a373a22686f6c69646179223b733a323a226e6f223b733a31313a22686f6c696461795f616464223b733a323a226e6f223b733a31323a22686f6c696461795f65646974223b733a323a226e6f223b733a31343a22686f6c696461795f64656c657465223b733a323a226e6f223b733a31323a22686f6c696461795f76696577223b733a323a226e6f223b733a363a227265706f7274223b733a323a226e6f223b733a32303a227265706f72742f73747564656e747265706f7274223b733a323a226e6f223b733a31383a227265706f72742f636c6173737265706f7274223b733a323a226e6f223b733a32333a227265706f72742f617474656e64616e63657265706f7274223b733a323a226e6f223b733a31383a227265706f72742f6365727469666963617465223b733a323a226e6f223b733a31313a2276697369746f72696e666f223b733a323a226e6f223b733a31383a2276697369746f72696e666f5f64656c657465223b733a323a226e6f223b733a31363a2276697369746f72696e666f5f76696577223b733a323a226e6f223b733a31303a227363686f6f6c79656172223b733a323a226e6f223b733a31343a227363686f6f6c796561725f616464223b733a323a226e6f223b733a31353a227363686f6f6c796561725f65646974223b733a323a226e6f223b733a31373a227363686f6f6c796561725f64656c657465223b733a323a226e6f223b733a31313a2273797374656d61646d696e223b733a323a226e6f223b733a31353a2273797374656d61646d696e5f616464223b733a323a226e6f223b733a31363a2273797374656d61646d696e5f65646974223b733a323a226e6f223b733a31383a2273797374656d61646d696e5f64656c657465223b733a323a226e6f223b733a31363a2273797374656d61646d696e5f76696577223b733a323a226e6f223b733a31333a22726573657470617373776f7264223b733a323a226e6f223b733a31383a226d61696c616e64736d7374656d706c617465223b733a323a226e6f223b733a32323a226d61696c616e64736d7374656d706c6174655f616464223b733a323a226e6f223b733a32333a226d61696c616e64736d7374656d706c6174655f65646974223b733a323a226e6f223b733a32353a226d61696c616e64736d7374656d706c6174655f64656c657465223b733a323a226e6f223b733a32333a226d61696c616e64736d7374656d706c6174655f76696577223b733a323a226e6f223b733a31313a2262756c6b696d706f727420223b733a323a226e6f223b733a363a226261636b7570223b733a323a226e6f223b733a383a227573657274797065223b733a323a226e6f223b733a31323a2275736572747970655f616464223b733a323a226e6f223b733a31333a2275736572747970655f65646974223b733a323a226e6f223b733a31353a2275736572747970655f64656c657465223b733a323a226e6f223b733a31303a227065726d697373696f6e223b733a323a226e6f223b733a363a22757064617465223b733a323a226e6f223b733a373a2273657474696e67223b733a323a226e6f223b733a31323a2273657474696e675f65646974223b733a323a226e6f223b733a31353a227061796d656e7473657474696e6773223b733a323a226e6f223b733a31313a22736d7373657474696e6773223b733a323a226e6f223b733a393a2274616b655f6578616d223b733a333a22796573223b7d),
('bt6veembe339mp8c8iijg9o6hv9883ij', '::1', 1633761721, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333736313637363b6c616e677c733a373a227370616e697368223b6c6f67696e7573657249447c733a313a2232223b6e616d657c733a333a224a696d223b656d61696c7c733a31333a226a696d40676d61696c2e636f6d223b757365727479706549447c733a313a2232223b75736572747970657c733a373a22446f63656e7465223b757365726e616d657c733a343a226a696d79223b70686f746f7c733a3133323a2263633462396336636261663063663130343562646536626436653535663964386366336637313937623463613162383932663463666335666531326638626635643066316563663830303964313135323838316331323266356537343637353630346334613036653030663162303261363431386337313539616561396336382e706e67223b64656661756c747363686f6f6c7965617249447c733a313a2231223b6c6f67676564696e7c623a313b6765745f7065726d697373696f6e7c623a313b6d61737465725f7065726d697373696f6e5f7365747c613a3138333a7b733a393a2264617368626f617264223b733a333a22796573223b733a373a2273747564656e74223b733a333a22796573223b733a31323a2273747564656e745f76696577223b733a333a22796573223b733a373a2274656163686572223b733a333a22796573223b733a31323a22746561636865725f76696577223b733a333a22796573223b733a373a227375626a656374223b733a333a22796573223b733a31313a227375626a6563745f616464223b733a333a22796573223b733a31323a227375626a6563745f65646974223b733a333a22796573223b733a31343a227375626a6563745f64656c657465223b733a333a22796573223b733a383a2273796c6c61627573223b733a333a22796573223b733a31323a2273796c6c616275735f616464223b733a333a22796573223b733a31333a2273796c6c616275735f65646974223b733a333a22796573223b733a31353a2273796c6c616275735f64656c657465223b733a333a22796573223b733a31303a2261737369676e6d656e74223b733a333a22796573223b733a31343a2261737369676e6d656e745f616464223b733a333a22796573223b733a31353a2261737369676e6d656e745f65646974223b733a333a22796573223b733a31373a2261737369676e6d656e745f64656c657465223b733a333a22796573223b733a31353a2261737369676e6d656e745f76696577223b733a333a22796573223b733a373a22726f7574696e65223b733a333a22796573223b733a31313a22726f7574696e655f616464223b733a333a22796573223b733a31323a22726f7574696e655f65646974223b733a333a22796573223b733a31343a22726f7574696e655f64656c657465223b733a333a22796573223b733a31313a2273617474656e64616e6365223b733a333a22796573223b733a31353a2273617474656e64616e63655f616464223b733a333a22796573223b733a31363a2273617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2274617474656e64616e6365223b733a333a22796573223b733a31353a2274617474656e64616e63655f616464223b733a333a22796573223b733a31363a2274617474656e64616e63655f76696577223b733a333a22796573223b733a31323a226578616d7363686564756c65223b733a333a22796573223b733a31363a226578616d7363686564756c655f616464223b733a333a22796573223b733a31373a226578616d7363686564756c655f65646974223b733a333a22796573223b733a31393a226578616d7363686564756c655f64656c657465223b733a333a22796573223b733a31313a2265617474656e64616e6365223b733a333a22796573223b733a31353a2265617474656e64616e63655f616464223b733a333a22796573223b733a343a226d61726b223b733a333a22796573223b733a383a226d61726b5f616464223b733a333a22796573223b733a393a226d61726b5f76696577223b733a333a22796573223b733a31323a22636f6e766572736174696f6e223b733a333a22796573223b733a353a226d65646961223b733a333a22796573223b733a393a226d656469615f616464223b733a333a22796573223b733a31323a226d656469615f64656c657465223b733a333a22796573223b733a363a226e6f74696365223b733a333a22796573223b733a31303a226e6f746963655f616464223b733a333a22796573223b733a31313a226e6f746963655f65646974223b733a333a22796573223b733a31333a226e6f746963655f64656c657465223b733a333a22796573223b733a31313a226e6f746963655f76696577223b733a333a22796573223b733a353a226576656e74223b733a333a22796573223b733a393a226576656e745f616464223b733a333a22796573223b733a31303a226576656e745f65646974223b733a333a22796573223b733a31323a226576656e745f64656c657465223b733a333a22796573223b733a31303a226576656e745f76696577223b733a333a22796573223b733a373a22706172656e7473223b733a333a22796573223b733a31323a22706172656e74735f76696577223b733a333a22796573223b733a343a2275736572223b733a333a22796573223b733a393a22757365725f76696577223b733a333a22796573223b733a373a22636c6173736573223b733a333a22796573223b733a31313a22636c61737365735f616464223b733a333a22796573223b733a31323a22636c61737365735f65646974223b733a333a22796573223b733a31343a22636c61737365735f64656c657465223b733a333a22796573223b733a343a226578616d223b733a333a22796573223b733a383a226578616d5f616464223b733a333a22796573223b733a393a226578616d5f65646974223b733a333a22796573223b733a31313a226578616d5f64656c657465223b733a333a22796573223b733a353a226772616465223b733a333a22796573223b733a393a2267726164655f616464223b733a333a22796573223b733a31303a2267726164655f65646974223b733a333a22796573223b733a31323a2267726164655f64656c657465223b733a333a22796573223b733a31343a226d61726b70657263656e74616765223b733a333a22796573223b733a31383a226d61726b70657263656e746167655f616464223b733a333a22796573223b733a31393a226d61726b70657263656e746167655f65646974223b733a333a22796573223b733a32313a226d61726b70657263656e746167655f64656c657465223b733a333a22796573223b733a393a2270726f6d6f74696f6e223b733a333a22796573223b733a31313a2273747564656e745f616464223b733a323a226e6f223b733a31323a2273747564656e745f65646974223b733a323a226e6f223b733a31343a2273747564656e745f64656c657465223b733a323a226e6f223b733a31313a22706172656e74735f616464223b733a323a226e6f223b733a31323a22706172656e74735f65646974223b733a323a226e6f223b733a31343a22706172656e74735f64656c657465223b733a323a226e6f223b733a31313a22746561636865725f616464223b733a323a226e6f223b733a31323a22746561636865725f65646974223b733a323a226e6f223b733a31343a22746561636865725f64656c657465223b733a323a226e6f223b733a383a22757365725f616464223b733a323a226e6f223b733a393a22757365725f65646974223b733a323a226e6f223b733a31313a22757365725f64656c657465223b733a323a226e6f223b733a373a2273656374696f6e223b733a323a226e6f223b733a31313a2273656374696f6e5f616464223b733a323a226e6f223b733a31323a2273656374696f6e5f65646974223b733a323a226e6f223b733a31353a2273656d65737465725f64656c657465223b733a323a226e6f223b733a31343a2273656374696f6e5f64656c657465223b733a323a226e6f223b733a31303a226d61696c616e64736d73223b733a323a226e6f223b733a31343a226d61696c616e64736d735f616464223b733a323a226e6f223b733a31353a226d61696c616e64736d735f76696577223b733a323a226e6f223b733a373a226c6d656d626572223b733a323a226e6f223b733a31313a226c6d656d6265725f616464223b733a323a226e6f223b733a31323a226c6d656d6265725f65646974223b733a323a226e6f223b733a31343a226c6d656d6265725f64656c657465223b733a323a226e6f223b733a31323a226c6d656d6265725f76696577223b733a323a226e6f223b733a343a22626f6f6b223b733a323a226e6f223b733a383a22626f6f6b5f616464223b733a323a226e6f223b733a393a22626f6f6b5f65646974223b733a323a226e6f223b733a31313a22626f6f6b5f64656c657465223b733a323a226e6f223b733a353a226973737565223b733a323a226e6f223b733a393a2269737375655f616464223b733a323a226e6f223b733a31303a2269737375655f65646974223b733a323a226e6f223b733a31303a2269737375655f76696577223b733a323a226e6f223b733a393a227472616e73706f7274223b733a323a226e6f223b733a31333a227472616e73706f72745f616464223b733a323a226e6f223b733a31343a227472616e73706f72745f65646974223b733a323a226e6f223b733a31363a227472616e73706f72745f64656c657465223b733a323a226e6f223b733a373a22746d656d626572223b733a323a226e6f223b733a31313a22746d656d6265725f616464223b733a323a226e6f223b733a31323a22746d656d6265725f65646974223b733a323a226e6f223b733a31343a22746d656d6265725f64656c657465223b733a323a226e6f223b733a31323a22746d656d6265725f76696577223b733a323a226e6f223b733a363a22686f7374656c223b733a323a226e6f223b733a31303a22686f7374656c5f616464223b733a323a226e6f223b733a31313a22686f7374656c5f65646974223b733a323a226e6f223b733a31333a22686f7374656c5f64656c657465223b733a323a226e6f223b733a383a2263617465676f7279223b733a323a226e6f223b733a31323a2263617465676f72795f616464223b733a323a226e6f223b733a31333a2263617465676f72795f65646974223b733a323a226e6f223b733a31353a2263617465676f72795f64656c657465223b733a323a226e6f223b733a373a22686d656d626572223b733a323a226e6f223b733a31313a22686d656d6265725f616464223b733a323a226e6f223b733a31323a22686d656d6265725f65646974223b733a323a226e6f223b733a31343a22686d656d6265725f64656c657465223b733a323a226e6f223b733a31323a22686d656d6265725f76696577223b733a323a226e6f223b733a383a226665657479706573223b733a323a226e6f223b733a31323a2266656574797065735f616464223b733a323a226e6f223b733a31333a2266656574797065735f65646974223b733a323a226e6f223b733a31353a2266656574797065735f64656c657465223b733a323a226e6f223b733a373a22696e766f696365223b733a323a226e6f223b733a31313a22696e766f6963655f616464223b733a323a226e6f223b733a31323a22696e766f6963655f65646974223b733a323a226e6f223b733a31343a22696e766f6963655f64656c657465223b733a323a226e6f223b733a31323a22696e766f6963655f76696577223b733a323a226e6f223b733a31343a227061796d656e74686973746f7279223b733a323a226e6f223b733a31393a227061796d656e74686973746f72795f65646974223b733a323a226e6f223b733a32313a227061796d656e74686973746f72795f64656c657465223b733a323a226e6f223b733a373a22657870656e7365223b733a323a226e6f223b733a31313a22657870656e73655f616464223b733a323a226e6f223b733a31323a22657870656e73655f65646974223b733a323a226e6f223b733a31343a22657870656e73655f64656c657465223b733a323a226e6f223b733a373a22686f6c69646179223b733a323a226e6f223b733a31313a22686f6c696461795f616464223b733a323a226e6f223b733a31323a22686f6c696461795f65646974223b733a323a226e6f223b733a31343a22686f6c696461795f64656c657465223b733a323a226e6f223b733a31323a22686f6c696461795f76696577223b733a323a226e6f223b733a363a227265706f7274223b733a323a226e6f223b733a32303a227265706f72742f73747564656e747265706f7274223b733a323a226e6f223b733a31383a227265706f72742f636c6173737265706f7274223b733a323a226e6f223b733a32333a227265706f72742f617474656e64616e63657265706f7274223b733a323a226e6f223b733a31383a227265706f72742f6365727469666963617465223b733a323a226e6f223b733a31313a2276697369746f72696e666f223b733a323a226e6f223b733a31383a2276697369746f72696e666f5f64656c657465223b733a323a226e6f223b733a31363a2276697369746f72696e666f5f76696577223b733a323a226e6f223b733a31303a227363686f6f6c79656172223b733a323a226e6f223b733a31343a227363686f6f6c796561725f616464223b733a323a226e6f223b733a31353a227363686f6f6c796561725f65646974223b733a323a226e6f223b733a31373a227363686f6f6c796561725f64656c657465223b733a323a226e6f223b733a31313a2273797374656d61646d696e223b733a323a226e6f223b733a31353a2273797374656d61646d696e5f616464223b733a323a226e6f223b733a31363a2273797374656d61646d696e5f65646974223b733a323a226e6f223b733a31383a2273797374656d61646d696e5f64656c657465223b733a323a226e6f223b733a31363a2273797374656d61646d696e5f76696577223b733a323a226e6f223b733a31333a22726573657470617373776f7264223b733a323a226e6f223b733a31383a226d61696c616e64736d7374656d706c617465223b733a323a226e6f223b733a32323a226d61696c616e64736d7374656d706c6174655f616464223b733a323a226e6f223b733a32333a226d61696c616e64736d7374656d706c6174655f65646974223b733a323a226e6f223b733a32353a226d61696c616e64736d7374656d706c6174655f64656c657465223b733a323a226e6f223b733a32333a226d61696c616e64736d7374656d706c6174655f76696577223b733a323a226e6f223b733a31313a2262756c6b696d706f727420223b733a323a226e6f223b733a363a226261636b7570223b733a323a226e6f223b733a383a227573657274797065223b733a323a226e6f223b733a31323a2275736572747970655f616464223b733a323a226e6f223b733a31333a2275736572747970655f65646974223b733a323a226e6f223b733a31353a2275736572747970655f64656c657465223b733a323a226e6f223b733a31303a227065726d697373696f6e223b733a323a226e6f223b733a363a22757064617465223b733a323a226e6f223b733a373a2273657474696e67223b733a323a226e6f223b733a31323a2273657474696e675f65646974223b733a323a226e6f223b733a31353a227061796d656e7473657474696e6773223b733a323a226e6f223b733a31313a22736d7373657474696e6773223b733a323a226e6f223b7d),
('c27jubd5pf2vms5l6e2dbcc0si2ogbl8', '::1', 1633805817, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333830353831373b6c616e677c733a373a227370616e697368223b6c6f67696e7573657249447c733a313a2232223b6e616d657c733a333a224a696d223b656d61696c7c733a31333a226a696d40676d61696c2e636f6d223b757365727479706549447c733a313a2232223b75736572747970657c733a373a22446f63656e7465223b757365726e616d657c733a343a226a696d79223b70686f746f7c733a3133323a2236373933386330393831303534316231666235333265373433396430346532633339316337363539333738363663393535316230626231343530336234313766333230663665656230316336313163623234346464313731636539336365663164396464353966383635653630363261613639616133393032646666366363612e706e67223b64656661756c747363686f6f6c7965617249447c733a313a2231223b6c6f67676564696e7c623a313b6765745f7065726d697373696f6e7c623a313b6d61737465725f7065726d697373696f6e5f7365747c613a3138333a7b733a393a2264617368626f617264223b733a333a22796573223b733a373a2273747564656e74223b733a333a22796573223b733a31323a2273747564656e745f76696577223b733a333a22796573223b733a373a2274656163686572223b733a333a22796573223b733a31323a22746561636865725f76696577223b733a333a22796573223b733a373a227375626a656374223b733a333a22796573223b733a31313a227375626a6563745f616464223b733a333a22796573223b733a31323a227375626a6563745f65646974223b733a333a22796573223b733a31343a227375626a6563745f64656c657465223b733a333a22796573223b733a383a2273796c6c61627573223b733a333a22796573223b733a31323a2273796c6c616275735f616464223b733a333a22796573223b733a31333a2273796c6c616275735f65646974223b733a333a22796573223b733a31353a2273796c6c616275735f64656c657465223b733a333a22796573223b733a31303a2261737369676e6d656e74223b733a333a22796573223b733a31343a2261737369676e6d656e745f616464223b733a333a22796573223b733a31353a2261737369676e6d656e745f65646974223b733a333a22796573223b733a31373a2261737369676e6d656e745f64656c657465223b733a333a22796573223b733a31353a2261737369676e6d656e745f76696577223b733a333a22796573223b733a373a22726f7574696e65223b733a333a22796573223b733a31313a22726f7574696e655f616464223b733a333a22796573223b733a31323a22726f7574696e655f65646974223b733a333a22796573223b733a31343a22726f7574696e655f64656c657465223b733a333a22796573223b733a31313a2273617474656e64616e6365223b733a333a22796573223b733a31363a2273617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2274617474656e64616e6365223b733a333a22796573223b733a31353a2274617474656e64616e63655f616464223b733a333a22796573223b733a31363a2274617474656e64616e63655f76696577223b733a333a22796573223b733a31323a226578616d7363686564756c65223b733a333a22796573223b733a31363a226578616d7363686564756c655f616464223b733a333a22796573223b733a31373a226578616d7363686564756c655f65646974223b733a333a22796573223b733a31393a226578616d7363686564756c655f64656c657465223b733a333a22796573223b733a31313a2265617474656e64616e6365223b733a333a22796573223b733a31353a2265617474656e64616e63655f616464223b733a333a22796573223b733a343a226d61726b223b733a333a22796573223b733a383a226d61726b5f616464223b733a333a22796573223b733a393a226d61726b5f76696577223b733a333a22796573223b733a353a226d65646961223b733a333a22796573223b733a393a226d656469615f616464223b733a333a22796573223b733a31323a226d656469615f64656c657465223b733a333a22796573223b733a363a226e6f74696365223b733a333a22796573223b733a31303a226e6f746963655f616464223b733a333a22796573223b733a31313a226e6f746963655f65646974223b733a333a22796573223b733a31333a226e6f746963655f64656c657465223b733a333a22796573223b733a31313a226e6f746963655f76696577223b733a333a22796573223b733a353a226576656e74223b733a333a22796573223b733a393a226576656e745f616464223b733a333a22796573223b733a31303a226576656e745f65646974223b733a333a22796573223b733a31323a226576656e745f64656c657465223b733a333a22796573223b733a31303a226576656e745f76696577223b733a333a22796573223b733a373a22706172656e7473223b733a333a22796573223b733a31323a22706172656e74735f76696577223b733a333a22796573223b733a343a2275736572223b733a333a22796573223b733a393a22757365725f76696577223b733a333a22796573223b733a373a22636c6173736573223b733a333a22796573223b733a31313a22636c61737365735f616464223b733a333a22796573223b733a31323a22636c61737365735f65646974223b733a333a22796573223b733a31343a22636c61737365735f64656c657465223b733a333a22796573223b733a343a226578616d223b733a333a22796573223b733a383a226578616d5f616464223b733a333a22796573223b733a393a226578616d5f65646974223b733a333a22796573223b733a31313a226578616d5f64656c657465223b733a333a22796573223b733a353a226772616465223b733a333a22796573223b733a393a2267726164655f616464223b733a333a22796573223b733a31303a2267726164655f65646974223b733a333a22796573223b733a31323a2267726164655f64656c657465223b733a333a22796573223b733a31343a226d61726b70657263656e74616765223b733a333a22796573223b733a31383a226d61726b70657263656e746167655f616464223b733a333a22796573223b733a31393a226d61726b70657263656e746167655f65646974223b733a333a22796573223b733a32313a226d61726b70657263656e746167655f64656c657465223b733a333a22796573223b733a393a2270726f6d6f74696f6e223b733a333a22796573223b733a373a2273656374696f6e223b733a333a22796573223b733a31313a2273656374696f6e5f616464223b733a333a22796573223b733a31323a2273656374696f6e5f65646974223b733a333a22796573223b733a31343a2273656374696f6e5f64656c657465223b733a333a22796573223b733a31313a2262756c6b696d706f727420223b733a333a22796573223b733a31313a2273747564656e745f616464223b733a323a226e6f223b733a31323a2273747564656e745f65646974223b733a323a226e6f223b733a31343a2273747564656e745f64656c657465223b733a323a226e6f223b733a31313a22706172656e74735f616464223b733a323a226e6f223b733a31323a22706172656e74735f65646974223b733a323a226e6f223b733a31343a22706172656e74735f64656c657465223b733a323a226e6f223b733a31313a22746561636865725f616464223b733a323a226e6f223b733a31323a22746561636865725f65646974223b733a323a226e6f223b733a31343a22746561636865725f64656c657465223b733a323a226e6f223b733a383a22757365725f616464223b733a323a226e6f223b733a393a22757365725f65646974223b733a323a226e6f223b733a31313a22757365725f64656c657465223b733a323a226e6f223b733a31353a2273656d65737465725f64656c657465223b733a323a226e6f223b733a31353a2273617474656e64616e63655f616464223b733a323a226e6f223b733a31323a22636f6e766572736174696f6e223b733a323a226e6f223b733a31303a226d61696c616e64736d73223b733a323a226e6f223b733a31343a226d61696c616e64736d735f616464223b733a323a226e6f223b733a31353a226d61696c616e64736d735f76696577223b733a323a226e6f223b733a373a226c6d656d626572223b733a323a226e6f223b733a31313a226c6d656d6265725f616464223b733a323a226e6f223b733a31323a226c6d656d6265725f65646974223b733a323a226e6f223b733a31343a226c6d656d6265725f64656c657465223b733a323a226e6f223b733a31323a226c6d656d6265725f76696577223b733a323a226e6f223b733a343a22626f6f6b223b733a323a226e6f223b733a383a22626f6f6b5f616464223b733a323a226e6f223b733a393a22626f6f6b5f65646974223b733a323a226e6f223b733a31313a22626f6f6b5f64656c657465223b733a323a226e6f223b733a353a226973737565223b733a323a226e6f223b733a393a2269737375655f616464223b733a323a226e6f223b733a31303a2269737375655f65646974223b733a323a226e6f223b733a31303a2269737375655f76696577223b733a323a226e6f223b733a393a227472616e73706f7274223b733a323a226e6f223b733a31333a227472616e73706f72745f616464223b733a323a226e6f223b733a31343a227472616e73706f72745f65646974223b733a323a226e6f223b733a31363a227472616e73706f72745f64656c657465223b733a323a226e6f223b733a373a22746d656d626572223b733a323a226e6f223b733a31313a22746d656d6265725f616464223b733a323a226e6f223b733a31323a22746d656d6265725f65646974223b733a323a226e6f223b733a31343a22746d656d6265725f64656c657465223b733a323a226e6f223b733a31323a22746d656d6265725f76696577223b733a323a226e6f223b733a363a22686f7374656c223b733a323a226e6f223b733a31303a22686f7374656c5f616464223b733a323a226e6f223b733a31313a22686f7374656c5f65646974223b733a323a226e6f223b733a31333a22686f7374656c5f64656c657465223b733a323a226e6f223b733a383a2263617465676f7279223b733a323a226e6f223b733a31323a2263617465676f72795f616464223b733a323a226e6f223b733a31333a2263617465676f72795f65646974223b733a323a226e6f223b733a31353a2263617465676f72795f64656c657465223b733a323a226e6f223b733a373a22686d656d626572223b733a323a226e6f223b733a31313a22686d656d6265725f616464223b733a323a226e6f223b733a31323a22686d656d6265725f65646974223b733a323a226e6f223b733a31343a22686d656d6265725f64656c657465223b733a323a226e6f223b733a31323a22686d656d6265725f76696577223b733a323a226e6f223b733a383a226665657479706573223b733a323a226e6f223b733a31323a2266656574797065735f616464223b733a323a226e6f223b733a31333a2266656574797065735f65646974223b733a323a226e6f223b733a31353a2266656574797065735f64656c657465223b733a323a226e6f223b733a373a22696e766f696365223b733a323a226e6f223b733a31313a22696e766f6963655f616464223b733a323a226e6f223b733a31323a22696e766f6963655f65646974223b733a323a226e6f223b733a31343a22696e766f6963655f64656c657465223b733a323a226e6f223b733a31323a22696e766f6963655f76696577223b733a323a226e6f223b733a31343a227061796d656e74686973746f7279223b733a323a226e6f223b733a31393a227061796d656e74686973746f72795f65646974223b733a323a226e6f223b733a32313a227061796d656e74686973746f72795f64656c657465223b733a323a226e6f223b733a373a22657870656e7365223b733a323a226e6f223b733a31313a22657870656e73655f616464223b733a323a226e6f223b733a31323a22657870656e73655f65646974223b733a323a226e6f223b733a31343a22657870656e73655f64656c657465223b733a323a226e6f223b733a373a22686f6c69646179223b733a323a226e6f223b733a31313a22686f6c696461795f616464223b733a323a226e6f223b733a31323a22686f6c696461795f65646974223b733a323a226e6f223b733a31343a22686f6c696461795f64656c657465223b733a323a226e6f223b733a31323a22686f6c696461795f76696577223b733a323a226e6f223b733a363a227265706f7274223b733a323a226e6f223b733a32303a227265706f72742f73747564656e747265706f7274223b733a323a226e6f223b733a31383a227265706f72742f636c6173737265706f7274223b733a323a226e6f223b733a32333a227265706f72742f617474656e64616e63657265706f7274223b733a323a226e6f223b733a31383a227265706f72742f6365727469666963617465223b733a323a226e6f223b733a31313a2276697369746f72696e666f223b733a323a226e6f223b733a31383a2276697369746f72696e666f5f64656c657465223b733a323a226e6f223b733a31363a2276697369746f72696e666f5f76696577223b733a323a226e6f223b733a31303a227363686f6f6c79656172223b733a323a226e6f223b733a31343a227363686f6f6c796561725f616464223b733a323a226e6f223b733a31353a227363686f6f6c796561725f65646974223b733a323a226e6f223b733a31373a227363686f6f6c796561725f64656c657465223b733a323a226e6f223b733a31313a2273797374656d61646d696e223b733a323a226e6f223b733a31353a2273797374656d61646d696e5f616464223b733a323a226e6f223b733a31363a2273797374656d61646d696e5f65646974223b733a323a226e6f223b733a31383a2273797374656d61646d696e5f64656c657465223b733a323a226e6f223b733a31363a2273797374656d61646d696e5f76696577223b733a323a226e6f223b733a31333a22726573657470617373776f7264223b733a323a226e6f223b733a31383a226d61696c616e64736d7374656d706c617465223b733a323a226e6f223b733a32323a226d61696c616e64736d7374656d706c6174655f616464223b733a323a226e6f223b733a32333a226d61696c616e64736d7374656d706c6174655f65646974223b733a323a226e6f223b733a32353a226d61696c616e64736d7374656d706c6174655f64656c657465223b733a323a226e6f223b733a32333a226d61696c616e64736d7374656d706c6174655f76696577223b733a323a226e6f223b733a363a226261636b7570223b733a323a226e6f223b733a383a227573657274797065223b733a323a226e6f223b733a31323a2275736572747970655f616464223b733a323a226e6f223b733a31333a2275736572747970655f65646974223b733a323a226e6f223b733a31353a2275736572747970655f64656c657465223b733a323a226e6f223b733a31303a227065726d697373696f6e223b733a323a226e6f223b733a363a22757064617465223b733a323a226e6f223b733a373a2273657474696e67223b733a323a226e6f223b733a31323a2273657474696e675f65646974223b733a323a226e6f223b733a31353a227061796d656e7473657474696e6773223b733a323a226e6f223b733a31313a22736d7373657474696e6773223b733a323a226e6f223b7d),
('fhtav4ln5ulhji9j46s0be2h1nrebpr3', '::1', 1633764935, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333736343933353b6c616e677c733a373a227370616e697368223b6c6f67696e7573657249447c733a323a223131223b6e616d657c733a373a22796f73656c696e223b656d61696c7c733a31343a22796f736540676d61696c2e636f6d223b757365727479706549447c733a313a2233223b75736572747970657c733a31303a22457374756469616e7465223b757365726e616d657c733a343a22796f7369223b70686f746f7c733a3133323a2264336561383865313431343436616231663261643432366633336539386462626239323036616534316132346364623464623635663830653064653834306662326261333262643961366164633135346365323537396433623161313065343063353163363234623961633462393166613366383933373331623764666562652e706e67223b64656661756c747363686f6f6c7965617249447c733a313a2231223b6c6f67676564696e7c623a313b6765745f7065726d697373696f6e7c623a313b6d61737465725f7065726d697373696f6e5f7365747c613a3138343a7b733a393a2264617368626f617264223b733a333a22796573223b733a373a2274656163686572223b733a333a22796573223b733a373a227375626a656374223b733a333a22796573223b733a383a2273796c6c61627573223b733a333a22796573223b733a31303a2261737369676e6d656e74223b733a333a22796573223b733a31353a2261737369676e6d656e745f76696577223b733a333a22796573223b733a31313a2273617474656e64616e6365223b733a333a22796573223b733a31353a2273617474656e64616e63655f616464223b733a333a22796573223b733a31363a2273617474656e64616e63655f76696577223b733a333a22796573223b733a31323a226578616d7363686564756c65223b733a333a22796573223b733a343a226d61726b223b733a333a22796573223b733a393a226d61726b5f76696577223b733a333a22796573223b733a353a226d65646961223b733a333a22796573223b733a393a226d656469615f616464223b733a333a22796573223b733a363a226e6f74696365223b733a333a22796573223b733a31313a226e6f746963655f76696577223b733a333a22796573223b733a353a226576656e74223b733a333a22796573223b733a31303a226576656e745f76696577223b733a333a22796573223b733a373a22726f7574696e65223b733a333a22796573223b733a373a22636c6173736573223b733a333a22796573223b733a31313a22636c61737365735f616464223b733a333a22796573223b733a31323a22636c61737365735f65646974223b733a333a22796573223b733a31343a22636c61737365735f64656c657465223b733a333a22796573223b733a373a2273656374696f6e223b733a333a22796573223b733a31313a2273656374696f6e5f616464223b733a333a22796573223b733a31323a2273656374696f6e5f65646974223b733a333a22796573223b733a31343a2273656374696f6e5f64656c657465223b733a333a22796573223b733a343a226578616d223b733a333a22796573223b733a383a226578616d5f616464223b733a333a22796573223b733a353a226772616465223b733a333a22796573223b733a393a2267726164655f616464223b733a333a22796573223b733a31313a2265617474656e64616e6365223b733a333a22796573223b733a31353a2265617474656e64616e63655f616464223b733a333a22796573223b733a373a2273747564656e74223b733a323a226e6f223b733a31313a2273747564656e745f616464223b733a323a226e6f223b733a31323a2273747564656e745f65646974223b733a323a226e6f223b733a31343a2273747564656e745f64656c657465223b733a323a226e6f223b733a31323a2273747564656e745f76696577223b733a323a226e6f223b733a373a22706172656e7473223b733a323a226e6f223b733a31313a22706172656e74735f616464223b733a323a226e6f223b733a31323a22706172656e74735f65646974223b733a323a226e6f223b733a31343a22706172656e74735f64656c657465223b733a323a226e6f223b733a31323a22706172656e74735f76696577223b733a323a226e6f223b733a31313a22746561636865725f616464223b733a323a226e6f223b733a31323a22746561636865725f65646974223b733a323a226e6f223b733a31343a22746561636865725f64656c657465223b733a323a226e6f223b733a31323a22746561636865725f76696577223b733a323a226e6f223b733a343a2275736572223b733a323a226e6f223b733a383a22757365725f616464223b733a323a226e6f223b733a393a22757365725f65646974223b733a323a226e6f223b733a31313a22757365725f64656c657465223b733a323a226e6f223b733a393a22757365725f76696577223b733a323a226e6f223b733a31313a227375626a6563745f616464223b733a323a226e6f223b733a31323a227375626a6563745f65646974223b733a323a226e6f223b733a31343a227375626a6563745f64656c657465223b733a323a226e6f223b733a31353a2273656d65737465725f64656c657465223b733a323a226e6f223b733a31323a2273796c6c616275735f616464223b733a323a226e6f223b733a31333a2273796c6c616275735f65646974223b733a323a226e6f223b733a31353a2273796c6c616275735f64656c657465223b733a323a226e6f223b733a31343a2261737369676e6d656e745f616464223b733a323a226e6f223b733a31353a2261737369676e6d656e745f65646974223b733a323a226e6f223b733a31373a2261737369676e6d656e745f64656c657465223b733a323a226e6f223b733a31313a22726f7574696e655f616464223b733a323a226e6f223b733a31323a22726f7574696e655f65646974223b733a323a226e6f223b733a31343a22726f7574696e655f64656c657465223b733a323a226e6f223b733a31313a2274617474656e64616e6365223b733a323a226e6f223b733a31353a2274617474656e64616e63655f616464223b733a323a226e6f223b733a31363a2274617474656e64616e63655f76696577223b733a323a226e6f223b733a393a226578616d5f65646974223b733a323a226e6f223b733a31313a226578616d5f64656c657465223b733a323a226e6f223b733a31363a226578616d7363686564756c655f616464223b733a323a226e6f223b733a31373a226578616d7363686564756c655f65646974223b733a323a226e6f223b733a31393a226578616d7363686564756c655f64656c657465223b733a323a226e6f223b733a31303a2267726164655f65646974223b733a323a226e6f223b733a31323a2267726164655f64656c657465223b733a323a226e6f223b733a383a226d61726b5f616464223b733a323a226e6f223b733a31343a226d61726b70657263656e74616765223b733a323a226e6f223b733a31383a226d61726b70657263656e746167655f616464223b733a323a226e6f223b733a31393a226d61726b70657263656e746167655f65646974223b733a323a226e6f223b733a32313a226d61726b70657263656e746167655f64656c657465223b733a323a226e6f223b733a393a2270726f6d6f74696f6e223b733a323a226e6f223b733a31323a22636f6e766572736174696f6e223b733a323a226e6f223b733a31323a226d656469615f64656c657465223b733a323a226e6f223b733a31303a226d61696c616e64736d73223b733a323a226e6f223b733a31343a226d61696c616e64736d735f616464223b733a323a226e6f223b733a31353a226d61696c616e64736d735f76696577223b733a323a226e6f223b733a373a226c6d656d626572223b733a323a226e6f223b733a31313a226c6d656d6265725f616464223b733a323a226e6f223b733a31323a226c6d656d6265725f65646974223b733a323a226e6f223b733a31343a226c6d656d6265725f64656c657465223b733a323a226e6f223b733a31323a226c6d656d6265725f76696577223b733a323a226e6f223b733a343a22626f6f6b223b733a323a226e6f223b733a383a22626f6f6b5f616464223b733a323a226e6f223b733a393a22626f6f6b5f65646974223b733a323a226e6f223b733a31313a22626f6f6b5f64656c657465223b733a323a226e6f223b733a353a226973737565223b733a323a226e6f223b733a393a2269737375655f616464223b733a323a226e6f223b733a31303a2269737375655f65646974223b733a323a226e6f223b733a31303a2269737375655f76696577223b733a323a226e6f223b733a393a227472616e73706f7274223b733a323a226e6f223b733a31333a227472616e73706f72745f616464223b733a323a226e6f223b733a31343a227472616e73706f72745f65646974223b733a323a226e6f223b733a31363a227472616e73706f72745f64656c657465223b733a323a226e6f223b733a373a22746d656d626572223b733a323a226e6f223b733a31313a22746d656d6265725f616464223b733a323a226e6f223b733a31323a22746d656d6265725f65646974223b733a323a226e6f223b733a31343a22746d656d6265725f64656c657465223b733a323a226e6f223b733a31323a22746d656d6265725f76696577223b733a323a226e6f223b733a363a22686f7374656c223b733a323a226e6f223b733a31303a22686f7374656c5f616464223b733a323a226e6f223b733a31313a22686f7374656c5f65646974223b733a323a226e6f223b733a31333a22686f7374656c5f64656c657465223b733a323a226e6f223b733a383a2263617465676f7279223b733a323a226e6f223b733a31323a2263617465676f72795f616464223b733a323a226e6f223b733a31333a2263617465676f72795f65646974223b733a323a226e6f223b733a31353a2263617465676f72795f64656c657465223b733a323a226e6f223b733a373a22686d656d626572223b733a323a226e6f223b733a31313a22686d656d6265725f616464223b733a323a226e6f223b733a31323a22686d656d6265725f65646974223b733a323a226e6f223b733a31343a22686d656d6265725f64656c657465223b733a323a226e6f223b733a31323a22686d656d6265725f76696577223b733a323a226e6f223b733a383a226665657479706573223b733a323a226e6f223b733a31323a2266656574797065735f616464223b733a323a226e6f223b733a31333a2266656574797065735f65646974223b733a323a226e6f223b733a31353a2266656574797065735f64656c657465223b733a323a226e6f223b733a373a22696e766f696365223b733a323a226e6f223b733a31313a22696e766f6963655f616464223b733a323a226e6f223b733a31323a22696e766f6963655f65646974223b733a323a226e6f223b733a31343a22696e766f6963655f64656c657465223b733a323a226e6f223b733a31323a22696e766f6963655f76696577223b733a323a226e6f223b733a31343a227061796d656e74686973746f7279223b733a323a226e6f223b733a31393a227061796d656e74686973746f72795f65646974223b733a323a226e6f223b733a32313a227061796d656e74686973746f72795f64656c657465223b733a323a226e6f223b733a373a22657870656e7365223b733a323a226e6f223b733a31313a22657870656e73655f616464223b733a323a226e6f223b733a31323a22657870656e73655f65646974223b733a323a226e6f223b733a31343a22657870656e73655f64656c657465223b733a323a226e6f223b733a31303a226e6f746963655f616464223b733a323a226e6f223b733a31313a226e6f746963655f65646974223b733a323a226e6f223b733a31333a226e6f746963655f64656c657465223b733a323a226e6f223b733a393a226576656e745f616464223b733a323a226e6f223b733a31303a226576656e745f65646974223b733a323a226e6f223b733a31323a226576656e745f64656c657465223b733a323a226e6f223b733a373a22686f6c69646179223b733a323a226e6f223b733a31313a22686f6c696461795f616464223b733a323a226e6f223b733a31323a22686f6c696461795f65646974223b733a323a226e6f223b733a31343a22686f6c696461795f64656c657465223b733a323a226e6f223b733a31323a22686f6c696461795f76696577223b733a323a226e6f223b733a363a227265706f7274223b733a323a226e6f223b733a32303a227265706f72742f73747564656e747265706f7274223b733a323a226e6f223b733a31383a227265706f72742f636c6173737265706f7274223b733a323a226e6f223b733a32333a227265706f72742f617474656e64616e63657265706f7274223b733a323a226e6f223b733a31383a227265706f72742f6365727469666963617465223b733a323a226e6f223b733a31313a2276697369746f72696e666f223b733a323a226e6f223b733a31383a2276697369746f72696e666f5f64656c657465223b733a323a226e6f223b733a31363a2276697369746f72696e666f5f76696577223b733a323a226e6f223b733a31303a227363686f6f6c79656172223b733a323a226e6f223b733a31343a227363686f6f6c796561725f616464223b733a323a226e6f223b733a31353a227363686f6f6c796561725f65646974223b733a323a226e6f223b733a31373a227363686f6f6c796561725f64656c657465223b733a323a226e6f223b733a31313a2273797374656d61646d696e223b733a323a226e6f223b733a31353a2273797374656d61646d696e5f616464223b733a323a226e6f223b733a31363a2273797374656d61646d696e5f65646974223b733a323a226e6f223b733a31383a2273797374656d61646d696e5f64656c657465223b733a323a226e6f223b733a31363a2273797374656d61646d696e5f76696577223b733a323a226e6f223b733a31333a22726573657470617373776f7264223b733a323a226e6f223b733a31383a226d61696c616e64736d7374656d706c617465223b733a323a226e6f223b733a32323a226d61696c616e64736d7374656d706c6174655f616464223b733a323a226e6f223b733a32333a226d61696c616e64736d7374656d706c6174655f65646974223b733a323a226e6f223b733a32353a226d61696c616e64736d7374656d706c6174655f64656c657465223b733a323a226e6f223b733a32333a226d61696c616e64736d7374656d706c6174655f76696577223b733a323a226e6f223b733a31313a2262756c6b696d706f727420223b733a323a226e6f223b733a363a226261636b7570223b733a323a226e6f223b733a383a227573657274797065223b733a323a226e6f223b733a31323a2275736572747970655f616464223b733a323a226e6f223b733a31333a2275736572747970655f65646974223b733a323a226e6f223b733a31353a2275736572747970655f64656c657465223b733a323a226e6f223b733a31303a227065726d697373696f6e223b733a323a226e6f223b733a363a22757064617465223b733a323a226e6f223b733a373a2273657474696e67223b733a323a226e6f223b733a31323a2273657474696e675f65646974223b733a323a226e6f223b733a31353a227061796d656e7473657474696e6773223b733a323a226e6f223b733a31313a22736d7373657474696e6773223b733a323a226e6f223b733a393a2274616b655f6578616d223b733a333a22796573223b7d);
INSERT INTO `school_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('gafmad10fnua18lgrtj17me8ft9peqef', '::1', 1633814647, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333831343634363b6c616e677c733a373a227370616e697368223b6c6f67696e7573657249447c733a313a2231223b6e616d657c733a32333a224461726c696e6720436174616c616e204d6f72616c6573223b656d61696c7c733a32333a2264636174616c616e6d32406d69756d672e6564752e6774223b757365727479706549447c733a313a2231223b75736572747970657c733a31333a2241646d696e6973747261646f72223b757365726e616d657c733a353a2261646d696e223b70686f746f7c733a3133323a2236386636326430373361656435376230646632306230633364616331336231663939633531306333616330366665393238393537343330343738626231633737323465386131396634363331336431633765656335653166356235643366353439616532316361636663333739663464303231626432323539626638636661622e6a7067223b64656661756c747363686f6f6c7965617249447c733a313a2231223b6c6f67676564696e7c623a313b6765745f7065726d697373696f6e7c623a313b6d61737465725f7065726d697373696f6e5f7365747c613a3138343a7b733a393a2264617368626f617264223b733a333a22796573223b733a373a2273747564656e74223b733a333a22796573223b733a31313a2273747564656e745f616464223b733a333a22796573223b733a31323a2273747564656e745f65646974223b733a333a22796573223b733a31343a2273747564656e745f64656c657465223b733a333a22796573223b733a31323a2273747564656e745f76696577223b733a333a22796573223b733a373a22706172656e7473223b733a333a22796573223b733a31313a22706172656e74735f616464223b733a333a22796573223b733a31323a22706172656e74735f65646974223b733a333a22796573223b733a31343a22706172656e74735f64656c657465223b733a333a22796573223b733a31323a22706172656e74735f76696577223b733a333a22796573223b733a373a2274656163686572223b733a333a22796573223b733a31313a22746561636865725f616464223b733a333a22796573223b733a31323a22746561636865725f65646974223b733a333a22796573223b733a31343a22746561636865725f64656c657465223b733a333a22796573223b733a31323a22746561636865725f76696577223b733a333a22796573223b733a343a2275736572223b733a333a22796573223b733a383a22757365725f616464223b733a333a22796573223b733a393a22757365725f65646974223b733a333a22796573223b733a31313a22757365725f64656c657465223b733a333a22796573223b733a393a22757365725f76696577223b733a333a22796573223b733a373a22636c6173736573223b733a333a22796573223b733a31313a22636c61737365735f616464223b733a333a22796573223b733a31323a22636c61737365735f65646974223b733a333a22796573223b733a31343a22636c61737365735f64656c657465223b733a333a22796573223b733a373a227375626a656374223b733a333a22796573223b733a31313a227375626a6563745f616464223b733a333a22796573223b733a31323a227375626a6563745f65646974223b733a333a22796573223b733a31343a227375626a6563745f64656c657465223b733a333a22796573223b733a373a2273656374696f6e223b733a333a22796573223b733a31313a2273656374696f6e5f616464223b733a333a22796573223b733a31323a2273656374696f6e5f65646974223b733a333a22796573223b733a31353a2273656d65737465725f64656c657465223b733a333a22796573223b733a31343a2273656374696f6e5f64656c657465223b733a333a22796573223b733a383a2273796c6c61627573223b733a333a22796573223b733a31323a2273796c6c616275735f616464223b733a333a22796573223b733a31333a2273796c6c616275735f65646974223b733a333a22796573223b733a31353a2273796c6c616275735f64656c657465223b733a333a22796573223b733a31303a2261737369676e6d656e74223b733a333a22796573223b733a31343a2261737369676e6d656e745f616464223b733a333a22796573223b733a31353a2261737369676e6d656e745f65646974223b733a333a22796573223b733a31373a2261737369676e6d656e745f64656c657465223b733a333a22796573223b733a31353a2261737369676e6d656e745f76696577223b733a333a22796573223b733a373a22726f7574696e65223b733a333a22796573223b733a31313a22726f7574696e655f616464223b733a333a22796573223b733a31323a22726f7574696e655f65646974223b733a333a22796573223b733a31343a22726f7574696e655f64656c657465223b733a333a22796573223b733a31313a2273617474656e64616e6365223b733a333a22796573223b733a31353a2273617474656e64616e63655f616464223b733a333a22796573223b733a31363a2273617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2274617474656e64616e6365223b733a333a22796573223b733a31353a2274617474656e64616e63655f616464223b733a333a22796573223b733a31363a2274617474656e64616e63655f76696577223b733a333a22796573223b733a343a226578616d223b733a333a22796573223b733a383a226578616d5f616464223b733a333a22796573223b733a393a226578616d5f65646974223b733a333a22796573223b733a31313a226578616d5f64656c657465223b733a333a22796573223b733a31323a226578616d7363686564756c65223b733a333a22796573223b733a31363a226578616d7363686564756c655f616464223b733a333a22796573223b733a31373a226578616d7363686564756c655f65646974223b733a333a22796573223b733a31393a226578616d7363686564756c655f64656c657465223b733a333a22796573223b733a353a226772616465223b733a333a22796573223b733a393a2267726164655f616464223b733a333a22796573223b733a31303a2267726164655f65646974223b733a333a22796573223b733a31323a2267726164655f64656c657465223b733a333a22796573223b733a31313a2265617474656e64616e6365223b733a333a22796573223b733a31353a2265617474656e64616e63655f616464223b733a333a22796573223b733a343a226d61726b223b733a333a22796573223b733a383a226d61726b5f616464223b733a333a22796573223b733a393a226d61726b5f76696577223b733a333a22796573223b733a31343a226d61726b70657263656e74616765223b733a333a22796573223b733a31383a226d61726b70657263656e746167655f616464223b733a333a22796573223b733a31393a226d61726b70657263656e746167655f65646974223b733a333a22796573223b733a32313a226d61726b70657263656e746167655f64656c657465223b733a333a22796573223b733a393a2270726f6d6f74696f6e223b733a333a22796573223b733a31323a22636f6e766572736174696f6e223b733a333a22796573223b733a353a226d65646961223b733a333a22796573223b733a393a226d656469615f616464223b733a333a22796573223b733a31323a226d656469615f64656c657465223b733a333a22796573223b733a31303a226d61696c616e64736d73223b733a333a22796573223b733a31343a226d61696c616e64736d735f616464223b733a333a22796573223b733a31353a226d61696c616e64736d735f76696577223b733a333a22796573223b733a373a226c6d656d626572223b733a333a22796573223b733a31313a226c6d656d6265725f616464223b733a333a22796573223b733a31323a226c6d656d6265725f65646974223b733a333a22796573223b733a31343a226c6d656d6265725f64656c657465223b733a333a22796573223b733a31323a226c6d656d6265725f76696577223b733a333a22796573223b733a343a22626f6f6b223b733a333a22796573223b733a383a22626f6f6b5f616464223b733a333a22796573223b733a393a22626f6f6b5f65646974223b733a333a22796573223b733a31313a22626f6f6b5f64656c657465223b733a333a22796573223b733a353a226973737565223b733a333a22796573223b733a393a2269737375655f616464223b733a333a22796573223b733a31303a2269737375655f65646974223b733a333a22796573223b733a31303a2269737375655f76696577223b733a333a22796573223b733a393a227472616e73706f7274223b733a333a22796573223b733a31333a227472616e73706f72745f616464223b733a333a22796573223b733a31343a227472616e73706f72745f65646974223b733a333a22796573223b733a31363a227472616e73706f72745f64656c657465223b733a333a22796573223b733a373a22746d656d626572223b733a333a22796573223b733a31313a22746d656d6265725f616464223b733a333a22796573223b733a31323a22746d656d6265725f65646974223b733a333a22796573223b733a31343a22746d656d6265725f64656c657465223b733a333a22796573223b733a31323a22746d656d6265725f76696577223b733a333a22796573223b733a363a22686f7374656c223b733a333a22796573223b733a31303a22686f7374656c5f616464223b733a333a22796573223b733a31313a22686f7374656c5f65646974223b733a333a22796573223b733a31333a22686f7374656c5f64656c657465223b733a333a22796573223b733a383a2263617465676f7279223b733a333a22796573223b733a31323a2263617465676f72795f616464223b733a333a22796573223b733a31333a2263617465676f72795f65646974223b733a333a22796573223b733a31353a2263617465676f72795f64656c657465223b733a333a22796573223b733a373a22686d656d626572223b733a333a22796573223b733a31313a22686d656d6265725f616464223b733a333a22796573223b733a31323a22686d656d6265725f65646974223b733a333a22796573223b733a31343a22686d656d6265725f64656c657465223b733a333a22796573223b733a31323a22686d656d6265725f76696577223b733a333a22796573223b733a383a226665657479706573223b733a333a22796573223b733a31323a2266656574797065735f616464223b733a333a22796573223b733a31333a2266656574797065735f65646974223b733a333a22796573223b733a31353a2266656574797065735f64656c657465223b733a333a22796573223b733a373a22696e766f696365223b733a333a22796573223b733a31313a22696e766f6963655f616464223b733a333a22796573223b733a31323a22696e766f6963655f65646974223b733a333a22796573223b733a31343a22696e766f6963655f64656c657465223b733a333a22796573223b733a31323a22696e766f6963655f76696577223b733a333a22796573223b733a31343a227061796d656e74686973746f7279223b733a333a22796573223b733a31393a227061796d656e74686973746f72795f65646974223b733a333a22796573223b733a32313a227061796d656e74686973746f72795f64656c657465223b733a333a22796573223b733a373a22657870656e7365223b733a333a22796573223b733a31313a22657870656e73655f616464223b733a333a22796573223b733a31323a22657870656e73655f65646974223b733a333a22796573223b733a31343a22657870656e73655f64656c657465223b733a333a22796573223b733a363a226e6f74696365223b733a333a22796573223b733a31303a226e6f746963655f616464223b733a333a22796573223b733a31313a226e6f746963655f65646974223b733a333a22796573223b733a31333a226e6f746963655f64656c657465223b733a333a22796573223b733a31313a226e6f746963655f76696577223b733a333a22796573223b733a353a226576656e74223b733a333a22796573223b733a393a226576656e745f616464223b733a333a22796573223b733a31303a226576656e745f65646974223b733a333a22796573223b733a31323a226576656e745f64656c657465223b733a333a22796573223b733a31303a226576656e745f76696577223b733a333a22796573223b733a373a22686f6c69646179223b733a333a22796573223b733a31313a22686f6c696461795f616464223b733a333a22796573223b733a31323a22686f6c696461795f65646974223b733a333a22796573223b733a31343a22686f6c696461795f64656c657465223b733a333a22796573223b733a31323a22686f6c696461795f76696577223b733a333a22796573223b733a363a227265706f7274223b733a333a22796573223b733a32303a227265706f72742f73747564656e747265706f7274223b733a333a22796573223b733a31383a227265706f72742f636c6173737265706f7274223b733a333a22796573223b733a32333a227265706f72742f617474656e64616e63657265706f7274223b733a333a22796573223b733a31383a227265706f72742f6365727469666963617465223b733a333a22796573223b733a31313a2276697369746f72696e666f223b733a333a22796573223b733a31383a2276697369746f72696e666f5f64656c657465223b733a333a22796573223b733a31363a2276697369746f72696e666f5f76696577223b733a333a22796573223b733a31303a227363686f6f6c79656172223b733a333a22796573223b733a31343a227363686f6f6c796561725f616464223b733a333a22796573223b733a31353a227363686f6f6c796561725f65646974223b733a333a22796573223b733a31373a227363686f6f6c796561725f64656c657465223b733a333a22796573223b733a31313a2273797374656d61646d696e223b733a333a22796573223b733a31353a2273797374656d61646d696e5f616464223b733a333a22796573223b733a31363a2273797374656d61646d696e5f65646974223b733a333a22796573223b733a31383a2273797374656d61646d696e5f64656c657465223b733a333a22796573223b733a31363a2273797374656d61646d696e5f76696577223b733a333a22796573223b733a31333a22726573657470617373776f7264223b733a333a22796573223b733a31383a226d61696c616e64736d7374656d706c617465223b733a333a22796573223b733a32323a226d61696c616e64736d7374656d706c6174655f616464223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f65646974223b733a333a22796573223b733a32353a226d61696c616e64736d7374656d706c6174655f64656c657465223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f76696577223b733a333a22796573223b733a31303a2262756c6b696d706f7274223b733a333a22796573223b733a363a226261636b7570223b733a333a22796573223b733a383a227573657274797065223b733a333a22796573223b733a31323a2275736572747970655f616464223b733a333a22796573223b733a31333a2275736572747970655f65646974223b733a333a22796573223b733a31353a2275736572747970655f64656c657465223b733a333a22796573223b733a31303a227065726d697373696f6e223b733a333a22796573223b733a363a22757064617465223b733a333a22796573223b733a373a2273657474696e67223b733a333a22796573223b733a31323a2273657474696e675f65646974223b733a333a22796573223b733a31353a227061796d656e7473657474696e6773223b733a333a22796573223b733a31313a22736d7373657474696e6773223b733a333a22796573223b733a393a2274616b655f6578616d223b733a333a22796573223b7d),
('r4ajnhj1t48h2flb0monksbo954qg23o', '::1', 1633760889, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333736303837313b6c616e677c733a373a227370616e697368223b6c6f67696e7573657249447c733a323a223131223b6e616d657c733a373a22796f73656c696e223b656d61696c7c733a31343a22796f736540676d61696c2e636f6d223b757365727479706549447c733a313a2233223b75736572747970657c733a31303a22457374756469616e7465223b757365726e616d657c733a343a22796f7369223b70686f746f7c733a3133323a2234653262356537356235376539623236323166656232663561346362396338663265363030376135346635626664366464616130613837323161353132626532646331616361373664663164393038306466353535656438383932646238613163336430323433613134393534383862336537653730343931663130663830382e706e67223b64656661756c747363686f6f6c7965617249447c733a313a2231223b6c6f67676564696e7c623a313b6765745f7065726d697373696f6e7c623a313b6d61737465725f7065726d697373696f6e5f7365747c613a3138343a7b733a393a2264617368626f617264223b733a333a22796573223b733a373a2274656163686572223b733a333a22796573223b733a373a227375626a656374223b733a333a22796573223b733a383a2273796c6c61627573223b733a333a22796573223b733a31303a2261737369676e6d656e74223b733a333a22796573223b733a31353a2261737369676e6d656e745f76696577223b733a333a22796573223b733a31313a2273617474656e64616e6365223b733a333a22796573223b733a31353a2273617474656e64616e63655f616464223b733a333a22796573223b733a31323a226578616d7363686564756c65223b733a333a22796573223b733a343a226d61726b223b733a333a22796573223b733a393a226d61726b5f76696577223b733a333a22796573223b733a31323a22636f6e766572736174696f6e223b733a333a22796573223b733a353a226d65646961223b733a333a22796573223b733a393a226d656469615f616464223b733a333a22796573223b733a373a226c6d656d626572223b733a333a22796573223b733a363a226e6f74696365223b733a333a22796573223b733a31313a226e6f746963655f76696577223b733a333a22796573223b733a353a226576656e74223b733a333a22796573223b733a31303a226576656e745f76696577223b733a333a22796573223b733a373a22726f7574696e65223b733a333a22796573223b733a373a22636c6173736573223b733a333a22796573223b733a31313a22636c61737365735f616464223b733a333a22796573223b733a31323a22636c61737365735f65646974223b733a333a22796573223b733a31343a22636c61737365735f64656c657465223b733a333a22796573223b733a373a2273656374696f6e223b733a333a22796573223b733a31313a2273656374696f6e5f616464223b733a333a22796573223b733a31323a2273656374696f6e5f65646974223b733a333a22796573223b733a31343a2273656374696f6e5f64656c657465223b733a333a22796573223b733a343a226578616d223b733a333a22796573223b733a383a226578616d5f616464223b733a333a22796573223b733a353a226772616465223b733a333a22796573223b733a393a2267726164655f616464223b733a333a22796573223b733a31313a2265617474656e64616e6365223b733a333a22796573223b733a31353a2265617474656e64616e63655f616464223b733a333a22796573223b733a373a2273747564656e74223b733a323a226e6f223b733a31313a2273747564656e745f616464223b733a323a226e6f223b733a31323a2273747564656e745f65646974223b733a323a226e6f223b733a31343a2273747564656e745f64656c657465223b733a323a226e6f223b733a31323a2273747564656e745f76696577223b733a323a226e6f223b733a373a22706172656e7473223b733a323a226e6f223b733a31313a22706172656e74735f616464223b733a323a226e6f223b733a31323a22706172656e74735f65646974223b733a323a226e6f223b733a31343a22706172656e74735f64656c657465223b733a323a226e6f223b733a31323a22706172656e74735f76696577223b733a323a226e6f223b733a31313a22746561636865725f616464223b733a323a226e6f223b733a31323a22746561636865725f65646974223b733a323a226e6f223b733a31343a22746561636865725f64656c657465223b733a323a226e6f223b733a31323a22746561636865725f76696577223b733a323a226e6f223b733a343a2275736572223b733a323a226e6f223b733a383a22757365725f616464223b733a323a226e6f223b733a393a22757365725f65646974223b733a323a226e6f223b733a31313a22757365725f64656c657465223b733a323a226e6f223b733a393a22757365725f76696577223b733a323a226e6f223b733a31313a227375626a6563745f616464223b733a323a226e6f223b733a31323a227375626a6563745f65646974223b733a323a226e6f223b733a31343a227375626a6563745f64656c657465223b733a323a226e6f223b733a31353a2273656d65737465725f64656c657465223b733a323a226e6f223b733a31323a2273796c6c616275735f616464223b733a323a226e6f223b733a31333a2273796c6c616275735f65646974223b733a323a226e6f223b733a31353a2273796c6c616275735f64656c657465223b733a323a226e6f223b733a31343a2261737369676e6d656e745f616464223b733a323a226e6f223b733a31353a2261737369676e6d656e745f65646974223b733a323a226e6f223b733a31373a2261737369676e6d656e745f64656c657465223b733a323a226e6f223b733a31313a22726f7574696e655f616464223b733a323a226e6f223b733a31323a22726f7574696e655f65646974223b733a323a226e6f223b733a31343a22726f7574696e655f64656c657465223b733a323a226e6f223b733a31363a2273617474656e64616e63655f76696577223b733a323a226e6f223b733a31313a2274617474656e64616e6365223b733a323a226e6f223b733a31353a2274617474656e64616e63655f616464223b733a323a226e6f223b733a31363a2274617474656e64616e63655f76696577223b733a323a226e6f223b733a393a226578616d5f65646974223b733a323a226e6f223b733a31313a226578616d5f64656c657465223b733a323a226e6f223b733a31363a226578616d7363686564756c655f616464223b733a323a226e6f223b733a31373a226578616d7363686564756c655f65646974223b733a323a226e6f223b733a31393a226578616d7363686564756c655f64656c657465223b733a323a226e6f223b733a31303a2267726164655f65646974223b733a323a226e6f223b733a31323a2267726164655f64656c657465223b733a323a226e6f223b733a383a226d61726b5f616464223b733a323a226e6f223b733a31343a226d61726b70657263656e74616765223b733a323a226e6f223b733a31383a226d61726b70657263656e746167655f616464223b733a323a226e6f223b733a31393a226d61726b70657263656e746167655f65646974223b733a323a226e6f223b733a32313a226d61726b70657263656e746167655f64656c657465223b733a323a226e6f223b733a393a2270726f6d6f74696f6e223b733a323a226e6f223b733a31323a226d656469615f64656c657465223b733a323a226e6f223b733a31303a226d61696c616e64736d73223b733a323a226e6f223b733a31343a226d61696c616e64736d735f616464223b733a323a226e6f223b733a31353a226d61696c616e64736d735f76696577223b733a323a226e6f223b733a31313a226c6d656d6265725f616464223b733a323a226e6f223b733a31323a226c6d656d6265725f65646974223b733a323a226e6f223b733a31343a226c6d656d6265725f64656c657465223b733a323a226e6f223b733a31323a226c6d656d6265725f76696577223b733a323a226e6f223b733a343a22626f6f6b223b733a323a226e6f223b733a383a22626f6f6b5f616464223b733a323a226e6f223b733a393a22626f6f6b5f65646974223b733a323a226e6f223b733a31313a22626f6f6b5f64656c657465223b733a323a226e6f223b733a353a226973737565223b733a323a226e6f223b733a393a2269737375655f616464223b733a323a226e6f223b733a31303a2269737375655f65646974223b733a323a226e6f223b733a31303a2269737375655f76696577223b733a323a226e6f223b733a393a227472616e73706f7274223b733a323a226e6f223b733a31333a227472616e73706f72745f616464223b733a323a226e6f223b733a31343a227472616e73706f72745f65646974223b733a323a226e6f223b733a31363a227472616e73706f72745f64656c657465223b733a323a226e6f223b733a373a22746d656d626572223b733a323a226e6f223b733a31313a22746d656d6265725f616464223b733a323a226e6f223b733a31323a22746d656d6265725f65646974223b733a323a226e6f223b733a31343a22746d656d6265725f64656c657465223b733a323a226e6f223b733a31323a22746d656d6265725f76696577223b733a323a226e6f223b733a363a22686f7374656c223b733a323a226e6f223b733a31303a22686f7374656c5f616464223b733a323a226e6f223b733a31313a22686f7374656c5f65646974223b733a323a226e6f223b733a31333a22686f7374656c5f64656c657465223b733a323a226e6f223b733a383a2263617465676f7279223b733a323a226e6f223b733a31323a2263617465676f72795f616464223b733a323a226e6f223b733a31333a2263617465676f72795f65646974223b733a323a226e6f223b733a31353a2263617465676f72795f64656c657465223b733a323a226e6f223b733a373a22686d656d626572223b733a323a226e6f223b733a31313a22686d656d6265725f616464223b733a323a226e6f223b733a31323a22686d656d6265725f65646974223b733a323a226e6f223b733a31343a22686d656d6265725f64656c657465223b733a323a226e6f223b733a31323a22686d656d6265725f76696577223b733a323a226e6f223b733a383a226665657479706573223b733a323a226e6f223b733a31323a2266656574797065735f616464223b733a323a226e6f223b733a31333a2266656574797065735f65646974223b733a323a226e6f223b733a31353a2266656574797065735f64656c657465223b733a323a226e6f223b733a373a22696e766f696365223b733a323a226e6f223b733a31313a22696e766f6963655f616464223b733a323a226e6f223b733a31323a22696e766f6963655f65646974223b733a323a226e6f223b733a31343a22696e766f6963655f64656c657465223b733a323a226e6f223b733a31323a22696e766f6963655f76696577223b733a323a226e6f223b733a31343a227061796d656e74686973746f7279223b733a323a226e6f223b733a31393a227061796d656e74686973746f72795f65646974223b733a323a226e6f223b733a32313a227061796d656e74686973746f72795f64656c657465223b733a323a226e6f223b733a373a22657870656e7365223b733a323a226e6f223b733a31313a22657870656e73655f616464223b733a323a226e6f223b733a31323a22657870656e73655f65646974223b733a323a226e6f223b733a31343a22657870656e73655f64656c657465223b733a323a226e6f223b733a31303a226e6f746963655f616464223b733a323a226e6f223b733a31313a226e6f746963655f65646974223b733a323a226e6f223b733a31333a226e6f746963655f64656c657465223b733a323a226e6f223b733a393a226576656e745f616464223b733a323a226e6f223b733a31303a226576656e745f65646974223b733a323a226e6f223b733a31323a226576656e745f64656c657465223b733a323a226e6f223b733a373a22686f6c69646179223b733a323a226e6f223b733a31313a22686f6c696461795f616464223b733a323a226e6f223b733a31323a22686f6c696461795f65646974223b733a323a226e6f223b733a31343a22686f6c696461795f64656c657465223b733a323a226e6f223b733a31323a22686f6c696461795f76696577223b733a323a226e6f223b733a363a227265706f7274223b733a323a226e6f223b733a32303a227265706f72742f73747564656e747265706f7274223b733a323a226e6f223b733a31383a227265706f72742f636c6173737265706f7274223b733a323a226e6f223b733a32333a227265706f72742f617474656e64616e63657265706f7274223b733a323a226e6f223b733a31383a227265706f72742f6365727469666963617465223b733a323a226e6f223b733a31313a2276697369746f72696e666f223b733a323a226e6f223b733a31383a2276697369746f72696e666f5f64656c657465223b733a323a226e6f223b733a31363a2276697369746f72696e666f5f76696577223b733a323a226e6f223b733a31303a227363686f6f6c79656172223b733a323a226e6f223b733a31343a227363686f6f6c796561725f616464223b733a323a226e6f223b733a31353a227363686f6f6c796561725f65646974223b733a323a226e6f223b733a31373a227363686f6f6c796561725f64656c657465223b733a323a226e6f223b733a31313a2273797374656d61646d696e223b733a323a226e6f223b733a31353a2273797374656d61646d696e5f616464223b733a323a226e6f223b733a31363a2273797374656d61646d696e5f65646974223b733a323a226e6f223b733a31383a2273797374656d61646d696e5f64656c657465223b733a323a226e6f223b733a31363a2273797374656d61646d696e5f76696577223b733a323a226e6f223b733a31333a22726573657470617373776f7264223b733a323a226e6f223b733a31383a226d61696c616e64736d7374656d706c617465223b733a323a226e6f223b733a32323a226d61696c616e64736d7374656d706c6174655f616464223b733a323a226e6f223b733a32333a226d61696c616e64736d7374656d706c6174655f65646974223b733a323a226e6f223b733a32353a226d61696c616e64736d7374656d706c6174655f64656c657465223b733a323a226e6f223b733a32333a226d61696c616e64736d7374656d706c6174655f76696577223b733a323a226e6f223b733a31313a2262756c6b696d706f727420223b733a323a226e6f223b733a363a226261636b7570223b733a323a226e6f223b733a383a227573657274797065223b733a323a226e6f223b733a31323a2275736572747970655f616464223b733a323a226e6f223b733a31333a2275736572747970655f65646974223b733a323a226e6f223b733a31353a2275736572747970655f64656c657465223b733a323a226e6f223b733a31303a227065726d697373696f6e223b733a323a226e6f223b733a363a22757064617465223b733a323a226e6f223b733a373a2273657474696e67223b733a323a226e6f223b733a31323a2273657474696e675f65646974223b733a323a226e6f223b733a31353a227061796d656e7473657474696e6773223b733a323a226e6f223b733a31313a22736d7373657474696e6773223b733a323a226e6f223b733a393a2274616b655f6578616d223b733a333a22796573223b7d),
('teali532co49mide7fjiapk7rma9lpcf', '::1', 1633764021, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633333736333730323b6c616e677c733a373a227370616e697368223b6c6f67696e7573657249447c733a313a2232223b6e616d657c733a32333a224461726c696e6720436174616c616e204d6f72616c6573223b656d61696c7c733a32373a226461726c696e676d6f72616c65733136406f75746c6f6f6b2e6573223b757365727479706549447c733a313a2231223b75736572747970657c733a31333a2241646d696e6973747261646f72223b757365726e616d657c733a32333a2264636174616c616e6d32406d69756d672e6564752e6774223b70686f746f7c733a3133323a2263303937356333623863356363386437336533373033303735396564396532356538343962306233653566646161346665636237333364633632373535306336636262323164366331323564646639313239383435306364303234333032333662653035663533613163313563373035383362373638666665363661303337342e6a7067223b64656661756c747363686f6f6c7965617249447c733a313a2231223b6c6f67676564696e7c623a313b6765745f7065726d697373696f6e7c623a313b6d61737465725f7065726d697373696f6e5f7365747c613a3138333a7b733a393a2264617368626f617264223b733a333a22796573223b733a373a2273747564656e74223b733a333a22796573223b733a31313a2273747564656e745f616464223b733a333a22796573223b733a31323a2273747564656e745f65646974223b733a333a22796573223b733a31343a2273747564656e745f64656c657465223b733a333a22796573223b733a31323a2273747564656e745f76696577223b733a333a22796573223b733a373a22706172656e7473223b733a333a22796573223b733a31313a22706172656e74735f616464223b733a333a22796573223b733a31323a22706172656e74735f65646974223b733a333a22796573223b733a31343a22706172656e74735f64656c657465223b733a333a22796573223b733a31323a22706172656e74735f76696577223b733a333a22796573223b733a373a2274656163686572223b733a333a22796573223b733a31313a22746561636865725f616464223b733a333a22796573223b733a31323a22746561636865725f65646974223b733a333a22796573223b733a31343a22746561636865725f64656c657465223b733a333a22796573223b733a31323a22746561636865725f76696577223b733a333a22796573223b733a343a2275736572223b733a333a22796573223b733a383a22757365725f616464223b733a333a22796573223b733a393a22757365725f65646974223b733a333a22796573223b733a31313a22757365725f64656c657465223b733a333a22796573223b733a393a22757365725f76696577223b733a333a22796573223b733a373a22636c6173736573223b733a333a22796573223b733a31313a22636c61737365735f616464223b733a333a22796573223b733a31323a22636c61737365735f65646974223b733a333a22796573223b733a31343a22636c61737365735f64656c657465223b733a333a22796573223b733a373a227375626a656374223b733a333a22796573223b733a31313a227375626a6563745f616464223b733a333a22796573223b733a31323a227375626a6563745f65646974223b733a333a22796573223b733a31343a227375626a6563745f64656c657465223b733a333a22796573223b733a373a2273656374696f6e223b733a333a22796573223b733a31313a2273656374696f6e5f616464223b733a333a22796573223b733a31323a2273656374696f6e5f65646974223b733a333a22796573223b733a31343a2273656374696f6e5f64656c657465223b733a333a22796573223b733a383a2273796c6c61627573223b733a333a22796573223b733a31323a2273796c6c616275735f616464223b733a333a22796573223b733a31333a2273796c6c616275735f65646974223b733a333a22796573223b733a31353a2273796c6c616275735f64656c657465223b733a333a22796573223b733a31303a2261737369676e6d656e74223b733a333a22796573223b733a31343a2261737369676e6d656e745f616464223b733a333a22796573223b733a31353a2261737369676e6d656e745f65646974223b733a333a22796573223b733a31373a2261737369676e6d656e745f64656c657465223b733a333a22796573223b733a31353a2261737369676e6d656e745f76696577223b733a333a22796573223b733a373a22726f7574696e65223b733a333a22796573223b733a31313a22726f7574696e655f616464223b733a333a22796573223b733a31323a22726f7574696e655f65646974223b733a333a22796573223b733a31343a22726f7574696e655f64656c657465223b733a333a22796573223b733a31313a2273617474656e64616e6365223b733a333a22796573223b733a31353a2273617474656e64616e63655f616464223b733a333a22796573223b733a31363a2273617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2274617474656e64616e6365223b733a333a22796573223b733a31353a2274617474656e64616e63655f616464223b733a333a22796573223b733a31363a2274617474656e64616e63655f76696577223b733a333a22796573223b733a343a226578616d223b733a333a22796573223b733a383a226578616d5f616464223b733a333a22796573223b733a393a226578616d5f65646974223b733a333a22796573223b733a31313a226578616d5f64656c657465223b733a333a22796573223b733a31323a226578616d7363686564756c65223b733a333a22796573223b733a31363a226578616d7363686564756c655f616464223b733a333a22796573223b733a31373a226578616d7363686564756c655f65646974223b733a333a22796573223b733a31393a226578616d7363686564756c655f64656c657465223b733a333a22796573223b733a353a226772616465223b733a333a22796573223b733a393a2267726164655f616464223b733a333a22796573223b733a31303a2267726164655f65646974223b733a333a22796573223b733a31323a2267726164655f64656c657465223b733a333a22796573223b733a31313a2265617474656e64616e6365223b733a333a22796573223b733a31353a2265617474656e64616e63655f616464223b733a333a22796573223b733a343a226d61726b223b733a333a22796573223b733a383a226d61726b5f616464223b733a333a22796573223b733a393a226d61726b5f76696577223b733a333a22796573223b733a31343a226d61726b70657263656e74616765223b733a333a22796573223b733a31383a226d61726b70657263656e746167655f616464223b733a333a22796573223b733a31393a226d61726b70657263656e746167655f65646974223b733a333a22796573223b733a32313a226d61726b70657263656e746167655f64656c657465223b733a333a22796573223b733a393a2270726f6d6f74696f6e223b733a333a22796573223b733a353a226d65646961223b733a333a22796573223b733a393a226d656469615f616464223b733a333a22796573223b733a31323a226d656469615f64656c657465223b733a333a22796573223b733a31303a226d61696c616e64736d73223b733a333a22796573223b733a31343a226d61696c616e64736d735f616464223b733a333a22796573223b733a31353a226d61696c616e64736d735f76696577223b733a333a22796573223b733a363a226e6f74696365223b733a333a22796573223b733a31303a226e6f746963655f616464223b733a333a22796573223b733a31313a226e6f746963655f65646974223b733a333a22796573223b733a31333a226e6f746963655f64656c657465223b733a333a22796573223b733a31313a226e6f746963655f76696577223b733a333a22796573223b733a353a226576656e74223b733a333a22796573223b733a393a226576656e745f616464223b733a333a22796573223b733a31303a226576656e745f65646974223b733a333a22796573223b733a31323a226576656e745f64656c657465223b733a333a22796573223b733a31303a226576656e745f76696577223b733a333a22796573223b733a363a227265706f7274223b733a333a22796573223b733a32303a227265706f72742f73747564656e747265706f7274223b733a333a22796573223b733a31383a227265706f72742f636c6173737265706f7274223b733a333a22796573223b733a32333a227265706f72742f617474656e64616e63657265706f7274223b733a333a22796573223b733a31383a227265706f72742f6365727469666963617465223b733a333a22796573223b733a31313a2276697369746f72696e666f223b733a333a22796573223b733a31383a2276697369746f72696e666f5f64656c657465223b733a333a22796573223b733a31363a2276697369746f72696e666f5f76696577223b733a333a22796573223b733a31303a227363686f6f6c79656172223b733a333a22796573223b733a31343a227363686f6f6c796561725f616464223b733a333a22796573223b733a31353a227363686f6f6c796561725f65646974223b733a333a22796573223b733a31373a227363686f6f6c796561725f64656c657465223b733a333a22796573223b733a31313a2273797374656d61646d696e223b733a333a22796573223b733a31353a2273797374656d61646d696e5f616464223b733a333a22796573223b733a31363a2273797374656d61646d696e5f65646974223b733a333a22796573223b733a31383a2273797374656d61646d696e5f64656c657465223b733a333a22796573223b733a31363a2273797374656d61646d696e5f76696577223b733a333a22796573223b733a31333a22726573657470617373776f7264223b733a333a22796573223b733a31383a226d61696c616e64736d7374656d706c617465223b733a333a22796573223b733a32323a226d61696c616e64736d7374656d706c6174655f616464223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f65646974223b733a333a22796573223b733a32353a226d61696c616e64736d7374656d706c6174655f64656c657465223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f76696577223b733a333a22796573223b733a31313a2262756c6b696d706f727420223b733a333a22796573223b733a383a227573657274797065223b733a333a22796573223b733a31323a2275736572747970655f616464223b733a333a22796573223b733a31333a2275736572747970655f65646974223b733a333a22796573223b733a31353a2275736572747970655f64656c657465223b733a333a22796573223b733a31303a227065726d697373696f6e223b733a333a22796573223b733a363a22757064617465223b733a333a22796573223b733a31313a22736d7373657474696e6773223b733a333a22796573223b733a31353a2273656d65737465725f64656c657465223b733a323a226e6f223b733a31323a22636f6e766572736174696f6e223b733a323a226e6f223b733a373a226c6d656d626572223b733a323a226e6f223b733a31313a226c6d656d6265725f616464223b733a323a226e6f223b733a31323a226c6d656d6265725f65646974223b733a323a226e6f223b733a31343a226c6d656d6265725f64656c657465223b733a323a226e6f223b733a31323a226c6d656d6265725f76696577223b733a323a226e6f223b733a343a22626f6f6b223b733a323a226e6f223b733a383a22626f6f6b5f616464223b733a323a226e6f223b733a393a22626f6f6b5f65646974223b733a323a226e6f223b733a31313a22626f6f6b5f64656c657465223b733a323a226e6f223b733a353a226973737565223b733a323a226e6f223b733a393a2269737375655f616464223b733a323a226e6f223b733a31303a2269737375655f65646974223b733a323a226e6f223b733a31303a2269737375655f76696577223b733a323a226e6f223b733a393a227472616e73706f7274223b733a323a226e6f223b733a31333a227472616e73706f72745f616464223b733a323a226e6f223b733a31343a227472616e73706f72745f65646974223b733a323a226e6f223b733a31363a227472616e73706f72745f64656c657465223b733a323a226e6f223b733a373a22746d656d626572223b733a323a226e6f223b733a31313a22746d656d6265725f616464223b733a323a226e6f223b733a31323a22746d656d6265725f65646974223b733a323a226e6f223b733a31343a22746d656d6265725f64656c657465223b733a323a226e6f223b733a31323a22746d656d6265725f76696577223b733a323a226e6f223b733a363a22686f7374656c223b733a323a226e6f223b733a31303a22686f7374656c5f616464223b733a323a226e6f223b733a31313a22686f7374656c5f65646974223b733a323a226e6f223b733a31333a22686f7374656c5f64656c657465223b733a323a226e6f223b733a383a2263617465676f7279223b733a323a226e6f223b733a31323a2263617465676f72795f616464223b733a323a226e6f223b733a31333a2263617465676f72795f65646974223b733a323a226e6f223b733a31353a2263617465676f72795f64656c657465223b733a323a226e6f223b733a373a22686d656d626572223b733a323a226e6f223b733a31313a22686d656d6265725f616464223b733a323a226e6f223b733a31323a22686d656d6265725f65646974223b733a323a226e6f223b733a31343a22686d656d6265725f64656c657465223b733a323a226e6f223b733a31323a22686d656d6265725f76696577223b733a323a226e6f223b733a383a226665657479706573223b733a323a226e6f223b733a31323a2266656574797065735f616464223b733a323a226e6f223b733a31333a2266656574797065735f65646974223b733a323a226e6f223b733a31353a2266656574797065735f64656c657465223b733a323a226e6f223b733a373a22696e766f696365223b733a323a226e6f223b733a31313a22696e766f6963655f616464223b733a323a226e6f223b733a31323a22696e766f6963655f65646974223b733a323a226e6f223b733a31343a22696e766f6963655f64656c657465223b733a323a226e6f223b733a31323a22696e766f6963655f76696577223b733a323a226e6f223b733a31343a227061796d656e74686973746f7279223b733a323a226e6f223b733a31393a227061796d656e74686973746f72795f65646974223b733a323a226e6f223b733a32313a227061796d656e74686973746f72795f64656c657465223b733a323a226e6f223b733a373a22657870656e7365223b733a323a226e6f223b733a31313a22657870656e73655f616464223b733a323a226e6f223b733a31323a22657870656e73655f65646974223b733a323a226e6f223b733a31343a22657870656e73655f64656c657465223b733a323a226e6f223b733a373a22686f6c69646179223b733a323a226e6f223b733a31313a22686f6c696461795f616464223b733a323a226e6f223b733a31323a22686f6c696461795f65646974223b733a323a226e6f223b733a31343a22686f6c696461795f64656c657465223b733a323a226e6f223b733a31323a22686f6c696461795f76696577223b733a323a226e6f223b733a363a226261636b7570223b733a323a226e6f223b733a373a2273657474696e67223b733a323a226e6f223b733a31323a2273657474696e675f65646974223b733a323a226e6f223b733a31353a227061796d656e7473657474696e6773223b733a323a226e6f223b7d);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `section`
--

CREATE TABLE `section` (
  `sectionID` int(11) UNSIGNED NOT NULL,
  `section` varchar(60) NOT NULL,
  `category` varchar(128) NOT NULL,
  `capacity` int(11) NOT NULL,
  `classesID` int(11) NOT NULL,
  `teacherID` int(11) NOT NULL,
  `note` text,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_username` varchar(40) NOT NULL,
  `create_usertype` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `section`
--

INSERT INTO `section` (`sectionID`, `section`, `category`, `capacity`, `classesID`, `teacherID`, `note`, `create_date`, `modify_date`, `create_userID`, `create_username`, `create_usertype`) VALUES
(1, 'A', 'Alta', 10, 1, 1, '100', '2021-09-20 06:31:54', '2021-09-20 06:31:54', 1, 'admin', 'Administrador'),
(2, 'B', 'Alta', 10, 2, 1, '100', '2021-09-21 01:29:46', '2021-09-21 01:29:46', 1, 'admin', 'Administrador'),
(3, 'C', 'Alta', 10, 3, 2, '100', '2021-09-22 08:25:55', '2021-09-22 08:25:55', 1, 'admin', 'Administrador'),
(4, 'D', 'Cuarto', 30, 4, 3, '100', '2021-09-23 02:48:02', '2021-09-23 02:48:02', 1, 'admin', 'Administrador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `setting`
--

CREATE TABLE `setting` (
  `fieldoption` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `setting`
--

INSERT INTO `setting` (`fieldoption`, `value`) VALUES
('address', 'GUASTATOYA EL PROGRESO'),
('attendance', 'subject'),
('automation', '1'),
('auto_invoice_generate', '0'),
('backend_theme', 'basic'),
('currency_code', 'Q'),
('currency_symbol', 'Q'),
('email', 'dcatalanm2@miumg.edu.gt'),
('fontendorbackend', '0'),
('fontend_theme', 'basic'),
('footer', 'INGENIERIA EN SISTEMAS UMG'),
('language', 'spanish'),
('language_id', '1'),
('mark_1', '0'),
('mark_2', '0'),
('mark_3', '1'),
('mark_4', '0'),
('mark_5', '0'),
('modify_date', '2017-11-08 10:06:00'),
('note', '1'),
('phone', '58236647'),
('photo', 'e38ab303dfb82664e85a3400aced7bc7c69b578157a8aa16120329ffa28f4039f7137374618665e077c44503294d8fb20fe2f04b5254594199c2c7c4f686177c.png'),
('school_type', 'classbase'),
('school_year', '1'),
('sname', 'TECNICO INDUSTRIAL MIXTO'),
('student_ID_format', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `student`
--

CREATE TABLE `student` (
  `studentID` int(11) UNSIGNED NOT NULL,
  `dni` varchar(60) DEFAULT NULL,
  `name` varchar(60) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `phone` tinytext,
  `address` text,
  `classesID` int(11) DEFAULT NULL,
  `sectionID` int(11) DEFAULT NULL,
  `roll` int(11) DEFAULT NULL,
  `bloodgroup` varchar(5) DEFAULT NULL,
  `country` varchar(128) DEFAULT NULL,
  `registerNO` varchar(128) DEFAULT NULL,
  `state` varchar(128) DEFAULT NULL,
  `library` int(11) DEFAULT NULL,
  `hostel` int(11) DEFAULT NULL,
  `transport` int(11) DEFAULT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `parentID` int(11) DEFAULT NULL,
  `createschoolyearID` int(11) DEFAULT NULL,
  `schoolyearID` int(11) DEFAULT NULL,
  `username` varchar(40) DEFAULT NULL,
  `password` varchar(128) DEFAULT NULL,
  `usertypeID` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  `create_userID` int(11) DEFAULT NULL,
  `create_username` varchar(40) DEFAULT NULL,
  `create_usertype` varchar(20) DEFAULT NULL,
  `active` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `student`
--

INSERT INTO `student` (`studentID`, `dni`, `name`, `dob`, `sex`, `email`, `phone`, `address`, `classesID`, `sectionID`, `roll`, `bloodgroup`, `country`, `registerNO`, `state`, `library`, `hostel`, `transport`, `photo`, `parentID`, `createschoolyearID`, `schoolyearID`, `username`, `password`, `usertypeID`, `create_date`, `modify_date`, `create_userID`, `create_username`, `create_usertype`, `active`) VALUES
(6, '16', 'Karinaa', '1996-03-12', 'Masculino', 'velasquezmynor.1998@gmail.com', '58236647', 'Barrio las Joyas', 2, 2, 112, 'O-', 'AF', '23', 'soltero', 0, NULL, NULL, '9d3fa88cc5e4688f05170619e4265439167472c639c57ed055daf0eb36c7be86c2bf69551e15a252e78ea2ceeba17fc57a0f8e8656bf23d32d8c9d768ef033ec.jpg', 6, 1, 1, 'Mynor', '0aabca54ed36e6dd7e11f37899af0329406b95a472e0ca129166290c1728f5c0eb17b536ee78c04e745a23fa8b4a5afc7365edcd7c57d01679fb4989500ebf67', 3, '2021-09-22 01:50:18', '2021-09-22 07:48:18', 1, 'admin', 'Administrador', 1),
(7, '22', 'alfredo', '1990-02-14', 'Masculino', 'alfred@gmail.com', '58236647', 'Barrio las Joyas', 1, 1, 1145, 'B+', 'AO', '66', 'soltero', 0, NULL, NULL, 'dc765d1b4c6384e7ee20a28bf1cd583d06ec8ab32935d151a7e526d53003b0cd9e34f105342bdd1fa2df574da754a145901054faeb8bb9e31980d0500af397c7.png', 6, 1, 1, 'alfre', 'de9dc65ff4e35a611e7eaa684a92b24fbc23256816c8c79e36eb9dae486954f5cd09e35a0dc6857cd3a3976b87873990e7e8f3436662630a127ef04d1a1c4974', 3, '2021-09-22 02:01:51', '2021-09-22 08:04:18', 1, 'admin', 'Administrador', 1),
(8, '8', 'meredith', '1998-12-27', 'Femenino', 'mery12@gmail.com', '30107233', 'Aldea el barrial', 1, 1, 123, 'A-', 'AO', '12', 'soltero', 0, NULL, NULL, 'f0ef09215ea29948c5050dcaa0c687c2679b222e28f6a05895dde1431a512a4ad4a9ac55d1b39b18d928bc2c46bb08e470ded0b1b785d852a383264dded86723.jpg', 6, 1, 1, 'meredith', '0aabca54ed36e6dd7e11f37899af0329406b95a472e0ca129166290c1728f5c0eb17b536ee78c04e745a23fa8b4a5afc7365edcd7c57d01679fb4989500ebf67', 3, '2021-09-22 01:03:19', '2021-09-22 01:03:19', 1, 'admin', 'Administrador', 1),
(9, '25', 'yasmin', '1996-03-12', 'Femenino', 'yasmin@gmail.com', '58236647', 'Barrio la Democracia', 1, 1, 133, 'A+', 'AF', '525', 'soltero', 0, NULL, NULL, 'b178f5304306e01e4eb4d05e88935fff660c8800abb2b2406b437cfe05315a701ab49f5e0fb83ba2c0bb76c21b824c86357513207addd4ead894d42f8403eb25.jpg', 6, 1, 1, 'yasmin', '0aabca54ed36e6dd7e11f37899af0329406b95a472e0ca129166290c1728f5c0eb17b536ee78c04e745a23fa8b4a5afc7365edcd7c57d01679fb4989500ebf67', 3, '2021-09-22 07:55:47', '2021-09-22 07:55:47', 1, 'admin', 'Administrador', 1),
(10, '30', 'Karinaa', '1996-03-12', 'Femenino', 'karina@gmail.com', '58854729', 'Barrio las Joyas', 3, 3, 1458, 'B-', 'DZ', '123', 'soltero', 0, NULL, NULL, '7ff198c2088aeb52fcb98bb843ace13df44fa27e96248d21636a64eb6e82812a0e4c4a4ed2174045a07b29090366cf19e81aa41bab9d41566cbabf5a29c09ef9.png', 6, 1, 1, 'karina', '0aabca54ed36e6dd7e11f37899af0329406b95a472e0ca129166290c1728f5c0eb17b536ee78c04e745a23fa8b4a5afc7365edcd7c57d01679fb4989500ebf67', 3, '2021-09-23 12:56:55', '2021-09-23 12:56:55', 1, 'admin', 'Administrador', 1),
(11, '31', 'yoselin', '1994-02-10', 'Femenino', 'yose@gmail.com', '58662110', 'barrio el barrial', 3, 3, 455, 'A-', 'DZ', '33', 'soltero', 0, NULL, NULL, 'd3ea88e141446ab1f2ad426f33e98dbbb9206ae41a24cdb4db65f80e0de840fb2ba32bd9a6adc154ce2579d3b1a10e40c51c624b9ac4b91fa3f893731b7dfebe.png', 7, 1, 1, 'yosi', '0aabca54ed36e6dd7e11f37899af0329406b95a472e0ca129166290c1728f5c0eb17b536ee78c04e745a23fa8b4a5afc7365edcd7c57d01679fb4989500ebf67', 3, '2021-09-23 02:41:18', '2021-10-09 03:35:02', 1, 'admin', 'Administrador', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `studentextend`
--

CREATE TABLE `studentextend` (
  `studentID` int(11) DEFAULT NULL,
  `Columna 2` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `studentgroup`
--

CREATE TABLE `studentgroup` (
  `studentgroupID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `studentrelation`
--

CREATE TABLE `studentrelation` (
  `studentrelationID` int(11) NOT NULL,
  `srstudentID` int(11) DEFAULT NULL,
  `srname` varchar(40) NOT NULL,
  `srclassesID` int(11) DEFAULT NULL,
  `srclasses` varchar(40) DEFAULT NULL,
  `srroll` int(11) DEFAULT NULL,
  `srregisterNO` varchar(128) DEFAULT NULL,
  `srsectionID` int(11) DEFAULT NULL,
  `srsection` varchar(40) DEFAULT NULL,
  `srschoolyearID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `studentrelation`
--

INSERT INTO `studentrelation` (`studentrelationID`, `srstudentID`, `srname`, `srclassesID`, `srclasses`, `srroll`, `srregisterNO`, `srsectionID`, `srsection`, `srschoolyearID`) VALUES
(1, 1, 'Darling', 1, 'Matemáticas', 1245, '3', 1, 'A', 1),
(2, 2, 'Darling Catalan', 1, 'Matemáticas', 1244, '1', 1, 'A', 1),
(3, 3, 'juancito', 1, 'Matemáticas', 14554, '8', 1, 'A', 1),
(4, 4, 'alfredo', 1, 'Matemáticas', 14557, '9', 1, 'A', 1),
(5, 5, 'mery', 1, 'Matemáticas', 12446, '10', 1, 'A', 1),
(6, 6, 'Karinaa', 2, 'Idioma', 112, '23', 2, 'B', 1),
(7, 7, 'alfredo', 1, 'Matemáticas', 1145, '66', 1, 'A', 1),
(8, 8, 'meredith', 1, 'Matemáticas', 123, '12', 1, 'A', 1),
(9, 9, 'yasmin', 1, 'Matemáticas', 133, '525', 1, 'A', 1),
(10, 10, 'Karinaa', 3, 'Matematica', 1458, '123', 3, 'C', 1),
(11, 11, 'yoselin', 3, 'Matematica', 455, '33', 3, 'C', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subject`
--

CREATE TABLE `subject` (
  `subjectID` int(11) UNSIGNED NOT NULL,
  `classesID` int(11) NOT NULL,
  `teacherID` int(11) NOT NULL,
  `type` int(100) NOT NULL,
  `passmark` int(11) NOT NULL,
  `finalmark` int(11) NOT NULL,
  `subject` varchar(60) NOT NULL,
  `subject_author` varchar(100) DEFAULT NULL,
  `subject_code` tinytext NOT NULL,
  `teacher_name` varchar(60) NOT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_username` varchar(40) NOT NULL,
  `create_usertype` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `subject`
--

INSERT INTO `subject` (`subjectID`, `classesID`, `teacherID`, `type`, `passmark`, `finalmark`, `subject`, `subject_author`, `subject_code`, `teacher_name`, `create_date`, `modify_date`, `create_userID`, `create_username`, `create_usertype`) VALUES
(1, 2, 1, 1, 100, 100, 'lenguas', 'lengua', '12', 'miliam', '2021-09-21 01:29:11', '2021-09-21 01:29:11', 1, 'admin', 'Administrador'),
(2, 3, 2, 1, 61, 100, 'lenguas', 'lengua', '14', 'Jim', '2021-09-22 08:25:02', '2021-09-22 08:25:02', 1, 'admin', 'Administrador'),
(3, 1, 2, 1, 61, 100, 'lenguas', 'lengua', '16', 'Jim', '2021-09-23 01:23:19', '2021-09-23 01:23:19', 1, 'admin', 'Administrador'),
(4, 4, 3, 1, 61, 100, 'lenguas', 'lengua', '8', 'josue', '2021-09-23 02:47:17', '2021-09-23 02:47:17', 1, 'admin', 'Administrador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sub_attendance`
--

CREATE TABLE `sub_attendance` (
  `attendanceID` int(200) UNSIGNED NOT NULL,
  `schoolyearID` int(11) NOT NULL,
  `studentID` int(11) NOT NULL,
  `classesID` int(11) NOT NULL,
  `sectionID` int(11) NOT NULL,
  `subjectID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `usertype` varchar(20) NOT NULL,
  `monthyear` varchar(10) NOT NULL,
  `a1` varchar(3) DEFAULT NULL,
  `a2` varchar(3) DEFAULT NULL,
  `a3` varchar(3) DEFAULT NULL,
  `a4` varchar(3) DEFAULT NULL,
  `a5` varchar(3) DEFAULT NULL,
  `a6` varchar(3) DEFAULT NULL,
  `a7` varchar(3) DEFAULT NULL,
  `a8` varchar(3) DEFAULT NULL,
  `a9` varchar(3) DEFAULT NULL,
  `a10` varchar(3) DEFAULT NULL,
  `a11` varchar(3) DEFAULT NULL,
  `a12` varchar(3) DEFAULT NULL,
  `a13` varchar(3) DEFAULT NULL,
  `a14` varchar(3) DEFAULT NULL,
  `a15` varchar(3) DEFAULT NULL,
  `a16` varchar(3) DEFAULT NULL,
  `a17` varchar(3) DEFAULT NULL,
  `a18` varchar(3) DEFAULT NULL,
  `a19` varchar(3) DEFAULT NULL,
  `a20` varchar(3) DEFAULT NULL,
  `a21` varchar(3) DEFAULT NULL,
  `a22` varchar(3) DEFAULT NULL,
  `a23` varchar(3) DEFAULT NULL,
  `a24` varchar(3) DEFAULT NULL,
  `a25` varchar(3) DEFAULT NULL,
  `a26` varchar(3) DEFAULT NULL,
  `a27` varchar(3) DEFAULT NULL,
  `a28` varchar(3) DEFAULT NULL,
  `a29` varchar(3) DEFAULT NULL,
  `a30` varchar(3) DEFAULT NULL,
  `a31` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sub_attendance`
--

INSERT INTO `sub_attendance` (`attendanceID`, `schoolyearID`, `studentID`, `classesID`, `sectionID`, `subjectID`, `userID`, `usertype`, `monthyear`, `a1`, `a2`, `a3`, `a4`, `a5`, `a6`, `a7`, `a8`, `a9`, `a10`, `a11`, `a12`, `a13`, `a14`, `a15`, `a16`, `a17`, `a18`, `a19`, `a20`, `a21`, `a22`, `a23`, `a24`, `a25`, `a26`, `a27`, `a28`, `a29`, `a30`, `a31`) VALUES
(1, 1, 11, 3, 3, 2, 11, 'Estudiante', '10-2021', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 1, 10, 3, 3, 2, 11, 'Estudiante', '10-2021', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `syllabus`
--

CREATE TABLE `syllabus` (
  `syllabusID` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `description` text,
  `date` date NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `originalfile` text NOT NULL,
  `file` text,
  `classesID` int(11) NOT NULL,
  `schoolyearID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `syllabus`
--

INSERT INTO `syllabus` (`syllabusID`, `title`, `description`, `date`, `usertypeID`, `userID`, `originalfile`, `file`, `classesID`, `schoolyearID`) VALUES
(1, 'Idioma', 'Clase de lenguaje', '2021-09-21', 1, 1, 'Actividades de aprendizaje capitulo 2.pdf', '0817da3e383b2c1999d425201555c7b37841809bb189e65a68086fb75ce23bfa7558aa1a8a8491864c2dec8ddc98c68427679bd8e9c634cc4ec8d0b2bf32a84b.pdf', 2, 1),
(2, 'Idioma', 'clase', '2021-09-22', 1, 1, 'JEST.pdf', 'f783c83044d1123dc2c8721f31bbbe45f4fb06a31f170a5ced0d4584a1ed7f36a3e069ac3ed2ef1178d3aa0292a600d161c249eaa8fc2085353847c04470474f.pdf', 2, 1),
(3, 'EXAMENES', 'filosofia', '2021-09-23', 1, 1, 'darling_SGanttChart.pdf', '8d06ebabc62063dc596abe3a20f65fb2b5a143593a45d1c55b45214011cca20d660f7555aaa443e95ef810d4e6166e30745ab509fe4dc5697927b6c20be536f5.pdf', 4, 1),
(4, 'm', 'clase', '2021-10-09', 2, 2, 'logo.png', '1e0466383f015c6312df27749d40015b0cc74c7da8ae300af9d3b56a917c97c7c2c64b2ccfd7d950833b5b294c49adfcf3c83eed48d13042f5044f3d078b9fc2.png', 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `systemadmin`
--

CREATE TABLE `systemadmin` (
  `systemadminID` int(11) UNSIGNED NOT NULL,
  `dni` varchar(60) NOT NULL,
  `name` varchar(60) NOT NULL,
  `dob` date NOT NULL,
  `sex` varchar(10) NOT NULL,
  `email` varchar(40) DEFAULT NULL,
  `phone` tinytext,
  `address` text,
  `jod` date NOT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(128) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_username` varchar(40) NOT NULL,
  `create_usertype` varchar(20) NOT NULL,
  `active` int(11) NOT NULL,
  `systemadminextra1` varchar(128) DEFAULT NULL,
  `systemadminextra2` varchar(128) DEFAULT NULL,
  `status` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `systemadmin`
--

INSERT INTO `systemadmin` (`systemadminID`, `dni`, `name`, `dob`, `sex`, `email`, `phone`, `address`, `jod`, `photo`, `username`, `password`, `usertypeID`, `create_date`, `modify_date`, `create_userID`, `create_username`, `create_usertype`, `active`, `systemadminextra1`, `systemadminextra2`, `status`) VALUES
(1, '00000000', 'Darling Catalan Morales', '1998-12-27', 'Femenino', 'dcatalanm2@miumg.edu.gt', '58236647', 'Barrio las Joyas', '2017-11-05', '68f62d073aed57b0df20b0c3dac13b1f99c510c3ac06fe928957430478bb1c7724e8a19f46313d1c7eec5e1f5b5d3f549ae21cacfc379f4d021bd2259bf8cfab.jpg', 'admin', '0aabca54ed36e6dd7e11f37899af0329406b95a472e0ca129166290c1728f5c0eb17b536ee78c04e745a23fa8b4a5afc7365edcd7c57d01679fb4989500ebf67', 1, '2017-11-05 03:09:19', '2017-11-05 03:09:19', 0, 'admin', 'Admin', 1, '', '', NULL),
(2, '3051724410201', 'Darling Catalan Morales', '1998-12-27', 'Femenino', 'darlingmorales16@outlook.es', '58236647', 'Guastatoya El Progreso', '2021-10-09', 'c0975c3b8c5cc8d73e37030759ed9e25e849b0b3e5fdaa4fecb733dc627550c6cbb21d6c125ddf91298450cd02430236be05f53a1c15c70583b768ffe66a0374.jpg', 'dcatalanm2@miumg.edu.gt', '0aabca54ed36e6dd7e11f37899af0329406b95a472e0ca129166290c1728f5c0eb17b536ee78c04e745a23fa8b4a5afc7365edcd7c57d01679fb4989500ebf67', 1, '2021-10-09 03:12:27', '2021-10-09 03:12:27', 1, 'admin', 'Administrador', 1, NULL, NULL, NULL),
(3, '2485929470201', 'José Arturo López', '1972-03-24', 'Femenino', 'joarloor24@gmail.com', '42984745', 'Barrio La Democracia', '2021-10-08', '4efef400e1d3b590a70ccb12bbea945c3f2f44b8ef72706a1e62e62916a23df82d21956df3e12cfc50da0d9f4cdaae6dcbb453c4bc2638879fddb4c0f41e7749.png', 'Arturo Lopez', '0aabca54ed36e6dd7e11f37899af0329406b95a472e0ca129166290c1728f5c0eb17b536ee78c04e745a23fa8b4a5afc7365edcd7c57d01679fb4989500ebf67', 1, '2021-10-09 01:19:49', '2021-10-09 02:43:43', 1, 'admin', 'Administrador', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tattendance`
--

CREATE TABLE `tattendance` (
  `tattendanceID` int(200) UNSIGNED NOT NULL,
  `schoolyearID` int(11) NOT NULL,
  `teacherID` int(11) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `monthyear` varchar(10) NOT NULL,
  `a1` varchar(3) DEFAULT NULL,
  `a2` varchar(3) DEFAULT NULL,
  `a3` varchar(3) DEFAULT NULL,
  `a4` varchar(3) DEFAULT NULL,
  `a5` varchar(3) DEFAULT NULL,
  `a6` varchar(3) DEFAULT NULL,
  `a7` varchar(3) DEFAULT NULL,
  `a8` varchar(3) DEFAULT NULL,
  `a9` varchar(3) DEFAULT NULL,
  `a10` varchar(3) DEFAULT NULL,
  `a11` varchar(3) DEFAULT NULL,
  `a12` varchar(3) DEFAULT NULL,
  `a13` varchar(3) DEFAULT NULL,
  `a14` varchar(3) DEFAULT NULL,
  `a15` varchar(3) DEFAULT NULL,
  `a16` varchar(3) DEFAULT NULL,
  `a17` varchar(3) DEFAULT NULL,
  `a18` varchar(3) DEFAULT NULL,
  `a19` varchar(3) DEFAULT NULL,
  `a20` varchar(3) DEFAULT NULL,
  `a21` varchar(3) DEFAULT NULL,
  `a22` varchar(3) DEFAULT NULL,
  `a23` varchar(3) DEFAULT NULL,
  `a24` varchar(3) DEFAULT NULL,
  `a25` varchar(3) DEFAULT NULL,
  `a26` varchar(3) DEFAULT NULL,
  `a27` varchar(3) DEFAULT NULL,
  `a28` varchar(3) DEFAULT NULL,
  `a29` varchar(3) DEFAULT NULL,
  `a30` varchar(3) DEFAULT NULL,
  `a31` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `teacher`
--

CREATE TABLE `teacher` (
  `teacherID` int(11) UNSIGNED NOT NULL,
  `dni` varchar(50) DEFAULT NULL,
  `name` varchar(60) NOT NULL,
  `designation` varchar(128) NOT NULL,
  `dob` date NOT NULL,
  `sex` varchar(10) NOT NULL,
  `email` varchar(40) DEFAULT NULL,
  `phone` tinytext,
  `address` text,
  `jod` date NOT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(128) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_username` varchar(40) NOT NULL,
  `create_usertype` varchar(20) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `teacher`
--

INSERT INTO `teacher` (`teacherID`, `dni`, `name`, `designation`, `dob`, `sex`, `email`, `phone`, `address`, `jod`, `photo`, `username`, `password`, `usertypeID`, `create_date`, `modify_date`, `create_userID`, `create_username`, `create_usertype`, `active`) VALUES
(1, '10', 'miliam', 'Idioma', '1996-03-12', 'Masculino', 'milliam@gmail.com', '52321200', 'Barrio las Joyas', '2021-08-30', 'bbccea3242fa2191822e52e3654188f486d19b7d388f67d9ccb0c2239032d896fc71531119b24e7f535fcbd266c788d68e2ba56bb6c38fdd0a9f38ef3bbde18b.jpg', 'miliam', '0aabca54ed36e6dd7e11f37899af0329406b95a472e0ca129166290c1728f5c0eb17b536ee78c04e745a23fa8b4a5afc7365edcd7c57d01679fb4989500ebf67', 2, '2021-09-21 01:26:42', '2021-09-21 02:54:13', 1, 'admin', 'Administrador', 1),
(2, '27', 'Jim', 'Matematicas', '1996-03-12', 'Masculino', 'jim@gmail.com', '22253657', 'Aldea el barrial', '2021-08-30', '67938c09810541b1fb532e7439d04e2c391c765937866c9551b0bb14503b417f320f6eeb01c611cb244dd171ce93cef1d9dd59f865e6062aa69aa3902dff6cca.png', 'jimy', '0aabca54ed36e6dd7e11f37899af0329406b95a472e0ca129166290c1728f5c0eb17b536ee78c04e745a23fa8b4a5afc7365edcd7c57d01679fb4989500ebf67', 2, '2021-09-22 07:59:25', '2021-10-09 03:35:20', 1, 'admin', 'Administrador', 1),
(3, '33', 'josue', 'filosofia', '1990-02-14', 'Masculino', 'josue@gmail.com', '55621422', 'Subinal', '2021-09-06', '0338f74a66f2f9973385e46301fd80c5d762e12c87b7661f561c3241b01b868b554dfc552d2eebae38262cb7bbc1963820fd1c5efcc6e2b1fd73944f0d2bff4d.png', 'josue', '0aabca54ed36e6dd7e11f37899af0329406b95a472e0ca129166290c1728f5c0eb17b536ee78c04e745a23fa8b4a5afc7365edcd7c57d01679fb4989500ebf67', 2, '2021-09-23 02:44:08', '2021-09-23 02:44:08', 1, 'admin', 'Administrador', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tmember`
--

CREATE TABLE `tmember` (
  `tmemberID` int(11) UNSIGNED NOT NULL,
  `studentID` int(11) NOT NULL,
  `transportID` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(40) DEFAULT NULL,
  `phone` tinytext,
  `tbalance` varchar(11) DEFAULT NULL,
  `tjoindate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transport`
--

CREATE TABLE `transport` (
  `transportID` int(11) UNSIGNED NOT NULL,
  `route` text NOT NULL,
  `vehicle` int(11) NOT NULL,
  `fare` varchar(11) NOT NULL,
  `note` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `userID` int(11) UNSIGNED NOT NULL,
  `dni` varchar(60) NOT NULL,
  `name` varchar(60) NOT NULL,
  `dob` date NOT NULL,
  `sex` varchar(10) NOT NULL,
  `email` varchar(40) DEFAULT NULL,
  `phone` tinytext,
  `address` text,
  `jod` date NOT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(128) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_username` varchar(40) NOT NULL,
  `create_usertype` varchar(20) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usertype`
--

CREATE TABLE `usertype` (
  `usertypeID` int(11) UNSIGNED NOT NULL,
  `usertype` varchar(60) NOT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_username` varchar(40) NOT NULL,
  `create_usertype` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usertype`
--

INSERT INTO `usertype` (`usertypeID`, `usertype`, `create_date`, `modify_date`, `create_userID`, `create_username`, `create_usertype`) VALUES
(1, 'Administrador', '2016-06-24 07:12:49', '2017-11-07 02:04:49', 1, 'admin', 'Super Admin'),
(2, 'Docente', '2016-06-24 07:13:13', '2016-06-24 07:13:13', 1, 'admin', 'Super Admin'),
(3, 'Estudiante', '2016-06-24 07:13:27', '2021-09-20 03:32:44', 1, 'admin', 'Super Admin'),
(4, 'Padres', '2016-06-24 07:13:42', '2016-10-25 01:12:52', 1, 'admin', 'Super Admin'),
(5, 'Secretaria', '2016-06-24 07:13:54', '2016-06-24 07:13:54', 1, 'admin', 'Super Admin'),
(6, 'Director', '2016-06-24 09:09:43', '2021-10-09 03:15:59', 1, 'admin', 'Super Admin'),
(7, 'Recepcionista', '2016-10-30 06:24:41', '2021-09-20 03:21:14', 1, 'admin', 'Admin');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alert`
--
ALTER TABLE `alert`
  ADD PRIMARY KEY (`alertID`);

--
-- Indices de la tabla `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`assignmentID`);

--
-- Indices de la tabla `assignmentanswer`
--
ALTER TABLE `assignmentanswer`
  ADD PRIMARY KEY (`assignmentanswerID`);

--
-- Indices de la tabla `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`attendanceID`);

--
-- Indices de la tabla `automation_rec`
--
ALTER TABLE `automation_rec`
  ADD PRIMARY KEY (`automation_recID`);

--
-- Indices de la tabla `automation_shudulu`
--
ALTER TABLE `automation_shudulu`
  ADD PRIMARY KEY (`automation_shuduluID`);

--
-- Indices de la tabla `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`bookID`);

--
-- Indices de la tabla `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryID`);

--
-- Indices de la tabla `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`classesID`);

--
-- Indices de la tabla `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `conversation_msg`
--
ALTER TABLE `conversation_msg`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indices de la tabla `eattendance`
--
ALTER TABLE `eattendance`
  ADD PRIMARY KEY (`eattendanceID`);

--
-- Indices de la tabla `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`eventID`);

--
-- Indices de la tabla `eventcounter`
--
ALTER TABLE `eventcounter`
  ADD PRIMARY KEY (`eventcounterID`);

--
-- Indices de la tabla `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`examID`);

--
-- Indices de la tabla `examschedule`
--
ALTER TABLE `examschedule`
  ADD PRIMARY KEY (`examscheduleID`);

--
-- Indices de la tabla `expense`
--
ALTER TABLE `expense`
  ADD PRIMARY KEY (`expenseID`);

--
-- Indices de la tabla `feetypes`
--
ALTER TABLE `feetypes`
  ADD PRIMARY KEY (`feetypesID`);

--
-- Indices de la tabla `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`gradeID`);

--
-- Indices de la tabla `hmember`
--
ALTER TABLE `hmember`
  ADD PRIMARY KEY (`hmemberID`);

--
-- Indices de la tabla `holiday`
--
ALTER TABLE `holiday`
  ADD PRIMARY KEY (`holidayID`);

--
-- Indices de la tabla `hostel`
--
ALTER TABLE `hostel`
  ADD PRIMARY KEY (`hostelID`);

--
-- Indices de la tabla `idmanager`
--
ALTER TABLE `idmanager`
  ADD PRIMARY KEY (`idmanagerID`);

--
-- Indices de la tabla `ini_config`
--
ALTER TABLE `ini_config`
  ADD PRIMARY KEY (`configID`);

--
-- Indices de la tabla `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoiceID`);

--
-- Indices de la tabla `issue`
--
ALTER TABLE `issue`
  ADD PRIMARY KEY (`issueID`);

--
-- Indices de la tabla `leaveapp`
--
ALTER TABLE `leaveapp`
  ADD PRIMARY KEY (`leaveID`);

--
-- Indices de la tabla `lmember`
--
ALTER TABLE `lmember`
  ADD PRIMARY KEY (`lmemberID`);

--
-- Indices de la tabla `loginlog`
--
ALTER TABLE `loginlog`
  ADD PRIMARY KEY (`loginlogID`);

--
-- Indices de la tabla `mailandsms`
--
ALTER TABLE `mailandsms`
  ADD PRIMARY KEY (`mailandsmsID`);

--
-- Indices de la tabla `mailandsmstemplate`
--
ALTER TABLE `mailandsmstemplate`
  ADD PRIMARY KEY (`mailandsmstemplateID`);

--
-- Indices de la tabla `mailandsmstemplatetag`
--
ALTER TABLE `mailandsmstemplatetag`
  ADD PRIMARY KEY (`mailandsmstemplatetagID`);

--
-- Indices de la tabla `mark`
--
ALTER TABLE `mark`
  ADD PRIMARY KEY (`markID`);

--
-- Indices de la tabla `markpercentage`
--
ALTER TABLE `markpercentage`
  ADD PRIMARY KEY (`markpercentageID`);

--
-- Indices de la tabla `markrelation`
--
ALTER TABLE `markrelation`
  ADD PRIMARY KEY (`markrelationID`);

--
-- Indices de la tabla `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`mediaID`);

--
-- Indices de la tabla `media_category`
--
ALTER TABLE `media_category`
  ADD PRIMARY KEY (`mcategoryID`);

--
-- Indices de la tabla `media_share`
--
ALTER TABLE `media_share`
  ADD PRIMARY KEY (`shareID`);

--
-- Indices de la tabla `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menuID`);

--
-- Indices de la tabla `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`messageID`);

--
-- Indices de la tabla `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`noticeID`);

--
-- Indices de la tabla `parents`
--
ALTER TABLE `parents`
  ADD PRIMARY KEY (`parentsID`);

--
-- Indices de la tabla `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`paymentID`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`permissionID`);

--
-- Indices de la tabla `promotionlog`
--
ALTER TABLE `promotionlog`
  ADD PRIMARY KEY (`promotionLogID`);

--
-- Indices de la tabla `reply_msg`
--
ALTER TABLE `reply_msg`
  ADD PRIMARY KEY (`replyID`);

--
-- Indices de la tabla `reset`
--
ALTER TABLE `reset`
  ADD PRIMARY KEY (`resetID`);

--
-- Indices de la tabla `routine`
--
ALTER TABLE `routine`
  ADD PRIMARY KEY (`routineID`);

--
-- Indices de la tabla `schoolyear`
--
ALTER TABLE `schoolyear`
  ADD PRIMARY KEY (`schoolyearID`);

--
-- Indices de la tabla `school_sessions`
--
ALTER TABLE `school_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indices de la tabla `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`sectionID`);

--
-- Indices de la tabla `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`fieldoption`);

--
-- Indices de la tabla `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`studentID`);

--
-- Indices de la tabla `studentrelation`
--
ALTER TABLE `studentrelation`
  ADD PRIMARY KEY (`studentrelationID`);

--
-- Indices de la tabla `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subjectID`);

--
-- Indices de la tabla `sub_attendance`
--
ALTER TABLE `sub_attendance`
  ADD PRIMARY KEY (`attendanceID`);

--
-- Indices de la tabla `syllabus`
--
ALTER TABLE `syllabus`
  ADD PRIMARY KEY (`syllabusID`);

--
-- Indices de la tabla `systemadmin`
--
ALTER TABLE `systemadmin`
  ADD PRIMARY KEY (`systemadminID`);

--
-- Indices de la tabla `tattendance`
--
ALTER TABLE `tattendance`
  ADD PRIMARY KEY (`tattendanceID`);

--
-- Indices de la tabla `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacherID`);

--
-- Indices de la tabla `tmember`
--
ALTER TABLE `tmember`
  ADD PRIMARY KEY (`tmemberID`);

--
-- Indices de la tabla `transport`
--
ALTER TABLE `transport`
  ADD PRIMARY KEY (`transportID`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`);

--
-- Indices de la tabla `usertype`
--
ALTER TABLE `usertype`
  ADD PRIMARY KEY (`usertypeID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alert`
--
ALTER TABLE `alert`
  MODIFY `alertID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `assignment`
--
ALTER TABLE `assignment`
  MODIFY `assignmentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `assignmentanswer`
--
ALTER TABLE `assignmentanswer`
  MODIFY `assignmentanswerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `attendance`
--
ALTER TABLE `attendance`
  MODIFY `attendanceID` int(200) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `automation_rec`
--
ALTER TABLE `automation_rec`
  MODIFY `automation_recID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `automation_shudulu`
--
ALTER TABLE `automation_shudulu`
  MODIFY `automation_shuduluID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `book`
--
ALTER TABLE `book`
  MODIFY `bookID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `category`
--
ALTER TABLE `category`
  MODIFY `categoryID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `classes`
--
ALTER TABLE `classes`
  MODIFY `classesID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `conversation_msg`
--
ALTER TABLE `conversation_msg`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `eattendance`
--
ALTER TABLE `eattendance`
  MODIFY `eattendanceID` int(200) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `event`
--
ALTER TABLE `event`
  MODIFY `eventID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `eventcounter`
--
ALTER TABLE `eventcounter`
  MODIFY `eventcounterID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `exam`
--
ALTER TABLE `exam`
  MODIFY `examID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `examschedule`
--
ALTER TABLE `examschedule`
  MODIFY `examscheduleID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `expense`
--
ALTER TABLE `expense`
  MODIFY `expenseID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `feetypes`
--
ALTER TABLE `feetypes`
  MODIFY `feetypesID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `grade`
--
ALTER TABLE `grade`
  MODIFY `gradeID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `hmember`
--
ALTER TABLE `hmember`
  MODIFY `hmemberID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `holiday`
--
ALTER TABLE `holiday`
  MODIFY `holidayID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `hostel`
--
ALTER TABLE `hostel`
  MODIFY `hostelID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `idmanager`
--
ALTER TABLE `idmanager`
  MODIFY `idmanagerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `ini_config`
--
ALTER TABLE `ini_config`
  MODIFY `configID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invoiceID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `issue`
--
ALTER TABLE `issue`
  MODIFY `issueID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `leaveapp`
--
ALTER TABLE `leaveapp`
  MODIFY `leaveID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lmember`
--
ALTER TABLE `lmember`
  MODIFY `lmemberID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `loginlog`
--
ALTER TABLE `loginlog`
  MODIFY `loginlogID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT de la tabla `mailandsms`
--
ALTER TABLE `mailandsms`
  MODIFY `mailandsmsID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mailandsmstemplate`
--
ALTER TABLE `mailandsmstemplate`
  MODIFY `mailandsmstemplateID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mailandsmstemplatetag`
--
ALTER TABLE `mailandsmstemplatetag`
  MODIFY `mailandsmstemplatetagID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de la tabla `mark`
--
ALTER TABLE `mark`
  MODIFY `markID` int(200) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `markpercentage`
--
ALTER TABLE `markpercentage`
  MODIFY `markpercentageID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `markrelation`
--
ALTER TABLE `markrelation`
  MODIFY `markrelationID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `media`
--
ALTER TABLE `media`
  MODIFY `mediaID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `media_category`
--
ALTER TABLE `media_category`
  MODIFY `mcategoryID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `media_share`
--
ALTER TABLE `media_share`
  MODIFY `shareID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `menu`
--
ALTER TABLE `menu`
  MODIFY `menuID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT de la tabla `message`
--
ALTER TABLE `message`
  MODIFY `messageID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `notice`
--
ALTER TABLE `notice`
  MODIFY `noticeID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `parents`
--
ALTER TABLE `parents`
  MODIFY `parentsID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `payment`
--
ALTER TABLE `payment`
  MODIFY `paymentID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `permissionID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=680;

--
-- AUTO_INCREMENT de la tabla `promotionlog`
--
ALTER TABLE `promotionlog`
  MODIFY `promotionLogID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `reply_msg`
--
ALTER TABLE `reply_msg`
  MODIFY `replyID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reset`
--
ALTER TABLE `reset`
  MODIFY `resetID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `routine`
--
ALTER TABLE `routine`
  MODIFY `routineID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `schoolyear`
--
ALTER TABLE `schoolyear`
  MODIFY `schoolyearID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `section`
--
ALTER TABLE `section`
  MODIFY `sectionID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `student`
--
ALTER TABLE `student`
  MODIFY `studentID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `studentrelation`
--
ALTER TABLE `studentrelation`
  MODIFY `studentrelationID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `subject`
--
ALTER TABLE `subject`
  MODIFY `subjectID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `sub_attendance`
--
ALTER TABLE `sub_attendance`
  MODIFY `attendanceID` int(200) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `syllabus`
--
ALTER TABLE `syllabus`
  MODIFY `syllabusID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `systemadmin`
--
ALTER TABLE `systemadmin`
  MODIFY `systemadminID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tattendance`
--
ALTER TABLE `tattendance`
  MODIFY `tattendanceID` int(200) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `teacher`
--
ALTER TABLE `teacher`
  MODIFY `teacherID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tmember`
--
ALTER TABLE `tmember`
  MODIFY `tmemberID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `transport`
--
ALTER TABLE `transport`
  MODIFY `transportID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usertype`
--
ALTER TABLE `usertype`
  MODIFY `usertypeID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
