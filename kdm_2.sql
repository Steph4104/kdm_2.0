-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Ven 29 Décembre 2017 à 02:00
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
  `ID` int(2) DEFAULT NULL,
  `Nom` varchar(21) DEFAULT NULL,
  `Flavour` varchar(189) DEFAULT NULL,
  `Rules` varchar(174) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `disorder`
--

INSERT INTO `disorder` (`ID`, `Nom`, `Flavour`, `Rules`) VALUES
(1, 'Absent Seizures', 'No one knows where your mind goes when you\'re gone, not even you.', 'The first time you would suffer a brain trauma each showdown, you are instead knocked down and forget a fighting art (erase it)'),
(2, 'Aichmophobia', 'Sharp things make you uncomfortable. It\'s just a matter of time before someone cuts themselves.', 'You cannot activate or depart with axes, swords, spears, daggers, scythes, or katars in your gear grid.'),
(3, 'Anxiety', 'You are afraid of being afraid. You\'re a nervous wreck, and monsters can smell this in your scent.', 'At the start of each showdown, gain the priority tarket token unless you have a stinky gear in your gear grid.'),
(4, 'Apathetic', 'You\'ve given up. Nothing seems to matter. You have no concern for your own wellbeing.', 'You cannot use or gain survival. You cannot gain courage.   Cure this disorder if you have 8+ understanding.'),
(5, 'Arithmophilia', 'You love numbers. Your life must exist in perfect arithmetical harmony.', 'When you gain this disorder, roll 1d5. Your movement is that number.  Ignore all other movement modifiers.'),
(6, 'Binge Eating Disorder', 'Eating is the only thing that helps you escape your miserable life.', 'You cannot depart unless you have consumable gear in your gear grid.  You must consume if a choice to consume arises.'),
(7, 'Coprolalia', 'You have compulsive tics in the form of sporadic muttering, cursing, whimpering, and screaming.', 'All your gear is noisy. You are always a threat unless you are knocked down, even if an effect says otherwise.'),
(8, 'Delicious', 'Predators of all shapes and sizes find your scent irresistible.', 'You are still considered a threat when you are knocked down (unless you use an effect that says otherwise).'),
(9, 'Destined', 'You have a grand destiny that you must fulfill.', 'If you do not depart, lose all survival and insanity.'),
(10, 'Emotionless', 'You don\'t have any emotions. You\'ve hidden this from everyone by mimicking their social interactions.', 'You cannot gain +1 strength tokens.'),
(11, 'Enfeebled', 'You are a delicate flower, wilting in the darkness.', 'It takes one less bleeding token to kill you.'),
(12, 'Fear of the Dark', 'You cannot bear the oppressive darkness any longer', 'You retire   If you gain this disorder during a hunt or showdown, you put on a brave face until you return to the settlement, vowing never to leave the Lantern Hoard again.'),
(13, 'Flower Addiction', 'An insatiable hunger has bloomed in you, delicate and sickeningly sweet.', 'You may only depart to hunt the Flower Knight.  After you depart, cure this disorder.'),
(14, 'Ghostly Beauty', 'You cannot experience fear if you do not exist', 'Double all insanity you gain.   Double all survival you spend.'),
(15, 'Hemophobia', 'The mere sight of blood makes you lightheaded, and serious gore can knock you out!', 'During the showdown, whenever a survivor (including you) gains a bleeding token, you are knock down.'),
(16, 'Hoarder', 'You compulsively collect and stash anything you can get your hands on. Every little bit you add to your secret hoard makes your existence feel more real.', 'Whenever you are a returning survivor, archive 1 ressource gained from the last showdown and gain +1 courage.'),
(17, 'Honorable', 'You believe in honor and fairness when conducting yourself on the battlefield. It is these strong principles that have kept you alive, and you will not abandon them under any circumstances.', 'You cannot attack a monster from its blind spot or if it is knocked down.'),
(18, 'Hyper-Sensitivity', 'Your will to survive has become indefatigable.', 'You may dodge one additional time per round.  Whenever you are hit by an attack, you must dodge at least once, if possible.'),
(19, 'Hyperactive', 'Whether you are running, fiddling with your gear, or pacing, you are always moving.', 'During the showdown, you must move at least 1 space every round.'),
(20, 'Immortal', 'You are immortal! You will live forever and cannot be killed.', 'While you are insane, convert all damage dealt to your hit locations to brain damage.  You are so busy reveling in your own glory that you cannot spend survival while insane.'),
(21, 'Indecision', 'Past decisions haunt you ceaselessly. You are crippled by indecision, and even the most trivial choices grip you with terror.', 'If you are the event revealer of hunt events that call on you to make a roll, roll twice and use the lower result.'),
(22, 'Megalophobia', 'Even large, looming shadows make you jumpy.', 'You may not depart for hunts or showdowns with monsters that occupy more than 4 spaces on the showndown board.'),
(23, 'Monster Panic', 'Monsters make you feel bad. Really, really bad.', 'Whenever you suffer brain damage from an Intimidate action, suffer 1 additional brain damage.'),
(24, 'Motion Sickness', 'Moving quickly makes you vomit.', 'Whenever you suffer knockback, gain 1 bleeding token.'),
(25, 'Narcissistic', 'There is nothing in the world more beautiful than yourself', 'You may not wear armor at the head location. If you are wearing armor at the haed location when you gain this disorder, archive it.'),
(26, 'Overprotective', 'You love the feeling of being needed.', 'When an adjacent survivor is knocked down, you are also knocked down as you rush to their aid.'),
(27, 'Perfomance Anxiety', 'You\'re not ready to love', 'You cannot be nominated for Intimacy   Cure this disorder if you have 8+ courage'),
(28, 'Post-Traumatic Stress', 'The last hunt was harrowing. All you can do is cower and relive the trauma. Only time can heal your wounds.', 'Next settlement phase, you do not contribute or participate in any endeavors. Skip the next hunt to recover.'),
(29, 'Prey', 'You are prey. All there is for you is death.', 'You may not spend survival unless you are insane.'),
(30, 'Prima Donna', 'The double-edged sword of fame is the only weapon you require.', 'Each survivor turn, you must take your act first (roll off each turn if multiple survivors have this disorder).'),
(31, 'Quixotic', 'You carry the weight of your settlement on your shoulders. Everyone is counting on you to save them, and you will rise to the challenge.', 'If you are insane when you depart, gain +1 survival and +1 strengh token.'),
(32, 'Rageholic', 'Your rage boils out of control, causing you to see red at the slightest provocation.', 'Whenever you suffer a sever injury, also the frenzy brain trauma.'),
(33, 'Secretive', 'You love secrets. So much, in fact, that you pretend to have many.', 'When you are a returning survivor, you quickly become preoccupied with your own affair. You must skip the next hunt to deal with them.'),
(34, 'Seizures', 'Lingering damage from your head injuries has caused you to experience periods of uncontrollable shaking and absence of thought', 'During the showdown, whenever you suffer damage to your head location, you are knocked down'),
(35, 'Shallow Lungs', 'Yelling makes you feel light-headed', 'When you encourage, you are knocked down'),
(36, 'Spiral Ganglia', 'The roads in your mind cross and reveal a strange new path.', 'At the start of the showdown, gain the (Slendermen) Darkness Awareness survivor status card.'),
(37, 'Squeamish', 'You can\'t handle bad smells', 'You cannot depart with any stinky gear in your gear grid. If a status or effect would cause you to become stinky, lose all your survival.'),
(38, 'Stage Fright', 'You hate being the center of attention.', 'Whenever you become doomed or gain the priority token token, lose 1 survival.'),
(39, 'Stark Raving', 'Freedom awaits those pushed this far beyond the breaking point.', 'You are always insane, regardless of your insanity.'),
(40, 'Sun-Drunk', 'When your emotions rise, you can only think of violence.', 'When you have any +1 strengh tokens, you cannot dash, dodge or Run Away'),
(41, 'Superstitious', 'Evil magic will be your undoing. You do not believe in abusing the others', 'You cannot activate or depart with other gear in your gear grid'),
(42, 'Traumatized', 'Your experiences have left you shaken and paralyzed by fear.', 'Whenever you end your act adjacent to a monster, you are knocked down.'),
(43, 'Tunnel Vision', 'If you\'re not killing something, you\'re wasting your time.', 'When you spend ACTIVATION, you may only activate weapons.'),
(44, 'Unlucky', 'Your mother always said you were born under a bad sign.', 'You cannot critically wound.'),
(45, 'Vermin Obsession', 'You love insects', 'While there is a Bug Spot terrain tile on the showdown board, you are so overwhelmed that you are doomed.'),
(46, 'Vestiphobia', 'Even the lightest armor rubs harshly against your skin and constricts your ability to move.', 'You cannot wear armor at the body location. If you are wearing armor at the body location when you gain this disorder, archive it as you tear it off your person!'),
(47, 'Weak Spot', 'You have an imaginary infirmity', 'When you gain this disorder, roll a random hit location and record it. You cannot depart unless you have armor at this hit location.');

-- --------------------------------------------------------

--
-- Structure de la table `disorder_test`
--

CREATE TABLE `disorder_test` (
  `DISORDER_NAME` varchar(50) NOT NULL,
  `EXPENTION` int(11) NOT NULL,
  `ID_SURVIVOR` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `disorder_test`
--

INSERT INTO `disorder_test` (`DISORDER_NAME`, `EXPENTION`, `ID_SURVIVOR`) VALUES
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
-- Structure de la table `fighting_art`
--

CREATE TABLE `fighting_art` (
  `ID` int(2) DEFAULT NULL,
  `Nom` varchar(21) DEFAULT NULL,
  `Rules` varchar(307) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `fighting_art`
--

INSERT INTO `fighting_art` (`ID`, `Nom`, `Rules`) VALUES
(1, 'Abyssal Sadist', 'The first time you wound the monster each attack, gain +1 survival and +1 insanity.   Ignore the effects of the Fear of the Dark and Prey disorders.'),
(2, 'Acrobatics', 'When you are adjacent to the monster, you may spend MOVEMENT to place your survivor on any other space adjacent to the monster.'),
(3, 'Ambidextrous', 'All melee weapons in your gear grid gain paired.   Ambidextrous cannot be used if there are any shields, two-handed, or heavy gear in your gear grid.'),
(4, 'Berseker', 'Once per showdown,you may spend ACTIVATION to suffer bash and the frenzy brain trauma.'),
(5, 'Blotted Out', 'When you suffer a brain trauma, gain a bleeding token'),
(6, 'Burning Ambition', 'When you are instructed to Skip the Next Hunt, ignore it.   The "Skip Next Hunt" box on your survivor record sheet cannot be filled in.'),
(7, 'Burning Focus', 'If you have 0 survival at the start of your act, gain 1 survival.'),
(8, 'Carapace of Will', 'At the start of the showdown, gain the (Dung Beetle Knight) Steadfast survivor status card.   When you are attacked, if you have 2+ steadfast tokens, ignore a hit and remove all your steadfast tokens.'),
(9, 'Champion\'s Rite', 'Before making an attack, you may add your understanding to your accuracy attribute for that attack. Limit, once per showdown.'),
(10, 'Clutch Fighter', 'While you have 3 or more blood tokens, gain +1 strength and +1 accuracy.'),
(11, 'Combo Master', 'On a perfect hit, make 1 additional attack roll.'),
(12, 'Crazed', 'On a Perfect hit, gain +1 insanity.'),
(13, 'Crossarm Block', 'Whenever you are hit, after hit locations are rolled, you may change 1 result to the arms hit location.'),
(14, 'Defender', 'When a survivor adjacent to you is knocked down, you may spend 1 survival. If you do, they stand and gain +1 survival from your words of encouragement.   You cannot use this if you have a broken jaw.'),
(15, 'Double Dash', 'During your act, once per round, you may spend ACTIVITION to gain MOVEMENT.'),
(16, 'Extra Sense', 'You may dodge 1 additional time per round'),
(17, 'Fated Blow', 'Once per showdown, you may give your next wound attempt +2 strength and Devasting 1.'),
(18, 'Headliner', 'When you become doomed or gain the priority target token, you may choose to gain +1 survival or +1 strength token.'),
(19, 'Heroic', 'Once per showdown, if you are standing adjacent to the monster and have 3+ survival, you may spend all of your survival for one automatic hit that inflicts a critical wound.'),
(20, 'Last Man Standing', 'While you are the only survivor on the showdown board, you may not gain bleeding tokens or be knocked down.'),
(21, 'Leader', 'Whenever you encourage a survivor, they gain +1 speed token until the end of the round.'),
(22, 'Lure Epilepsy', 'Once per showdown, you may spend ACTIVATION to give yourself a seizure. You suffer a random brain trauma and are knocked down.'),
(23, 'Mammoth Hunting', 'Gain +1 strength when attacking from adjacent spaces outside the monster\'s facing and blind spot.'),
(24, 'Mighty Strike', 'On a perfect hit, gain +2 strength until the end of the attack.'),
(25, 'Monster Claw Style', 'Your Fist & Tooth attacks gain +1 accuracy, +1 strength and savage.'),
(26, 'Orator of Death', 'Once per showdown, you may spend ACTIVATION to have all non-deaf survivors gain +2 insanity.   When you die, you encourage all survivors with your last words.'),
(27, 'Otherworldly Luck', 'During the hunt and settlement phase, whenever you roll on a table, you may add +1 to the roll result. This may not exceed the highest possible result of that table.   (This includes Hunt Events, Story Events, Endeavors, Settlement Events, etc.)'),
(28, 'Phantom Friend', 'The first time you gain a ressource during a showdown, you may feed it to your phantom friend. If you do, archive the ressource and gain +1 evasion token.   Lose this token if you are deaf or become deaf during the showdown.'),
(29, 'Propulsion Drive', 'At the start of a showdown, gain the (Dung beetle Knight) Momentum survivor status card.   When you attack, if you have 5+ momentum tokens, remove them all and roll 1d10. Gain that amount of luck and strength when attempting to wound the first selected hit location for this attack.'),
(30, 'Purpose', 'Your comrades make you strong to exceed the limits of death itself.   During the showdown, if you would gain a lethal number of bleeding tokens while there are any other standing survivors, roll 1d10. On a 6+, you live but are knocked down. You will not bleed to death until you gain another bleeding token.'),
(31, 'Rhythm Chaser', 'Gain +1 evasion token the first time you critically during a showdown.   Rhythm Chaser cannot be used if ther are any shields or heavy gear in your grid.'),
(32, 'Ruthless', 'Whenever a survivor dies during the showdown, roll 1d10. On a 7+, gain a Skull basic resource.'),
(33, 'Seasoned Hunter', 'Whenever a random hunt event result is : 11, 22, 33, 44, 55, 66, 77, 88, 99 or 100, the event revealer gains +1 understanding and +1 courage.'),
(34, 'Sneak Attack', 'When you attack a monster from its blind spot, gain +4 strength for that attack.'),
(35, 'Strategist', 'During the showdown setup, after placing terrain, you may add a Giant Stone Face or a Toppled Pillar terrain card to the showdown board.'),
(36, 'Tenacious', 'When your wound attempt on a hit location is a failure, you may put that hit location back on top of the deck instead of in the discard pile.   Limir once per round.'),
(37, 'Thrill Seeker', 'Whenever you gain survival during the showdown phase, gain 1 additional survival.'),
(38, 'Timeless Eye', 'Your attack roll is a perfect hit on a result of 9 or 10   You cannot use Timeless Eye if you have the blind severe head injury.'),
(39, 'Tough', 'When rolling on a severe injury table, unless you roll a 1, add +1 to the result.   (This does not include brain trauma. The result total cannot exceed 10.)'),
(40, 'Trailblazer', 'The hunting party may start the hunt phase 1 space closer to the monster.   At the start of the showdown, all survivors gain +1 survival and up to +1 insanity.'),
(41, 'Transcended Masochist', 'When you gain a bleeding token, gain +1 survival and +1 insanity.   Ignore the effects of the Aichmophobia and Apathetic disorders.'),
(42, 'Trick Attack', 'Once per showdown, when you wound a monster from its blind spot, a survivor adjacent to you may gain the priority target token.'),
(43, 'Tumble', 'When something would collide with you, roll 1d10. On a result of 6+, you successfully tumble out of harm\'s way. Instead, place your survivor standing on the closest free space outside of the collision path.'),
(44, 'Unbreakable', 'Once per lantern year, you may ignore one of your severe injury roll results. If you do, gain a random disorder.'),
(45, 'Unconscious Fighter', 'It takes 7 bleeding tokens to kill you.'),
(46, 'Unrelenting', 'If all of your attack rolls in an attack miss, you may spend 1 survival to re-roll all attack rolls.'),
(47, 'Wardrobe Expert', 'When you suffer a severe injury at a hit location, you may archive a gear worn at that location to ignore it and gain +1 survival.');

-- --------------------------------------------------------

--
-- Structure de la table `fighting_disroder`
--

CREATE TABLE `fighting_disroder` (
  `ID_SURVIVOR` int(11) NOT NULL,
  `ID_FIGHTINGS` int(11) NOT NULL,
  `ID_DISORDER` int(11) NOT NULL,
  `NUM_FIGHTING` int(11) NOT NULL,
  `NUM_DISORDER` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `fighting_disroder`
--

INSERT INTO `fighting_disroder` (`ID_SURVIVOR`, `ID_FIGHTINGS`, `ID_DISORDER`, `NUM_FIGHTING`, `NUM_DISORDER`) VALUES
(1, 12, 35, 1, 2),
(1, 44, 1, 2, 1);

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
