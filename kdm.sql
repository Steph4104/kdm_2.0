-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Mar 08 Mai 2018 à 02:20
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `kdm`
--

-- --------------------------------------------------------

--
-- Structure de la table `ability_impairements`
--

CREATE TABLE `ability_impairements` (
  `ID_SURVIVOR` int(11) NOT NULL,
  `ABILITIES` text NOT NULL,
  `IMPAIREMENTS` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `action`
--

CREATE TABLE `action` (
  `ID_SURVIVOR` int(11) NOT NULL,
  `DODGE` int(11) NOT NULL,
  `DASH` int(11) NOT NULL,
  `ENCOURAGE` int(11) NOT NULL,
  `SURGE` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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

-- --------------------------------------------------------

--
-- Structure de la table `bleed`
--

CREATE TABLE `bleed` (
  `ID_SURVIVOR` int(11) NOT NULL,
  `BLEED` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `born`
--

CREATE TABLE `born` (
  `ID_SURVIVOR` int(11) NOT NULL,
  `YEARS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `courage`
--

CREATE TABLE `courage` (
  `id` int(11) NOT NULL,
  `ID_SURVIVOR` int(11) NOT NULL,
  `COURAGE` int(11) NOT NULL DEFAULT '0',
  `OPTION_COURAGE` int(11) NOT NULL DEFAULT '0',
  `OTHER` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `dead`
--

CREATE TABLE `dead` (
  `ID_SURVIVOR` int(11) NOT NULL,
  `DEAD` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `disorder`
--

CREATE TABLE `disorder` (
  `ID` int(11) NOT NULL,
  `Nom` varchar(21) DEFAULT NULL,
  `Flavour` varchar(189) DEFAULT NULL,
  `Rules` varchar(173) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `disorder`
--

INSERT INTO `disorder` (`ID`, `Nom`, `Flavour`, `Rules`) VALUES
(1, 'Absent Seizures', 'No one knows where your mind goes when you\'re gone, not even you.', 'The first time you would suffer a brain trauma each showdown, you are instead knocked down and forget a fighting art (erase it)'),
(2, 'Aichmophobia', 'Sharp things make you uncomfortable. It\'s just a matter of time before someone cuts themselves.', 'You cannot activate or depart with axes, swords, spears, daggers, scythes, or katars in your gear grid.'),
(3, 'Anxiety', 'You are afraid of being afraid. You\'re a nervous wreck, and monsters can smell this in your scent.', 'At the start of each showdown, gain the priority tarket token unless you have a stinky gear in your gear grid.'),
(4, 'Apathetic', 'You\'ve given up. Nothing seems to matter. You have no concern for your own wellbeing.', 'You cannot use or gain survival. You cannot gain courage. Cure this disorder if you have 8+ understanding.'),
(5, 'Arithmophilia', 'You love numbers. Your life must exist in perfect arithmetical harmony.', 'When you gain this disorder, roll 1d5. Your movement is that number. Ignore all other movement modifiers.'),
(6, 'Binge Eating Disorder', 'Eating is the only thing that helps you escape your miserable life.', 'You cannot depart unless you have consumableYou must consume if a choice to consume arises.You must consume if a choice to consume arises.'),
(7, 'Coprolalia', 'You have compulsive tics in the form of sporadic muttering, cursing, whimpering, and screaming.', 'All your gear is noisy. You are always a threat unless you are knocked down, even if an effect says otherwise.'),
(8, 'Delicious', 'Predators of all shapes and sizes find your scent irresistible.', 'You are still considered a threat when you are knocked down (unless you use an effect that says otherwise).'),
(9, 'Destined', 'You have a grand destiny that you must fulfill.', 'If you do not depart, lose all survival and insanity.'),
(10, 'Emotionless', 'You don\'t have any emotions. You\'ve hidden this from everyone by mimicking their social interactions.', 'You cannot gain +1 strength tokens.'),
(11, 'Enfeebled', 'You are a delicate flower, wilting in the darkness.', 'It takes one less bleeding token to kill you.'),
(12, 'Fear of the Dark', 'You cannot bear the oppressive darkness any longer', 'You retire If you gain this disorder during a hunt or showdown, you put on a brave face until you return to the settlement, vowing never to leave the Lantern Hoard again.'),
(13, 'Flower Addiction', 'An insatiable hunger has bloomed in you, delicate and sickeningly sweet.', 'You may only departAfter you After you depart, cure this disorder.'),
(14, 'Ghostly Beauty', 'You cannot experience fear if you do not exist', 'Double all insanity you gain. Double all survival you spend.'),
(15, 'Hemophobia', 'The mere sight of blood makes you lightheaded, and serious gore can knock you out!', 'During the showdown, whenever a survivor (including you) gains a bleeding token, you are knock down.'),
(16, 'Hoarder', 'You compulsively collect and stash anything you can get your hands on. Every little bit you add to your secret hoard makes your existence feel more real.', 'Whenever you are a returning survivor, archive 1 ressource gained from the last showdown and gain +1 courage.'),
(17, 'Honorable', 'You believe in honor and fairness when conducting yourself on the battlefield. It is these strong principles that have kept you alive, and you will not abandon them under any circumstances.', 'You cannot attack a monster from its blind spot or if it is knocked down.'),
(18, 'Hyper-Sensitivity', 'Your will to survive has become indefatigable.', 'You may dodgeWhenever you are hit by an attack, you must Whenever you are hit by an attack, you must dodge at least once, if possible.'),
(19, 'Hyperactive', 'Whether you are running, fiddling with your gear, or pacing, you are always moving.', 'During the showdown, you must move at least 1 space every round.'),
(20, 'Immortal', 'You are immortal! You will live forever and cannot be killed.', 'While you are insane, convert all damage dealt to your hit locations to brain damage. You are so busy reveling in your own glory that you cannot spend survival while insane.'),
(21, 'Indecision', 'Past decisions haunt you ceaselessly. You are crippled by indecision, and even the most trivial choices grip you with terror.', 'If you are the event revealer of hunt events that call on you to make a roll, roll twice and use the lower result.'),
(22, 'Megalophobia', 'Even large, looming shadows make you jumpy.', 'You may not depart for hunts or showdowns with monsters that occupy more than 4 spaces on the showndown board.'),
(23, 'Monster Panic', 'Monsters make you feel bad. Really, really bad.', 'Whenever you suffer brain damage from an Intimidate action, suffer 1 additional brain damage.'),
(24, 'Motion Sickness', 'Moving quickly makes you vomit.', 'Whenever you suffer knockback, gain 1 bleeding token.'),
(25, 'Narcissistic', 'There is nothing in the world more beautiful than yourself', 'You may not wear armor at the head location. If you are wearing armor at the haed location when you gain this disorder, archive it.'),
(26, 'Overprotective', 'You love the feeling of being needed.', 'When an adjacent survivor is knocked down, you are also knocked down as you rush to their aid.'),
(27, 'Perfomance Anxiety', 'You\'re not ready to love', 'You cannot be nominated for Intimacy Cure this disorder if you have 8+ courage'),
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
(47, 'Weak Spot', 'You have an imaginary infirmity', 'When you gain this disorder, roll a random hit location and record it. You cannot depart unless you have armor at this hit location.'),
(0, 'SELECT ONE', NULL, NULL);

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
(47, 'Wardrobe Expert', 'When you suffer a severe injury at a hit location, you may archive a gear worn at that location to ignore it and gain +1 survival.'),
(0, 'SELECT ONE', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `fighting_disroder`
--

CREATE TABLE `fighting_disroder` (
  `id` int(11) NOT NULL,
  `ID_SURVIVOR` int(11) NOT NULL,
  `TYPE` varchar(30) NOT NULL,
  `ID_ACTION` int(11) NOT NULL,
  `POSITION` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `hunt_xp`
--

CREATE TABLE `hunt_xp` (
  `ID_SURVIVOR` int(11) NOT NULL,
  `XP` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

-- --------------------------------------------------------

--
-- Structure de la table `insanity`
--

CREATE TABLE `insanity` (
  `id` int(11) NOT NULL,
  `ID_SURVIVOR` int(11) NOT NULL,
  `INSANITY` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `other`
--

CREATE TABLE `other` (
  `ID_SURVIVOR` int(11) NOT NULL,
  `OTHER` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `primary_stat`
--

CREATE TABLE `primary_stat` (
  `ID_SURVIVOR` int(11) NOT NULL,
  `MOVEMENT` int(11) NOT NULL DEFAULT '0',
  `ACCURACY` int(11) NOT NULL DEFAULT '0',
  `STRENGTH` int(11) NOT NULL DEFAULT '0',
  `EVASION` int(11) NOT NULL DEFAULT '0',
  `LUCK` int(11) NOT NULL DEFAULT '0',
  `SPEED` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `secret_fighting_art`
--

CREATE TABLE `secret_fighting_art` (
  `id` int(11) NOT NULL,
  `Nom` text NOT NULL,
  `Rules` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `secret_fighting_art`
--

INSERT INTO `secret_fighting_art` (`id`, `Nom`, `Rules`) VALUES
(1, 'Nom', 'Rules'),
(2, 'Acanthus Doctor', 'You may wear up to 3 Satchel gear cards.   When you depart, if you are not wearing any armor, for each (Green Affinity) you have, gain +1 strength token and add 1 to all hit locations.'),
(3, 'Ageless Apprentice', 'When you gain Hunt XP, you may decide not to gain it.   When you depart, you may rotate up to 3 gear cards in your gear grid. This changes the locations of their affinities and arrows. Otherwise, the gear functions normally.'),
(4, 'Altered Destiny', 'If you would gain a negative attribute token, gain a positive attribute token of that type instead.'),
(5, 'Beetle Strength', 'Once per showdown, you may spend (ACTIVATION) to shove an adjacent obstacle terrain. If you do, move the terrain directly away from you in a straight line until it encounters a board edge or another obstacle terrain. Any monsters the terrain passes over suffer a wound, and any survivors it collides with suffer knockback 7.   The display of strength is so exhausting it ages you. You are knocked down and gain +1 Hunt XP.'),
(6, 'Clarity of Darkness', 'At the start of the showdown, gain the (Slendermen) Path of Gloom survivor status card.   There is a deadly, otherworldly presence about you. Other survivors cannot voluntarily end their movement adjacent to you.'),
(7, 'Courtly Screenwriter', 'At the start of the showdown, secretly write down on a scrap of paper which survivors will live and who will deal the killing blow. During the aftermath, if your predictions were correct, raise the settlement\'s Survival Limit by 1.'),
(8, 'Eternal Will', 'Gain +1 accuracy and +1 strength for each permanent injury you have.   You may always depart, even when retired.'),
(9, 'Fencing', 'Ignore Parry when attempting to wound hit locations. (Attemps to wound these locations normally.)   When a monster attacks you, roll 1d10. On a 6+, ignore 1 hit. Limit, once per round.'),
(10, 'Frozen Star', 'Once per round, you may spend 1 survival to freeze a monster\'s brain. They gain -2 accuracy until the end of the round.   Once per round, you may spend 1 survival to freeze a survivor\'s brain, killing them instantly. They die.'),
(11, 'Hellfire', 'You cannot lose or remove this fighting art.   Gain +1 strength for each (Red Affinity) you have. You cannot be nominated for Intimacy. You ignore Extreme Heat.   At the start of your act, lose 1 survival. At the end of your act, if your survival is 0 or you have any +1 strength tokens, your organs cook themselves and you die.'),
(12, 'Immovable Object', 'If you are on an unoccupied space, you stand firm in the face of any force. You cannot be knocked down and may ignore knockback.   (if you occupy the same space as a monster, impassable terrain tile, or another survivor, you are knocked down and suffer knockback.)'),
(13, 'King of a Thousand Battles', 'Gain +2 accuracy, +2 strength, +2 evasion.   You may dodge any number of times in a round   Only 1 survivor may have this Secret Fighting Art.'),
(14, 'King\'s Step', 'Whenever you attack, you may discard any number of Battle Pressure hit locations drawn and draw an equal number of new hit locations.   Whenever you attack, after drawing hit locations, but before rolling to wound, you may choose one hit location drawn and discard it to draw a new hit location.   Traps will cancel these effects.'),
(15, 'Legendary Lungs', 'Once per attack, for each successful hit, make an additional attack roll.'),
(16, 'Necromancer', 'When you depart, gain +1 to all hit locations for each gear card in your grid with the symbol keyword.   If you would roll on the severe injury table, roll on the Worm Trauma table on the others side of this card instead. (Specified severe injuries remain unchanged)   When you die or forget this, the settlement gain the knowlegde Worm Innovation.'),
(17, 'Red Fist', 'At the start of each showdown, each survivor gains +1 strength token.   Survivors may spend +1 strength tokens in place of survival.'),
(18, 'Sun Eater', 'Your body mysteriously absorbs light. At the start of the showdown, gain survival up to the settlement\' Survival Limit.   If you have any +1 strength tokens, you may spend them all to perform the surge survival action (following all of its normal rules and restrictions).'),
(19, 'Suppressed Shadow', 'You no longer cast a shadow and you never hesitate. Ignore First Strike.   On a Perfect hit, your first wound attempt of the attack automatically succeeds and inflict a critical wound.   If you die during the showdown, place a Shade minion in the space you occupied.'),
(20, 'Swordsman\'s Promise', 'At the start of each showdown, gain survival up to your settlement\'s survival limit if you have a sword in your gear grid.'),
(21, 'True Blade', 'All swords in your gear grid gain deadly.   Gain +3 luck when attacking with a sword if youu have the Ghostly Beauty and Narcissistic disorders.'),
(22, 'Zero Presence', 'Gain +1 strength when attacking a monster from its blind spot.   Whenever you attack a monster, you are always considered to be in its blind spot.');

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

-- --------------------------------------------------------

--
-- Structure de la table `sexe`
--

CREATE TABLE `sexe` (
  `ID_SURVIVOR` int(11) NOT NULL,
  `SEXE` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `survivol`
--

CREATE TABLE `survivol` (
  `ID_SURVIVOR` int(11) NOT NULL,
  `SURVIVOL` int(11) NOT NULL DEFAULT '0',
  `SPEND` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `survivors`
--

CREATE TABLE `survivors` (
  `ID_SURVIVOR` int(11) NOT NULL,
  `NAME_SURVIVORS` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `understanding`
--

CREATE TABLE `understanding` (
  `id` int(11) NOT NULL,
  `ID_SURVIVOR` int(11) NOT NULL,
  `Understanding` int(11) NOT NULL,
  `OPTION_UNDERSTANDING` int(11) NOT NULL DEFAULT '0',
  `OTHER` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `weapon`
--

CREATE TABLE `weapon` (
  `id` int(11) NOT NULL,
  `Nom` varchar(50) NOT NULL,
  `Specialization` text NOT NULL,
  `Master` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `weapon`
--

INSERT INTO `weapon` (`id`, `Nom`, `Specialization`, `Master`) VALUES
(1, 'Bow', 'When attacking with a bow, you may reroll any misses once.   Limit, once per attack.', 'If you are a Bow Master, all Bows in your gear grid gain Deadly 2. In addition, ignore cumbersome on all Bows'),
(2, 'Club', 'All clubs in your gear grid gain paired. Cannot use this with two-handed clubs.', 'Iy you are a Club Master, all Clubs in your gear grid gain Savage. On a Perfect Hit with a Club, gain +3 strength until the end of the attack.'),
(3, 'Dagger', 'When attacking with a Dagger, if a wound attempt fails, after perfoming any reactions, you may discard another drawn hit location card to attempt to wound that hit location again.   Limit, once per attack.', 'After a wounded hit locations is discarded, a Dagger Master who is adjacent to the attacker and the wounded monster may spend 1 survival to re-draw the wounded hit location and attempt to wound with a dagger. Treat monster reactions on the re-drawn hit location card normally.'),
(4, 'Fist & Tooth', 'You may stand (if knocked down) at the start of the monster\'s turn or the survivur\'s turn.   Limit once per round.', 'While a survivor is a Fist & Tooth Master, they gain +2 permanent accuracy and +2 permanent strength (they receive this bonus even when not attacking with Fist & Tooth).'),
(5, 'Grand Weapon', 'When attacking with a grand weapon, gain +1 accuracy.   When attacking with a grand weapon during your act, if you critically wound, the monster is knocked down.', 'When a Grand Weapon Master perfectly hits with a grand weapon, cancel all reactions for that attack.'),
(6, 'Katana', 'You may not select this as your weapon type.   If you are blind and have 4+ levels of Katana proficiency, gain the following : On your first Perfect hit each attack with a Katana, do not draw a hit location, The monsters suffers 1 wound.', 'When a survivor reaches Katana Mastery, they leave the settlement forever, heedind the call of the storm to hone their art.   Before the master leaves, you may nominate a survivor. Set that survivor\'s weapon type to Katana and their weapon proficiency level to 1.'),
(7, 'Katar', 'When attacking with a Katar, cancel reactions on the first selected hit location.', 'If you are a Katar Master, gain a +1 evasion token on a perfect hit with a katar. When you are knocked down, remove all +1 evasion tokens.'),
(8, 'Scythe', 'When you critically wound with a scythe, roll 1d10. On a 6+, shuffle the hit location deck (do not shuffle unresolved hit locations).   Limit, once per round.', 'At the start of a Scythe Master\'s act, if they are insane, they gain +1 (ACTIVATION), which they may only spend to activate scythes.'),
(9, 'Shield', 'While a shield is in your gear grid, you are no longer knocked down after collision with a monster.   While a shield is in your gear grid, add 1 to all hit locations.', 'When a Shield Master is adjacent to a survivor that is targeted by a monster, they may swap spaces on the board with the survivor and become the target instead. The master must have a shield to perform this.'),
(10, 'Spear', 'When attacking with a spear, if you draw a trap, roll 1d10. On a 7+, cancel the trap. Discard it, then reshuffle the hit location discard into the hit location deck and draw a new card.   Limit once per round.', 'Whenever a Spear Master hits a monster with a Spear, they may spend 1 survival to gain the Priority Target token. If they made the hit from directly behind another survivor, that survivor gains the Priority Target token instead'),
(11, 'Sword', 'When attacking with a sword, after drawing hit locations, make a wound attempt and then select a hit location to resolve with that result.   Limit once per attack.', 'A Sword master gains +1 accuracy, +1 strength, and +1 speed when attacking with a Sword.'),
(12, 'Twilight Sword', 'This sentient sword improves as it\'s used. Gain the effects as proficiency rank increases.   Rank 2 = Ignore Cumbersome on twilight Sword.   Rank 4 = When attacking with the Twilight Sword, ignore slow and gain +2 speed.   Rank 6 = Twilight Sword gains Deadly.', 'Any survivor who attains Twilight Sword Mastery leaves the settlement forever in pursuit of a higher purpose. Remove them from the settlement\'s population.   You may place the master\'s Twilight Sword in another survivor\'s gear grid or archive it.'),
(13, 'Whip', 'When you wound with a whip, instead of moving the top card of the AI deck into the wound stack, you may move the top card of the AI discard pile   Limit once per attack.', 'Whip Master gain +5 strength when attacking with a Whip.');

-- --------------------------------------------------------

--
-- Structure de la table `w_proficiency`
--

CREATE TABLE `w_proficiency` (
  `id` int(11) NOT NULL,
  `ID_SURVIVOR` int(11) NOT NULL,
  `PROFICIENCY` int(11) NOT NULL DEFAULT '0',
  `TYPE` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `courage`
--
ALTER TABLE `courage`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `disorder`
--
ALTER TABLE `disorder`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `fighting_disroder`
--
ALTER TABLE `fighting_disroder`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `insanity`
--
ALTER TABLE `insanity`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `secret_fighting_art`
--
ALTER TABLE `secret_fighting_art`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `survivors`
--
ALTER TABLE `survivors`
  ADD PRIMARY KEY (`ID_SURVIVOR`),
  ADD UNIQUE KEY `NAME_SURVIVORS` (`NAME_SURVIVORS`),
  ADD UNIQUE KEY `ID_SURVIVOR` (`ID_SURVIVOR`);

--
-- Index pour la table `understanding`
--
ALTER TABLE `understanding`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `weapon`
--
ALTER TABLE `weapon`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `disorder`
--
ALTER TABLE `disorder`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT pour la table `fighting_disroder`
--
ALTER TABLE `fighting_disroder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `insanity`
--
ALTER TABLE `insanity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `secret_fighting_art`
--
ALTER TABLE `secret_fighting_art`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT pour la table `survivors`
--
ALTER TABLE `survivors`
  MODIFY `ID_SURVIVOR` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `understanding`
--
ALTER TABLE `understanding`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `weapon`
--
ALTER TABLE `weapon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT pour la table `w_proficiency`
--
ALTER TABLE `w_proficiency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
