-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Dim 24 Décembre 2017 à 21:04
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `kdm_2`
--

-- --------------------------------------------------------

--
-- Structure de la table `armor_stat`
--

CREATE TABLE `armor_stat` (
  `ID_SURVIVOR` int(11) NOT NULL,
  `HEAD` varchar(5) NOT NULL,
  `ARMS` varchar(5) NOT NULL,
  `BODY` varchar(5) NOT NULL,
  `WAIST` varchar(5) NOT NULL,
  `LEGS` varchar(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `armor_stat`
--

INSERT INTO `armor_stat` (`ID_SURVIVOR`, `HEAD`, `ARMS`, `BODY`, `WAIST`, `LEGS`) VALUES
(1, '-1', '-2', '0', '1', '2'),
(2, '1', '1', '0', '-1', '-2');

-- --------------------------------------------------------

--
-- Structure de la table `bleed`
--

CREATE TABLE `bleed` (
  `ID_SURVIVOR` int(11) NOT NULL,
  `BLEED` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `bleed`
--

INSERT INTO `bleed` (`ID_SURVIVOR`, `BLEED`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(5, 1),
(6, 2),
(7, 5),
(8, 4),
(9, 1),
(10, 0),
(11, 0),
(12, 0),
(13, 0),
(14, 2),
(15, 3),
(16, 4),
(17, 2),
(18, 1),
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(5, 1),
(6, 2),
(7, 5),
(8, 4),
(9, 1),
(10, 0),
(11, 0),
(12, 0),
(13, 0),
(14, 2),
(15, 3),
(16, 4),
(17, 2),
(18, 1),
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(5, 1),
(6, 2),
(7, 5),
(8, 4),
(9, 1),
(10, 0),
(11, 0),
(12, 0),
(13, 0),
(14, 2),
(15, 3),
(16, 4),
(17, 2),
(18, 1);

-- --------------------------------------------------------

--
-- Structure de la table `born`
--

CREATE TABLE `born` (
  `ID_SURVIVOR` int(11) NOT NULL,
  `YEARS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `born`
--

INSERT INTO `born` (`ID_SURVIVOR`, `YEARS`) VALUES
(1, 3),
(2, 5),
(3, 7),
(4, 0),
(5, 11),
(6, 14),
(7, 8),
(8, 3),
(9, 1),
(10, 4),
(11, 9),
(12, 12),
(13, 6),
(14, 13),
(15, 4),
(16, 2),
(17, 6),
(18, 5),
(1, 3),
(2, 5),
(3, 7),
(4, 0),
(5, 11),
(6, 14),
(7, 8),
(8, 3),
(9, 1),
(10, 4),
(11, 9),
(12, 12),
(13, 6),
(14, 13),
(15, 4),
(16, 2),
(17, 6),
(18, 5),
(1, 3),
(2, 5),
(3, 7),
(4, 0),
(5, 11),
(6, 14),
(7, 8),
(8, 3),
(9, 1),
(10, 4),
(11, 9),
(12, 12),
(13, 6),
(14, 13),
(15, 4),
(16, 2),
(17, 6),
(18, 5);

-- --------------------------------------------------------

--
-- Structure de la table `brain`
--

CREATE TABLE `brain` (
  `ID_SURVIVOR` int(11) NOT NULL,
  `BRAIN` int(11) NOT NULL,
  `CASE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `brain`
--

INSERT INTO `brain` (`ID_SURVIVOR`, `BRAIN`, `CASE`) VALUES
(1, 0, 1),
(2, 5, 0),
(3, 6, 0),
(4, 0, 1),
(5, 10, 0),
(6, 0, 0),
(7, 0, 1),
(8, 0, 1),
(9, 5, 0),
(10, 1, 0),
(11, 6, 0),
(12, 7, 0),
(13, 9, 0),
(14, 12, 0),
(15, 0, 1),
(16, 0, 1),
(17, 5, 0),
(18, 0, 1),
(1, 0, 1),
(2, 5, 0),
(3, 6, 0),
(4, 0, 1),
(5, 10, 0),
(6, 0, 0),
(7, 0, 1),
(8, 0, 1),
(9, 5, 0),
(10, 1, 0),
(11, 6, 0),
(12, 7, 0),
(13, 9, 0),
(14, 12, 0),
(15, 0, 1),
(16, 0, 1),
(17, 5, 0),
(18, 0, 1),
(1, 0, 1),
(2, 5, 0),
(3, 6, 0),
(4, 0, 1),
(5, 10, 0),
(6, 0, 0),
(7, 0, 1),
(8, 0, 1),
(9, 5, 0),
(10, 1, 0),
(11, 6, 0),
(12, 7, 0),
(13, 9, 0),
(14, 12, 0),
(15, 0, 1),
(16, 0, 1),
(17, 5, 0),
(18, 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `courage`
--

CREATE TABLE `courage` (
  `id` int(11) NOT NULL,
  `ID_SURVIVOR` int(11) NOT NULL,
  `COURAGE` int(11) NOT NULL,
  `OPTION_COURAGE` int(11) NOT NULL,
  `OTHER` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `courage`
--

INSERT INTO `courage` (`id`, `ID_SURVIVOR`, `COURAGE`, `OPTION_COURAGE`, `OTHER`) VALUES
(1, 1, 3, 2, 'This is my test'),
(2, 2, 3, 3, ''),
(3, 3, 6, 1, ''),
(4, 4, 2, 0, ''),
(5, 5, 2, 0, ''),
(6, 6, 0, 0, ''),
(7, 7, 0, 0, ''),
(8, 8, 0, 0, ''),
(9, 9, 1, 0, ''),
(10, 10, 2, 0, ''),
(11, 11, 4, 2, ''),
(12, 12, 5, 2, ''),
(13, 13, 6, 1, ''),
(14, 14, 4, 1, ''),
(15, 15, 2, 0, ''),
(16, 16, 3, 2, ''),
(17, 17, 2, 0, ''),
(18, 18, 1, 0, ''),
(19, 1, 3, 3, ''),
(20, 2, 3, 2, ''),
(21, 3, 6, 1, ''),
(22, 4, 2, 0, ''),
(23, 5, 2, 0, ''),
(24, 6, 0, 0, ''),
(25, 7, 0, 0, ''),
(26, 8, 0, 0, ''),
(27, 9, 1, 0, ''),
(28, 10, 2, 0, ''),
(29, 11, 4, 0, ''),
(30, 12, 5, 0, ''),
(31, 13, 6, 0, ''),
(32, 14, 4, 0, ''),
(33, 15, 2, 0, ''),
(34, 16, 3, 0, ''),
(35, 17, 2, 0, ''),
(36, 18, 1, 0, ''),
(37, 1, 3, 0, ''),
(38, 2, 3, 0, ''),
(39, 3, 6, 0, ''),
(40, 4, 2, 0, ''),
(41, 5, 2, 0, ''),
(42, 6, 0, 0, ''),
(43, 7, 0, 0, ''),
(44, 8, 0, 0, ''),
(45, 9, 1, 0, ''),
(46, 10, 2, 0, ''),
(47, 11, 4, 0, ''),
(48, 12, 5, 0, ''),
(49, 13, 6, 0, ''),
(50, 14, 4, 0, ''),
(51, 15, 2, 0, ''),
(52, 16, 3, 0, ''),
(53, 17, 2, 0, ''),
(54, 18, 1, 0, '');

-- --------------------------------------------------------

--
-- Structure de la table `dead`
--

CREATE TABLE `dead` (
  `ID_SURVIVOR` int(11) NOT NULL,
  `DEAD` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `dead`
--

INSERT INTO `dead` (`ID_SURVIVOR`, `DEAD`) VALUES
(1, 1),
(2, 0),
(3, 1),
(4, 1),
(5, 1),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(13, 1),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(18, 0);

-- --------------------------------------------------------

--
-- Structure de la table `disorder`
--

CREATE TABLE `disorder` (
  `DISORDER_NAME` varchar(50) NOT NULL,
  `EXPENTION` int(11) NOT NULL,
  `ID_SURVIVOR` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `disorder`
--

INSERT INTO `disorder` (`DISORDER_NAME`, `EXPENTION`, `ID_SURVIVOR`) VALUES
('Crazy', 1, 16),
('Scare', 2, 5),
('Old', 2, 13),
('Sick', 1, 9),
('Weak', 3, 10),
('Crying', 4, 17),
('Crazy', 1, 16),
('Scare', 2, 5),
('Old', 2, 13),
('Sick', 1, 9),
('Weak', 3, 10),
('Crying', 4, 17),
('Crazy', 1, 16),
('Scare', 2, 5),
('Old', 2, 13),
('Sick', 1, 9),
('Weak', 3, 10),
('Crying', 4, 17);

-- --------------------------------------------------------

--
-- Structure de la table `figthing_art`
--

CREATE TABLE `figthing_art` (
  `ID_SURVIVOR` int(11) NOT NULL,
  `NAME_FIGTHING` varchar(50) NOT NULL,
  `EXPENTION` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `figthing_art`
--

INSERT INTO `figthing_art` (`ID_SURVIVOR`, `NAME_FIGTHING`, `EXPENTION`) VALUES
(18, 'Ambidextrous', 1),
(8, 'Mamomoth hunting', 3),
(6, 'Strategist', 1),
(4, 'DEADLY', 2),
(3, 'Courage', 4),
(18, 'Ambidextrous', 1),
(8, 'Mamomoth hunting', 3),
(6, 'Strategist', 1),
(4, 'DEADLY', 2),
(3, 'Courage', 4),
(18, 'Ambidextrous', 1),
(8, 'Mamomoth hunting', 3),
(6, 'Strategist', 1),
(4, 'DEADLY', 2),
(3, 'Courage', 4);

-- --------------------------------------------------------

--
-- Structure de la table `hunt_xp`
--

CREATE TABLE `hunt_xp` (
  `ID_SURVIVOR` int(11) NOT NULL,
  `XP` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `hunt_xp`
--

INSERT INTO `hunt_xp` (`ID_SURVIVOR`, `XP`) VALUES
(1, 3),
(2, 6),
(3, 4),
(4, 6),
(5, 8),
(6, 15),
(7, 13),
(8, 4),
(9, 1),
(10, 2),
(11, 5),
(12, 8),
(13, 9),
(14, 4),
(15, 12),
(16, 7),
(17, 4),
(18, 2),
(1, 3),
(2, 6),
(3, 4),
(4, 6),
(5, 8),
(6, 15),
(7, 13),
(8, 4),
(9, 1),
(10, 2),
(11, 5),
(12, 8),
(13, 9),
(14, 4),
(15, 12),
(16, 7),
(17, 4),
(18, 2),
(1, 3),
(2, 6),
(3, 4),
(4, 6),
(5, 8),
(6, 15),
(7, 13),
(8, 4),
(9, 1),
(10, 2),
(11, 5),
(12, 8),
(13, 9),
(14, 4),
(15, 12),
(16, 7),
(17, 4),
(18, 2);

-- --------------------------------------------------------

--
-- Structure de la table `imperments`
--

CREATE TABLE `imperments` (
  `NAME` varchar(250) NOT NULL,
  `LEVEL` int(11) NOT NULL,
  `EXPENTION` int(11) NOT NULL,
  `ID_SURVIVOR` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `imperments`
--

INSERT INTO `imperments` (`NAME`, `LEVEL`, `EXPENTION`, `ID_SURVIVOR`) VALUES
('Intracranial Hemorrhage', 1, 1, 12),
('Deaf', 1, 1, 7),
('Blind', 2, 1, 1),
('Shattered Jaw', 1, 2, 6),
('Dismembered Arm', 2, 6, 11),
('Intracranial Hemorrhage', 1, 1, 12),
('Deaf', 1, 1, 7),
('Blind', 2, 1, 1),
('Shattered Jaw', 1, 2, 6),
('Dismembered Arm', 2, 6, 11),
('Intracranial Hemorrhage', 1, 1, 12),
('Deaf', 1, 1, 7),
('Blind', 2, 1, 1),
('Shattered Jaw', 1, 2, 6),
('Dismembered Arm', 2, 6, 11);

-- --------------------------------------------------------

--
-- Structure de la table `login`
--

CREATE TABLE `login` (
  `name` varchar(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `login`
--

INSERT INTO `login` (`name`, `username`, `password`) VALUES
('Steph', 'steph4104', '123456'),
('Aimée', 'aim', '123456'),
('Jérémie', 'jay', '123456'),
('Chantal', 'yo', '123456'),
('Steph', 'steph4104', '123456'),
('Aimée', 'aim', '123456'),
('Jérémie', 'jay', '123456'),
('Chantal', 'yo', '123456'),
('Steph', 'steph4104', '123456'),
('Aimée', 'aim', '123456'),
('Jérémie', 'jay', '123456'),
('Chantal', 'yo', '123456');

-- --------------------------------------------------------

--
-- Structure de la table `primary_stat`
--

CREATE TABLE `primary_stat` (
  `ID_SURVIVOR` int(11) NOT NULL,
  `MOVEMENT` int(11) NOT NULL,
  `ACCURACY` int(11) NOT NULL,
  `STRENGHT` int(11) NOT NULL,
  `EVASION` int(11) NOT NULL,
  `LUCK` int(11) NOT NULL,
  `SPEED` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `primary_stat`
--

INSERT INTO `primary_stat` (`ID_SURVIVOR`, `MOVEMENT`, `ACCURACY`, `STRENGHT`, `EVASION`, `LUCK`, `SPEED`) VALUES
(1, 5, 2, 3, 4, 1, 0),
(2, 5, 2, 1, 1, 2, 1),
(3, 5, 1, 2, 1, 0, 0),
(4, 7, 2, 4, 4, 1, 0),
(5, 1, 1, 1, 1, 1, 1),
(6, 4, 5, 1, 1, 0, -1),
(7, 5, 1, 1, 1, 2, 1),
(8, 5, 2, 1, 2, 1, 0),
(9, 4, 1, 1, 0, 1, 0),
(10, 6, 5, 5, 5, 5, 5),
(11, 4, 1, 2, 1, 2, 2),
(12, 5, 2, 0, 0, 1, 0),
(13, 5, 1, 3, 0, 0, 0),
(14, 6, 1, 1, 0, 0, 0),
(15, 5, 1, 2, 0, 0, 0),
(16, 5, 0, 0, 0, 0, 0),
(18, 4, 0, 1, 2, 1, 1),
(1, 5, 2, 3, 4, 1, 0),
(2, 5, 2, 1, 1, 2, 1),
(3, 5, 1, 2, 1, 0, 0),
(4, 7, 2, 4, 4, 1, 0),
(5, 1, 1, 1, 1, 1, 1),
(6, 4, 5, 1, 1, 0, -1),
(7, 5, 1, 1, 1, 2, 1),
(8, 5, 2, 1, 2, 1, 0),
(9, 4, 1, 1, 0, 1, 0),
(10, 6, 5, 5, 5, 5, 5),
(11, 4, 1, 2, 1, 2, 2),
(12, 5, 2, 0, 0, 1, 0),
(13, 5, 1, 3, 0, 0, 0),
(14, 6, 1, 1, 0, 0, 0),
(15, 5, 1, 2, 0, 0, 0),
(16, 5, 0, 0, 0, 0, 0),
(18, 4, 0, 1, 2, 1, 1),
(1, 5, 2, 3, 4, 1, 0),
(2, 5, 2, 1, 1, 2, 1),
(3, 5, 1, 2, 1, 0, 0),
(4, 7, 2, 4, 4, 1, 0),
(5, 1, 1, 1, 1, 1, 1),
(6, 4, 5, 1, 1, 0, -1),
(7, 5, 1, 1, 1, 2, 1),
(8, 5, 2, 1, 2, 1, 0),
(9, 4, 1, 1, 0, 1, 0),
(10, 6, 5, 5, 5, 5, 5),
(11, 4, 1, 2, 1, 2, 2),
(12, 5, 2, 0, 0, 1, 0),
(13, 5, 1, 3, 0, 0, 0),
(14, 6, 1, 1, 0, 0, 0),
(15, 5, 1, 2, 0, 0, 0),
(16, 5, 0, 0, 0, 0, 0),
(18, 4, 0, 1, 2, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `settlement`
--

CREATE TABLE `settlement` (
  `ID_SETTELMENT` int(11) NOT NULL,
  `NAME_SETTELMENT` varchar(50) NOT NULL,
  `EXPENTION` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `settlement`
--

INSERT INTO `settlement` (`ID_SETTELMENT`, `NAME_SETTELMENT`, `EXPENTION`) VALUES
(1, 'Shadow of death', 1),
(2, 'Ligth of paradise', 2),
(3, 'Kikou les amis', 3),
(4, 'Inside out!', 4);

-- --------------------------------------------------------

--
-- Structure de la table `severe_injury`
--

CREATE TABLE `severe_injury` (
  `Location` varchar(11) DEFAULT NULL,
  `Number` varchar(2) DEFAULT NULL,
  `Add to impairement` varchar(1) DEFAULT NULL,
  `Name` varchar(23) DEFAULT NULL,
  `Text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `severe_injury`
--

INSERT INTO `severe_injury` (`Location`, `Number`, `Add to impairement`, `Name`, `Text`) VALUES
('Head', '1', '', 'Head explosion!', 'Your head erupts in a shower of gore, killing you instantly. All other survivors are so disturbed that they lose 1 survival'),
('Head', '2', '', 'Head explosion!', 'Your head erupts in a shower of gore, killing you instantly. All other survivors are so disturbed that they lose 1 survival'),
('Head', '3', '', 'Decapitation', 'You are dead'),
('Head', '4', '', 'Decapitation', 'You are dead'),
('Head', '5', 'X', 'Intracranial hemorrhage', 'You can no longer use or gain any survival. This injury is permanent, and can be recorded once. Gain 1 bleeding token.'),
('Head', '6', 'X', 'Deaf', 'You won\'t hear it coming. Suffer -1 permanent evasion. This injury is permanent, and can be recorded once. Gain 1 bleeding token.'),
('Head', '7', 'X', 'Blind', 'Lose an eye. Suffer -1 permanent accuracy. This injury is permanent, and can be recorded twice. A survivor with two blind severe injuries suffers -4 permanent accuracy and retires at the end of the next showdown or settlement phase, having lost all sight. Gain 1 bleeding token.'),
('Head', '8', '', 'Concussion', 'Your brain is scrambled like an egg. Gain a random disorder. Gain 1 bleeding token'),
('Head', '9', 'X', 'Shattered jaw', 'You drink your meat through a straw. You can no longer consume or be affected by events requiring you to consume. You can no longer encourage. This injury is permanent, and can be recorded once. Gain 1 bleeding token.'),
('Head', '10', '', 'Destroyed tooth', 'If you have 3+ courage, you boldy spit the tooth out and gain +2 insanity! Otherwise, the blowsends you sprawling and you are knocked down.'),
('', '', '', '', ''),
('Arm', '1', '', 'Die of shock', 'Your vision fades, along with the sight of your mangled, armless torso.'),
('Arm', '2', '', 'Die of shock', 'Your vision fades, along with the sight of your mangled, armless torso.'),
('Arm', '3', '', 'Bleeding', 'Gain 2 bleeding tokens.'),
('Arm', '4', 'X', 'Dismenbered Arm', 'Lose an arm. You can no longer activate two-handed weapons. This injury is permanent, and can be recorded twice. A survivor with two dismembered arm severe injuries cannot activate any weapons. Gain 1 bleeding token.'),
('Arm', '5', 'X', 'Ruptured muscle', 'A painful rip. The arm hangs limp. You can no longer activate fighting arts. This injury is permanent, and can be recorded once. Gain 1 bleeding token.'),
('Arm', '6', 'X', 'Contracture', 'The arm will never be the same. Suffer -1 permanent accuracy. This injury is permanent, and can be recorded multiple times. Gain 1 bleeding token.'),
('Arm', '7', 'X', 'Broken arm', 'An ear-shattering crunch. Suffer -1 permanent accuracy and -1 permanent strength. This injury is permanent. And can be recorded twice. Gain 1 bleeding token.'),
('Arm', '8', '', 'Spiral fracture', 'Your arm twists unnaturally. Gain -2 strength tokens. Skip the next hunt. Gain 1 bleeding token.'),
('Arm', '9', '', 'Dislocated shoulder', 'Pop! You cannot activate two-handed or paired weapons or use block until showdown ends. Gain 1 bleeding token.'),
('Arm', '10', '', 'Hit the dirt', 'The blow sends you sprawling and you are knocked down.'),
('', '', '', '', ''),
('Body', '1', '', 'Instant death', 'The blow sends a bone fragment directly into your heart, killing you instantly.'),
('Body', '2', '', 'Instant death', 'The blow sends a bone fragment directly into your heart, killing you instantly.'),
('Body', '3', '', 'Bleeding', 'Gain 2 bleeding tokens.'),
('Body', '4', 'X', 'Gaping chest wound', 'Suffer -1 permanent strength. This injury is permanent, and can be recorded multiple times. Gain 1 bleeding token.'),
('Body', '5', 'X', 'Destroyed back', 'A sharp cracking noise. Suffer -2 permanent movement. You can no longer activate any gear that has 2+ strength. This injury is permanent, and can be recorded once. Gain 1 bleeding token.'),
('Body', '6', '', 'Disemboweled', 'Your movement is reduced to 1 until the showdown ends. Gain 1 bleeding token. Skip the next hunt. If you suffer disemboweled during a showdown, at least one survivor must live to the end of that showdown to carry you back to the settlement. Otherwise, at the end of the showdown, you are lost. Dead.'),
('Body', '7', '', 'Ruptured spleen', 'A vicious body blow. Skip the next hunt. Gain 2 bleeding tokens'),
('Body', '8', 'X', 'Broken rib', 'It even hurts to breathe. Suffer -1 permanent speed. This injury is permanent, and can be recorded multiple times. Gain 1 bleeding token'),
('Body', '9', '', 'Collapsed lung', 'You can\'t catch a breathe. Gain -1 movement token. Gain 1 bleeding token.'),
('Body', '10', '', 'Bowled over', 'The blow sends you sprawling and you are knocked down.'),
('', '', '', '', ''),
('Waist', '1', '', 'Final breath', 'With your last gasp, you utter final words of bravery. Adjacent survivors gain +1 survival. You are dead.'),
('Waist', '2', '', 'Final breath', 'With your last gasp, you utter final words of bravery. Adjacent survivors gain +1 survival. You are dead.'),
('Waist', '3', '', 'Bleeding kidneys', 'Gain 2 bleeding tokens.'),
('Waist', '4', 'X', 'Intestinal prolapse', 'Your gut is gravely injured. You can no longer equip any gear on your waist, as it is too painful to wear. This injury is permanent, and can be recorded once. Gain 1 bleeding token.'),
('Waist', '5', 'X', 'Warped pelvis', 'Your pelvis is disfigured. Suffer -1 permanent luck. This injury is permanent, and can be recorded multiple times. Gain 1 bleeding token.'),
('Waist', '6', 'X', 'Destroyed genitals', 'You cannot be nominated for the Intimacy story event. This injury is permanent, and can be recorded once. Gaina a random disorder. You are knocked down. Gazing upwards, you wonder at the futility of your struggle. Gain +3 insanity. Gain 1 bleeding token.'),
('Waist', '7', 'X', 'Broken hip', 'Your hip is dislocated. You can no longer dodge. Suffer -1 permanent movement. This injury is permanent, and can be recorded once. Gain 1 bleeding token.'),
('Waist', '8', '', 'Slashed Back', 'Making sudden movements is excruciatingly painful. You cannot surge until showdown ends. Gain 1 bleeding token.'),
('Waist', '9', '', 'Bruised Tail-bone', 'The base of your spines is in agony. You cannot dash until showdown ends. You are knocked down. Gain 1 bleeding token.'),
('Waist', '10', '', 'Belly-up', 'The blow sends you sprawling and you are knocked down.'),
('', '', '', '', ''),
('Legs', '1', '', 'Blood Geyser', 'Blood shoots from your temoral artery at an alarming rate, killing you in seconds.'),
('Legs', '2', '', 'Bleeding', 'Gain 2 bleeding tokens.'),
('Legs', '3', '', 'Bleeding', 'Gain 2 bleeding tokens.'),
('Legs', '4', 'X', 'Dismembered Leg', 'Lose a leg. You suffer -2 permanent movement, and can no longer dash. This injury is permanent, and can be recorded twice. A survivor with two dismembered leg severe injuries has lost both of their legs and must retire at the end of the next showdown or settlement phase. Gain 1 bleeding token.'),
('Legs', '5', 'X', 'Hamstrung', 'A painful rip. The leg is unusable. You can no longer use any fighting arts or abilities. This injury is permanent, and can be recorded once. Gain 1 bleeding token.'),
('Legs', '6', '', 'Torn Achilles Tendon', 'Your leg cannot bear your weight. Until the end of the showdown, whenever you suffer light, heavy, or severe injury, you are also knocked down. Skip the next hunt. Gain 1 bleeding token.'),
('Legs', '7', '', 'Torn muscle', 'Your quadriceps is ripped to shreds. You cannot dash until the showdown ends. Skip the next hunt. Gain 1 bleeding token.'),
('Legs', '8', '', 'Broken Leg', 'An ear-shattering crunch. Suffer -1 permanent accuracy and -1 permanent strength. This injury is permanent. And can be recorded twice. Gain 1 bleeding token.'),
('Legs', '9', '', 'Bloody Thights', 'Gain 2 bleeding tokens.'),
('Legs', '10', '', 'Lost balance', 'The blow sends you sprawling and you are knocked down.'),
('', '', '', '', ''),
('Brain', '1', '', 'Mortal Terror', 'No ifs, ands, or buts, the survivor is dead.'),
('Brain', '2', '', 'Mortal Terror', 'No ifs, ands, or buts, the survivor is dead.'),
('Brain', '3', '', 'Memory loss', 'Lose 2 levels of weapon profiency.'),
('Brain', '4', '', 'Flee', 'You are knocked down and suffer knockback equal to your movement towards the closest board edge. Gain 1d5 insanity.'),
('Brain', '5', '', 'Danger seizure', 'You thrash about widly, deaaling 1 damage to yourself and every adjacent survivor. Gain a random disorder and 1d5 insanity.'),
('Brain', '6', '', 'Danger seizure', 'You thrash about widly, deaaling 1 damage to yourself and every adjacent survivor. Gain a random disorder and 1d5 insanity.'),
('Brain', '7', '', 'Lunacy', 'Gain a random disorder and 1d5 insanity.'),
('Brain', '8', '', 'Lunacy', 'Gain a random disorder and 1d5 insanity.'),
('Brain', '9', '', 'New perspective', 'You are knocked down and gain 1d10 insanity.'),
('Brain', '10', '', 'Frenzy', 'Gain 1d5 insanity, +1 speed token and +1 strength token. Ignore slow on melee weapons. You may not spend survival. You may not use fighting arts. You may not use weapon specialization or weapon mastery. Can be gain multiple times. Lasts until end of showdown.'),
('Brain', '11', '', 'Maniacal laughter', 'You are knocked down. Gain -1 speed token, the priority tarket token, and 1d5 insanity.'),
('Brain', '12', '', 'Clarity', 'You are knocked down. Add your current survival to insanity and reduce your survival to 0. Gain a random disorder. If you already have 3 disorders, you die.'),
('Brain', '13', '', 'Impossible!', 'How could this happen! Gain +1d10 survival, +1d10 insanity and +2 luck tokens!'),
('', '', '', '', ''),
('Worm Trauma', '1', '', '', 'A spray of blood and silver. Dead.'),
('Worm Trauma', '2', '', '', 'A spray of blood and silver. Dead.'),
('Worm Trauma', '3', '', '', 'A spray of blood and silver. Dead.'),
('Worm Trauma', '4', '', '', 'The worm\'s coil tightens sharply. Gain 2 bleeding tokens and -1 evasion token.'),
('Worm Trauma', '5', '', '', 'The worm\'s coil tightens sharply. Gain 2 bleeding tokens and -1 evasion token.'),
('Worm Trauma', '6', '', '', 'A dizzying blow. Gain 1 bleeding token and 1d5 insanity.'),
('Worm Trauma', '7', '', '', 'A dizzying blow. Gain 1 bleeding token and 1d5 insanity.'),
('Worm Trauma', '8', '', '', 'An inhuman voice screams in your bones. Gain 1 bleeding token and 1d5 insanity.'),
('Worm Trauma', '9', '', '', 'The pain is infuriating! Gain 1 bleeding token and +1 strength token.'),
('Worm Trauma', '10', '', '', 'Molten metal issues from your mouth. You are knocked down and gain 1 iron strange resource.'),
('bla', '20', '*', 'What', 'blabla'),
('Head', '1', '', 'Head explosion!', 'Your head erupts in a shower of gore, killing you instantly. All other survivors are so disturbed that they lose 1 survival'),
('Head', '2', '', 'Head explosion!', 'Your head erupts in a shower of gore, killing you instantly. All other survivors are so disturbed that they lose 1 survival'),
('Head', '3', '', 'Decapitation', 'You are dead'),
('Head', '4', '', 'Decapitation', 'You are dead'),
('Head', '5', 'X', 'Intracranial hemorrhage', 'You can no longer use or gain any survival. This injury is permanent, and can be recorded once. Gain 1 bleeding token.'),
('Head', '6', 'X', 'Deaf', 'You won\'t hear it coming. Suffer -1 permanent evasion. This injury is permanent, and can be recorded once. Gain 1 bleeding token.'),
('Head', '7', 'X', 'Blind', 'Lose an eye. Suffer -1 permanent accuracy. This injury is permanent, and can be recorded twice. A survivor with two blind severe injuries suffers -4 permanent accuracy and retires at the end of the next showdown or settlement phase, having lost all sight. Gain 1 bleeding token.'),
('Head', '8', '', 'Concussion', 'Your brain is scrambled like an egg. Gain a random disorder. Gain 1 bleeding token'),
('Head', '9', 'X', 'Shattered jaw', 'You drink your meat through a straw. You can no longer consume or be affected by events requiring you to consume. You can no longer encourage. This injury is permanent, and can be recorded once. Gain 1 bleeding token.'),
('Head', '10', '', 'Destroyed tooth', 'If you have 3+ courage, you boldy spit the tooth out and gain +2 insanity! Otherwise, the blowsends you sprawling and you are knocked down.'),
('', '', '', '', ''),
('Arm', '1', '', 'Die of shock', 'Your vision fades, along with the sight of your mangled, armless torso.'),
('Arm', '2', '', 'Die of shock', 'Your vision fades, along with the sight of your mangled, armless torso.'),
('Arm', '3', '', 'Bleeding', 'Gain 2 bleeding tokens.'),
('Arm', '4', 'X', 'Dismenbered Arm', 'Lose an arm. You can no longer activate two-handed weapons. This injury is permanent, and can be recorded twice. A survivor with two dismembered arm severe injuries cannot activate any weapons. Gain 1 bleeding token.'),
('Arm', '5', 'X', 'Ruptured muscle', 'A painful rip. The arm hangs limp. You can no longer activate fighting arts. This injury is permanent, and can be recorded once. Gain 1 bleeding token.'),
('Arm', '6', 'X', 'Contracture', 'The arm will never be the same. Suffer -1 permanent accuracy. This injury is permanent, and can be recorded multiple times. Gain 1 bleeding token.'),
('Arm', '7', 'X', 'Broken arm', 'An ear-shattering crunch. Suffer -1 permanent accuracy and -1 permanent strength. This injury is permanent. And can be recorded twice. Gain 1 bleeding token.'),
('Arm', '8', '', 'Spiral fracture', 'Your arm twists unnaturally. Gain -2 strength tokens. Skip the next hunt. Gain 1 bleeding token.'),
('Arm', '9', '', 'Dislocated shoulder', 'Pop! You cannot activate two-handed or paired weapons or use block until showdown ends. Gain 1 bleeding token.'),
('Arm', '10', '', 'Hit the dirt', 'The blow sends you sprawling and you are knocked down.'),
('', '', '', '', ''),
('Body', '1', '', 'Instant death', 'The blow sends a bone fragment directly into your heart, killing you instantly.'),
('Body', '2', '', 'Instant death', 'The blow sends a bone fragment directly into your heart, killing you instantly.'),
('Body', '3', '', 'Bleeding', 'Gain 2 bleeding tokens.'),
('Body', '4', 'X', 'Gaping chest wound', 'Suffer -1 permanent strength. This injury is permanent, and can be recorded multiple times. Gain 1 bleeding token.'),
('Body', '5', 'X', 'Destroyed back', 'A sharp cracking noise. Suffer -2 permanent movement. You can no longer activate any gear that has 2+ strength. This injury is permanent, and can be recorded once. Gain 1 bleeding token.'),
('Body', '6', '', 'Disemboweled', 'Your movement is reduced to 1 until the showdown ends. Gain 1 bleeding token. Skip the next hunt. If you suffer disemboweled during a showdown, at least one survivor must live to the end of that showdown to carry you back to the settlement. Otherwise, at the end of the showdown, you are lost. Dead.'),
('Body', '7', '', 'Ruptured spleen', 'A vicious body blow. Skip the next hunt. Gain 2 bleeding tokens'),
('Body', '8', 'X', 'Broken rib', 'It even hurts to breathe. Suffer -1 permanent speed. This injury is permanent, and can be recorded multiple times. Gain 1 bleeding token'),
('Body', '9', '', 'Collapsed lung', 'You can\'t catch a breathe. Gain -1 movement token. Gain 1 bleeding token.'),
('Body', '10', '', 'Bowled over', 'The blow sends you sprawling and you are knocked down.'),
('', '', '', '', ''),
('Waist', '1', '', 'Final breath', 'With your last gasp, you utter final words of bravery. Adjacent survivors gain +1 survival. You are dead.'),
('Waist', '2', '', 'Final breath', 'With your last gasp, you utter final words of bravery. Adjacent survivors gain +1 survival. You are dead.'),
('Waist', '3', '', 'Bleeding kidneys', 'Gain 2 bleeding tokens.'),
('Waist', '4', 'X', 'Intestinal prolapse', 'Your gut is gravely injured. You can no longer equip any gear on your waist, as it is too painful to wear. This injury is permanent, and can be recorded once. Gain 1 bleeding token.'),
('Waist', '5', 'X', 'Warped pelvis', 'Your pelvis is disfigured. Suffer -1 permanent luck. This injury is permanent, and can be recorded multiple times. Gain 1 bleeding token.'),
('Waist', '6', 'X', 'Destroyed genitals', 'You cannot be nominated for the Intimacy story event. This injury is permanent, and can be recorded once. Gaina a random disorder. You are knocked down. Gazing upwards, you wonder at the futility of your struggle. Gain +3 insanity. Gain 1 bleeding token.'),
('Waist', '7', 'X', 'Broken hip', 'Your hip is dislocated. You can no longer dodge. Suffer -1 permanent movement. This injury is permanent, and can be recorded once. Gain 1 bleeding token.'),
('Waist', '8', '', 'Slashed Back', 'Making sudden movements is excruciatingly painful. You cannot surge until showdown ends. Gain 1 bleeding token.'),
('Waist', '9', '', 'Bruised Tail-bone', 'The base of your spines is in agony. You cannot dash until showdown ends. You are knocked down. Gain 1 bleeding token.'),
('Waist', '10', '', 'Belly-up', 'The blow sends you sprawling and you are knocked down.'),
('', '', '', '', ''),
('Legs', '1', '', 'Blood Geyser', 'Blood shoots from your temoral artery at an alarming rate, killing you in seconds.'),
('Legs', '2', '', 'Bleeding', 'Gain 2 bleeding tokens.'),
('Legs', '3', '', 'Bleeding', 'Gain 2 bleeding tokens.'),
('Legs', '4', 'X', 'Dismembered Leg', 'Lose a leg. You suffer -2 permanent movement, and can no longer dash. This injury is permanent, and can be recorded twice. A survivor with two dismembered leg severe injuries has lost both of their legs and must retire at the end of the next showdown or settlement phase. Gain 1 bleeding token.'),
('Legs', '5', 'X', 'Hamstrung', 'A painful rip. The leg is unusable. You can no longer use any fighting arts or abilities. This injury is permanent, and can be recorded once. Gain 1 bleeding token.'),
('Legs', '6', '', 'Torn Achilles Tendon', 'Your leg cannot bear your weight. Until the end of the showdown, whenever you suffer light, heavy, or severe injury, you are also knocked down. Skip the next hunt. Gain 1 bleeding token.'),
('Legs', '7', '', 'Torn muscle', 'Your quadriceps is ripped to shreds. You cannot dash until the showdown ends. Skip the next hunt. Gain 1 bleeding token.'),
('Legs', '8', '', 'Broken Leg', 'An ear-shattering crunch. Suffer -1 permanent accuracy and -1 permanent strength. This injury is permanent. And can be recorded twice. Gain 1 bleeding token.'),
('Legs', '9', '', 'Bloody Thights', 'Gain 2 bleeding tokens.'),
('Legs', '10', '', 'Lost balance', 'The blow sends you sprawling and you are knocked down.'),
('', '', '', '', ''),
('Brain', '1', '', 'Mortal Terror', 'No ifs, ands, or buts, the survivor is dead.'),
('Brain', '2', '', 'Mortal Terror', 'No ifs, ands, or buts, the survivor is dead.'),
('Brain', '3', '', 'Memory loss', 'Lose 2 levels of weapon profiency.'),
('Brain', '4', '', 'Flee', 'You are knocked down and suffer knockback equal to your movement towards the closest board edge. Gain 1d5 insanity.'),
('Brain', '5', '', 'Danger seizure', 'You thrash about widly, deaaling 1 damage to yourself and every adjacent survivor. Gain a random disorder and 1d5 insanity.'),
('Brain', '6', '', 'Danger seizure', 'You thrash about widly, deaaling 1 damage to yourself and every adjacent survivor. Gain a random disorder and 1d5 insanity.'),
('Brain', '7', '', 'Lunacy', 'Gain a random disorder and 1d5 insanity.'),
('Brain', '8', '', 'Lunacy', 'Gain a random disorder and 1d5 insanity.'),
('Brain', '9', '', 'New perspective', 'You are knocked down and gain 1d10 insanity.'),
('Brain', '10', '', 'Frenzy', 'Gain 1d5 insanity, +1 speed token and +1 strength token. Ignore slow on melee weapons. You may not spend survival. You may not use fighting arts. You may not use weapon specialization or weapon mastery. Can be gain multiple times. Lasts until end of showdown.'),
('Brain', '11', '', 'Maniacal laughter', 'You are knocked down. Gain -1 speed token, the priority tarket token, and 1d5 insanity.'),
('Brain', '12', '', 'Clarity', 'You are knocked down. Add your current survival to insanity and reduce your survival to 0. Gain a random disorder. If you already have 3 disorders, you die.'),
('Brain', '13', '', 'Impossible!', 'How could this happen! Gain +1d10 survival, +1d10 insanity and +2 luck tokens!'),
('', '', '', '', ''),
('Worm Trauma', '1', '', '', 'A spray of blood and silver. Dead.'),
('Worm Trauma', '2', '', '', 'A spray of blood and silver. Dead.'),
('Worm Trauma', '3', '', '', 'A spray of blood and silver. Dead.'),
('Worm Trauma', '4', '', '', 'The worm\'s coil tightens sharply. Gain 2 bleeding tokens and -1 evasion token.'),
('Worm Trauma', '5', '', '', 'The worm\'s coil tightens sharply. Gain 2 bleeding tokens and -1 evasion token.'),
('Worm Trauma', '6', '', '', 'A dizzying blow. Gain 1 bleeding token and 1d5 insanity.'),
('Worm Trauma', '7', '', '', 'A dizzying blow. Gain 1 bleeding token and 1d5 insanity.'),
('Worm Trauma', '8', '', '', 'An inhuman voice screams in your bones. Gain 1 bleeding token and 1d5 insanity.'),
('Worm Trauma', '9', '', '', 'The pain is infuriating! Gain 1 bleeding token and +1 strength token.'),
('Worm Trauma', '10', '', '', 'Molten metal issues from your mouth. You are knocked down and gain 1 iron strange resource.'),
('bla', '20', '*', 'What', 'blabla'),
('Head', '1', '', 'Head explosion!', 'Your head erupts in a shower of gore, killing you instantly. All other survivors are so disturbed that they lose 1 survival'),
('Head', '2', '', 'Head explosion!', 'Your head erupts in a shower of gore, killing you instantly. All other survivors are so disturbed that they lose 1 survival'),
('Head', '3', '', 'Decapitation', 'You are dead'),
('Head', '4', '', 'Decapitation', 'You are dead'),
('Head', '5', 'X', 'Intracranial hemorrhage', 'You can no longer use or gain any survival. This injury is permanent, and can be recorded once. Gain 1 bleeding token.'),
('Head', '6', 'X', 'Deaf', 'You won\'t hear it coming. Suffer -1 permanent evasion. This injury is permanent, and can be recorded once. Gain 1 bleeding token.'),
('Head', '7', 'X', 'Blind', 'Lose an eye. Suffer -1 permanent accuracy. This injury is permanent, and can be recorded twice. A survivor with two blind severe injuries suffers -4 permanent accuracy and retires at the end of the next showdown or settlement phase, having lost all sight. Gain 1 bleeding token.'),
('Head', '8', '', 'Concussion', 'Your brain is scrambled like an egg. Gain a random disorder. Gain 1 bleeding token'),
('Head', '9', 'X', 'Shattered jaw', 'You drink your meat through a straw. You can no longer consume or be affected by events requiring you to consume. You can no longer encourage. This injury is permanent, and can be recorded once. Gain 1 bleeding token.'),
('Head', '10', '', 'Destroyed tooth', 'If you have 3+ courage, you boldy spit the tooth out and gain +2 insanity! Otherwise, the blowsends you sprawling and you are knocked down.'),
('', '', '', '', ''),
('Arm', '1', '', 'Die of shock', 'Your vision fades, along with the sight of your mangled, armless torso.'),
('Arm', '2', '', 'Die of shock', 'Your vision fades, along with the sight of your mangled, armless torso.'),
('Arm', '3', '', 'Bleeding', 'Gain 2 bleeding tokens.'),
('Arm', '4', 'X', 'Dismenbered Arm', 'Lose an arm. You can no longer activate two-handed weapons. This injury is permanent, and can be recorded twice. A survivor with two dismembered arm severe injuries cannot activate any weapons. Gain 1 bleeding token.'),
('Arm', '5', 'X', 'Ruptured muscle', 'A painful rip. The arm hangs limp. You can no longer activate fighting arts. This injury is permanent, and can be recorded once. Gain 1 bleeding token.'),
('Arm', '6', 'X', 'Contracture', 'The arm will never be the same. Suffer -1 permanent accuracy. This injury is permanent, and can be recorded multiple times. Gain 1 bleeding token.'),
('Arm', '7', 'X', 'Broken arm', 'An ear-shattering crunch. Suffer -1 permanent accuracy and -1 permanent strength. This injury is permanent. And can be recorded twice. Gain 1 bleeding token.'),
('Arm', '8', '', 'Spiral fracture', 'Your arm twists unnaturally. Gain -2 strength tokens. Skip the next hunt. Gain 1 bleeding token.'),
('Arm', '9', '', 'Dislocated shoulder', 'Pop! You cannot activate two-handed or paired weapons or use block until showdown ends. Gain 1 bleeding token.'),
('Arm', '10', '', 'Hit the dirt', 'The blow sends you sprawling and you are knocked down.'),
('', '', '', '', ''),
('Body', '1', '', 'Instant death', 'The blow sends a bone fragment directly into your heart, killing you instantly.'),
('Body', '2', '', 'Instant death', 'The blow sends a bone fragment directly into your heart, killing you instantly.'),
('Body', '3', '', 'Bleeding', 'Gain 2 bleeding tokens.'),
('Body', '4', 'X', 'Gaping chest wound', 'Suffer -1 permanent strength. This injury is permanent, and can be recorded multiple times. Gain 1 bleeding token.'),
('Body', '5', 'X', 'Destroyed back', 'A sharp cracking noise. Suffer -2 permanent movement. You can no longer activate any gear that has 2+ strength. This injury is permanent, and can be recorded once. Gain 1 bleeding token.'),
('Body', '6', '', 'Disemboweled', 'Your movement is reduced to 1 until the showdown ends. Gain 1 bleeding token. Skip the next hunt. If you suffer disemboweled during a showdown, at least one survivor must live to the end of that showdown to carry you back to the settlement. Otherwise, at the end of the showdown, you are lost. Dead.'),
('Body', '7', '', 'Ruptured spleen', 'A vicious body blow. Skip the next hunt. Gain 2 bleeding tokens'),
('Body', '8', 'X', 'Broken rib', 'It even hurts to breathe. Suffer -1 permanent speed. This injury is permanent, and can be recorded multiple times. Gain 1 bleeding token'),
('Body', '9', '', 'Collapsed lung', 'You can\'t catch a breathe. Gain -1 movement token. Gain 1 bleeding token.'),
('Body', '10', '', 'Bowled over', 'The blow sends you sprawling and you are knocked down.'),
('', '', '', '', ''),
('Waist', '1', '', 'Final breath', 'With your last gasp, you utter final words of bravery. Adjacent survivors gain +1 survival. You are dead.'),
('Waist', '2', '', 'Final breath', 'With your last gasp, you utter final words of bravery. Adjacent survivors gain +1 survival. You are dead.'),
('Waist', '3', '', 'Bleeding kidneys', 'Gain 2 bleeding tokens.'),
('Waist', '4', 'X', 'Intestinal prolapse', 'Your gut is gravely injured. You can no longer equip any gear on your waist, as it is too painful to wear. This injury is permanent, and can be recorded once. Gain 1 bleeding token.'),
('Waist', '5', 'X', 'Warped pelvis', 'Your pelvis is disfigured. Suffer -1 permanent luck. This injury is permanent, and can be recorded multiple times. Gain 1 bleeding token.'),
('Waist', '6', 'X', 'Destroyed genitals', 'You cannot be nominated for the Intimacy story event. This injury is permanent, and can be recorded once. Gaina a random disorder. You are knocked down. Gazing upwards, you wonder at the futility of your struggle. Gain +3 insanity. Gain 1 bleeding token.'),
('Waist', '7', 'X', 'Broken hip', 'Your hip is dislocated. You can no longer dodge. Suffer -1 permanent movement. This injury is permanent, and can be recorded once. Gain 1 bleeding token.'),
('Waist', '8', '', 'Slashed Back', 'Making sudden movements is excruciatingly painful. You cannot surge until showdown ends. Gain 1 bleeding token.'),
('Waist', '9', '', 'Bruised Tail-bone', 'The base of your spines is in agony. You cannot dash until showdown ends. You are knocked down. Gain 1 bleeding token.'),
('Waist', '10', '', 'Belly-up', 'The blow sends you sprawling and you are knocked down.'),
('', '', '', '', ''),
('Legs', '1', '', 'Blood Geyser', 'Blood shoots from your temoral artery at an alarming rate, killing you in seconds.'),
('Legs', '2', '', 'Bleeding', 'Gain 2 bleeding tokens.'),
('Legs', '3', '', 'Bleeding', 'Gain 2 bleeding tokens.'),
('Legs', '4', 'X', 'Dismembered Leg', 'Lose a leg. You suffer -2 permanent movement, and can no longer dash. This injury is permanent, and can be recorded twice. A survivor with two dismembered leg severe injuries has lost both of their legs and must retire at the end of the next showdown or settlement phase. Gain 1 bleeding token.'),
('Legs', '5', 'X', 'Hamstrung', 'A painful rip. The leg is unusable. You can no longer use any fighting arts or abilities. This injury is permanent, and can be recorded once. Gain 1 bleeding token.'),
('Legs', '6', '', 'Torn Achilles Tendon', 'Your leg cannot bear your weight. Until the end of the showdown, whenever you suffer light, heavy, or severe injury, you are also knocked down. Skip the next hunt. Gain 1 bleeding token.'),
('Legs', '7', '', 'Torn muscle', 'Your quadriceps is ripped to shreds. You cannot dash until the showdown ends. Skip the next hunt. Gain 1 bleeding token.'),
('Legs', '8', '', 'Broken Leg', 'An ear-shattering crunch. Suffer -1 permanent accuracy and -1 permanent strength. This injury is permanent. And can be recorded twice. Gain 1 bleeding token.'),
('Legs', '9', '', 'Bloody Thights', 'Gain 2 bleeding tokens.'),
('Legs', '10', '', 'Lost balance', 'The blow sends you sprawling and you are knocked down.'),
('', '', '', '', ''),
('Brain', '1', '', 'Mortal Terror', 'No ifs, ands, or buts, the survivor is dead.'),
('Brain', '2', '', 'Mortal Terror', 'No ifs, ands, or buts, the survivor is dead.'),
('Brain', '3', '', 'Memory loss', 'Lose 2 levels of weapon profiency.'),
('Brain', '4', '', 'Flee', 'You are knocked down and suffer knockback equal to your movement towards the closest board edge. Gain 1d5 insanity.'),
('Brain', '5', '', 'Danger seizure', 'You thrash about widly, deaaling 1 damage to yourself and every adjacent survivor. Gain a random disorder and 1d5 insanity.'),
('Brain', '6', '', 'Danger seizure', 'You thrash about widly, deaaling 1 damage to yourself and every adjacent survivor. Gain a random disorder and 1d5 insanity.'),
('Brain', '7', '', 'Lunacy', 'Gain a random disorder and 1d5 insanity.'),
('Brain', '8', '', 'Lunacy', 'Gain a random disorder and 1d5 insanity.'),
('Brain', '9', '', 'New perspective', 'You are knocked down and gain 1d10 insanity.'),
('Brain', '10', '', 'Frenzy', 'Gain 1d5 insanity, +1 speed token and +1 strength token. Ignore slow on melee weapons. You may not spend survival. You may not use fighting arts. You may not use weapon specialization or weapon mastery. Can be gain multiple times. Lasts until end of showdown.'),
('Brain', '11', '', 'Maniacal laughter', 'You are knocked down. Gain -1 speed token, the priority tarket token, and 1d5 insanity.'),
('Brain', '12', '', 'Clarity', 'You are knocked down. Add your current survival to insanity and reduce your survival to 0. Gain a random disorder. If you already have 3 disorders, you die.'),
('Brain', '13', '', 'Impossible!', 'How could this happen! Gain +1d10 survival, +1d10 insanity and +2 luck tokens!'),
('', '', '', '', ''),
('Worm Trauma', '1', '', '', 'A spray of blood and silver. Dead.'),
('Worm Trauma', '2', '', '', 'A spray of blood and silver. Dead.'),
('Worm Trauma', '3', '', '', 'A spray of blood and silver. Dead.'),
('Worm Trauma', '4', '', '', 'The worm\'s coil tightens sharply. Gain 2 bleeding tokens and -1 evasion token.'),
('Worm Trauma', '5', '', '', 'The worm\'s coil tightens sharply. Gain 2 bleeding tokens and -1 evasion token.'),
('Worm Trauma', '6', '', '', 'A dizzying blow. Gain 1 bleeding token and 1d5 insanity.'),
('Worm Trauma', '7', '', '', 'A dizzying blow. Gain 1 bleeding token and 1d5 insanity.'),
('Worm Trauma', '8', '', '', 'An inhuman voice screams in your bones. Gain 1 bleeding token and 1d5 insanity.'),
('Worm Trauma', '9', '', '', 'The pain is infuriating! Gain 1 bleeding token and +1 strength token.'),
('Worm Trauma', '10', '', '', 'Molten metal issues from your mouth. You are knocked down and gain 1 iron strange resource.'),
('bla', '20', '*', 'What', 'blabla');

-- --------------------------------------------------------

--
-- Structure de la table `severe_injury2`
--

CREATE TABLE `severe_injury2` (
  `Location` varchar(50) NOT NULL,
  `Number` int(11) NOT NULL,
  `Imparements` varchar(10) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `severe_injury2`
--

INSERT INTO `severe_injury2` (`Location`, `Number`, `Imparements`, `Name`, `Text`) VALUES
('Head', 1, '', 'Head Explosion', 'Your head erupts in a shower of gore, killing you instantly. All other survivors are so disturbed that they lose 1 survival\r\n'),
('Head', 2, '', 'Head Explosion', 'Your head erupts in a shower of gore, killing you instantly. All other survivors are so disturbed that they lose 1 survival\r\n'),
('Head', 1, '', 'Head Explosion', 'Your head erupts in a shower of gore, killing you instantly. All other survivors are so disturbed that they lose 1 survival\r\n'),
('Head', 2, '', 'Head Explosion', 'Your head erupts in a shower of gore, killing you instantly. All other survivors are so disturbed that they lose 1 survival\r\n'),
('Head', 1, '', 'Head Explosion', 'Your head erupts in a shower of gore, killing you instantly. All other survivors are so disturbed that they lose 1 survival\r\n'),
('Head', 2, '', 'Head Explosion', 'Your head erupts in a shower of gore, killing you instantly. All other survivors are so disturbed that they lose 1 survival\r\n');

-- --------------------------------------------------------

--
-- Structure de la table `sexe`
--

CREATE TABLE `sexe` (
  `ID_SURVIVOR` int(11) NOT NULL,
  `SEXE` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `sexe`
--

INSERT INTO `sexe` (`ID_SURVIVOR`, `SEXE`) VALUES
(1, 'F'),
(2, 'F'),
(3, 'F'),
(4, 'F'),
(5, 'F'),
(6, 'H'),
(7, 'H'),
(8, 'H'),
(9, 'H'),
(10, 'H'),
(11, 'H'),
(12, 'F'),
(13, 'H'),
(14, 'H'),
(15, 'F'),
(16, 'H'),
(17, 'F'),
(18, 'F'),
(1, 'F'),
(2, 'F'),
(3, 'F'),
(4, 'F'),
(5, 'F'),
(6, 'H'),
(7, 'H'),
(8, 'H'),
(9, 'H'),
(10, 'H'),
(11, 'H'),
(12, 'F'),
(13, 'H'),
(14, 'H'),
(15, 'F'),
(16, 'H'),
(17, 'F'),
(18, 'F'),
(1, 'F'),
(2, 'F'),
(3, 'F'),
(4, 'F'),
(5, 'F'),
(6, 'H'),
(7, 'H'),
(8, 'H'),
(9, 'H'),
(10, 'H'),
(11, 'H'),
(12, 'F'),
(13, 'H'),
(14, 'H'),
(15, 'F'),
(16, 'H'),
(17, 'F'),
(18, 'F');

-- --------------------------------------------------------

--
-- Structure de la table `survivol`
--

CREATE TABLE `survivol` (
  `ID_SURVIVOR` int(11) NOT NULL,
  `SURVIVOL` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `survivol`
--

INSERT INTO `survivol` (`ID_SURVIVOR`, `SURVIVOL`) VALUES
(1, 1),
(2, 6),
(3, 5),
(4, 2),
(5, 1),
(6, 4),
(7, 7),
(8, 1),
(9, 4),
(10, 5),
(11, 0),
(12, 1),
(13, 2),
(14, 4),
(15, 9),
(16, 4),
(17, 7),
(18, 5),
(1, 1),
(2, 6),
(3, 5),
(4, 2),
(5, 1),
(6, 4),
(7, 7),
(8, 1),
(9, 4),
(10, 5),
(11, 0),
(12, 1),
(13, 2),
(14, 4),
(15, 9),
(16, 4),
(17, 7),
(18, 5),
(1, 1),
(2, 6),
(3, 5),
(4, 2),
(5, 1),
(6, 4),
(7, 7),
(8, 1),
(9, 4),
(10, 5),
(11, 0),
(12, 1),
(13, 2),
(14, 4),
(15, 9),
(16, 4),
(17, 7),
(18, 5);

-- --------------------------------------------------------

--
-- Structure de la table `survivors`
--

CREATE TABLE `survivors` (
  `ID_SURVIVOR` int(11) NOT NULL,
  `NAME_SURVIVORS` varchar(50) NOT NULL,
  `SETTLEMENT_ID` int(11) NOT NULL,
  `SURNAME_SURVIVORS` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `survivors`
--

INSERT INTO `survivors` (`ID_SURVIVOR`, `NAME_SURVIVORS`, `SETTLEMENT_ID`, `SURNAME_SURVIVORS`) VALUES
(1, 'Alpha1', 1, 'Mega'),
(2, 'Faith', 1, 'Donald'),
(3, 'Boogie', 1, 'Mega'),
(4, 'Plex', 1, 'Cyrus'),
(5, 'Dave', 2, 'Mitourus'),
(6, 'Steven', 2, 'Mitourus'),
(7, 'Bob', 2, 'Migga'),
(8, 'Kevin', 2, 'Mega'),
(9, 'Stuart', 2, 'Migga'),
(10, 'Carl', 2, 'Donald'),
(13, 'Khazra', 3, 'Mitourus'),
(14, 'Sylvari', 3, 'Done'),
(15, 'Asura', 3, 'Donald'),
(16, 'Sylph', 3, 'Done'),
(17, 'Undine', 3, 'Mitourus'),
(18, 'Ifrit', 4, 'Cyrus');

-- --------------------------------------------------------

--
-- Structure de la table `understanding`
--

CREATE TABLE `understanding` (
  `id` int(11) NOT NULL,
  `ID_SURVIVOR` int(11) NOT NULL,
  `Understanding` int(11) NOT NULL,
  `OPTION_UNDERSTANDING` int(11) NOT NULL,
  `OTHER` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `understanding`
--

INSERT INTO `understanding` (`id`, `ID_SURVIVOR`, `Understanding`, `OPTION_UNDERSTANDING`, `OTHER`) VALUES
(1, 1, 4, 1, 'Something something something'),
(2, 2, 0, 0, ''),
(3, 3, 0, 0, ''),
(4, 4, 1, 0, ''),
(5, 5, 2, 0, ''),
(6, 6, 4, 2, ''),
(7, 7, 2, 0, ''),
(8, 8, 4, 2, ''),
(9, 9, 6, 3, ''),
(10, 10, 9, 2, ''),
(11, 11, 6, 1, ''),
(12, 12, 8, 2, ''),
(13, 13, 4, 3, ''),
(14, 14, 4, 1, ''),
(15, 15, 2, 0, ''),
(16, 16, 3, 1, ''),
(17, 17, 1, 0, ''),
(18, 18, 2, 0, '');

-- --------------------------------------------------------

--
-- Structure de la table `weapon`
--

CREATE TABLE `weapon` (
  `WEAPON_NAME` varchar(50) NOT NULL,
  `W_EXPENTION` int(11) NOT NULL,
  `ID_SURVIVOR` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `weapon`
--

INSERT INTO `weapon` (`WEAPON_NAME`, `W_EXPENTION`, `ID_SURVIVOR`) VALUES
('Twilight sword', 1, 9),
('Hammer', 4, 14),
('Scrap Dagger', 1, 2),
('Lion beast Katar', 3, 17),
('Zanbato', 2, 0),
('test1', 2, 9),
('test1', 2, 9);

-- --------------------------------------------------------

--
-- Structure de la table `w_proficiency`
--

CREATE TABLE `w_proficiency` (
  `id` int(11) NOT NULL,
  `ID_SURVIVOR` int(11) NOT NULL,
  `PROFICIENCY` int(11) NOT NULL,
  `TYPE` int(11) NOT NULL,
  `EXPENTION` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `w_proficiency`
--

INSERT INTO `w_proficiency` (`id`, `ID_SURVIVOR`, `PROFICIENCY`, `TYPE`, `EXPENTION`) VALUES
(1, 1, 6, 2, 2),
(2, 2, 5, 4, 1),
(3, 3, 7, 1, 3),
(4, 4, 3, 3, 1),
(5, 5, 9, 5, 4),
(6, 6, 5, 4, 1),
(7, 7, 7, 5, 2),
(8, 8, 3, 1, 3),
(9, 9, 0, 0, 1),
(10, 10, 5, 5, 2),
(11, 11, 8, 3, 1),
(12, 12, 7, 2, 1),
(13, 13, 1, 0, 1),
(14, 14, 5, 4, 2),
(15, 15, 7, 2, 3),
(16, 16, 4, 3, 4),
(17, 17, 6, 1, 1),
(18, 18, 2, 3, 1);

-- --------------------------------------------------------

--
-- Structure de la table `years`
--

CREATE TABLE `years` (
  `SETTLEMENT_ID` int(11) NOT NULL,
  `YEARS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `years`
--

INSERT INTO `years` (`SETTLEMENT_ID`, `YEARS`) VALUES
(1, 4),
(2, 6),
(3, 2),
(4, 7);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `courage`
--
ALTER TABLE `courage`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `settlement`
--
ALTER TABLE `settlement`
  ADD PRIMARY KEY (`ID_SETTELMENT`);

--
-- Index pour la table `survivors`
--
ALTER TABLE `survivors`
  ADD PRIMARY KEY (`ID_SURVIVOR`);

--
-- Index pour la table `understanding`
--
ALTER TABLE `understanding`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `w_proficiency`
--
ALTER TABLE `w_proficiency`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `courage`
--
ALTER TABLE `courage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT pour la table `settlement`
--
ALTER TABLE `settlement`
  MODIFY `ID_SETTELMENT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `survivors`
--
ALTER TABLE `survivors`
  MODIFY `ID_SURVIVOR` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT pour la table `understanding`
--
ALTER TABLE `understanding`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT pour la table `w_proficiency`
--
ALTER TABLE `w_proficiency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
