-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 18, 2025 at 05:15 PM
-- Server version: 8.2.0
-- PHP Version: 8.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tvp2`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int NOT NULL,
  `password` char(40) NOT NULL,
  `type` int NOT NULL DEFAULT '1',
  `premium_ends_at` int UNSIGNED NOT NULL DEFAULT '0',
  `email` varchar(255) NOT NULL DEFAULT '',
  `key` varchar(64) NOT NULL DEFAULT '',
  `blocked` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'internal usage',
  `created` int NOT NULL DEFAULT '0',
  `rlname` varchar(255) NOT NULL DEFAULT '',
  `location` varchar(255) NOT NULL DEFAULT '',
  `country` varchar(3) NOT NULL DEFAULT '',
  `web_lastlogin` int NOT NULL DEFAULT '0',
  `web_flags` int NOT NULL DEFAULT '0',
  `email_hash` varchar(32) NOT NULL DEFAULT '',
  `email_new` varchar(255) NOT NULL DEFAULT '',
  `email_new_time` int NOT NULL DEFAULT '0',
  `email_code` varchar(255) NOT NULL DEFAULT '',
  `email_next` int NOT NULL DEFAULT '0',
  `email_verified` tinyint(1) NOT NULL DEFAULT '0',
  `creation` int NOT NULL DEFAULT '0',
  `failed_bid_count` int NOT NULL DEFAULT '0',
  `premium_points` int NOT NULL DEFAULT '0',
  `vote` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `password`, `type`, `premium_ends_at`, `email`, `key`, `blocked`, `created`, `rlname`, `location`, `country`, `web_lastlogin`, `web_flags`, `email_hash`, `email_new`, `email_new_time`, `email_code`, `email_next`, `email_verified`, `creation`, `failed_bid_count`, `premium_points`, `vote`) VALUES
(120822, '356a192b7913b04c54574d18c28d46e6395428ab', 1, 0, 'agroinsumos01@hotmail.com', '', 0, 1684761131, '', '', 'br', 1686682352, 0, '', '', 0, '', 0, 0, 0, 0, 0, 0),
(121234, '356a192b7913b04c54574d18c28d46e6395428ab', 1, 0, 'teste@teste.com', '', 0, 1676241588, '', '', 'br', 1676304359, 0, '', '', 0, '', 0, 0, 0, 0, 0, 0),
(145145, '96e742fc912048d8e32a74d8a3f320be397fab80', 1, 0, 'marios@gmail.com', '', 0, 1677197997, '', '', 'gb', 0, 0, '', '', 0, '', 0, 0, 0, 0, 0, 0),
(155155, 'b0bc211028f0c32c705e7343d0e5580410333120', 1, 0, 'marios45@gmail.com', '', 0, 1677198024, '', '', 'gb', 1677198034, 0, '', '', 0, '', 0, 0, 0, 0, 0, 0),
(158983, '34f06929ca0702fcede15e6b740d80a429d1a14c', 1, 1692497134, 'larissadiehl01@gmail.com', '', 0, 1684719716, '', '', 'br', 1684719739, 0, '', '', 0, '', 0, 0, 0, 0, 0, 0),
(199361, 'e5c346c2d14db28f8d36c7b86074a16e4ffc750a', 1, 1694312617, 'luancmunhoz@gmail.com', 'M8ZDQT4F8Q', 0, 1675563518, '', '', 'br', 1686367737, 0, '', '', 0, '', 0, 0, 0, 0, 744, 0),
(221208, '0e3b67a9a41122a865dd93fe2686a6f03ae90906', 1, 1687608318, 'guisebastiani15@hotmail.com', 'TMF3HKFIHJ', 0, 1684758613, '', '', 'br', 1685016089, 0, '', '', 0, '', 0, 0, 0, 0, 195, 0),
(741852, '539964e881248ac095175d0b913fc7e85ea5a338', 1, 1694559456, 'frlmachado@hotmail.com', '', 0, 1685918384, '', '', 'br', 0, 0, '', '', 0, '', 0, 0, 0, 0, 0, 0),
(1234567, '356a192b7913b04c54574d18c28d46e6395428ab', 6, 1695739930, '', '', 0, 0, '', '', '', 1686682216, 0, '', '', 0, '', 0, 0, 0, 0, 948, 0),
(1883906, 'e5c346c2d14db28f8d36c7b86074a16e4ffc750a', 1, 1692497153, 'luancmunhozz@gmail.com', '', 0, 1684706782, '', '', 'br', 1684762298, 0, '', '', 0, '', 0, 0, 0, 0, 0, 0),
(4022023, '775a3ba9805661e2441be66afdfe6e20ac1cd5da', 5, 0, 'retroniaotserv@gmail.com', '', 0, 1675523240, '', '', 'us', 1689011165, 3, '', '', 0, '', 0, 0, 0, 0, 0, 0),
(5337677, 'ea0b5e1fe0075de9fe2a99f1b038ebfe5fbb99e8', 1, 0, 'Hahabbaab@wp.pl', '', 0, 1686584532, '', '', 'pl', 1686584550, 0, '', '', 0, '', 0, 0, 0, 0, 0, 0),
(6025539, 'f76323d6e17d4341ba0e7c720b51dbc43e9a771a', 1, 1694051416, 'rodolfoo_o@hotmail.com', '', 0, 1685410677, '', '', 'br', 1685410701, 0, '', '', 0, '', 0, 0, 0, 0, 0, 0),
(12345678, '356a192b7913b04c54574d18c28d46e6395428ab', 5, 0, 'retroniaotserv@gmail.com', '', 0, 1675523240, '', '', 'us', 1682691579, 3, '', '', 0, '', 0, 0, 0, 0, 0, 0),
(58764899, '2054a2e648b1a4359150ff6e24b046cdf22c17ba', 1, 1687888274, 'robsonspinelli_jf@hotmail.com', '', 0, 1685295998, '', '', 'br', 0, 0, '', '', 0, '', 0, 0, 0, 0, 350, 0);

-- --------------------------------------------------------

--
-- Table structure for table `account_bans`
--

CREATE TABLE `account_bans` (
  `account_id` int NOT NULL,
  `reason` varchar(255) NOT NULL,
  `banned_at` bigint NOT NULL,
  `expires_at` bigint NOT NULL,
  `banned_by` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `account_ban_history`
--

CREATE TABLE `account_ban_history` (
  `id` int UNSIGNED NOT NULL,
  `account_id` int NOT NULL,
  `reason` varchar(255) NOT NULL,
  `banned_at` bigint NOT NULL,
  `expired_at` bigint NOT NULL,
  `banned_by` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `account_storage`
--

CREATE TABLE `account_storage` (
  `account_id` int NOT NULL,
  `key` int UNSIGNED NOT NULL,
  `value` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `account_viplist`
--

CREATE TABLE `account_viplist` (
  `account_id` int NOT NULL COMMENT 'id of account whose viplist entry it is',
  `player_id` int NOT NULL COMMENT 'id of target player of viplist entry',
  `description` varchar(128) NOT NULL DEFAULT '',
  `icon` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `notify` tinyint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `account_viplist`
--

INSERT INTO `account_viplist` (`account_id`, `player_id`, `description`, `icon`, `notify`) VALUES
(1234567, 3, '', 0, 0),
(1234567, 33, '', 0, 0),
(1234567, 34, '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `crypto_history`
--

CREATE TABLE `crypto_history` (
  `id` int NOT NULL,
  `value` float NOT NULL,
  `hash` text NOT NULL,
  `wallet_send` text NOT NULL,
  `status` text NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `crypto_history`
--

INSERT INTO `crypto_history` (`id`, `value`, `hash`, `wallet_send`, `status`, `date`) VALUES
(11, 1, '0x009748d7d4aeb158fb1341261d5d08722c2b9585b4b6e2bd2f6259c5d4df48b4', '0xde58909969bb6a53ecf9c1c369edf5244a085891', 'recive', 'Apr-21-2023 03:17:18 PM +UTC'),
(16, 1, '0xccbda46734d149e26d1a1bb06031d6d2179e4596acb9492f1ff4664da4266dea', '0xde58909969bb6a53ecf9c1c369edf5244a085891', 'recive', 'Apr-28-2023 01:59:04 PM +UTC'),
(17, 1, '0x3ec04570c8c049f5c0dc669a2387c52441d551666ca50bf5320475b02e140f01', '0xde58909969bb6a53ecf9c1c369edf5244a085891', 'recive', 'Apr-28-2023 01:44:49 PM +UTC'),
(18, 1, '0x12e19d50aa376fd80d5c886c324bb3d005ddde0f5b559925d610e170b1348028', '0xde58909969bb6a53ecf9c1c369edf5244a085891', 'recive', 'Apr-28-2023 03:03:56 PM +UTC'),
(19, 1, '0x248d3ba70466a3bf4d86704ebdb1e31d414cb723e55931ef4b6d158c1621b293', '0xde58909969bb6a53ecf9c1c369edf5244a085891', 'recive', 'Apr-28-2023 05:25:19 PM +UTC');

-- --------------------------------------------------------

--
-- Table structure for table `dirkyh_items`
--

CREATE TABLE `dirkyh_items` (
  `id` int NOT NULL,
  `type` text NOT NULL,
  `name` text,
  `weight` float NOT NULL,
  `armor` int DEFAULT NULL,
  `monster` json DEFAULT NULL,
  `resistence` json DEFAULT NULL,
  `attack` int DEFAULT NULL,
  `defense` float DEFAULT NULL,
  `attack_speed` int DEFAULT NULL,
  `two_handed` int DEFAULT NULL,
  `ranger` float DEFAULT NULL,
  `duration` int DEFAULT NULL,
  `equals` int DEFAULT NULL,
  `clientid` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dirkyh_items`
--

INSERT INTO `dirkyh_items` (`id`, `type`, `name`, `weight`, `armor`, `monster`, `resistence`, `attack`, `defense`, `attack_speed`, `two_handed`, `ranger`, `duration`, `equals`, `clientid`) VALUES
(1294, 'distance', 'small stone', 360, 0, '[\"Gargoyle\", \"Goblin\", \"Grorlam\", \"Illusion\", \"Stone Golem\"]', NULL, 20, NULL, 2000, 1, 7, NULL, NULL, 1781),
(1987, 'backpack', 'bag', 800, 0, '[\"Dwarf Geomancer\", \"Monk\", \"Orc Shaman\"]', '[[\"8\", \"containersize\"]]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2853),
(1988, 'backpack', 'backpack', 1800, 0, '[\"Orc Leader\", \"Orc Rider\", \"Stalker\"]', '[[\"20\", \"containersize\"]]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2854),
(1991, 'backpack', 'bag', 800, 0, 'null', '[[\"8\", \"containersize\"]]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2857),
(1992, 'backpack', 'bag', 800, 0, 'null', '[[\"8\", \"containersize\"]]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2858),
(1993, 'backpack', 'bag', 800, 0, 'null', '[[\"8\", \"containersize\"]]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2859),
(1994, 'backpack', 'bag', 800, 0, 'null', '[[\"8\", \"containersize\"]]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2860),
(1995, 'backpack', 'bag', 800, 0, 'null', '[[\"8\", \"containersize\"]]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2861),
(1996, 'backpack', 'bag', 800, 0, 'null', '[[\"8\", \"containersize\"]]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2862),
(1997, 'backpack', 'bag', 800, 0, 'null', '[[\"8\", \"containersize\"]]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2863),
(1998, 'backpack', 'backpack', 1800, 0, 'null', '[[\"20\", \"containersize\"]]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2865),
(1999, 'backpack', 'backpack', 1800, 0, 'null', '[[\"20\", \"containersize\"]]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2866),
(2000, 'backpack', 'backpack', 1800, 0, 'null', '[[\"20\", \"containersize\"]]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2867),
(2001, 'backpack', 'backpack', 1800, 0, 'null', '[[\"20\", \"containersize\"]]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2868),
(2002, 'backpack', 'backpack', 1800, 0, 'null', '[[\"20\", \"containersize\"]]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2869),
(2003, 'backpack', 'backpack', 1800, 0, 'null', '[[\"20\", \"containersize\"]]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2870),
(2004, 'backpack', 'backpack', 1800, 0, 'null', '[[\"20\", \"containersize\"]]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2871),
(2036, 'tool', 'watch', 50, 0, 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2906),
(2111, 'distance', 'snowball', 80, 0, '[\"Yeti\"]', NULL, NULL, NULL, 2000, 1, 7, NULL, NULL, 2992),
(2120, 'tool', 'rope', 1800, 0, '[\"Black Knight\", \"Hero\", \"Troll\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3003),
(2121, 'ring', 'wedding ring', 40, 0, '[\"Banshee\", \"Hero\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3004),
(2123, 'ring', 'ring of the sky', 40, 0, '[\"Apocalypse\", \"Bazir\", \"Ferumbras\", \"Infernatil\", \"Morgaroth\", \"Orshabaal\", \"Warlock\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3006),
(2124, 'ring', 'crystal ring', 90, 0, '[\"Apocalypse\", \"Banshee\", \"Bazir\", \"Ferumbras\", \"Grorlam\", \"Infernatil\", \"Morgaroth\", \"Mummy\", \"Orshabaal\", \"Stone Golem\", \"Vashresamun\", \"Warlock\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3007),
(2125, 'necklace', 'crystal necklace', 490, 0, '[\"Amazon\", \"Apocalypse\", \"Bazir\", \"Behemoth\", \"Ferumbras\", \"Infernatil\", \"Morgaroth\", \"Orshabaal\", \"Priestess\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3008),
(2126, 'necklace', 'bronze necklace', 410, 0, 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3009),
(2128, 'head', 'crown', 1900, 0, 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3011),
(2129, 'necklace', 'wolf tooth chain', 330, 0, '[\"Cyclops\", \"Fernfang\", \"Gargoyle\", \"Orc Rider\", \"Witch\", \"Yeti\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3012),
(2130, 'necklace', 'golden amulet', 830, 0, 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3013),
(2131, 'necklace', 'star amulet', 610, 0, 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3014),
(2132, 'necklace', 'silver necklace', 480, 0, 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3015),
(2133, 'necklace', 'ruby necklace', 570, 0, '[\"Black Knight\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3016),
(2135, 'necklace', 'scarab amulet', 770, 0, '[\"Ancient Scarab\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3018),
(2136, 'necklace', 'demonbone amulet', 690, 0, '[\"Morguthis\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3019),
(2138, 'necklace', 'saphire amulet', 680, 0, 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3021),
(2139, 'head', 'ancient tiara', 820, 0, '[\"Vashresamun\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3022),
(2142, 'necklace', 'ancient amulet', 840, 0, '[\"Ancient Scarab\", \"Apocalypse\", \"Bazir\", \"Ferumbras\", \"Infernatil\", \"Morgaroth\", \"Orshabaal\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3025),
(2161, 'necklace', 'strange talisman', 290, 0, '[\"Mummy\"]', '[[\"200\", \"charges\"], [\"Protection\", \"10\", \"energy\"]]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3045),
(2164, 'ring', 'might ring', 100, 0, '[\"Apocalypse\", \"Ashmunrah\", \"Bazir\", \"Demon\", \"Ferumbras\", \"Hero\", \"Infernatil\", \"Morgaroth\", \"Orshabaal\"]', '[[\"20\", \"charges\"], [\"Protection\", \"20\", \"physical\"], [\"Protection\", \"20\", \"energy\"], [\"Protection\", \"20\", \"fire\"], [\"Protection\", \"20\", \"poison\"]]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3048),
(2170, 'necklace', 'silver amulet', 500, 0, '[\"Apocalypse\", \"Banshee\", \"Bazir\", \"Ferumbras\", \"Infernatil\", \"Morgaroth\", \"Mummy\", \"Orshabaal\", \"Troll\"]', '[[\"200\", \"charges\"], [\"Protection\", \"10\", \"poison\"]]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3054),
(2171, 'necklace', 'platinum amulet', 600, 2, '[\"Apocalypse\", \"Bazir\", \"Demon\", \"Ferumbras\", \"Giant Spider\", \"Infernatil\", \"Lich\", \"Morgaroth\", \"Orshabaal\", \"The Old Widow\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3055),
(2172, 'necklace', 'bronze amulet', 500, 0, '[\"Minotaur\", \"Vampire\"]', '[[\"200\", \"charges\"], [\"Protection\", \"20\", \"manadrain\"]]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3056),
(2173, 'necklace', 'amulet of loss', 420, 0, 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3057),
(2175, 'spellbook', 'spellbook', 5800, 0, '[\"Banshee\", \"Beholder\", \"Dwarf Geomancer\", \"Elder Beholder\", \"Lich\", \"The Evil Eye\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3059),
(2179, 'ring', 'gold ring', 100, 0, '[\"Apocalypse\", \"Bazir\", \"Demon\", \"Ferumbras\", \"Infernatil\", \"Morgaroth\", \"Orshabaal\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3063),
(2195, 'feet', 'boots of haste', 750, 0, '[\"Apocalypse\", \"Bazir\", \"Black Knight\", \"Ferumbras\", \"Infernatil\", \"Morgaroth\", \"Necromancer\", \"Necropharus\", \"Omruc\", \"Orshabaal\"]', '[[\"20\", \"speed\"]]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3079),
(2196, 'necklace', 'broken amulet', 420, 0, 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3080),
(2197, 'necklace', 'stone skin amulet', 700, 0, '[\"Apocalypse\", \"Banshee\", \"Bazir\", \"Ferumbras\", \"Infernatil\", \"Morgaroth\", \"Morguthis\", \"Orshabaal\", \"Warlock\"]', '[[\"5\", \"charges\"], [\"Protection\", \"80\", \"physical\"]]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3081),
(2198, 'necklace', 'elven amulet', 270, 0, '[\"Dharalion\", \"Elf Arcanist\"]', '[[\"50\", \"charges\"], [\"Protection\", \"5\", \"physical\"], [\"Protection\", \"5\", \"energy\"], [\"Protection\", \"5\", \"fire\"], [\"Protection\", \"5\", \"poison\"]]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3082),
(2199, 'necklace', 'garlic necklace', 380, 0, '[\"Witch\"]', '[[\"150\", \"charges\"], [\"Protection\", \"20\", \"lifedrain\"]]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3083),
(2200, 'necklace', 'protection amulet', 550, 0, '[\"Apocalypse\", \"Bazir\", \"Ferumbras\", \"Infernatil\", \"Morgaroth\", \"Orc Warlord\", \"Orshabaal\", \"Valkyrie\"]', '[[\"250\", \"charges\"], [\"Protection\", \"6\", \"physical\"]]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3084),
(2201, 'necklace', 'dragon necklace', 630, 0, '[\"Hunter\"]', '[[\"200\", \"charges\"], [\"Protection\", \"8\", \"fire\"]]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3085),
(2202, 'ring', 'stealth ring', 100, 0, '[\"Apocalypse\", \"Bazir\", \"Demon\", \"Ferumbras\", \"Ghost\", \"Infernatil\", \"Morgaroth\", \"Omruc\", \"Orc Warlord\", \"Orshabaal\"]', '[[\"true\", \"invisible\"]]', NULL, NULL, NULL, NULL, NULL, 600, 2165, 3086),
(2203, 'ring', 'power ring', 80, 0, '[\"Fernfang\", \"Grorlam\", \"Monk\", \"Stone Golem\"]', '[[\"6\", \"skillfist\"]]', NULL, NULL, NULL, NULL, NULL, 1800, 2166, 3087),
(2204, 'ring', 'energy ring', 80, 0, '[\"Apocalypse\", \"Bazir\", \"Demodras\", \"Dipthrah\", \"Dragon Lord\", \"Ferumbras\", \"Infernatil\", \"Morgaroth\", \"Orshabaal\", \"Warlock\"]', '[[\"1\", \"manashield\"]]', NULL, NULL, NULL, NULL, NULL, 600, 2167, 3088),
(2205, 'ring', 'life ring', 80, 0, '[\"Ghoul\", \"Mahrdis\"]', '[[\"1\", \"healthgain\"], [\"3000\", \"healthticks\"], [\"1\", \"managain\"], [\"3000\", \"manaticks\"]]', NULL, NULL, NULL, NULL, NULL, 1200, 2168, 3089),
(2206, 'ring', 'time ring', 90, 0, '[\"Giant Spider\", \"Thalas\", \"The Old Widow\"]', '[[\"30\", \"speed\"]]', NULL, NULL, NULL, NULL, NULL, 600, 2169, 3090),
(2210, 'ring', 'sword ring', 90, 0, '[\"Orc Leader\"]', '[[\"4\", \"skillsword\"]]', NULL, NULL, NULL, NULL, NULL, 1800, 2207, 3094),
(2211, 'ring', 'axe ring', 90, 0, '[\"Dwarf Guard\", \"Dwarf Soldier\"]', '[[\"4\", \"skillaxe\"]]', NULL, NULL, NULL, NULL, NULL, 1800, 2208, 3095),
(2212, 'ring', 'club ring', 90, 0, '[\"Cyclops\", \"Gargoyle\"]', '[[\"4\", \"skillclub\"]]', NULL, NULL, NULL, NULL, NULL, 1800, 2209, 3096),
(2215, 'ring', 'dwarven ring', 110, 0, '[\"Dwarf\", \"Dwarf Geomancer\"]', '[[\"true\", \"suppressdrunk\"]]', NULL, NULL, NULL, NULL, NULL, 3600, 2213, 3099),
(2216, 'ring', 'ring of healing', 80, 0, '[\"Apocalypse\", \"Banshee\", \"Bazir\", \"Demon\", \"Ferumbras\", \"Infernatil\", \"Lich\", \"Morgaroth\", \"Orshabaal\", \"Rahemos\"]', '[[\"1\", \"healthgain\"], [\"1000\", \"healthticks\"], [\"1\", \"managain\"], [\"1000\", \"manaticks\"]]', NULL, NULL, NULL, NULL, NULL, 450, 2214, 3100),
(2217, 'spellbook', 'spellbook', 5800, 0, 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3101),
(2218, 'necklace', 'paw amulet', 420, 0, 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3102),
(2321, 'club', 'giant smithhammer', 6800, 0, 'null', NULL, 24, 14, 2000, 1, NULL, NULL, NULL, 3208),
(2323, 'head', 'hat of the mad', 700, 3, 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3210),
(2330, 'backpack', 'letterbag', 50000, 0, 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3217),
(2339, 'head', 'damaged helmet', 1800, 5, 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3226),
(2342, 'head', 'helmet of the ancients', 2760, 8, 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3229),
(2343, 'head', 'helmet of the ancients', 2760, 11, 'null', NULL, NULL, NULL, NULL, NULL, NULL, 1800, NULL, 3230),
(2357, 'ring', 'ring of wishes', 50, 0, 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3245),
(2358, 'feet', 'boots of waterwalking', 770, 0, 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3246),
(2362, 'food', 'the carrot of doom', 160, 0, 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3250),
(2376, 'sword', 'sword', 3500, 0, '[\"Minotaur\", \"Rotworm\", \"Skeleton\"]', NULL, 14, 12, 2000, 1, NULL, NULL, NULL, 3264),
(2377, 'sword', 'two handed sword', 7000, 0, '[\"Apocalypse\", \"Bazir\", \"Behemoth\", \"Beholder\", \"Black Knight\", \"Crypt Shambler\", \"Elder Beholder\", \"Ferumbras\", \"Hero\", \"Infernatil\", \"Morgaroth\", \"Orc Warlord\", \"Orshabaal\", \"The Evil Eye\"]', NULL, 60, 12, 3500, 2, NULL, NULL, NULL, 3265),
(2378, 'axe', 'battle axe', 5000, 0, '[\"Dwarf Soldier\", \"Orc Berserker\"]', NULL, 50, 5, 3500, 2, NULL, NULL, NULL, 3266),
(2379, 'sword', 'dagger', 950, 0, '[\"Amazon\", \"Goblin\", \"Illusion\", \"Orc Leader\", \"Priestess\", \"Swamp Troll\", \"Valkyrie\"]', NULL, 8, 6, 2000, 1, NULL, NULL, NULL, 3267),
(2380, 'axe', 'hand axe', 1800, 0, '[\"Troll\"]', NULL, 10, 5, 2000, 1, NULL, NULL, NULL, 3268),
(2381, 'axe', 'halberd', 9000, 0, '[\"Black Knight\", \"Cyclops\", \"Orc Berserker\"]', NULL, 70, 7, 3500, 2, NULL, NULL, NULL, 3269),
(2382, 'club', 'club', 2500, 0, '[\"Frost Troll\"]', NULL, 7, 7, 2000, 1, NULL, NULL, NULL, 3270),
(2383, 'sword', 'spike sword', 5000, 0, '[\"Vampire\"]', NULL, 24, 21, 2000, 1, NULL, NULL, NULL, 3271),
(2384, 'sword', 'rapier', 1500, 0, '[\"Frost Troll\"]', NULL, 10, 8, 2000, 1, NULL, NULL, NULL, 3272),
(2385, 'sword', 'sabre', 2500, 0, '[\"Amazon\", \"Orc\", \"Orc Warrior\"]', NULL, 12, 10, 2000, 1, NULL, NULL, NULL, 3273),
(2386, 'axe', 'axe', 4000, 0, '[\"Dwarf\", \"Minotaur\", \"Orc\", \"Wild Warrior\"]', NULL, 12, 6, 2000, 1, NULL, NULL, NULL, 3274),
(2387, 'axe', 'double axe', 7000, 0, '[\"Apocalypse\", \"Bazir\", \"Behemoth\", \"Demon\", \"Dragon\", \"Dwarf Guard\", \"Ferumbras\", \"Fire Devil\", \"General Murius\", \"Infernatil\", \"Minotaur Guard\", \"Morgaroth\", \"Orshabaal\", \"The Horned Fox\", \"Valkyrie\"]', NULL, 70, 6, 3500, 2, NULL, NULL, NULL, 3275),
(2388, 'axe', 'hatchet', 3500, 0, '[\"Dwarf\", \"Minotaur Guard\", \"Skeleton\", \"The Horned Fox\"]', NULL, 15, 8, 2000, 1, NULL, NULL, NULL, 3276),
(2389, 'distance', 'spear', 2000, 0, '[\"Black Knight\", \"Frost Troll\", \"Orc Shaman\", \"Orc Spearman\", \"Troll\", \"Valkyrie\"]', NULL, 30, NULL, 2000, 1, 7, NULL, NULL, 3277),
(2390, 'sword', 'magic longsword', 4300, 0, 'null', NULL, 110, 20, 3500, 2, NULL, NULL, NULL, 3278),
(2391, 'club', 'war hammer', 8500, 0, '[\"Hero\", \"Wild Warrior\"]', NULL, 90, 5, 3500, 2, NULL, NULL, NULL, 3279),
(2392, 'sword', 'fire sword', 2300, 0, '[\"Demodras\", \"Dragon Lord\", \"Hero\"]', NULL, 35, 20, 2000, 1, NULL, NULL, NULL, 3280),
(2393, 'sword', 'giant sword', 18000, 0, '[\"Apocalypse\", \"Bazir\", \"Behemoth\", \"Demon\", \"Ferumbras\", \"Infernatil\", \"Morgaroth\", \"Orshabaal\"]', NULL, 92, 11, 3500, 2, NULL, NULL, NULL, 3281),
(2394, 'club', 'morning star', 5400, 0, '[\"Beholder\", \"Elder Beholder\", \"Gargoyle\", \"Ghost\", \"The Evil Eye\"]', NULL, 25, 11, 2000, 1, NULL, NULL, NULL, 3282),
(2395, 'sword', 'carlin sword', 4000, 0, '[\"Stone Golem\"]', NULL, 15, 13, 2000, 1, NULL, NULL, NULL, 3283),
(2396, 'sword', 'ice rapier', 1500, 0, '[\"Apocalypse\", \"Bazir\", \"Demon\", \"Ferumbras\", \"Infernatil\", \"Morgaroth\", \"Orshabaal\", \"Vampire\"]', '[[\"1\", \"charges\"]]', 100, 1, 2000, 1, NULL, NULL, NULL, 3284),
(2397, 'sword', 'longsword', 4200, 0, '[\"Beholder\", \"Dragon\", \"Elder Beholder\", \"Elf\", \"Elf Scout\", \"Orc Leader\", \"The Evil Eye\"]', NULL, 17, 14, 2000, 1, NULL, NULL, NULL, 3285),
(2398, 'club', 'mace', 3800, 0, '[\"Dragon\", \"Minotaur\", \"Rotworm\", \"Skeleton\", \"Wild Warrior\"]', NULL, 16, 11, 2000, 1, NULL, NULL, NULL, 3286),
(2399, 'distance', 'throwing star', 100, 0, '[\"Crypt Shambler\", \"Demon Skeleton\", \"Orc Warlord\"]', NULL, 25, NULL, 2000, 1, 7, NULL, NULL, 3287),
(2400, 'sword', 'magic sword', 4200, 0, 'null', NULL, 48, 35, 2000, 1, NULL, NULL, NULL, 3288),
(2401, 'club', 'staff', 3800, 0, '[\"Dharalion\", \"Elf Arcanist\", \"Fernfang\", \"Fernfang\", \"Lich\", \"Monk\", \"Orc Shaman\"]', NULL, 10, 25, 2000, 2, NULL, NULL, NULL, 3289),
(2402, 'sword', 'silver dagger', 1020, 0, '[\"Apocalypse\", \"Bazir\", \"Ferumbras\", \"Infernatil\", \"Morgaroth\", \"Orshabaal\", \"Witch\"]', NULL, 8, 7, 2000, 1, NULL, NULL, NULL, 3290),
(2403, 'sword', 'knife', 420, 0, '[\"Ghoul\", \"Minotaur Mage\"]', NULL, 7, 5, 2000, 1, NULL, NULL, NULL, 3291),
(2404, 'sword', 'combat knife', 870, 0, '[\"Ghost\", \"Minotaur Mage\"]', NULL, 8, 6, 2000, 1, NULL, NULL, NULL, 3292),
(2405, 'axe', 'sickle', 1050, 0, '[\"Witch\"]', NULL, 7, 4, 2000, 1, NULL, NULL, NULL, 3293),
(2406, 'sword', 'short sword', 3500, 0, '[\"Cyclops\", \"Dragon\", \"Goblin\", \"Illusion\", \"Mummy\", \"Necromancer\", \"Necropharus\"]', NULL, 11, 11, 2000, 1, NULL, NULL, NULL, 3294),
(2407, 'sword', 'bright sword', 2900, 0, 'null', NULL, 36, 30, 2000, 1, NULL, NULL, NULL, 3295),
(2408, 'sword', 'warlord sword', 6400, 0, 'null', NULL, 106, 19, 3500, 2, NULL, NULL, NULL, 3296),
(2409, 'sword', 'serpent sword', 4100, 0, '[\"Dragon\", \"Thalas\"]', NULL, 26, 15, 2000, 1, NULL, NULL, NULL, 3297),
(2410, 'distance', 'throwing knife', 210, 0, '[\"Orc Leader\", \"Stalker\"]', NULL, 30, NULL, 2000, 1, 7, NULL, NULL, 3298),
(2411, 'sword', 'poison dagger', 880, 0, '[\"Banshee\", \"Mummy\", \"Orc Warrior\", \"Thalas\", \"Warlock\"]', NULL, 18, 8, 2000, 1, NULL, NULL, NULL, 3299),
(2412, 'sword', 'katana', 3100, 0, '[\"Rotworm\", \"Stalker\", \"Vampire\"]', NULL, 16, 12, 2000, 1, NULL, NULL, NULL, 3300),
(2413, 'sword', 'broadsword', 5250, 0, '[\"Dragon\", \"Orc Leader\"]', NULL, 52, 11, 3500, 2, NULL, NULL, NULL, 3301),
(2414, 'axe', 'dragon lance', 6700, 0, '[\"Black Knight\"]', NULL, 94, 8, 3500, 2, NULL, NULL, NULL, 3302),
(2415, 'axe', 'great axe', 9000, 0, 'null', NULL, 104, 11, 3500, 2, NULL, NULL, NULL, 3303),
(2416, 'club', 'crowbar', 2100, 0, '[\"Behemoth\"]', NULL, 6, 6, 2000, 1, NULL, NULL, NULL, 3304),
(2417, 'club', 'battle hammer', 6800, 0, '[\"Black Knight\", \"Demon Skeleton\", \"Dwarf Guard\"]', NULL, 24, 14, 2000, 1, NULL, NULL, NULL, 3305),
(2418, 'axe', 'golden sickle', 1950, 0, '[\"Apocalypse\", \"Bazir\", \"Demon\", \"Ferumbras\", \"Infernatil\", \"Morgaroth\", \"Orshabaal\"]', NULL, 13, 6, 2000, 1, NULL, NULL, NULL, 3306),
(2419, 'sword', 'scimitar', 2900, 0, '[\"Fire Devil\", \"Orc Leader\", \"Orc Warlord\"]', NULL, 19, 13, 2000, 1, NULL, NULL, NULL, 3307),
(2420, 'sword', 'machete', 1650, 0, '[\"Orc Spearman\"]', NULL, 12, 9, 2000, 1, NULL, NULL, NULL, 3308),
(2421, 'club', 'thunder hammer', 12500, 0, '[\"Apocalypse\", \"Bazir\", \"Ferumbras\", \"Infernatil\", \"Morgaroth\", \"Orshabaal\"]', NULL, 49, 35, 2000, 1, NULL, NULL, NULL, 3309),
(2422, 'club', 'iron hammer', 6600, 0, 'null', NULL, 18, 10, 2000, 1, NULL, NULL, NULL, 3310),
(2423, 'club', 'clerical mace', 5800, 0, '[\"Dwarf Geomancer\", \"Necromancer\", \"Necropharus\", \"Priestess\"]', NULL, 28, 15, 2000, 1, NULL, NULL, NULL, 3311),
(2424, 'club', 'silver mace', 6700, 0, 'null', NULL, 40, 30, 2000, 1, NULL, NULL, NULL, 3312),
(2425, 'axe', 'obsidian lance', 8000, 0, '[\"Orc Rider\", \"Stalker\"]', NULL, 68, 5, 3500, 2, NULL, NULL, NULL, 3313),
(2426, 'axe', 'naginata', 7800, 0, 'null', NULL, 78, 12, 3500, 2, NULL, NULL, NULL, 3314),
(2427, 'axe', 'guardian halberd', 11000, 0, 'null', NULL, 92, 7, 3500, 2, NULL, NULL, NULL, 3315),
(2428, 'axe', 'orcish axe', 4500, 0, '[\"Orc Rider\", \"Orc Warlord\"]', NULL, 23, 12, 2000, 1, NULL, NULL, NULL, 3316),
(2429, 'axe', 'barbarian axe', 5100, 0, 'null', NULL, 28, 18, 2000, 1, NULL, NULL, NULL, 3317),
(2430, 'axe', 'knight axe', 5900, 0, '[\"Black Knight\", \"Morguthis\"]', NULL, 33, 21, 2000, 1, NULL, NULL, NULL, 3318),
(2431, 'axe', 'stonecutter axe', 9900, 0, 'null', NULL, 50, 30, 2000, 1, NULL, NULL, NULL, 3319),
(2432, 'axe', 'fire axe', 4000, 0, '[\"Apocalypse\", \"Bazir\", \"Demon\", \"Ferumbras\", \"Infernatil\", \"Mahrdis\", \"Morgaroth\", \"Orshabaal\"]', NULL, 38, 16, 2000, 1, NULL, NULL, NULL, 3320),
(2433, 'club', 'enchanted staff', 3800, 0, 'null', NULL, 39, 45, 2000, 2, NULL, 60, NULL, 3321),
(2434, 'club', 'dragon hammer', 9700, 0, '[\"Apocalypse\", \"Bazir\", \"Dragon\", \"Ferumbras\", \"Infernatil\", \"Morgaroth\", \"Orc Warlord\", \"Orshabaal\"]', NULL, 32, 20, 2000, 1, NULL, NULL, NULL, 3322),
(2435, 'axe', 'dwarven axe', 8200, 0, 'null', NULL, 31, 19, 2000, 1, NULL, NULL, NULL, 3323),
(2436, 'club', 'skull staff', 1700, 0, '[\"Apocalypse\", \"Bazir\", \"Dipthrah\", \"Ferumbras\", \"Infernatil\", \"Morgaroth\", \"Necromancer\", \"Necropharus\", \"Orshabaal\", \"Warlock\"]', NULL, 36, 12, 2000, 1, NULL, NULL, NULL, 3324),
(2437, 'club', 'light mace', 4100, 0, 'null', NULL, 14, 9, NULL, 1, NULL, NULL, NULL, 3325),
(2438, 'sword', 'foil', 1450, 0, 'null', NULL, 9, 11, NULL, 1, NULL, NULL, NULL, 3326),
(2439, 'club', 'daramanian mace', 6800, 0, '[\"Scarab\"]', NULL, 21, 12, 2000, 1, NULL, NULL, NULL, 3327),
(2440, 'axe', 'daramanian waraxe', 5250, 0, '[\"Ancient Scarab\"]', NULL, 78, 7, 3500, 2, NULL, NULL, NULL, 3328),
(2441, 'axe', 'daramanian axe', 4100, 0, 'null', NULL, 16, 8, NULL, 1, NULL, NULL, NULL, 3329),
(2442, 'sword', 'heavy machete', 1840, 0, '[\"Efreet\", \"Marid\", \"Scarab\"]', NULL, 16, 10, 2000, 1, NULL, NULL, NULL, 3330),
(2443, 'axe', 'ravagers axe', 5250, 0, '[\"Morguthis\"]', NULL, 98, 7, 3500, 2, NULL, NULL, NULL, 3331),
(2444, 'club', 'hammer of wrath', 7000, 0, '[\"Ashmunrah\"]', NULL, 96, 6, 3500, 2, NULL, NULL, NULL, 3332),
(2445, 'club', 'crystal mace', 8000, 0, '[\"Vashresamun\"]', NULL, 38, 16, 2000, 1, NULL, NULL, NULL, 3333),
(2446, 'sword', 'pharaoh sword', 15000, 0, '[\"Dipthrah\"]', NULL, 41, 23, 2000, 1, NULL, NULL, NULL, 3334),
(2447, 'axe', 'twin axe', 6400, 0, '[\"Rahemos\"]', NULL, 90, 12, 3500, 2, NULL, NULL, NULL, 3335),
(2448, 'club', 'studded club', 3500, 0, '[\"Gargoyle\", \"Troll\"]', NULL, 9, 8, 2000, 1, NULL, NULL, NULL, 3336),
(2449, 'club', 'bone club', 3900, 0, '[\"Bonebeast\", \"Goblin\", \"Necropharus\"]', NULL, 12, 8, 2000, 1, NULL, NULL, NULL, 3337),
(2450, 'sword', 'bone sword', 1900, 0, '[\"Crypt Shambler\"]', NULL, 14, 10, 2000, 1, NULL, NULL, NULL, 3338),
(2451, 'sword', 'djinn blade', 2450, 0, '[\"Thalas\"]', NULL, 38, 22, 2000, 1, NULL, NULL, NULL, 3339),
(2452, 'club', 'heavy mace', 11000, 0, 'null', NULL, 100, 7, 3500, 2, NULL, NULL, NULL, 3340),
(2453, 'club', 'arcane staff', 4000, 0, 'null', NULL, 100, 15, 3500, 2, NULL, NULL, NULL, 3341),
(2454, 'axe', 'war axe', 6150, 0, 'null', NULL, 40, 5, 3500, 2, NULL, NULL, NULL, 3342),
(2455, 'distance', 'crossbow', 4000, 0, '[\"Dragon\", \"Dwarf Soldier\", \"Minotaur Archer\"]', NULL, NULL, NULL, 3000, 2, 7, NULL, NULL, 3349),
(2456, 'distance', 'bow', 3100, 0, '[\"Elf Scout\", \"Hero\", \"Hunter\"]', NULL, NULL, NULL, NULL, 2, 7, NULL, NULL, 3350),
(2457, 'head', 'steel helmet', 4600, 6, '[\"Black Knight\", \"Dragon\", \"Dwarf Guard\", \"Gargoyle\", \"Giant Spider\", \"The Old Widow\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3351),
(2458, 'head', 'chain helmet', 4200, 2, '[\"Minotaur\", \"Orc Berserker\", \"Orc Shaman\", \"Valkyrie\", \"Wild Warrior\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3352),
(2459, 'head', 'iron helmet', 3000, 5, '[\"Crypt Shambler\", \"Demon Skeleton\", \"Wild Warrior\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3353),
(2460, 'head', 'brass helmet', 2700, 3, '[\"Ghoul\", \"Hunter\", \"Minotaur\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3354),
(2461, 'head', 'leather helmet', 2200, 1, '[\"Goblin\", \"Hunter\", \"Illusion\", \"Minotaur Archer\", \"Minotaur Mage\", \"Troll\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3355),
(2462, 'head', 'devil helmet', 5000, 7, '[\"Apocalypse\", \"Bazir\", \"Demon\", \"Ferumbras\", \"Infernatil\", \"Morgaroth\", \"Orshabaal\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3356),
(2463, 'body', 'plate armor', 12000, 10, '[\"Ancient Scarab\", \"Behemoth\", \"Black Knight\", \"Bonebeast\", \"Giant Spider\", \"Orc Leader\", \"Orc Warlord\", \"The Old Widow\", \"Valkyrie\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3357),
(2464, 'body', 'chain armor', 10000, 6, '[\"Dwarf Soldier\", \"Minotaur\", \"Minotaur Guard\", \"Orc Berserker\", \"Orc Shaman\", \"Orc Warrior\", \"Valkyrie\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3358),
(2465, 'body', 'brass armor', 8000, 8, '[\"General Murius\", \"Hunter\", \"Minotaur Archer\", \"Minotaur Guard\", \"Minotaur Mage\", \"Orc Warlord\", \"The Horned Fox\", \"Wild Warrior\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3359),
(2466, 'body', 'golden armor', 8000, 14, '[\"Warlock\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3360),
(2467, 'body', 'leather armor', 6000, 4, '[\"Amazon\", \"Goblin\", \"Illusion\", \"Monk\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3361),
(2468, 'legs', 'studded legs', 2600, 2, '[\"Dwarf Geomancer\", \"Orc Spearman\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3362),
(2469, 'legs', 'dragon scale legs', 4800, 10, 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3363),
(2470, 'legs', 'golden legs', 5600, 9, '[\"Apocalypse\", \"Bazir\", \"Demon\", \"Ferumbras\", \"Infernatil\", \"Morgaroth\", \"Orshabaal\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3364),
(2471, 'head', 'golden helmet', 3200, 12, 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3365),
(2472, 'body', 'magic plate armor', 8500, 17, '[\"Apocalypse\", \"Bazir\", \"Demon\", \"Ferumbras\", \"Infernatil\", \"Morgaroth\", \"Orshabaal\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3366),
(2473, 'head', 'viking helmet', 3900, 4, '[\"Ghoul\", \"Skeleton\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3367),
(2474, 'head', 'winged helmet', 1200, 10, 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3368),
(2475, 'head', 'warrior helmet', 6800, 8, '[\"Black Knight\", \"Orc Leader\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3369),
(2476, 'body', 'knight armor', 12000, 12, '[\"Black Knight\", \"Giant Spider\", \"The Old Widow\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3370),
(2477, 'legs', 'knight legs', 7000, 8, '[\"Black Knight\", \"Giant Spider\", \"The Old Widow\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3371),
(2478, 'legs', 'brass legs', 3800, 5, '[\"Black Knight\", \"Giant Spider\", \"Orc Leader\", \"Orc Warlord\", \"Stalker\", \"The Old Widow\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3372),
(2479, 'head', 'strange helmet', 4600, 6, '[\"Demodras\", \"Dragon Lord\", \"Lich\", \"Vampire\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3373),
(2480, 'head', 'legion helmet', 3100, 4, '[\"Rotworm\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3374),
(2481, 'head', 'soldier helmet', 3200, 5, '[\"Dwarf Geomancer\", \"Dwarf Soldier\", \"Minotaur Archer\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3375),
(2482, 'head', 'studded helmet', 2450, 2, '[\"Elf\", \"Elf Scout\", \"Orc\", \"Orc Rider\", \"Orc Spearman\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3376),
(2483, 'body', 'scale armor', 10500, 9, '[\"Dwarf Guard\", \"Ghoul\", \"Grorlam\", \"Minotaur Archer\", \"Necromancer\", \"Necropharus\", \"Orc Rider\", \"Stone Golem\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3377),
(2484, 'body', 'studded armor', 7100, 5, '[\"Dwarf\", \"Elf\", \"Elf Scout\", \"Orc\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3378),
(2485, 'body', 'doublet', 2500, 2, 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3379),
(2486, 'body', 'noble armor', 12000, 11, 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3380),
(2487, 'body', 'crown armor', 9900, 13, '[\"Ashmunrah\", \"Hero\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3381),
(2488, 'legs', 'crown legs', 6500, 8, '[\"Hero\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3382),
(2489, 'body', 'dark armor', 12000, 10, '[\"Behemoth\", \"Black Knight\", \"Gargoyle\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3383),
(2490, 'head', 'dark helmet', 4600, 6, '[\"Black Knight\", \"Cyclops\", \"Orc Warlord\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3384),
(2491, 'head', 'crown helmet', 2950, 7, '[\"Hero\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3385),
(2492, 'body', 'dragon scale mail', 11400, 15, '[\"Demodras\", \"Dragon Lord\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3386),
(2493, 'head', 'demon helmet', 2950, 10, 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3387),
(2494, 'body', 'demon armor', 8000, 16, 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3388),
(2495, 'legs', 'demon legs', 7000, 9, 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3389),
(2496, 'head', 'horned helmet', 5100, 11, 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3390),
(2497, 'head', 'crusader helmet', 5200, 8, '[\"Orc Warlord\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3391),
(2498, 'head', 'royal helmet', 4800, 9, '[\"Demodras\", \"Dragon Lord\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3392),
(2499, 'head', 'amazon helmet', 2950, 7, 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3393),
(2500, 'body', 'amazon armor', 9900, 13, 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3394),
(2501, 'head', 'ceremonial mask', 4000, 9, 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3395),
(2502, 'head', 'dwarfen helmet', 4200, 6, '[\"The Horned Fox\"]', '[[\"Protection\", \"2\", \"physical\"]]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3396),
(2503, 'body', 'dwarven armor', 13000, 10, 'null', '[[\"Protection\", \"5\", \"physical\"]]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3397),
(2504, 'legs', 'dwarfen legs', 4900, 6, 'null', '[[\"Protection\", \"3\", \"physical\"]]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3398),
(2505, 'body', 'elven mail', 9000, 9, 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3399),
(2506, 'head', 'dragon scale helmet', 3250, 9, 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3400),
(2507, 'legs', 'elven legs', 3300, 4, 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3401),
(2508, 'body', 'native armor', 8000, 7, 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3402),
(2509, 'shield', 'steel shield', 6900, 0, '[\"Beholder\", \"Dragon\", \"Elder Beholder\", \"Grorlam\", \"Stone Golem\", \"The Evil Eye\", \"Wild Warrior\"]', NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, 3409),
(2510, 'shield', 'plate shield', 6500, 0, '[\"Cyclops\", \"Minotaur\", \"Orc Leader\"]', NULL, NULL, 17, NULL, NULL, NULL, NULL, NULL, 3410),
(2511, 'shield', 'brass shield', 6000, 0, '[\"Elf\", \"Skeleton\", \"Stalker\", \"Wild Warrior\"]', NULL, NULL, 16, NULL, NULL, NULL, NULL, NULL, 3411),
(2512, 'shield', 'wooden shield', 4000, 0, '[\"Beholder\", \"Frost Troll\", \"Gazer\", \"Orc Warrior\", \"The Evil Eye\", \"Troll\"]', NULL, NULL, 14, NULL, NULL, NULL, NULL, NULL, 3412),
(2513, 'shield', 'battle shield', 6200, 0, '[\"Cyclops\", \"Demon Skeleton\", \"Dwarf Guard\", \"Gargoyle\", \"General Murius\", \"Minotaur Guard\", \"Orc Rider\", \"The Horned Fox\"]', NULL, NULL, 23, NULL, NULL, NULL, NULL, NULL, 3413),
(2514, 'shield', 'mastermind shield', 5700, 0, '[\"Apocalypse\", \"Bazir\", \"Demon\", \"Ferumbras\", \"Infernatil\", \"Morgaroth\", \"Orshabaal\"]', NULL, NULL, 37, NULL, NULL, NULL, NULL, NULL, 3414),
(2515, 'shield', 'guardian shield', 5500, 0, '[\"Demon Skeleton\", \"Fire Devil\"]', NULL, NULL, 30, NULL, NULL, NULL, NULL, NULL, 3415),
(2516, 'shield', 'dragon shield', 6000, 0, '[\"Dragon\"]', NULL, NULL, 31, NULL, NULL, NULL, NULL, NULL, 3416),
(2517, 'shield', 'shield of honour', 5400, 0, 'null', NULL, NULL, 33, NULL, NULL, NULL, NULL, NULL, 3417),
(2518, 'shield', 'beholder shield', 4700, 0, '[\"Beholder\", \"Elder Beholder\", \"The Evil Eye\"]', NULL, NULL, 28, NULL, NULL, NULL, NULL, NULL, 3418),
(2519, 'shield', 'crown shield', 6200, 0, '[\"Hero\"]', NULL, NULL, 32, NULL, NULL, NULL, NULL, NULL, 3419),
(2520, 'shield', 'demon shield', 2600, 0, '[\"Apocalypse\", \"Bazir\", \"Demon\", \"Ferumbras\", \"Infernatil\", \"Morgaroth\", \"Orshabaal\"]', NULL, NULL, 35, NULL, NULL, NULL, NULL, NULL, 3420),
(2521, 'shield', 'dark shield', 5200, 0, 'null', NULL, NULL, 25, NULL, NULL, NULL, NULL, NULL, 3421),
(2522, 'shield', 'great shield', 8400, 0, 'null', NULL, NULL, 38, NULL, NULL, NULL, NULL, NULL, 3422),
(2523, 'shield', 'blessed shield', 6800, 0, 'null', NULL, NULL, 40, NULL, NULL, NULL, NULL, NULL, 3423),
(2524, 'shield', 'ornamented shield', 6700, 0, 'null', NULL, NULL, 22, NULL, NULL, NULL, NULL, NULL, 3424),
(2525, 'shield', 'dwarven shield', 5500, 0, '[\"Dwarf Soldier\"]', NULL, NULL, 26, NULL, NULL, NULL, NULL, NULL, 3425),
(2526, 'shield', 'studded shield', 5800, 0, '[\"Amazon\", \"Orc\"]', NULL, NULL, 15, NULL, NULL, NULL, NULL, NULL, 3426),
(2527, 'shield', 'rose shield', 5200, 0, 'null', NULL, NULL, 27, NULL, NULL, NULL, NULL, NULL, 3427),
(2528, 'shield', 'tower shield', 8200, 0, '[\"Demodras\", \"Dragon Lord\"]', NULL, NULL, 32, NULL, NULL, NULL, NULL, NULL, 3428),
(2529, 'shield', 'black shield', 4200, 0, '[\"Mummy\", \"Priestess\"]', NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, 3429),
(2530, 'shield', 'copper shield', 6300, 0, '[\"Dwarf\", \"Orc Warrior\", \"Rotworm\"]', NULL, NULL, 19, NULL, NULL, NULL, NULL, NULL, 3430),
(2531, 'shield', 'viking shield', 6600, 0, 'null', NULL, NULL, 22, NULL, NULL, NULL, NULL, NULL, 3431),
(2532, 'shield', 'ancient shield', 6100, 0, '[\"Ghost\"]', NULL, NULL, 27, NULL, NULL, NULL, NULL, NULL, 3432),
(2533, 'shield', 'griffin shield', 5000, 0, 'null', NULL, NULL, 29, NULL, NULL, NULL, NULL, NULL, 3433),
(2534, 'shield', 'vampire shield', 3800, 0, '[\"Vampire\"]', NULL, NULL, 34, NULL, NULL, NULL, NULL, NULL, 3434),
(2535, 'shield', 'castle shield', 4900, 0, '[\"Lich\"]', NULL, NULL, 28, NULL, NULL, NULL, NULL, NULL, 3435),
(2536, 'shield', 'medusa shield', 5800, 0, 'null', NULL, NULL, 33, NULL, NULL, NULL, NULL, NULL, 3436),
(2537, 'shield', 'amazon shield', 6200, 0, 'null', NULL, NULL, 32, NULL, NULL, NULL, NULL, NULL, 3437),
(2538, 'shield', 'eagle shield', 6200, 0, 'null', NULL, NULL, 32, NULL, NULL, NULL, NULL, NULL, 3438),
(2539, 'shield', 'phoenix shield', 3500, 0, '[\"Mahrdis\"]', NULL, NULL, 34, NULL, NULL, NULL, NULL, NULL, 3439),
(2540, 'shield', 'scarab shield', 4700, 0, '[\"Ancient Scarab\"]', NULL, NULL, 25, NULL, NULL, NULL, NULL, NULL, 3440),
(2541, 'shield', 'bone shield', 5500, 0, '[\"Bonebeast\", \"Crypt Shambler\", \"Necropharus\"]', NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, 3441),
(2542, 'shield', 'tempest shield', 5100, 0, 'null', NULL, NULL, 36, NULL, NULL, NULL, NULL, NULL, 3442),
(2543, 'ammunition', 'bolt', 80, 0, '[\"Dwarf Soldier\", \"Minotaur Archer\", \"Minotaur Archer\"]', NULL, 30, NULL, NULL, NULL, NULL, NULL, NULL, 3446),
(2544, 'ammunition', 'arrow', 70, 0, '[\"Elf\", \"Elf Arcanist\", \"Elf Scout\", \"Hero\", \"Hunter\", \"Hunter\", \"Omruc\", \"Scarab\"]', NULL, 25, NULL, NULL, NULL, NULL, NULL, NULL, 3447),
(2545, 'ammunition', 'poison arrow', 80, 0, '[\"Elf Scout\", \"Omruc\"]', NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, 3448),
(2546, 'ammunition', 'burst arrow', 90, 0, '[\"Dragon\", \"Hunter\", \"Omruc\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3449),
(2547, 'ammunition', 'power bolt', 90, 0, '[\"Demodras\", \"Dragon Lord\", \"Omruc\"]', NULL, 40, NULL, NULL, NULL, NULL, NULL, NULL, 3450),
(2548, 'tool', 'pitchfork', 2500, 0, '[\"Fire Devil\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3451),
(2549, 'tool', 'rake', 1500, 0, 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3452),
(2550, 'club', 'scythe', 3000, 0, 'null', NULL, 16, 1, 3500, 2, NULL, NULL, NULL, 3453),
(2551, 'tool', 'broom', 1100, 0, '[\"Witch\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3454),
(2552, 'tool', 'hoe', 2800, 0, 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3455),
(2553, 'tool', 'pick', 4500, 0, '[\"Behemoth\", \"Dwarf\", \"Grorlam\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3456),
(2554, 'tool', 'shovel', 3500, 0, '[\"Dwarf Soldier\", \"Minotaur\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3457),
(2558, 'tool', 'saw', 1000, 0, 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3461),
(2580, 'tool', 'fishing rod', 850, 0, '[\"General Murius\", \"Minotaur Guard\", \"Swamp Troll\", \"The Horned Fox\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3483),
(2640, 'feet', 'soft boots', 800, 0, 'null', '[[\"3\", \"healthgain\"], [\"6000\", \"healthticks\"], [\"12\", \"managain\"], [\"6000\", \"manaticks\"]]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3549),
(2641, 'feet', 'patched boots', 1000, 2, 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3550),
(2642, 'feet', 'sandals', 600, 0, '[\"Dharalion\", \"Elf Arcanist\", \"Elf Scout\", \"Fernfang\", \"Ghost\", \"Monk\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3551),
(2643, 'feet', 'leather boots', 900, 1, '[\"Dwarf Geomancer\", \"Dwarf Guard\", \"Elf\", \"Swamp Troll\", \"Troll\", \"Witch\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3552),
(2644, 'feet', 'bunnyslippers', 600, 0, '[\"Yeti\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3553),
(2645, 'feet', 'steel boots', 2900, 3, '[\"Behemoth\", \"Grorlam\", \"Morguthis\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3554),
(2646, 'feet', 'golden boots', 3100, 4, 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3555),
(2647, 'legs', 'plate legs', 5000, 7, '[\"Dragon\", \"Orc Leader\", \"Orc Warlord\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3557),
(2648, 'legs', 'chain legs', 3500, 3, '[\"General Murius\", \"Minotaur Guard\", \"Minotaur Mage\", \"The Horned Fox\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3558),
(2649, 'legs', 'leather legs', 1800, 1, '[\"Dwarf\", \"Hunter\", \"Minotaur\", \"Minotaur Archer\", \"Minotaur Guard\", \"Minotaur Mage\", \"Stalker\", \"Vampire\", \"Wild Warrior\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3559),
(2650, 'body', 'jacket', 2400, 1, 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3561),
(2651, 'body', 'coat', 2700, 1, '[\"Frost Troll\", \"Witch\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3562),
(2652, 'body', 'green tunic', 930, 1, '[\"Dharalion\", \"Elf Arcanist\", \"Fernfang\", \"Hero\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3563),
(2653, 'body', 'red tunic', 1400, 2, 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3564),
(2654, 'body', 'cape', 3200, 1, '[\"Ghost\", \"Witch\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3565),
(2655, 'body', 'red robe', 2600, 1, '[\"Banshee\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3566),
(2656, 'body', 'blue robe', 2200, 11, '[\"Banshee\", \"Lich\", \"Vashresamun\", \"Warlock\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3567),
(2657, 'body', 'simple dress', 2400, 0, '[\"Banshee\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3568),
(2658, 'body', 'white dress', 2400, 0, 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3569),
(2659, 'body', 'ball gown', 2500, 0, 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3570),
(2660, 'body', 'rangers cloak', 3200, 1, 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3571),
(2661, 'necklace', 'scarf', 200, 1, '[\"Hero\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3572),
(2662, 'head', 'magician hat', 750, 1, '[\"Rahemos\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3573),
(2663, 'head', 'mystic turban', 850, 1, '[\"Blue Djinn\", \"Efreet\", \"Green Djinn\", \"Marid\", \"Necromancer\", \"Necropharus\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3574),
(2664, 'head', 'wood cape', 1100, 2, 'null', '[[\"Protection\", \"4\", \"poison\"]]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3575),
(2665, 'head', 'post officers hat', 700, 1, 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3576),
(2666, 'food', 'meat', 1300, 0, '[\"Badger\", \"Bear\", \"Behemoth\", \"Black Sheep\", \"Cyclops\", \"Deer\", \"Gargoyle\", \"General Murius\", \"Hero\", \"Hyaena\", \"Larva\", \"Lion\", \"Minotaur\", \"Minotaur Archer\", \"Minotaur Guard\", \"Orc\", \"Orc Leader\", \"Orc Rider\", \"Orc Spearman\", \"Orc Warlord\", \"Orc Warrior\", \"Pig\", \"Polar Bear\", \"Rabbit\", \"Rotworm\", \"Scarab\", \"Sheep\", \"Skunk\", \"The Horned Fox\", \"Troll\", \"Valkyrie\", \"War Wolf\", \"Wild Warrior\", \"Winter Wolf\", \"Wolf\", \"Yeti\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3577),
(2667, 'food', 'fish', 520, 0, '[\"Frost Troll\", \"Goblin\", \"Illusion\", \"Orc Leader\", \"Orc Warlord\", \"Swamp Troll\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3578),
(2668, 'food', 'salmon', 320, 0, 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3579),
(2669, 'food', 'fish', 830, 0, 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3580),
(2670, 'food', 'shrimp', 50, 0, 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3581),
(2671, 'food', 'ham', 2000, 0, '[\"Bear\", \"Cyclops\", \"Deer\", \"Gargoyle\", \"Lion\", \"Orc Berserker\", \"Polar Bear\", \"Rotworm\", \"War Wolf\", \"Yeti\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3582),
(2672, 'food', 'dragon ham', 3000, 0, '[\"Demodras\", \"Dragon\", \"Dragon Lord\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3583),
(2673, 'food', 'pear', 140, 0, '[\"Dwarf Geomancer\", \"Efreet\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3584),
(2674, 'food', 'red apple', 150, 0, '[\"Elf\", \"Omruc\", \"Priestess\", \"Valkyrie\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3585),
(2675, 'food', 'orange', 110, 0, '[\"Hunter\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3586),
(2676, 'food', 'banana', 180, 0, 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3587),
(2677, 'food', 'blueberry', 20, 0, '[\"Marid\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3588),
(2678, 'food', 'coconut', 480, 0, '[\"Demon\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3589),
(2679, 'food', 'cherry', 20, 0, '[\"Bug\", \"Mimic\", \"Warlock\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3590),
(2680, 'food', 'strawberry', 20, 0, 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3591),
(2681, 'food', 'grapes', 250, 0, '[\"Elf Scout\", \"Hero\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3592),
(2682, 'food', 'melon', 950, 0, '[\"Dharalion\", \"Elf Arcanist\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3593),
(2683, 'food', 'pumpkin', 1350, 0, 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3594),
(2684, 'food', 'carrot', 160, 0, '[\"Blue Djinn\", \"Minotaur Mage\", \"Rabbit\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3595),
(2685, 'food', 'tomato', 100, 0, 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3596),
(2686, 'food', 'corncob', 350, 0, '[\"Orc Shaman\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3597),
(2687, 'food', 'cookie', 10, 0, '[\"Cave Rat\", \"Witch\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3598),
(2688, 'food', 'candy cane', 50, 0, 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3599),
(2689, 'food', 'bread', 500, 0, '[\"Dharalion\", \"Elf Arcanist\", \"Fernfang\", \"Monk\", \"Warlock\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3600),
(2690, 'food', 'roll', 100, 0, '[\"Hunter\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3601),
(2691, 'food', 'brown bread', 400, 0, '[\"Amazon\", \"Black Knight\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3602),
(2695, 'food', 'egg', 30, 0, 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3606),
(2696, 'food', 'cheese', 400, 0, '[\"Cave Rat\", \"Green Djinn\", \"Rat\", \"Witch\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3607),
(2787, 'food', 'white mushroom', 40, 0, '[\"Dwarf\", \"Dwarf Geomancer\", \"Dwarf Guard\", \"Dwarf Soldier\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3723),
(2788, 'food', 'red mushroom', 50, 0, 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3724),
(2789, 'food', 'brown mushroom', 20, 0, 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3725),
(2790, 'food', 'orange mushroom', 30, 0, 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3726),
(2792, 'food', 'dark mushroom', 10, 0, '[\"Warlock\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3728),
(3939, 'backpack', 'bag', 800, 0, 'null', '[[\"8\", \"containersize\"]]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2864),
(3940, 'backpack', 'backpack', 1800, 0, 'null', '[[\"20\", \"containersize\"]]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2872),
(3960, 'backpack', 'old and used backpack', 1800, 0, 'null', '[[\"20\", \"containersize\"]]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3244),
(4847, 'body', 'spectral dress', 1000, 0, 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4836),
(5090, 'quiver', 'arrow quiver', 1800, 0, 'null', '[[\"5\", \"containersize\"]]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5090),
(5091, 'quiver', 'bolt quiver', 1800, 0, 'null', '[[\"5\", \"containersize\"]]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5091),
(5093, 'backpack', 'Retronia backpack', 1800, 0, 'null', '[[\"40\", \"containersize\"]]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5103);

-- --------------------------------------------------------

--
-- Table structure for table `guilds`
--

CREATE TABLE `guilds` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `ownerid` int NOT NULL,
  `creationdata` int NOT NULL,
  `motd` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `logo_name` varchar(255) NOT NULL DEFAULT 'default.gif'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Triggers `guilds`
--
DELIMITER $$
CREATE TRIGGER `oncreate_guilds` AFTER INSERT ON `guilds` FOR EACH ROW BEGIN
    INSERT INTO `guild_ranks` (`name`, `level`, `guild_id`) VALUES ('the Leader', 3, NEW.`id`);
    INSERT INTO `guild_ranks` (`name`, `level`, `guild_id`) VALUES ('a Vice-Leader', 2, NEW.`id`);
    INSERT INTO `guild_ranks` (`name`, `level`, `guild_id`) VALUES ('a Member', 1, NEW.`id`);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `guildwar_kills`
--

CREATE TABLE `guildwar_kills` (
  `id` int NOT NULL,
  `killer` varchar(50) NOT NULL,
  `target` varchar(50) NOT NULL,
  `killerguild` int NOT NULL DEFAULT '0',
  `targetguild` int NOT NULL DEFAULT '0',
  `warid` int NOT NULL DEFAULT '0',
  `time` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `guild_invites`
--

CREATE TABLE `guild_invites` (
  `player_id` int NOT NULL DEFAULT '0',
  `guild_id` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `guild_membership`
--

CREATE TABLE `guild_membership` (
  `player_id` int NOT NULL,
  `guild_id` int NOT NULL,
  `rank_id` int NOT NULL,
  `nick` varchar(15) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `guild_ranks`
--

CREATE TABLE `guild_ranks` (
  `id` int NOT NULL,
  `guild_id` int NOT NULL COMMENT 'guild',
  `name` varchar(255) NOT NULL COMMENT 'rank name',
  `level` int NOT NULL COMMENT 'rank level - leader, vice, member, maybe something else'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `guild_wars`
--

CREATE TABLE `guild_wars` (
  `id` int NOT NULL,
  `guild1` int NOT NULL DEFAULT '0',
  `guild2` int NOT NULL DEFAULT '0',
  `name1` varchar(255) NOT NULL,
  `name2` varchar(255) NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `started` bigint NOT NULL DEFAULT '0',
  `ended` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `houses`
--

CREATE TABLE `houses` (
  `id` int NOT NULL,
  `owner` int NOT NULL,
  `paid` int UNSIGNED NOT NULL DEFAULT '0',
  `warnings` int NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `rent` int NOT NULL DEFAULT '0',
  `town_id` int NOT NULL DEFAULT '0',
  `bid` int NOT NULL DEFAULT '0',
  `bid_end` int NOT NULL DEFAULT '0',
  `last_bid` int NOT NULL DEFAULT '0',
  `highest_bidder` int NOT NULL DEFAULT '0',
  `size` int NOT NULL DEFAULT '0',
  `beds` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `houses`
--

INSERT INTO `houses` (`id`, `owner`, `paid`, `warnings`, `name`, `rent`, `town_id`, `bid`, `bid_end`, `last_bid`, `highest_bidder`, `size`, `beds`) VALUES
(1, 0, 0, 0, 'Spiritkeep', 88800, 1, 0, 0, 0, 0, 592, 23),
(2, 0, 0, 0, 'Snake Tower', 117000, 1, 0, 0, 0, 0, 780, 21),
(3, 0, 0, 0, 'Halls of the Adventurers', 63150, 1, 0, 0, 0, 0, 421, 18),
(4, 0, 0, 0, 'Dark Mansion', 73500, 1, 0, 0, 0, 0, 490, 17),
(5, 0, 0, 0, 'Bloodhall', 69450, 1, 0, 0, 0, 0, 463, 16),
(6, 0, 0, 0, 'Sunset Homes, Flat 01', 3150, 1, 0, 0, 0, 0, 21, 1),
(7, 0, 0, 0, 'Sunset Homes, Flat 02', 3150, 1, 0, 0, 0, 0, 21, 1),
(8, 0, 0, 0, 'Sunset Homes, Flat 03', 3150, 1, 0, 0, 0, 0, 21, 1),
(9, 0, 0, 0, 'Sunset Homes, Flat 11', 3150, 1, 0, 0, 0, 0, 21, 1),
(10, 0, 0, 0, 'Sunset Homes, Flat 12', 3150, 1, 0, 0, 0, 0, 21, 1),
(11, 0, 0, 0, 'Sunset Homes, Flat 13', 4350, 1, 0, 0, 0, 0, 29, 2),
(12, 0, 0, 0, 'Sunset Homes, Flat 14', 3150, 1, 0, 0, 0, 0, 21, 1),
(13, 0, 0, 0, 'Sunset Homes, Flat 21', 3150, 1, 0, 0, 0, 0, 21, 1),
(14, 0, 0, 0, 'Sunset Homes, Flat 22', 3150, 1, 0, 0, 0, 0, 21, 1),
(15, 0, 0, 0, 'Sunset Homes, Flat 23', 4350, 1, 0, 0, 0, 0, 29, 2),
(16, 0, 0, 0, 'Sunset Homes, Flat 24', 3150, 1, 0, 0, 0, 0, 21, 1),
(17, 0, 0, 0, 'Beach Home Apartments, Flat 01', 3150, 1, 0, 0, 0, 0, 21, 1),
(18, 0, 0, 0, 'Beach Home Apartments, Flat 02', 3000, 1, 0, 0, 0, 0, 20, 1),
(19, 0, 0, 0, 'Beach Home Apartments, Flat 03', 3300, 1, 0, 0, 0, 0, 22, 1),
(20, 0, 0, 0, 'Beach Home Apartments, Flat 04', 3150, 1, 0, 0, 0, 0, 21, 1),
(21, 0, 0, 0, 'Beach Home Apartments, Flat 05', 3150, 1, 0, 0, 0, 0, 21, 1),
(22, 0, 0, 0, 'Beach Home Apartments, Flat 06', 4650, 1, 0, 0, 0, 0, 31, 2),
(23, 0, 0, 0, 'Beach Home Apartments, Flat 11', 3150, 1, 0, 0, 0, 0, 21, 1),
(24, 0, 0, 0, 'Beach Home Apartments, Flat 12', 3750, 1, 0, 0, 0, 0, 25, 1),
(25, 0, 0, 0, 'Beach Home Apartments, Flat 13', 3750, 1, 0, 0, 0, 0, 25, 1),
(26, 0, 0, 0, 'Beach Home Apartments, Flat 14', 1950, 1, 0, 0, 0, 0, 13, 1),
(27, 0, 0, 0, 'Beach Home Apartments, Flat 15', 1950, 1, 0, 0, 0, 0, 13, 1),
(28, 0, 0, 0, 'Beach Home Apartments, Flat 16', 4200, 1, 0, 0, 0, 0, 28, 2),
(29, 0, 0, 0, 'Alai Flats, Flat 01', 3600, 1, 0, 0, 0, 0, 24, 1),
(30, 0, 0, 0, 'Alai Flats, Flat 02', 3750, 1, 0, 0, 0, 0, 25, 1),
(31, 0, 0, 0, 'Alai Flats, Flat 03', 3750, 1, 0, 0, 0, 0, 25, 1),
(32, 0, 0, 0, 'Alai Flats, Flat 04', 3750, 1, 0, 0, 0, 0, 25, 1),
(33, 0, 0, 0, 'Alai Flats, Flat 05', 5250, 1, 0, 0, 0, 0, 35, 2),
(34, 0, 0, 0, 'Alai Flats, Flat 06', 5100, 1, 0, 0, 0, 0, 34, 2),
(35, 0, 0, 0, 'Alai Flats, Flat 07', 3600, 1, 0, 0, 0, 0, 24, 1),
(36, 0, 0, 0, 'Alai Flats, Flat 08', 3600, 1, 0, 0, 0, 0, 24, 1),
(37, 0, 0, 0, 'Alai Flats, Flat 11', 3900, 1, 0, 0, 0, 0, 26, 1),
(38, 0, 0, 0, 'Alai Flats, Flat 12', 3600, 1, 0, 0, 0, 0, 24, 1),
(39, 0, 0, 0, 'Alai Flats, Flat 13', 4200, 1, 0, 0, 0, 0, 28, 1),
(40, 0, 0, 0, 'Alai Flats, Flat 14', 5250, 1, 0, 0, 0, 0, 35, 1),
(41, 0, 0, 0, 'Alai Flats, Flat 15', 7650, 1, 0, 0, 0, 0, 51, 2),
(42, 0, 0, 0, 'Alai Flats, Flat 16', 7650, 1, 0, 0, 0, 0, 51, 2),
(43, 0, 0, 0, 'Alai Flats, Flat 17', 5250, 1, 0, 0, 0, 0, 35, 1),
(44, 0, 0, 0, 'Alai Flats, Flat 18', 5250, 1, 0, 0, 0, 0, 35, 1),
(45, 0, 0, 0, 'Alai Flats, Flat 22', 3600, 1, 0, 0, 0, 0, 24, 1),
(46, 0, 0, 0, 'Alai Flats, Flat 21', 4050, 1, 0, 0, 0, 0, 27, 1),
(47, 0, 0, 0, 'Alai Flats, Flat 23', 4200, 1, 0, 0, 0, 0, 28, 1),
(48, 0, 0, 0, 'Alai Flats, Flat 24', 5250, 1, 0, 0, 0, 0, 35, 1),
(49, 0, 0, 0, 'Alai Flats, Flat 25', 7650, 1, 0, 0, 0, 0, 51, 2),
(50, 0, 0, 0, 'Alai Flats, Flat 26', 7500, 1, 0, 0, 0, 0, 50, 2),
(51, 0, 0, 0, 'Alai Flats, Flat 27', 5250, 1, 0, 0, 0, 0, 35, 1),
(52, 0, 0, 0, 'Alai Flats, Flat 28', 5250, 1, 0, 0, 0, 0, 35, 1),
(53, 0, 0, 0, 'Upper Swamp Lane 2', 18150, 1, 0, 0, 0, 0, 121, 4),
(54, 0, 0, 0, 'Upper Swamp Lane 4', 18150, 1, 0, 0, 0, 0, 121, 4),
(55, 0, 0, 0, 'Lower Swamp Lane 1', 18300, 1, 0, 0, 0, 0, 122, 4),
(56, 0, 0, 0, 'Lower Swamp Lane 3', 18150, 1, 0, 0, 0, 0, 121, 4),
(57, 0, 0, 0, 'Upper Swamp Lane 8', 29850, 1, 0, 0, 0, 0, 199, 3),
(58, 0, 0, 0, 'Southern Thais Guildhall', 78150, 1, 0, 0, 0, 0, 521, 16),
(59, 0, 0, 0, 'Upper Swamp Lane 10', 7350, 1, 0, 0, 0, 0, 49, 3),
(60, 0, 0, 0, 'Upper Swamp Lane 12', 14850, 1, 0, 0, 0, 0, 99, 3),
(61, 0, 0, 0, 'Sorcerer\'s Avenue 1a', 4800, 1, 0, 0, 0, 0, 32, 2),
(62, 0, 0, 0, 'Sorcerer\'s Avenue 1b', 4050, 1, 0, 0, 0, 0, 27, 2),
(63, 0, 0, 0, 'Sorcerer\'s Avenue 1c', 4800, 1, 0, 0, 0, 0, 32, 2),
(64, 0, 0, 0, 'Sorcerer\'s Avenue 5', 10950, 1, 0, 0, 0, 0, 73, 1),
(65, 0, 0, 0, 'Sorcerer\'s Avenue Labs 2a', 3150, 1, 0, 0, 0, 0, 21, 1),
(66, 0, 0, 0, 'Sorcerer\'s Avenue Labs 2b', 3150, 1, 0, 0, 0, 0, 21, 1),
(67, 0, 0, 0, 'Sorcerer\'s Avenue Labs 2c', 2850, 1, 0, 0, 0, 0, 19, 1),
(68, 0, 0, 0, 'Sorcerer\'s Avenue Labs 2d', 2850, 1, 0, 0, 0, 0, 19, 1),
(69, 0, 0, 0, 'Sorcerer\'s Avenue Labs 2e', 2850, 1, 0, 0, 0, 0, 19, 1),
(70, 0, 0, 0, 'Sorcerer\'s Avenue Labs 2f', 2850, 1, 0, 0, 0, 0, 19, 1),
(71, 0, 0, 0, 'Thais Clanhall', 43800, 1, 0, 0, 0, 0, 292, 10),
(72, 0, 0, 0, 'Harbour Street 4', 3900, 1, 0, 0, 0, 0, 26, 1),
(73, 0, 0, 0, 'Thais Hostel', 22500, 1, 0, 0, 0, 0, 150, 24),
(74, 0, 0, 0, 'Farm Lane, Basement (Shop)', 4500, 1, 0, 0, 0, 0, 30, 0),
(75, 0, 0, 0, 'Farm Lane, 1st floor (Shop)', 4500, 1, 0, 0, 0, 0, 30, 0),
(76, 0, 0, 0, 'Farm Lane, 2nd Floor (Shop)', 4500, 1, 0, 0, 0, 0, 30, 0),
(77, 0, 1680403430, 0, 'Warriors Guildhall', 66900, 1, 0, 0, 0, 0, 446, 11),
(78, 0, 0, 0, 'Main Street 9, 1st floor (Shop)', 6600, 1, 0, 0, 0, 0, 44, 0),
(79, 0, 0, 0, 'Main Street 9a, 2nd floor (Shop)', 3450, 1, 0, 0, 0, 0, 23, 0),
(80, 0, 0, 0, 'Main Street 9b, 2nd floor (Shop)', 6150, 1, 0, 0, 0, 0, 41, 0),
(81, 0, 0, 0, 'Mill Avenue 1 (Shop)', 6000, 1, 0, 0, 0, 0, 40, 1),
(82, 0, 0, 0, 'Mill Avenue 2 (Shop)', 10350, 1, 0, 0, 0, 0, 69, 2),
(83, 0, 0, 0, 'Mill Avenue 3', 5700, 1, 0, 0, 0, 0, 38, 2),
(84, 0, 0, 0, 'Mill Avenue 4', 6000, 1, 0, 0, 0, 0, 40, 2),
(85, 0, 0, 0, 'Mill Avenue 5', 15300, 1, 0, 0, 0, 0, 102, 4),
(86, 0, 1688512929, 7, 'The City Wall 5a', 3300, 1, 0, 0, 0, 0, 22, 1),
(87, 0, 0, 0, 'The City Wall 5b', 3300, 1, 0, 0, 0, 0, 22, 1),
(88, 0, 0, 0, 'The City Wall 5c', 3150, 1, 0, 0, 0, 0, 21, 1),
(89, 0, 0, 0, 'The City Wall 5d', 3150, 1, 0, 0, 0, 0, 21, 1),
(90, 0, 0, 0, 'The City Wall 5e', 3450, 1, 0, 0, 0, 0, 23, 1),
(91, 0, 0, 0, 'The City Wall 5f', 3450, 1, 0, 0, 0, 0, 23, 1),
(92, 0, 0, 0, 'The City Wall 7a', 3450, 1, 0, 0, 0, 0, 23, 1),
(93, 0, 0, 0, 'The City Wall 7b', 3450, 1, 0, 0, 0, 0, 23, 1),
(94, 0, 0, 0, 'The City Wall 7c', 4200, 1, 0, 0, 0, 0, 28, 2),
(95, 0, 0, 0, 'The City Wall 7d', 4200, 1, 0, 0, 0, 0, 28, 2),
(96, 0, 0, 0, 'The City Wall 7e', 4050, 1, 0, 0, 0, 0, 27, 2),
(97, 0, 0, 0, 'The City Wall 7f', 4050, 1, 0, 0, 0, 0, 27, 2),
(98, 0, 0, 0, 'The City Wall 7g', 3300, 1, 0, 0, 0, 0, 22, 1),
(99, 0, 0, 0, 'The City Wall 7h', 3300, 1, 0, 0, 0, 0, 22, 1),
(100, 0, 0, 0, 'The City Wall 9', 5100, 1, 0, 0, 0, 0, 34, 2),
(101, 0, 0, 0, 'The City Wall 3a', 4800, 1, 0, 0, 0, 0, 32, 2),
(102, 0, 0, 0, 'The City Wall 3b', 4800, 1, 0, 0, 0, 0, 32, 2),
(103, 0, 0, 0, 'The City Wall 3c', 4800, 1, 0, 0, 0, 0, 32, 2),
(104, 0, 0, 0, 'The City Wall 3d', 4800, 1, 0, 0, 0, 0, 32, 2),
(105, 0, 0, 0, 'The City Wall 3e', 4800, 1, 0, 0, 0, 0, 32, 2),
(106, 0, 0, 0, 'The City Wall 3f', 4800, 1, 0, 0, 0, 0, 32, 2),
(107, 0, 0, 0, 'The City Wall 1a', 6150, 1, 0, 0, 0, 0, 41, 2),
(108, 0, 0, 0, 'The City Wall 1b', 6000, 1, 0, 0, 0, 0, 40, 2),
(109, 0, 0, 0, 'Harbour Place 2 (Shop)', 5550, 1, 0, 0, 0, 0, 37, 1),
(110, 0, 0, 0, 'Harbour Place 1 (Shop)', 5100, 1, 0, 0, 0, 0, 34, 0),
(111, 0, 0, 0, 'Mercenary Tower', 130200, 1, 0, 0, 0, 0, 868, 26),
(112, 0, 0, 0, 'Guildhall of the Red Rose', 77100, 1, 0, 0, 0, 0, 514, 15),
(113, 0, 0, 0, 'Fibula Village 1', 3150, 1, 0, 0, 0, 0, 21, 1),
(114, 0, 0, 0, 'Fibula Village 2', 3150, 1, 0, 0, 0, 0, 21, 1),
(115, 0, 0, 0, 'Fibula Village 3', 12000, 1, 0, 0, 0, 0, 80, 4),
(116, 0, 0, 0, 'Fibula Village 4', 5250, 1, 0, 0, 0, 0, 35, 2),
(117, 0, 0, 0, 'Fibula Village 5', 5250, 1, 0, 0, 0, 0, 35, 2),
(118, 0, 0, 0, 'Fibula Village, Tower Flat', 18600, 1, 0, 0, 0, 0, 124, 2),
(119, 0, 0, 0, 'Fibula Village, Bar', 14850, 1, 0, 0, 0, 0, 99, 2),
(120, 0, 0, 0, 'Fibula Clanhall', 37050, 1, 0, 0, 0, 0, 247, 10),
(121, 0, 0, 0, 'Fibula Village, Villa', 56850, 1, 0, 0, 0, 0, 379, 7),
(122, 0, 0, 0, 'The Tibianic', 122100, 1, 0, 0, 0, 0, 814, 22),
(123, 0, 0, 0, 'Castle of Greenshore', 74250, 1, 0, 0, 0, 0, 495, 12),
(124, 0, 0, 0, 'Greenshore Village, Villa', 34350, 1, 0, 0, 0, 0, 229, 4),
(125, 0, 0, 0, 'Greenshore Village, Shop', 6750, 1, 0, 0, 0, 0, 45, 1),
(126, 0, 0, 0, 'Greenshore Village 1', 7500, 1, 0, 0, 0, 0, 50, 3),
(127, 0, 0, 0, 'Greenshore Village 2', 3150, 1, 0, 0, 0, 0, 21, 1),
(128, 0, 0, 0, 'Greenshore Village 3', 3000, 1, 0, 0, 0, 0, 20, 1),
(129, 0, 0, 0, 'Greenshore Village 4', 3000, 1, 0, 0, 0, 0, 20, 1),
(130, 0, 0, 0, 'Greenshore Village 5', 3450, 1, 0, 0, 0, 0, 23, 1),
(131, 0, 0, 0, 'Greenshore Village 6', 16200, 1, 0, 0, 0, 0, 108, 2),
(132, 0, 0, 0, 'Greenshore Village 7', 4650, 1, 0, 0, 0, 0, 31, 1),
(133, 0, 0, 0, 'Greenshore Clanhall', 37800, 1, 0, 0, 0, 0, 252, 10),
(134, 0, 0, 0, 'Moonkeep', 62850, 2, 0, 0, 0, 0, 419, 16),
(135, 0, 0, 0, 'House of Recreation', 88950, 2, 0, 0, 0, 0, 593, 16),
(136, 0, 0, 0, 'Nordic Stronghold', 91350, 2, 0, 0, 0, 0, 609, 21),
(137, 0, 0, 0, 'Druids Retreat A', 6600, 2, 0, 0, 0, 0, 44, 2),
(138, 0, 0, 0, 'Druids Retreat B', 6300, 2, 0, 0, 0, 0, 42, 2),
(139, 0, 0, 0, 'Druids Retreat C', 4800, 2, 0, 0, 0, 0, 32, 2),
(140, 0, 0, 0, 'Druids Retreat D', 5550, 2, 0, 0, 0, 0, 37, 2),
(141, 0, 0, 0, 'Central Plaza 3', 2100, 2, 0, 0, 0, 0, 14, 0),
(142, 0, 0, 0, 'Central Plaza 2', 2100, 2, 0, 0, 0, 0, 14, 0),
(143, 0, 0, 0, 'Central Plaza 1', 2100, 2, 0, 0, 0, 0, 14, 0),
(144, 0, 0, 0, 'Park Lane 1a', 6000, 2, 0, 0, 0, 0, 40, 2),
(145, 0, 0, 0, 'Park Lane 1b', 6600, 2, 0, 0, 0, 0, 44, 2),
(146, 0, 0, 0, 'Park Lane 3b', 5400, 2, 0, 0, 0, 0, 36, 2),
(147, 0, 0, 0, 'Park Lane 3a', 6000, 2, 0, 0, 0, 0, 40, 2),
(148, 0, 0, 0, 'Park Lane 4', 4800, 2, 0, 0, 0, 0, 32, 2),
(149, 0, 0, 0, 'Park Lane 2', 4500, 2, 0, 0, 0, 0, 30, 2),
(150, 0, 0, 0, 'Theater Avenue 6a', 3450, 2, 0, 0, 0, 0, 23, 2),
(151, 0, 0, 0, 'Theater Avenue 6b', 3450, 2, 0, 0, 0, 0, 23, 2),
(152, 0, 0, 0, 'Theater Avenue 6c', 1200, 2, 0, 0, 0, 0, 8, 1),
(153, 0, 0, 0, 'Theater Avenue 6d', 1200, 2, 0, 0, 0, 0, 8, 1),
(154, 0, 0, 0, 'Theater Avenue 6e', 3750, 2, 0, 0, 0, 0, 25, 2),
(155, 0, 0, 0, 'Theater Avenue 6f', 3750, 2, 0, 0, 0, 0, 25, 2),
(156, 0, 0, 0, 'Theater Avenue 5a', 2400, 2, 0, 0, 0, 0, 16, 1),
(157, 0, 0, 0, 'Theater Avenue 5b', 2550, 2, 0, 0, 0, 0, 17, 1),
(158, 0, 0, 0, 'Theater Avenue 5c', 2250, 2, 0, 0, 0, 0, 15, 1),
(159, 0, 0, 0, 'Theater Avenue 5d', 2250, 2, 0, 0, 0, 0, 15, 1),
(160, 0, 0, 0, 'Theater Avenue 8a', 5850, 2, 0, 0, 0, 0, 39, 2),
(161, 0, 0, 0, 'Theater Avenue 8b', 5850, 2, 0, 0, 0, 0, 39, 3),
(162, 0, 0, 0, 'Theater Avenue 7, Flat 01', 1650, 2, 0, 0, 0, 0, 11, 1),
(163, 0, 0, 0, 'Theater Avenue 7, Flat 02', 2100, 2, 0, 0, 0, 0, 14, 1),
(164, 0, 0, 0, 'Theater Avenue 7, Flat 03', 2250, 2, 0, 0, 0, 0, 15, 1),
(165, 0, 0, 0, 'Theater Avenue 7, Flat 04', 2850, 2, 0, 0, 0, 0, 19, 1),
(166, 0, 0, 0, 'Theater Avenue 7, Flat 05', 2400, 2, 0, 0, 0, 0, 16, 1),
(167, 0, 0, 0, 'Theater Avenue 7, Flat 06', 1950, 2, 0, 0, 0, 0, 13, 1),
(168, 0, 0, 0, 'Theater Avenue 7, Flat 11', 2550, 2, 0, 0, 0, 0, 17, 1),
(169, 0, 0, 0, 'Theater Avenue 7, Flat 12', 2100, 2, 0, 0, 0, 0, 14, 1),
(170, 0, 0, 0, 'Theater Avenue 7, Flat 13', 2250, 2, 0, 0, 0, 0, 15, 1),
(171, 0, 0, 0, 'Theater Avenue 7, Flat 14', 2850, 2, 0, 0, 0, 0, 19, 1),
(172, 0, 0, 0, 'Theater Avenue 7, Flat 15', 2400, 2, 0, 0, 0, 0, 16, 1),
(173, 0, 0, 0, 'Theater Avenue 7, Flat 16', 2100, 2, 0, 0, 0, 0, 14, 1),
(174, 0, 0, 0, 'Theater Avenue 10', 5100, 2, 0, 0, 0, 0, 34, 2),
(175, 0, 0, 0, 'Theater Avenue 12', 4050, 2, 0, 0, 0, 0, 27, 2),
(176, 0, 0, 0, 'Theater Avenue 14 (Shop)', 10050, 2, 0, 0, 0, 0, 67, 1),
(177, 0, 0, 0, 'Theater Avenue 11a', 5850, 2, 0, 0, 0, 0, 39, 2),
(178, 0, 0, 0, 'Theater Avenue 11b', 2850, 2, 0, 0, 0, 0, 19, 1),
(179, 0, 0, 0, 'Theater Avenue 11c', 2850, 2, 0, 0, 0, 0, 19, 1),
(180, 0, 0, 0, 'Magician\'s Alley 1', 4500, 2, 0, 0, 0, 0, 30, 2),
(181, 0, 0, 0, 'Magician\'s Alley 1a', 3150, 2, 0, 0, 0, 0, 21, 2),
(182, 0, 0, 0, 'Magician\'s Alley 1b', 3150, 2, 0, 0, 0, 0, 21, 2),
(183, 0, 0, 0, 'Magician\'s Alley 1c', 2400, 2, 0, 0, 0, 0, 16, 1),
(184, 0, 0, 0, 'Magician\'s Alley 1d', 2400, 2, 0, 0, 0, 0, 16, 1),
(185, 0, 0, 0, 'Magician\'s Alley 5a', 1950, 2, 0, 0, 0, 0, 13, 1),
(186, 0, 0, 0, 'Magician\'s Alley 5b', 2700, 2, 0, 0, 0, 0, 18, 1),
(187, 0, 0, 0, 'Magician\'s Alley 5c', 4650, 2, 0, 0, 0, 0, 31, 2),
(188, 0, 0, 0, 'Magician\'s Alley 5d', 2400, 2, 0, 0, 0, 0, 16, 1),
(189, 0, 0, 0, 'Magician\'s Alley 5e', 2550, 2, 0, 0, 0, 0, 17, 1),
(190, 0, 0, 0, 'Magician\'s Alley 5f', 4950, 2, 0, 0, 0, 0, 33, 2),
(191, 0, 0, 0, 'Magician\'s Alley 4', 11100, 2, 0, 0, 0, 0, 74, 4),
(192, 0, 0, 0, 'Magician\'s Alley 8', 5400, 2, 0, 0, 0, 0, 36, 2),
(193, 0, 0, 0, 'Carlin Clanhall', 48300, 2, 0, 0, 0, 0, 322, 10),
(194, 0, 0, 0, 'Northern Street 1a', 4800, 2, 0, 0, 0, 0, 32, 2),
(195, 0, 0, 0, 'Northern Street 1b', 4650, 2, 0, 0, 0, 0, 31, 2),
(196, 0, 0, 0, 'Northern Street 1c', 3900, 2, 0, 0, 0, 0, 26, 2),
(197, 0, 0, 0, 'Northern Street 3a', 3900, 2, 0, 0, 0, 0, 26, 2),
(198, 0, 0, 0, 'Northern Street 3b', 4050, 2, 0, 0, 0, 0, 27, 2),
(199, 0, 0, 0, 'Northern Street 5', 8850, 2, 0, 0, 0, 0, 59, 2),
(200, 0, 0, 0, 'Northern Street 7', 7650, 2, 0, 0, 0, 0, 51, 2),
(201, 0, 0, 0, 'Harbour Lane 1 (Shop)', 6000, 2, 0, 0, 0, 0, 40, 0),
(202, 0, 0, 0, 'Harbour Lane 3', 15000, 2, 0, 0, 0, 0, 100, 3),
(203, 0, 0, 0, 'Harbour Lane 2a (Shop)', 4050, 2, 0, 0, 0, 0, 27, 0),
(204, 0, 0, 0, 'Harbour Lane 2b (Shop)', 4050, 2, 0, 0, 0, 0, 27, 0),
(205, 0, 0, 0, 'Harbour Flats, Flat 11', 3150, 2, 0, 0, 0, 0, 21, 1),
(206, 0, 0, 0, 'Harbour Flats, Flat 12', 2550, 2, 0, 0, 0, 0, 17, 1),
(207, 0, 0, 0, 'Harbour Flats, Flat 13', 3150, 2, 0, 0, 0, 0, 21, 1),
(208, 0, 0, 0, 'Harbour Flats, Flat 14', 2550, 2, 0, 0, 0, 0, 17, 1),
(209, 0, 0, 0, 'Harbour Flats, Flat 15', 2400, 2, 0, 0, 0, 0, 16, 1),
(210, 0, 0, 0, 'Harbour Flats, Flat 16', 2550, 2, 0, 0, 0, 0, 17, 1),
(211, 0, 0, 0, 'Harbour Flats, Flat 17', 2550, 2, 0, 0, 0, 0, 17, 1),
(212, 0, 0, 0, 'Harbour Flats, Flat 18', 2700, 2, 0, 0, 0, 0, 18, 1),
(213, 0, 0, 0, 'Harbour Flats, Flat 21', 4650, 2, 0, 0, 0, 0, 31, 2),
(214, 0, 0, 0, 'Harbour Flats, Flat 22', 5400, 2, 0, 0, 0, 0, 36, 2),
(215, 0, 0, 0, 'Harbour Flats, Flat 23', 2850, 2, 0, 0, 0, 0, 19, 1),
(216, 0, 0, 0, 'East Lane 1a', 10350, 2, 0, 0, 0, 0, 69, 2),
(217, 0, 0, 0, 'East Lane 1b', 7500, 2, 0, 0, 0, 0, 50, 2),
(218, 0, 0, 0, 'East Lane 2', 20250, 2, 0, 0, 0, 0, 135, 2),
(219, 0, 0, 0, 'Suntower', 53850, 2, 0, 0, 0, 0, 359, 9),
(220, 0, 0, 0, 'Lonely Sea Side Hostel', 53550, 2, 0, 0, 0, 0, 357, 8),
(221, 0, 0, 0, 'Northport Village 1', 5700, 2, 0, 0, 0, 0, 38, 2),
(222, 0, 0, 0, 'Northport Village 2', 5250, 2, 0, 0, 0, 0, 35, 2),
(223, 0, 0, 0, 'Northport Village 3', 19800, 2, 0, 0, 0, 0, 132, 2),
(224, 0, 0, 0, 'Northport Village 4', 9750, 2, 0, 0, 0, 0, 65, 2),
(225, 0, 0, 0, 'Seawatch', 90300, 2, 0, 0, 0, 0, 602, 19),
(226, 0, 0, 0, 'Northport Village 5', 6750, 2, 0, 0, 0, 0, 45, 2),
(227, 0, 0, 0, 'Northport Village 6', 7800, 2, 0, 0, 0, 0, 52, 2),
(228, 0, 0, 0, 'Northport Clanhall', 36450, 2, 0, 0, 0, 0, 243, 10),
(229, 0, 0, 0, 'Senja Village 1a', 4050, 2, 0, 0, 0, 0, 27, 1),
(230, 0, 0, 0, 'Senja Village 1b', 8100, 2, 0, 0, 0, 0, 54, 2),
(231, 0, 0, 0, 'Senja Village 2', 3900, 2, 0, 0, 0, 0, 26, 1),
(232, 0, 0, 0, 'Senja Village 3', 8250, 2, 0, 0, 0, 0, 55, 2),
(233, 0, 0, 0, 'Senja Village 4', 3750, 2, 0, 0, 0, 0, 25, 1),
(234, 0, 0, 0, 'Senja Village 5', 5700, 2, 0, 0, 0, 0, 38, 2),
(235, 0, 0, 0, 'Senja Village 6a', 3600, 2, 0, 0, 0, 0, 24, 1),
(236, 0, 0, 0, 'Senja Village 6b', 3900, 2, 0, 0, 0, 0, 26, 1),
(237, 0, 0, 0, 'Senja Village 7', 4050, 2, 0, 0, 0, 0, 27, 2),
(238, 0, 0, 0, 'Senja Village 8', 7800, 2, 0, 0, 0, 0, 52, 2),
(239, 0, 0, 0, 'Senja Village 9', 12000, 2, 0, 0, 0, 0, 80, 2),
(240, 0, 0, 0, 'Senja Village 10', 7650, 2, 0, 0, 0, 0, 51, 1),
(241, 0, 0, 0, 'Senja Village 11', 11250, 2, 0, 0, 0, 0, 75, 2),
(242, 0, 0, 0, 'Senja Clanhall', 48300, 2, 0, 0, 0, 0, 322, 10),
(243, 0, 0, 0, 'Wolftower', 87300, 3, 0, 0, 0, 0, 582, 23),
(244, 0, 0, 0, 'Hill Hideout', 50250, 3, 0, 0, 0, 0, 335, 15),
(245, 0, 0, 0, 'Riverspring', 75300, 3, 0, 0, 0, 0, 502, 19),
(246, 0, 0, 0, 'The Farms 1', 8700, 3, 0, 0, 0, 0, 58, 3),
(247, 0, 0, 0, 'The Farms 2', 5250, 3, 0, 0, 0, 0, 35, 2),
(248, 0, 0, 0, 'The Farms 3', 5250, 3, 0, 0, 0, 0, 35, 2),
(249, 0, 0, 0, 'The Farms 4', 5250, 3, 0, 0, 0, 0, 35, 2),
(250, 0, 0, 0, 'The Farms 5', 5250, 3, 0, 0, 0, 0, 35, 2),
(251, 0, 0, 0, 'The Farms 6, Fishing Hut', 4350, 3, 0, 0, 0, 0, 29, 2),
(252, 0, 0, 0, 'Nobility Quarter 1', 7500, 3, 0, 0, 0, 0, 50, 3),
(253, 0, 0, 0, 'Nobility Quarter 2', 7500, 3, 0, 0, 0, 0, 50, 3),
(254, 0, 0, 0, 'Nobility Quarter 3', 7500, 3, 0, 0, 0, 0, 50, 3),
(255, 0, 0, 0, 'Nobility Quarter 4', 3600, 3, 0, 0, 0, 0, 24, 1),
(256, 0, 0, 0, 'Nobility Quarter 5', 3600, 3, 0, 0, 0, 0, 24, 1),
(257, 0, 0, 0, 'Nobility Quarter 6', 3900, 3, 0, 0, 0, 0, 26, 1),
(258, 0, 0, 0, 'Nobility Quarter 7', 3600, 3, 0, 0, 0, 0, 24, 1),
(259, 0, 0, 0, 'Nobility Quarter 8', 3900, 3, 0, 0, 0, 0, 26, 1),
(260, 0, 0, 0, 'Nobility Quarter 9', 3900, 3, 0, 0, 0, 0, 26, 1),
(261, 0, 0, 0, 'Upper Barracks 1', 1950, 3, 0, 0, 0, 0, 13, 1),
(262, 0, 0, 0, 'Upper Barracks 2', 1950, 3, 0, 0, 0, 0, 13, 1),
(263, 0, 0, 0, 'Upper Barracks 3', 1950, 3, 0, 0, 0, 0, 13, 1),
(264, 0, 0, 0, 'Upper Barracks 4', 1950, 3, 0, 0, 0, 0, 13, 1),
(265, 0, 0, 0, 'Upper Barracks 5', 1650, 3, 0, 0, 0, 0, 11, 1),
(266, 0, 0, 0, 'Upper Barracks 6', 1650, 3, 0, 0, 0, 0, 11, 1),
(267, 0, 0, 0, 'Upper Barracks 7', 1650, 3, 0, 0, 0, 0, 11, 1),
(268, 0, 0, 0, 'Upper Barracks 8', 1950, 3, 0, 0, 0, 0, 13, 1),
(269, 0, 0, 0, 'Upper Barracks 9', 1950, 3, 0, 0, 0, 0, 13, 1),
(270, 0, 0, 0, 'Upper Barracks 10', 1950, 3, 0, 0, 0, 0, 13, 1),
(271, 0, 0, 0, 'Upper Barracks 11', 1950, 3, 0, 0, 0, 0, 13, 1),
(272, 0, 0, 0, 'Upper Barracks 12', 1650, 3, 0, 0, 0, 0, 11, 1),
(273, 0, 0, 0, 'Upper Barracks 13', 3450, 3, 0, 0, 0, 0, 23, 2),
(274, 0, 0, 0, 'The Market 1 (Shop)', 2700, 3, 0, 0, 0, 0, 18, 0),
(275, 0, 0, 0, 'The Market 2 (Shop)', 4650, 3, 0, 0, 0, 0, 31, 0),
(276, 0, 0, 0, 'The Market 3 (Shop)', 5700, 3, 0, 0, 0, 0, 38, 0),
(277, 0, 0, 0, 'The Market 4 (Shop)', 6900, 3, 0, 0, 0, 0, 46, 0),
(278, 0, 0, 0, 'Lower Barracks 1', 2400, 3, 0, 0, 0, 0, 16, 1),
(279, 0, 0, 0, 'Lower Barracks 2', 2250, 3, 0, 0, 0, 0, 15, 1),
(280, 0, 0, 0, 'Lower Barracks 3', 2400, 3, 0, 0, 0, 0, 16, 1),
(281, 0, 0, 0, 'Lower Barracks 4', 2250, 3, 0, 0, 0, 0, 15, 1),
(282, 0, 0, 0, 'Lower Barracks 5', 2400, 3, 0, 0, 0, 0, 16, 1),
(283, 0, 0, 0, 'Lower Barracks 6', 2250, 3, 0, 0, 0, 0, 15, 1),
(284, 0, 0, 0, 'Lower Barracks 7', 2400, 3, 0, 0, 0, 0, 16, 1),
(285, 0, 0, 0, 'Lower Barracks 8', 2250, 3, 0, 0, 0, 0, 15, 1),
(286, 0, 0, 0, 'Lower Barracks 9', 2400, 3, 0, 0, 0, 0, 16, 1),
(287, 0, 0, 0, 'Lower Barracks 10', 2250, 3, 0, 0, 0, 0, 15, 1),
(288, 0, 0, 0, 'Lower Barracks 11', 2400, 3, 0, 0, 0, 0, 16, 1),
(289, 0, 0, 0, 'Lower Barracks 12', 2250, 3, 0, 0, 0, 0, 15, 1),
(290, 0, 0, 0, 'Lower Barracks 13', 2250, 3, 0, 0, 0, 0, 15, 1),
(291, 0, 0, 0, 'Lower Barracks 14', 2400, 3, 0, 0, 0, 0, 16, 1),
(292, 0, 0, 0, 'Lower Barracks 15', 2250, 3, 0, 0, 0, 0, 15, 1),
(293, 0, 0, 0, 'Lower Barracks 16', 2400, 3, 0, 0, 0, 0, 16, 1),
(294, 0, 0, 0, 'Lower Barracks 17', 2250, 3, 0, 0, 0, 0, 15, 1),
(295, 0, 0, 0, 'Lower Barracks 18', 2400, 3, 0, 0, 0, 0, 16, 1),
(296, 0, 0, 0, 'Lower Barracks 19', 2250, 3, 0, 0, 0, 0, 15, 1),
(297, 0, 0, 0, 'Lower Barracks 20', 2400, 3, 0, 0, 0, 0, 16, 1),
(298, 0, 0, 0, 'Lower Barracks 21', 2250, 3, 0, 0, 0, 0, 15, 1),
(299, 0, 0, 0, 'Lower Barracks 22', 2400, 3, 0, 0, 0, 0, 16, 1),
(300, 0, 0, 0, 'Lower Barracks 23', 2250, 3, 0, 0, 0, 0, 15, 1),
(301, 0, 0, 0, 'Lower Barracks 24', 2400, 3, 0, 0, 0, 0, 16, 1),
(302, 0, 0, 0, 'Tunnel Gardens 1', 6000, 3, 0, 0, 0, 0, 40, 3),
(303, 0, 0, 0, 'Tunnel Gardens 2 ', 5550, 3, 0, 0, 0, 0, 37, 3),
(304, 0, 0, 0, 'Tunnel Gardens 3', 4950, 3, 0, 0, 0, 0, 33, 3),
(305, 0, 0, 0, 'Tunnel Gardens 4', 4650, 3, 0, 0, 0, 0, 31, 3),
(306, 0, 0, 0, 'Tunnel Gardens 5', 4650, 3, 0, 0, 0, 0, 31, 2),
(307, 0, 0, 0, 'Tunnel Gardens 6', 4650, 3, 0, 0, 0, 0, 31, 2),
(308, 0, 0, 0, 'Tunnel Gardens 7', 3150, 3, 0, 0, 0, 0, 21, 2),
(309, 0, 0, 0, 'Tunnel Gardens 8', 4200, 3, 0, 0, 0, 0, 28, 2),
(310, 0, 0, 0, 'Tunnel Gardens 9', 3150, 3, 0, 0, 0, 0, 21, 2),
(311, 0, 0, 0, 'Tunnel Gardens 10', 3600, 3, 0, 0, 0, 0, 24, 2),
(312, 0, 0, 0, 'Tunnel Gardens 11', 2550, 3, 0, 0, 0, 0, 17, 2),
(313, 0, 0, 0, 'Tunnel Gardens 12', 3000, 3, 0, 0, 0, 0, 20, 2),
(314, 0, 0, 0, 'Marble Guildhall', 72900, 3, 0, 0, 0, 0, 486, 17),
(315, 0, 0, 0, 'Iron Guildhall', 64800, 3, 0, 0, 0, 0, 432, 18),
(316, 0, 0, 0, 'Granite Guildhall', 75750, 3, 0, 0, 0, 0, 505, 17),
(317, 0, 0, 0, 'Outlaw Camp 1', 9300, 3, 0, 0, 0, 0, 62, 2),
(318, 0, 0, 0, 'Outlaw Camp 2', 1950, 3, 0, 0, 0, 0, 13, 1),
(319, 0, 0, 0, 'Outlaw Camp 3', 3750, 3, 0, 0, 0, 0, 25, 2),
(320, 0, 0, 0, 'Outlaw Camp 4', 1350, 3, 0, 0, 0, 0, 9, 1),
(321, 0, 0, 0, 'Outlaw Camp 5', 1350, 3, 0, 0, 0, 0, 9, 1),
(322, 0, 0, 0, 'Outlaw Camp 6', 1350, 3, 0, 0, 0, 0, 9, 1),
(323, 0, 0, 0, 'Outlaw Camp 7', 4050, 3, 0, 0, 0, 0, 27, 2),
(324, 0, 0, 0, 'Outlaw Camp 8', 1650, 3, 0, 0, 0, 0, 11, 1),
(325, 0, 0, 0, 'Outlaw Camp 9', 1200, 3, 0, 0, 0, 0, 8, 1),
(326, 0, 0, 0, 'Outlaw Camp 10', 1200, 3, 0, 0, 0, 0, 8, 1),
(327, 0, 0, 0, 'Outlaw Camp 11', 1200, 3, 0, 0, 0, 0, 8, 1),
(328, 0, 0, 0, 'Outlaw Camp 12 (Shop)', 1350, 3, 0, 0, 0, 0, 9, 0),
(329, 0, 0, 0, 'Outlaw Camp 13 (Shop)', 1350, 3, 0, 0, 0, 0, 9, 0),
(330, 0, 0, 0, 'Outlaw Camp 14 (Shop)', 3000, 3, 0, 0, 0, 0, 20, 0),
(331, 0, 0, 0, 'Outlaw Castle', 41400, 3, 0, 0, 0, 0, 276, 9),
(332, 0, 0, 0, 'Blessed Shield Guildhall', 35700, 7, 0, 0, 0, 0, 238, 9),
(333, 0, 0, 0, 'Steel Home', 60600, 7, 0, 0, 0, 0, 404, 13),
(334, 0, 0, 0, 'Swamp Watch', 50700, 7, 0, 0, 0, 0, 338, 12),
(335, 0, 0, 0, 'Golden Axe Guildhall', 47400, 7, 0, 0, 0, 0, 316, 10),
(336, 0, 0, 0, 'Valorous Venore', 64800, 7, 0, 0, 0, 0, 432, 9),
(337, 0, 0, 0, 'Dagger Alley 1', 13650, 7, 0, 0, 0, 0, 91, 2),
(338, 0, 0, 0, 'Iron Alley 1', 15300, 7, 0, 0, 0, 0, 102, 4),
(339, 0, 0, 0, 'Iron Alley 2', 16050, 7, 0, 0, 0, 0, 107, 4),
(340, 0, 0, 0, 'Dream Street 1 (Shop)', 22800, 7, 0, 0, 0, 0, 152, 2),
(341, 0, 0, 0, 'Dream Street 2', 18000, 7, 0, 0, 0, 0, 120, 2),
(342, 0, 0, 0, 'Dream Street 3', 13800, 7, 0, 0, 0, 0, 92, 2),
(343, 0, 0, 0, 'Dream Street 4', 19350, 7, 0, 0, 0, 0, 129, 4),
(344, 0, 0, 0, 'Elm Street 1', 13350, 7, 0, 0, 0, 0, 89, 2),
(345, 0, 0, 0, 'Elm Street 2', 13200, 7, 0, 0, 0, 0, 88, 2),
(346, 0, 0, 0, 'Elm Street 3', 13650, 7, 0, 0, 0, 0, 91, 3),
(347, 0, 0, 0, 'Elm Street 4', 13350, 7, 0, 0, 0, 0, 89, 2),
(348, 0, 0, 0, 'Seagull Walk 1', 24900, 7, 0, 0, 0, 0, 166, 2),
(349, 0, 0, 0, 'Seagull Walk 2', 14700, 7, 0, 0, 0, 0, 98, 3),
(350, 0, 0, 0, 'Lucky Lane 1 (Shop)', 33000, 7, 0, 0, 0, 0, 220, 4),
(351, 0, 0, 0, 'Paupers Palace, Flat 01', 2550, 7, 0, 0, 0, 0, 17, 1),
(352, 0, 0, 0, 'Paupers Palace, Flat 02', 2250, 7, 0, 0, 0, 0, 15, 1),
(353, 0, 0, 0, 'Paupers Palace, Flat 03', 2400, 7, 0, 0, 0, 0, 16, 1),
(354, 0, 0, 0, 'Paupers Palace, Flat 04', 2850, 7, 0, 0, 0, 0, 19, 1),
(355, 0, 0, 0, 'Paupers Palace, Flat 05', 1950, 7, 0, 0, 0, 0, 13, 1),
(356, 0, 0, 0, 'Paupers Palace, Flat 06', 2550, 7, 0, 0, 0, 0, 17, 1),
(357, 0, 0, 0, 'Paupers Palace, Flat 07', 2850, 7, 0, 0, 0, 0, 19, 2),
(358, 0, 0, 0, 'Paupers Palace, Flat 11', 1950, 7, 0, 0, 0, 0, 13, 1),
(359, 0, 0, 0, 'Paupers Palace, Flat 12', 3000, 7, 0, 0, 0, 0, 20, 2),
(360, 0, 0, 0, 'Paupers Palace, Flat 13', 2700, 7, 0, 0, 0, 0, 18, 1),
(361, 0, 0, 0, 'Paupers Palace, Flat 14', 3150, 7, 0, 0, 0, 0, 21, 1),
(362, 0, 0, 0, 'Paupers Palace, Flat 15', 2550, 7, 0, 0, 0, 0, 17, 1),
(363, 0, 0, 0, 'Paupers Palace, Flat 16', 3000, 7, 0, 0, 0, 0, 20, 1),
(364, 0, 0, 0, 'Paupers Palace, Flat 17', 2550, 7, 0, 0, 0, 0, 17, 1),
(365, 0, 0, 0, 'Paupers Palace, Flat 18', 1950, 7, 0, 0, 0, 0, 13, 1),
(366, 0, 0, 0, 'Paupers Palace, Flat 21', 2100, 7, 0, 0, 0, 0, 14, 1),
(367, 0, 0, 0, 'Paupers Palace, Flat 22', 2550, 7, 0, 0, 0, 0, 17, 1),
(368, 0, 0, 0, 'Paupers Palace, Flat 23', 3000, 7, 0, 0, 0, 0, 20, 1),
(369, 0, 0, 0, 'Paupers Palace, Flat 24', 2550, 7, 0, 0, 0, 0, 17, 1),
(370, 0, 0, 0, 'Paupers Palace, Flat 25', 3150, 7, 0, 0, 0, 0, 21, 1),
(371, 0, 0, 0, 'Paupers Palace, Flat 26', 2550, 7, 0, 0, 0, 0, 17, 1),
(372, 0, 0, 0, 'Paupers Palace, Flat 27', 3000, 7, 0, 0, 0, 0, 20, 2),
(373, 0, 0, 0, 'Paupers Palace, Flat 28', 1950, 7, 0, 0, 0, 0, 13, 1),
(374, 0, 0, 0, 'Paupers Palace, Flat 31', 4500, 7, 0, 0, 0, 0, 30, 1),
(375, 0, 0, 0, 'Paupers Palace, Flat 32', 5400, 7, 0, 0, 0, 0, 36, 2),
(376, 0, 0, 0, 'Paupers Palace, Flat 33', 4200, 7, 0, 0, 0, 0, 28, 1),
(377, 0, 0, 0, 'Paupers Palace, Flat 34', 7950, 7, 0, 0, 0, 0, 53, 2),
(378, 0, 0, 0, 'Salvation Street 1 (Shop)', 29700, 7, 0, 0, 0, 0, 198, 4),
(379, 0, 0, 0, 'Salvation Street 2', 18000, 7, 0, 0, 0, 0, 120, 2),
(380, 0, 0, 0, 'Salvation Street 3', 18900, 7, 0, 0, 0, 0, 126, 2),
(381, 0, 0, 0, 'Mystic Lane 1', 14550, 7, 0, 0, 0, 0, 97, 3),
(382, 0, 0, 0, 'Mystic Lane 2', 15300, 7, 0, 0, 0, 0, 102, 2),
(383, 0, 0, 0, 'Silver Street 1', 13800, 7, 0, 0, 0, 0, 92, 1),
(384, 0, 0, 0, 'Silver Street 2', 11100, 7, 0, 0, 0, 0, 74, 1),
(385, 0, 0, 0, 'Silver Street 3', 10650, 7, 0, 0, 0, 0, 71, 1),
(386, 0, 0, 0, 'Silver Street 4', 18150, 7, 0, 0, 0, 0, 121, 2),
(387, 0, 0, 0, 'Loot Lane 1 (Shop)', 24000, 7, 0, 0, 0, 0, 160, 3),
(388, 0, 0, 0, 'Old Lighthouse', 18600, 7, 0, 0, 0, 0, 124, 2),
(389, 0, 0, 0, 'Market Street 1', 31500, 7, 0, 0, 0, 0, 210, 3),
(390, 0, 0, 0, 'Market Street 2', 24600, 7, 0, 0, 0, 0, 164, 3),
(391, 0, 0, 0, 'Market Street 3', 17400, 7, 0, 0, 0, 0, 116, 2),
(392, 0, 0, 0, 'Market Street 4 (Shop)', 25500, 7, 0, 0, 0, 0, 170, 3),
(393, 0, 0, 0, 'Market Street 5 (Shop)', 29700, 7, 0, 0, 0, 0, 198, 4),
(394, 0, 0, 0, 'Market Street 6', 26100, 7, 0, 0, 0, 0, 174, 5),
(395, 0, 0, 0, 'Market Street 7', 12600, 7, 0, 0, 0, 0, 84, 2),
(396, 0, 0, 0, 'Shadow Towers', 87750, 4, 0, 0, 0, 0, 585, 18),
(397, 0, 0, 0, 'The Hideout', 75600, 4, 0, 0, 0, 0, 504, 21),
(398, 0, 0, 0, 'Underwood 1', 4800, 4, 0, 0, 0, 0, 32, 2),
(399, 0, 0, 0, 'Underwood 2', 4800, 4, 0, 0, 0, 0, 32, 2),
(400, 0, 0, 0, 'Underwood 3', 5100, 4, 0, 0, 0, 0, 34, 3),
(401, 0, 0, 0, 'Underwood 4', 6750, 4, 0, 0, 0, 0, 45, 4),
(402, 0, 0, 0, 'Underwood 5', 4050, 4, 0, 0, 0, 0, 27, 3),
(403, 0, 0, 0, 'Underwood 6', 4800, 4, 0, 0, 0, 0, 32, 3),
(404, 0, 0, 0, 'Underwood 7', 4350, 4, 0, 0, 0, 0, 29, 3),
(405, 0, 0, 0, 'Underwood 8', 2850, 4, 0, 0, 0, 0, 19, 2),
(406, 0, 0, 0, 'Underwood 9', 2100, 4, 0, 0, 0, 0, 14, 1),
(407, 0, 0, 0, 'Underwood 10', 2850, 4, 0, 0, 0, 0, 19, 1),
(408, 0, 0, 0, 'Ab\'Dendriel Clanhall', 58200, 4, 0, 0, 0, 0, 388, 10),
(409, 0, 0, 0, 'Castle of the Winds', 105750, 4, 0, 0, 0, 0, 705, 18),
(410, 0, 0, 0, 'Great Willow 1a', 1800, 4, 0, 0, 0, 0, 12, 1),
(411, 0, 0, 0, 'Great Willow 1b', 2100, 4, 0, 0, 0, 0, 14, 1),
(412, 0, 0, 0, 'Great Willow 1c', 2100, 4, 0, 0, 0, 0, 14, 1),
(413, 0, 0, 0, 'Great Willow 2a', 3450, 4, 0, 0, 0, 0, 23, 1),
(414, 0, 0, 0, 'Great Willow 2b', 2550, 4, 0, 0, 0, 0, 17, 1),
(415, 0, 0, 0, 'Great Willow 2c', 3150, 4, 0, 0, 0, 0, 21, 1),
(416, 0, 0, 0, 'Great Willow 2d', 2250, 4, 0, 0, 0, 0, 15, 1),
(417, 0, 0, 0, 'Great Willow 3a', 3450, 4, 0, 0, 0, 0, 23, 1),
(418, 0, 0, 0, 'Great Willow 3b', 2550, 4, 0, 0, 0, 0, 17, 1),
(419, 0, 0, 0, 'Great Willow 3c', 3150, 4, 0, 0, 0, 0, 21, 1),
(420, 0, 0, 0, 'Great Willow 3d', 2250, 4, 0, 0, 0, 0, 15, 1),
(421, 0, 0, 0, 'Great Willow 4a', 4200, 4, 0, 0, 0, 0, 28, 2),
(422, 0, 0, 0, 'Great Willow 4b', 3900, 4, 0, 0, 0, 0, 26, 2),
(423, 0, 0, 0, 'Great Willow 4c', 4050, 4, 0, 0, 0, 0, 27, 2),
(424, 0, 0, 0, 'Great Willow 4d', 3900, 4, 0, 0, 0, 0, 26, 1),
(425, 0, 0, 0, 'Mangrove 1', 4800, 4, 0, 0, 0, 0, 32, 3),
(426, 0, 0, 0, 'Mangrove 2', 3900, 4, 0, 0, 0, 0, 26, 2),
(427, 0, 0, 0, 'Mangrove 3', 3300, 4, 0, 0, 0, 0, 22, 2),
(428, 0, 0, 0, 'Mangrove 4', 2700, 4, 0, 0, 0, 0, 18, 2),
(429, 0, 0, 0, 'Treetop 1', 3150, 4, 0, 0, 0, 0, 21, 1),
(430, 0, 0, 0, 'Treetop 2', 3450, 4, 0, 0, 0, 0, 23, 1),
(431, 0, 0, 0, 'Treetop 3 (Shop)', 6150, 4, 0, 0, 0, 0, 41, 1),
(432, 0, 0, 0, 'Treetop 4 (Shop)', 5850, 4, 0, 0, 0, 0, 39, 1),
(433, 0, 0, 0, 'Treetop 5 (Shop)', 6600, 4, 0, 0, 0, 0, 44, 1),
(434, 0, 0, 0, 'Treetop 6', 2700, 4, 0, 0, 0, 0, 18, 1),
(435, 0, 0, 0, 'Treetop 7', 3750, 4, 0, 0, 0, 0, 25, 1),
(436, 0, 0, 0, 'Treetop 8', 4050, 4, 0, 0, 0, 0, 27, 1),
(437, 0, 0, 0, 'Treetop 9', 4650, 4, 0, 0, 0, 0, 31, 2),
(438, 0, 0, 0, 'Treetop 10', 4800, 4, 0, 0, 0, 0, 32, 2),
(439, 0, 0, 0, 'Treetop 11', 4200, 4, 0, 0, 0, 0, 28, 2),
(440, 0, 0, 0, 'Treetop 12 (Shop)', 6150, 4, 0, 0, 0, 0, 41, 1),
(441, 0, 0, 0, 'Treetop 13', 6000, 4, 0, 0, 0, 0, 40, 2),
(442, 0, 0, 0, 'Coastwood 1', 4350, 4, 0, 0, 0, 0, 29, 2),
(443, 0, 0, 0, 'Coastwood 2', 3900, 4, 0, 0, 0, 0, 26, 2),
(444, 0, 0, 0, 'Coastwood 3', 4950, 4, 0, 0, 0, 0, 33, 2),
(445, 0, 0, 0, 'Coastwood 4', 4950, 4, 0, 0, 0, 0, 33, 2),
(446, 0, 0, 0, 'Coastwood 5', 6150, 4, 0, 0, 0, 0, 41, 2),
(447, 0, 0, 0, 'Coastwood 6 (Shop)', 6600, 4, 0, 0, 0, 0, 44, 1),
(448, 0, 0, 0, 'Coastwood 7', 3300, 4, 0, 0, 0, 0, 22, 1),
(449, 0, 0, 0, 'Coastwood 8', 4950, 4, 0, 0, 0, 0, 33, 2),
(450, 0, 0, 0, 'Coastwood 9', 4500, 4, 0, 0, 0, 0, 30, 1),
(451, 0, 0, 0, 'Coastwood 10', 6150, 4, 0, 0, 0, 0, 41, 3),
(452, 0, 0, 0, 'Shadow Caves 1', 2550, 4, 0, 0, 0, 0, 17, 1),
(453, 0, 0, 0, 'Shadow Caves 2', 2250, 4, 0, 0, 0, 0, 15, 1),
(454, 0, 0, 0, 'Shadow Caves 3', 2550, 4, 0, 0, 0, 0, 17, 1),
(455, 0, 0, 0, 'Shadow Caves 4', 2250, 4, 0, 0, 0, 0, 15, 1),
(456, 0, 0, 0, 'Shadow Caves 11', 2550, 4, 0, 0, 0, 0, 17, 1),
(457, 0, 0, 0, 'Shadow Caves 12', 2250, 4, 0, 0, 0, 0, 15, 1),
(458, 0, 0, 0, 'Shadow Caves 13', 2550, 4, 0, 0, 0, 0, 17, 1),
(459, 0, 0, 0, 'Shadow Caves 14', 2250, 4, 0, 0, 0, 0, 15, 1),
(460, 0, 0, 0, 'Shadow Caves 15', 2550, 4, 0, 0, 0, 0, 17, 1),
(461, 0, 0, 0, 'Shadow Caves 16', 2250, 4, 0, 0, 0, 0, 15, 1),
(462, 0, 0, 0, 'Shadow Caves 17', 2550, 4, 0, 0, 0, 0, 17, 1),
(463, 0, 0, 0, 'Shadow Caves 18', 2250, 4, 0, 0, 0, 0, 15, 1),
(464, 0, 0, 0, 'Shadow Caves 21', 2550, 4, 0, 0, 0, 0, 17, 1),
(465, 0, 0, 0, 'Shadow Caves 22', 2250, 4, 0, 0, 0, 0, 15, 1),
(466, 0, 0, 0, 'Shadow Caves 23', 2550, 4, 0, 0, 0, 0, 17, 1),
(467, 0, 0, 0, 'Shadow Caves 24', 2250, 4, 0, 0, 0, 0, 15, 1),
(468, 0, 0, 0, 'Shadow Caves 25', 2550, 4, 0, 0, 0, 0, 17, 1),
(469, 0, 0, 0, 'Shadow Caves 26', 2250, 4, 0, 0, 0, 0, 15, 1),
(470, 0, 0, 0, 'Shadow Caves 27', 2550, 4, 0, 0, 0, 0, 17, 1),
(471, 0, 0, 0, 'Shadow Caves 28', 2250, 4, 0, 0, 0, 0, 15, 1),
(472, 0, 0, 0, 'Haggler\'s Hangout 1', 6900, 9, 0, 0, 0, 0, 46, 2),
(473, 0, 0, 0, 'Haggler\'s Hangout 2', 6900, 9, 0, 0, 0, 0, 46, 1),
(474, 0, 0, 0, 'Haggler\'s Hangout 3', 36600, 9, 0, 0, 0, 0, 244, 4),
(475, 0, 0, 0, 'Haggler\'s Hangout 4a', 8100, 9, 0, 0, 0, 0, 54, 1),
(476, 0, 0, 0, 'Haggler\'s Hangout 4b', 7950, 9, 0, 0, 0, 0, 53, 1),
(477, 0, 0, 0, 'Haggler\'s Hangout 5', 7650, 9, 0, 0, 0, 0, 51, 1),
(478, 0, 0, 0, 'Haggler\'s Hangout 6', 30000, 9, 0, 0, 0, 0, 200, 4),
(479, 0, 0, 0, 'Banana Bay 1', 3300, 9, 0, 0, 0, 0, 22, 1),
(480, 0, 0, 0, 'Banana Bay 2', 4950, 9, 0, 0, 0, 0, 33, 1),
(481, 0, 0, 0, 'Banana Bay 3', 2850, 9, 0, 0, 0, 0, 19, 1),
(482, 0, 0, 0, 'Banana Bay 4', 2850, 9, 0, 0, 0, 0, 19, 1),
(483, 0, 0, 0, 'Crocodile Bridge 1', 5850, 9, 0, 0, 0, 0, 39, 2),
(484, 0, 0, 0, 'Crocodile Bridge 2', 4950, 9, 0, 0, 0, 0, 33, 2),
(485, 0, 0, 0, 'Crocodile Bridge 3', 6900, 9, 0, 0, 0, 0, 46, 2),
(486, 0, 0, 0, 'Crocodile Bridge 4', 25200, 9, 0, 0, 0, 0, 168, 4),
(487, 0, 0, 0, 'Crocodile Bridge 5', 22050, 9, 0, 0, 0, 0, 147, 2),
(488, 0, 0, 0, 'Woodway 1', 4950, 9, 0, 0, 0, 0, 33, 1),
(489, 0, 0, 0, 'Woodway 2', 4050, 9, 0, 0, 0, 0, 27, 1),
(490, 0, 0, 0, 'Woodway 3', 8550, 9, 0, 0, 0, 0, 57, 2),
(491, 0, 0, 0, 'Woodway 4', 3150, 9, 0, 0, 0, 0, 21, 1),
(492, 0, 0, 0, 'Flamingo Flats 1', 4050, 9, 0, 0, 0, 0, 27, 2),
(493, 0, 0, 0, 'Flamingo Flats 2', 5850, 9, 0, 0, 0, 0, 39, 2),
(494, 0, 0, 0, 'Flamingo Flats 3', 4050, 9, 0, 0, 0, 0, 27, 2),
(495, 0, 0, 0, 'Flamingo Flats 4', 4950, 9, 0, 0, 0, 0, 33, 2),
(496, 0, 0, 0, 'Flamingo Flats 5', 10200, 9, 0, 0, 0, 0, 68, 1),
(497, 0, 0, 0, 'Bamboo Garden 1', 6900, 9, 0, 0, 0, 0, 46, 3),
(498, 0, 0, 0, 'Bamboo Garden 2', 4650, 9, 0, 0, 0, 0, 31, 2),
(499, 0, 0, 0, 'Bamboo Garden 3', 6900, 9, 0, 0, 0, 0, 46, 2),
(500, 0, 0, 0, 'Coconut Quay 1', 9150, 9, 0, 0, 0, 0, 61, 2),
(501, 0, 0, 0, 'Coconut Quay 2', 5850, 9, 0, 0, 0, 0, 39, 2),
(502, 0, 0, 0, 'Coconut Quay 3', 10050, 9, 0, 0, 0, 0, 67, 4),
(503, 0, 0, 0, 'Coconut Quay 4', 10200, 9, 0, 0, 0, 0, 68, 3),
(504, 0, 0, 0, 'River Homes 1', 18300, 9, 0, 0, 0, 0, 122, 3),
(505, 0, 0, 0, 'River Homes 2a', 6000, 9, 0, 0, 0, 0, 40, 2),
(506, 0, 0, 0, 'River Homes 2b', 7950, 9, 0, 0, 0, 0, 53, 3),
(507, 0, 0, 0, 'River Homes 3', 25200, 9, 0, 0, 0, 0, 168, 7),
(508, 0, 0, 0, 'Jungle Edge 1', 13800, 9, 0, 0, 0, 0, 92, 3),
(509, 0, 0, 0, 'Jungle Edge 2', 18150, 9, 0, 0, 0, 0, 121, 3),
(510, 0, 0, 0, 'Jungle Edge 3', 4950, 9, 0, 0, 0, 0, 33, 2),
(511, 0, 0, 0, 'Jungle Edge 4', 4950, 9, 0, 0, 0, 0, 33, 2),
(512, 0, 0, 0, 'Jungle Edge 5', 4950, 9, 0, 0, 0, 0, 33, 2),
(513, 0, 0, 0, 'Jungle Edge 6', 3300, 9, 0, 0, 0, 0, 22, 1),
(514, 0, 0, 0, 'Shark Manor', 34950, 9, 0, 0, 0, 0, 233, 15),
(515, 0, 0, 0, 'Bamboo Fortress', 111300, 9, 0, 0, 0, 0, 742, 20),
(516, 0, 0, 0, 'The Treehouse', 96750, 9, 0, 0, 0, 0, 645, 23),
(517, 0, 0, 0, 'Castle Shop 1', 8850, 5, 0, 0, 0, 0, 59, 1),
(518, 0, 0, 0, 'Castle Shop 2', 8850, 5, 0, 0, 0, 0, 59, 1),
(519, 0, 0, 0, 'Castle Shop 3', 8850, 5, 0, 0, 0, 0, 59, 1),
(520, 0, 0, 0, 'Castle, 3rd Floor, Flat 01', 2850, 5, 0, 0, 0, 0, 19, 1),
(521, 0, 0, 0, 'Castle, 3rd Floor, Flat 02', 3600, 5, 0, 0, 0, 0, 24, 1),
(522, 0, 0, 0, 'Castle, 3rd Floor, Flat 03', 3150, 5, 0, 0, 0, 0, 21, 1),
(523, 0, 0, 0, 'Castle, 3rd Floor, Flat 04', 3150, 5, 0, 0, 0, 0, 21, 1),
(524, 0, 0, 0, 'Castle, 3rd Floor, Flat 05', 3600, 5, 0, 0, 0, 0, 24, 1),
(525, 0, 0, 0, 'Castle, 3rd Floor, Flat 06', 4350, 5, 0, 0, 0, 0, 29, 2),
(526, 0, 0, 0, 'Castle, 3rd Floor, Flat 07', 3750, 5, 0, 0, 0, 0, 25, 1),
(527, 0, 0, 0, 'Castle, 4th Floor, Flat 01', 2850, 5, 0, 0, 0, 0, 19, 1),
(528, 0, 0, 0, 'Castle, 4th Floor, Flat 02', 3600, 5, 0, 0, 0, 0, 24, 1),
(529, 0, 0, 0, 'Castle, 4th Floor, Flat 03', 3150, 5, 0, 0, 0, 0, 21, 1),
(530, 0, 0, 0, 'Castle, 4th Floor, Flat 04', 3150, 5, 0, 0, 0, 0, 21, 1),
(531, 0, 0, 0, 'Castle, 4th Floor, Flat 05', 3600, 5, 0, 0, 0, 0, 24, 1),
(532, 0, 0, 0, 'Castle, 4th Floor, Flat 06', 4350, 5, 0, 0, 0, 0, 29, 1),
(533, 0, 0, 0, 'Castle, 4th Floor, Flat 07', 3750, 5, 0, 0, 0, 0, 25, 1),
(534, 0, 0, 0, 'Castle, 4th Floor, Flat 08', 4350, 5, 0, 0, 0, 0, 29, 1),
(535, 0, 0, 0, 'Castle, 4th Floor, Flat 09', 3450, 5, 0, 0, 0, 0, 23, 1),
(536, 0, 0, 0, 'Castle, Basement, Flat 01', 3150, 5, 0, 0, 0, 0, 21, 1),
(537, 0, 0, 0, 'Castle, Basement, Flat 02', 2850, 5, 0, 0, 0, 0, 19, 1),
(538, 0, 0, 0, 'Castle, Basement, Flat 03', 2850, 5, 0, 0, 0, 0, 19, 1),
(539, 0, 0, 0, 'Castle, Basement, Flat 04', 2850, 5, 0, 0, 0, 0, 19, 1),
(540, 0, 0, 0, 'Castle, Basement, Flat 05', 3150, 5, 0, 0, 0, 0, 21, 1),
(541, 0, 0, 0, 'Castle, Basement, Flat 06', 3150, 5, 0, 0, 0, 0, 21, 1),
(542, 0, 0, 0, 'Castle, Basement, Flat 07', 2850, 5, 0, 0, 0, 0, 19, 1),
(543, 0, 0, 0, 'Castle, Basement, Flat 08', 2850, 5, 0, 0, 0, 0, 19, 1),
(544, 0, 0, 0, 'Castle, Basement, Flat 09', 3150, 5, 0, 0, 0, 0, 21, 1),
(545, 0, 0, 0, 'Castle Street 1', 13200, 5, 0, 0, 0, 0, 88, 3),
(546, 0, 0, 0, 'Castle Street 2', 6450, 5, 0, 0, 0, 0, 43, 2),
(547, 0, 0, 0, 'Castle Street 3', 7650, 5, 0, 0, 0, 0, 51, 2),
(548, 0, 0, 0, 'Castle Street 4', 7800, 5, 0, 0, 0, 0, 52, 2),
(549, 0, 0, 0, 'Castle Street 5', 7800, 5, 0, 0, 0, 0, 52, 2),
(550, 0, 0, 0, 'Edron Flats, Flat 01', 2550, 5, 0, 0, 0, 0, 17, 1),
(551, 0, 0, 0, 'Edron Flats, Flat 02', 4050, 5, 0, 0, 0, 0, 27, 2),
(552, 0, 0, 0, 'Edron Flats, Flat 03', 2250, 5, 0, 0, 0, 0, 15, 1),
(553, 0, 0, 0, 'Edron Flats, Flat 04', 2550, 5, 0, 0, 0, 0, 17, 1),
(554, 0, 0, 0, 'Edron Flats, Flat 05', 2550, 5, 0, 0, 0, 0, 17, 1),
(555, 0, 0, 0, 'Edron Flats, Flat 06', 2250, 5, 0, 0, 0, 0, 15, 1),
(556, 0, 0, 0, 'Edron Flats, Flat 07', 2250, 5, 0, 0, 0, 0, 15, 1),
(557, 0, 0, 0, 'Edron Flats, Flat 08', 2550, 5, 0, 0, 0, 0, 17, 1),
(558, 0, 0, 0, 'Edron Flats, Flat 11', 2550, 5, 0, 0, 0, 0, 17, 1),
(559, 0, 0, 0, 'Edron Flats, Flat 12', 2250, 5, 0, 0, 0, 0, 15, 1),
(560, 0, 0, 0, 'Edron Flats, Flat 13', 2250, 5, 0, 0, 0, 0, 15, 1),
(561, 0, 0, 0, 'Edron Flats, Flat 14', 2550, 5, 0, 0, 0, 0, 17, 1),
(562, 0, 0, 0, 'Edron Flats, Flat 15', 2550, 5, 0, 0, 0, 0, 17, 1),
(563, 0, 0, 0, 'Edron Flats, Flat 16', 2250, 5, 0, 0, 0, 0, 15, 1),
(564, 0, 0, 0, 'Edron Flats, Flat 17', 2250, 5, 0, 0, 0, 0, 15, 1),
(565, 0, 0, 0, 'Edron Flats, Flat 18', 2550, 5, 0, 0, 0, 0, 17, 1),
(566, 0, 0, 0, 'Edron Flats, Flat 21', 4350, 5, 0, 0, 0, 0, 29, 2),
(567, 0, 0, 0, 'Edron Flats, Flat 22', 2250, 5, 0, 0, 0, 0, 15, 1),
(568, 0, 0, 0, 'Edron Flats, Flat 23', 2250, 5, 0, 0, 0, 0, 15, 1),
(569, 0, 0, 0, 'Edron Flats, Flat 24', 2550, 5, 0, 0, 0, 0, 17, 1),
(570, 0, 0, 0, 'Edron Flats, Flat 25', 2550, 5, 0, 0, 0, 0, 17, 1),
(571, 0, 0, 0, 'Edron Flats, Flat 26', 2250, 5, 0, 0, 0, 0, 15, 1),
(572, 0, 0, 0, 'Edron Flats, Flat 27', 2250, 5, 0, 0, 0, 0, 15, 1),
(573, 0, 0, 0, 'Edron Flats, Flat 28', 2550, 5, 0, 0, 0, 0, 17, 1),
(574, 0, 0, 0, 'Edron Flats, Basement Flat 1', 7050, 5, 0, 0, 0, 0, 47, 2),
(575, 0, 0, 0, 'Edron Flats, Basement Flat 2', 7050, 5, 0, 0, 0, 0, 47, 2),
(576, 0, 1687355423, 6, 'Central Circle 1', 13650, 5, 0, 0, 0, 0, 91, 2),
(577, 0, 1688009451, 6, 'Central Circle 2', 14850, 5, 0, 0, 0, 0, 99, 2),
(578, 0, 0, 0, 'Central Circle 3', 20700, 5, 0, 0, 0, 0, 138, 5),
(579, 0, 0, 0, 'Central Circle 4', 20700, 5, 0, 0, 0, 0, 138, 5),
(580, 0, 0, 0, 'Central Circle 5', 21150, 5, 0, 0, 0, 0, 141, 5),
(581, 0, 0, 0, 'Central Circle 6 (Shop)', 21750, 5, 0, 0, 0, 0, 145, 2),
(582, 0, 0, 0, 'Central Circle 7 (Shop)', 21750, 5, 0, 0, 0, 0, 145, 2),
(583, 0, 0, 0, 'Central Circle 8 (Shop)', 21750, 5, 0, 0, 0, 0, 145, 2),
(584, 0, 0, 0, 'Central Circle 9a', 4800, 5, 0, 0, 0, 0, 32, 2),
(585, 0, 0, 0, 'Central Circle 9b', 4800, 5, 0, 0, 0, 0, 32, 2),
(586, 0, 0, 0, 'Wood Avenue 1', 7800, 5, 0, 0, 0, 0, 52, 2),
(587, 0, 0, 0, 'Wood Avenue 2', 7500, 5, 0, 0, 0, 0, 50, 2),
(588, 0, 0, 0, 'Wood Avenue 3', 7500, 5, 0, 0, 0, 0, 50, 2),
(589, 0, 0, 0, 'Wood Avenue 4', 7950, 5, 0, 0, 0, 0, 53, 2),
(590, 0, 0, 0, 'Wood Avenue 5', 7500, 5, 0, 0, 0, 0, 50, 2),
(591, 0, 0, 0, 'Wood Avenue 6a', 7050, 5, 0, 0, 0, 0, 47, 2),
(592, 0, 0, 0, 'Wood Avenue 6b', 7200, 5, 0, 0, 0, 0, 48, 2),
(593, 0, 0, 0, 'Wood Avenue 7', 26700, 5, 0, 0, 0, 0, 178, 3),
(594, 0, 0, 0, 'Wood Avenue 8', 26700, 5, 0, 0, 0, 0, 178, 3),
(595, 0, 0, 0, 'Wood Avenue 9a', 7350, 5, 0, 0, 0, 0, 49, 2),
(596, 0, 0, 0, 'Wood Avenue 9b', 7350, 5, 0, 0, 0, 0, 49, 2),
(597, 0, 0, 0, 'Wood Avenue 10a', 7650, 5, 0, 0, 0, 0, 51, 2),
(598, 0, 0, 0, 'Wood Avenue 10b', 7500, 5, 0, 0, 0, 0, 50, 3),
(599, 0, 0, 0, 'Wood Avenue 11', 33300, 5, 0, 0, 0, 0, 222, 6),
(600, 0, 0, 0, 'Wood Avenue 4a', 6600, 5, 0, 0, 0, 0, 44, 2),
(601, 0, 0, 0, 'Wood Avenue 4b', 6900, 5, 0, 0, 0, 0, 46, 2),
(602, 0, 0, 0, 'Wood Avenue 4c', 7800, 5, 0, 0, 0, 0, 52, 2),
(603, 0, 0, 0, 'Sky Lane, Guild 1', 88800, 5, 0, 0, 0, 0, 592, 23),
(604, 0, 0, 0, 'Sky Lane, Guild 2', 87000, 5, 0, 0, 0, 0, 580, 14),
(605, 0, 0, 0, 'Sky Lane, Guild 3', 73500, 5, 0, 0, 0, 0, 490, 18),
(606, 0, 0, 0, 'Sky Lane, Sea Tower', 21750, 5, 0, 0, 0, 0, 145, 6),
(607, 0, 0, 0, 'Magic Academy, Guild', 42600, 5, 0, 0, 0, 0, 284, 14),
(608, 0, 0, 0, 'Magic Academy, Shop', 4950, 5, 0, 0, 0, 0, 33, 1),
(609, 0, 0, 0, 'Magic Academy, Flat 1', 5250, 5, 0, 0, 0, 0, 35, 3),
(610, 0, 0, 0, 'Magic Academy, Flat 2', 5550, 5, 0, 0, 0, 0, 37, 2),
(611, 0, 0, 0, 'Magic Academy, Flat 3', 5550, 5, 0, 0, 0, 0, 37, 1),
(612, 0, 0, 0, 'Magic Academy, Flat 4', 5550, 5, 0, 0, 0, 0, 37, 2),
(613, 0, 0, 0, 'Magic Academy, Flat 5', 5550, 5, 0, 0, 0, 0, 37, 1),
(614, 0, 0, 0, 'Stonehome Village 1', 9750, 5, 0, 0, 0, 0, 65, 2),
(615, 0, 0, 0, 'Stonehome Village 2', 3900, 5, 0, 0, 0, 0, 26, 1),
(616, 0, 0, 0, 'Stonehome Village 3', 4050, 5, 0, 0, 0, 0, 27, 1),
(617, 0, 0, 0, 'Stonehome Village 4', 4800, 5, 0, 0, 0, 0, 32, 2),
(618, 0, 0, 0, 'Stonehome Village 5', 5700, 5, 0, 0, 0, 0, 38, 2),
(619, 0, 0, 0, 'Stonehome Village 6', 6450, 5, 0, 0, 0, 0, 43, 2),
(620, 0, 0, 0, 'Stonehome Village 7', 5850, 5, 0, 0, 0, 0, 39, 2),
(621, 0, 0, 0, 'Stonehome Village 8', 3900, 5, 0, 0, 0, 0, 26, 1),
(622, 0, 0, 0, 'Stonehome Village 9', 4050, 5, 0, 0, 0, 0, 27, 1),
(623, 0, 0, 0, 'Stonehome Flats, Flat 01', 2550, 5, 0, 0, 0, 0, 17, 1),
(624, 0, 0, 0, 'Stonehome Flats, Flat 02', 3750, 5, 0, 0, 0, 0, 25, 2),
(625, 0, 0, 0, 'Stonehome Flats, Flat 03', 2400, 5, 0, 0, 0, 0, 16, 1),
(626, 0, 0, 0, 'Stonehome Flats, Flat 04', 2550, 5, 0, 0, 0, 0, 17, 1),
(627, 0, 0, 0, 'Stonehome Flats, Flat 05', 2550, 5, 0, 0, 0, 0, 17, 1),
(628, 0, 0, 0, 'Stonehome Flats, Flat 06', 2400, 5, 0, 0, 0, 0, 16, 1),
(629, 0, 0, 0, 'Stonehome Flats, Flat 11', 3750, 5, 0, 0, 0, 0, 25, 2),
(630, 0, 0, 0, 'Stonehome Flats, Flat 12', 3750, 5, 0, 0, 0, 0, 25, 2),
(631, 0, 0, 0, 'Stonehome Flats, Flat 13', 2400, 5, 0, 0, 0, 0, 16, 1),
(632, 0, 0, 0, 'Stonehome Flats, Flat 14', 2550, 5, 0, 0, 0, 0, 17, 1),
(633, 0, 0, 0, 'Stonehome Flats, Flat 15', 2550, 5, 0, 0, 0, 0, 17, 1),
(634, 0, 0, 0, 'Stonehome Flats, Flat 16', 2400, 5, 0, 0, 0, 0, 16, 1),
(635, 0, 0, 0, 'Stonehome Clanhall', 44400, 5, 0, 0, 0, 0, 296, 10),
(636, 0, 0, 0, 'Cormaya Flats, Flat 01', 2550, 5, 0, 0, 0, 0, 17, 1),
(637, 0, 0, 0, 'Cormaya Flats, Flat 02', 2550, 5, 0, 0, 0, 0, 17, 1),
(638, 0, 0, 0, 'Cormaya Flats, Flat 03', 3750, 5, 0, 0, 0, 0, 25, 2),
(639, 0, 0, 0, 'Cormaya Flats, Flat 04', 3750, 5, 0, 0, 0, 0, 25, 2),
(640, 0, 0, 0, 'Cormaya Flats, Flat 05', 2400, 5, 0, 0, 0, 0, 16, 1),
(641, 0, 0, 0, 'Cormaya Flats, Flat 06', 2400, 5, 0, 0, 0, 0, 16, 1),
(642, 0, 0, 0, 'Cormaya Flats, Flat 11', 2550, 5, 0, 0, 0, 0, 17, 1),
(643, 0, 0, 0, 'Cormaya Flats, Flat 12', 2550, 5, 0, 0, 0, 0, 17, 1),
(644, 0, 0, 0, 'Cormaya Flats, Flat 13', 3750, 5, 0, 0, 0, 0, 25, 2),
(645, 0, 0, 0, 'Cormaya Flats, Flat 14', 3750, 5, 0, 0, 0, 0, 25, 2),
(646, 0, 0, 0, 'Cormaya Flats, Flat 15', 2400, 5, 0, 0, 0, 0, 16, 1),
(647, 0, 0, 0, 'Cormaya Flats, Flat 16', 2400, 5, 0, 0, 0, 0, 16, 1),
(648, 0, 0, 0, 'Cormaya 1', 5700, 5, 0, 0, 0, 0, 38, 2),
(649, 0, 0, 0, 'Cormaya 2', 17250, 5, 0, 0, 0, 0, 115, 3),
(650, 0, 0, 0, 'Cormaya 3', 8700, 5, 0, 0, 0, 0, 58, 2),
(651, 0, 0, 0, 'Cormaya 4', 7500, 5, 0, 0, 0, 0, 50, 2),
(652, 0, 0, 0, 'Cormaya 5', 22350, 5, 0, 0, 0, 0, 149, 3),
(653, 0, 0, 0, 'Cormaya 6', 11250, 5, 0, 0, 0, 0, 75, 2),
(654, 0, 0, 0, 'Cormaya 7', 11250, 5, 0, 0, 0, 0, 75, 2),
(655, 0, 0, 0, 'Cormaya 8', 12900, 5, 0, 0, 0, 0, 86, 2),
(656, 0, 0, 0, 'Cormaya 9a', 5700, 5, 0, 0, 0, 0, 38, 2),
(657, 0, 0, 0, 'Cormaya 9b', 11850, 5, 0, 0, 0, 0, 79, 2),
(658, 0, 0, 0, 'Cormaya 9c', 5550, 5, 0, 0, 0, 0, 37, 2),
(659, 0, 0, 0, 'Cormaya 9d', 11850, 5, 0, 0, 0, 0, 79, 2),
(660, 0, 0, 0, 'Cormaya 10', 18300, 5, 0, 0, 0, 0, 122, 3),
(661, 0, 0, 0, 'Cormaya 11', 9000, 5, 0, 0, 0, 0, 60, 2),
(662, 0, 0, 0, 'Castle of the White Dragon', 105000, 5, 0, 0, 0, 0, 700, 19),
(663, 0, 0, 0, 'Chameken I', 3900, 8, 0, 0, 0, 0, 26, 1),
(664, 0, 0, 0, 'Chameken II', 3900, 8, 0, 0, 0, 0, 26, 1),
(665, 0, 0, 0, 'Thanah I a', 3900, 8, 0, 0, 0, 0, 26, 1),
(666, 0, 0, 0, 'Thanah I b', 12000, 8, 0, 0, 0, 0, 80, 3),
(667, 0, 0, 0, 'Thanah I c', 13050, 8, 0, 0, 0, 0, 87, 3),
(668, 0, 0, 0, 'Thanah I d', 11400, 8, 0, 0, 0, 0, 76, 4),
(669, 0, 0, 0, 'Thanah II a', 3900, 8, 0, 0, 0, 0, 26, 1),
(670, 0, 0, 0, 'Thanah II b', 2400, 8, 0, 0, 0, 0, 16, 1),
(671, 0, 0, 0, 'Thanah II c', 2100, 8, 0, 0, 0, 0, 14, 1),
(672, 0, 0, 0, 'Thanah II d', 1950, 8, 0, 0, 0, 0, 13, 1),
(673, 0, 0, 0, 'Thanah II e', 1650, 8, 0, 0, 0, 0, 11, 1),
(674, 0, 0, 0, 'Thanah II f', 11550, 8, 0, 0, 0, 0, 77, 3),
(675, 0, 0, 0, 'Thanah II g', 6450, 8, 0, 0, 0, 0, 43, 2),
(676, 0, 0, 0, 'Thanah II h', 5700, 8, 0, 0, 0, 0, 38, 2),
(677, 0, 0, 0, 'Thrarhor I a (Shop)', 4350, 8, 0, 0, 0, 0, 29, 1),
(678, 0, 0, 0, 'Thrarhor I b (Shop)', 3450, 8, 0, 0, 0, 0, 23, 1),
(679, 0, 0, 0, 'Thrarhor I c (Shop)', 4050, 8, 0, 0, 0, 0, 27, 1),
(680, 0, 0, 0, 'Thrarhor I d (Shop)', 3150, 8, 0, 0, 0, 0, 21, 1),
(681, 0, 0, 0, 'Botham I a', 4350, 8, 0, 0, 0, 0, 29, 1),
(682, 0, 0, 0, 'Botham I b', 12000, 8, 0, 0, 0, 0, 80, 3),
(683, 0, 0, 0, 'Botham I c', 6900, 8, 0, 0, 0, 0, 46, 2),
(684, 0, 0, 0, 'Botham I d', 11700, 8, 0, 0, 0, 0, 78, 3),
(685, 0, 0, 0, 'Botham I e', 6450, 8, 0, 0, 0, 0, 43, 2),
(686, 0, 0, 0, 'Botham II a', 3600, 8, 0, 0, 0, 0, 24, 1),
(687, 0, 0, 0, 'Botham II b', 6750, 8, 0, 0, 0, 0, 45, 2),
(688, 0, 0, 0, 'Botham II c', 5400, 8, 0, 0, 0, 0, 36, 2),
(689, 0, 0, 0, 'Botham II d', 7200, 8, 0, 0, 0, 0, 48, 2),
(690, 0, 0, 0, 'Botham II e', 6150, 8, 0, 0, 0, 0, 41, 2),
(691, 0, 0, 0, 'Botham II f', 6450, 8, 0, 0, 0, 0, 43, 2),
(692, 0, 0, 0, 'Botham II g', 5550, 8, 0, 0, 0, 0, 37, 2),
(693, 0, 0, 0, 'Botham III a', 5250, 8, 0, 0, 0, 0, 35, 2),
(694, 0, 0, 0, 'Botham III b', 3600, 8, 0, 0, 0, 0, 24, 2),
(695, 0, 0, 0, 'Botham III c', 3900, 8, 0, 0, 0, 0, 26, 1),
(696, 0, 0, 0, 'Botham III d', 3900, 8, 0, 0, 0, 0, 26, 1),
(697, 0, 0, 0, 'Botham III e', 3900, 8, 0, 0, 0, 0, 26, 1),
(698, 0, 0, 0, 'Botham III f', 8250, 8, 0, 0, 0, 0, 55, 3),
(699, 0, 0, 0, 'Botham III g', 6150, 8, 0, 0, 0, 0, 41, 2),
(700, 0, 0, 0, 'Botham III h', 14250, 8, 0, 0, 0, 0, 95, 3),
(701, 0, 0, 0, 'Botham IV a', 5250, 8, 0, 0, 0, 0, 35, 2),
(702, 0, 0, 0, 'Botham IV b', 3600, 8, 0, 0, 0, 0, 24, 1),
(703, 0, 0, 0, 'Botham IV c', 3900, 8, 0, 0, 0, 0, 26, 1),
(704, 0, 0, 0, 'Botham IV d', 3900, 8, 0, 0, 0, 0, 26, 1),
(705, 0, 0, 0, 'Botham IV e', 3900, 8, 0, 0, 0, 0, 26, 1),
(706, 0, 0, 0, 'Botham IV f', 7050, 8, 0, 0, 0, 0, 47, 2),
(707, 0, 0, 0, 'Botham IV g', 6900, 8, 0, 0, 0, 0, 46, 2),
(708, 0, 0, 0, 'Botham IV h', 7200, 8, 0, 0, 0, 0, 48, 1),
(709, 0, 0, 0, 'Botham IV i', 7350, 8, 0, 0, 0, 0, 49, 3),
(710, 0, 0, 0, 'Ramen Tah', 26550, 8, 0, 0, 0, 0, 177, 16),
(711, 0, 0, 0, 'Charsirakh I a', 1950, 8, 0, 0, 0, 0, 13, 1),
(712, 0, 0, 0, 'Charsirakh I b', 7500, 8, 0, 0, 0, 0, 50, 2),
(713, 0, 0, 0, 'Charsirakh II', 5550, 8, 0, 0, 0, 0, 37, 2),
(714, 0, 0, 0, 'Charsirakh III', 3900, 8, 0, 0, 0, 0, 26, 1),
(715, 0, 0, 0, 'Othehothep I a', 1950, 8, 0, 0, 0, 0, 13, 1),
(716, 0, 0, 0, 'Othehothep I b', 7050, 8, 0, 0, 0, 0, 47, 2),
(717, 0, 0, 0, 'Othehothep I c', 8250, 8, 0, 0, 0, 0, 55, 3),
(718, 0, 0, 0, 'Othehothep I d', 9750, 8, 0, 0, 0, 0, 65, 4),
(719, 0, 0, 0, 'Othehothep II a', 2550, 8, 0, 0, 0, 0, 17, 1),
(720, 0, 0, 0, 'Othehothep II b', 9450, 8, 0, 0, 0, 0, 63, 3),
(721, 0, 0, 0, 'Othehothep II c', 4350, 8, 0, 0, 0, 0, 29, 1),
(722, 0, 0, 0, 'Othehothep II d', 4650, 8, 0, 0, 0, 0, 31, 1),
(723, 0, 0, 0, 'Othehothep II e', 6450, 8, 0, 0, 0, 0, 43, 2),
(724, 0, 0, 0, 'Othehothep II f', 6450, 8, 0, 0, 0, 0, 43, 2),
(725, 0, 0, 0, 'Othehothep III a', 1950, 8, 0, 0, 0, 0, 13, 1),
(726, 0, 0, 0, 'Othehothep III b', 6900, 8, 0, 0, 0, 0, 46, 2),
(727, 0, 0, 0, 'Othehothep III c', 4350, 8, 0, 0, 0, 0, 29, 2),
(728, 0, 0, 0, 'Othehothep III d', 5250, 8, 0, 0, 0, 0, 35, 1),
(729, 0, 0, 0, 'Othehothep III e', 4650, 8, 0, 0, 0, 0, 31, 1),
(730, 0, 0, 0, 'Othehothep III f', 3900, 8, 0, 0, 0, 0, 26, 1),
(731, 0, 0, 0, 'Harrah I', 26550, 8, 0, 0, 0, 0, 177, 10),
(732, 0, 0, 0, 'Murkhol I a', 2850, 8, 0, 0, 0, 0, 19, 1),
(733, 0, 0, 0, 'Murkhol I b', 2550, 8, 0, 0, 0, 0, 17, 1),
(734, 0, 0, 0, 'Murkhol I c', 2550, 8, 0, 0, 0, 0, 17, 1),
(735, 0, 0, 0, 'Murkhol I d', 2850, 8, 0, 0, 0, 0, 19, 1),
(736, 0, 0, 0, 'Oskahl I a', 7500, 8, 0, 0, 0, 0, 50, 2),
(737, 0, 0, 0, 'Oskahl I b', 4350, 8, 0, 0, 0, 0, 29, 1),
(738, 0, 0, 0, 'Oskahl I c', 3900, 8, 0, 0, 0, 0, 26, 1),
(739, 0, 0, 0, 'Oskahl I d', 5250, 8, 0, 0, 0, 0, 35, 2),
(740, 0, 0, 0, 'Oskahl I e', 4650, 8, 0, 0, 0, 0, 31, 1),
(741, 0, 0, 0, 'Oskahl I f', 4650, 8, 0, 0, 0, 0, 31, 1),
(742, 0, 0, 0, 'Oskahl I g', 5550, 8, 0, 0, 0, 0, 37, 2),
(743, 0, 0, 0, 'Oskahl I h', 8850, 8, 0, 0, 0, 0, 59, 3),
(744, 0, 0, 0, 'Oskahl I i', 4350, 8, 0, 0, 0, 0, 29, 1),
(745, 0, 0, 0, 'Oskahl I j', 3600, 8, 0, 0, 0, 0, 24, 1),
(746, 0, 0, 0, 'Mothrem I', 5550, 8, 0, 0, 0, 0, 37, 2),
(747, 0, 0, 0, 'Arakmehn I', 6000, 8, 0, 0, 0, 0, 40, 3),
(748, 0, 0, 0, 'Arakmehn II', 5550, 8, 0, 0, 0, 0, 37, 1),
(749, 0, 0, 0, 'Arakmehn III', 5550, 8, 0, 0, 0, 0, 37, 2),
(750, 0, 0, 0, 'Arakmehn IV', 6000, 8, 0, 0, 0, 0, 40, 2),
(751, 0, 0, 0, 'Unklath I a', 5550, 8, 0, 0, 0, 0, 37, 2),
(752, 0, 0, 0, 'Unklath I b', 7200, 8, 0, 0, 0, 0, 48, 2),
(753, 0, 0, 0, 'Unklath I c', 7200, 8, 0, 0, 0, 0, 48, 2),
(754, 0, 0, 0, 'Unklath I d', 7200, 8, 0, 0, 0, 0, 48, 3),
(755, 0, 0, 0, 'Unklath I e', 7500, 8, 0, 0, 0, 0, 50, 2),
(756, 0, 0, 0, 'Unklath I f', 7500, 8, 0, 0, 0, 0, 50, 2),
(757, 0, 0, 0, 'Unklath I g', 7500, 8, 0, 0, 0, 0, 50, 1),
(758, 0, 0, 0, 'Unklath II a', 5250, 8, 0, 0, 0, 0, 35, 1),
(759, 0, 0, 0, 'Unklath II b', 3600, 8, 0, 0, 0, 0, 24, 1),
(760, 0, 0, 0, 'Unklath II c', 3900, 8, 0, 0, 0, 0, 26, 1),
(761, 0, 0, 0, 'Unklath II d', 7650, 8, 0, 0, 0, 0, 51, 2),
(762, 0, 0, 0, 'Rathal I a', 5250, 8, 0, 0, 0, 0, 35, 2),
(763, 0, 0, 0, 'Rathal I b', 3600, 8, 0, 0, 0, 0, 24, 1),
(764, 0, 0, 0, 'Rathal I c', 3900, 8, 0, 0, 0, 0, 26, 1),
(765, 0, 0, 0, 'Rathal I d', 3900, 8, 0, 0, 0, 0, 26, 2),
(766, 0, 0, 0, 'Rathal I e', 3900, 8, 0, 0, 0, 0, 26, 2),
(767, 0, 0, 0, 'Rathal II a', 5550, 8, 0, 0, 0, 0, 37, 1),
(768, 0, 0, 0, 'Rathal II b', 3600, 8, 0, 0, 0, 0, 24, 1),
(769, 0, 0, 0, 'Rathal II c', 3900, 8, 0, 0, 0, 0, 26, 1),
(770, 0, 0, 0, 'Rathal II d', 7500, 8, 0, 0, 0, 0, 50, 2),
(771, 0, 0, 0, 'Uthemath I a', 2550, 8, 0, 0, 0, 0, 17, 1),
(772, 0, 0, 0, 'Uthemath I b', 4500, 8, 0, 0, 0, 0, 30, 1),
(773, 0, 0, 0, 'Uthemath I c', 4800, 8, 0, 0, 0, 0, 32, 2),
(774, 0, 0, 0, 'Uthemath I d', 4350, 8, 0, 0, 0, 0, 29, 1),
(775, 0, 0, 0, 'Uthemath I e', 4650, 8, 0, 0, 0, 0, 31, 2),
(776, 0, 0, 0, 'Uthemath I f', 12300, 8, 0, 0, 0, 0, 82, 3),
(777, 0, 0, 0, 'Uthemath II', 19950, 8, 0, 0, 0, 0, 133, 8),
(778, 0, 0, 0, 'Esuph I', 3600, 8, 0, 0, 0, 0, 24, 1),
(779, 0, 0, 0, 'Esuph II a', 1950, 8, 0, 0, 0, 0, 13, 1),
(780, 0, 0, 0, 'Esuph II b', 7350, 8, 0, 0, 0, 0, 49, 2),
(781, 0, 0, 0, 'Esuph III a', 1950, 8, 0, 0, 0, 0, 13, 1),
(782, 0, 0, 0, 'Esuph III b', 6900, 8, 0, 0, 0, 0, 46, 2),
(783, 0, 0, 0, 'Esuph IV a', 2250, 8, 0, 0, 0, 0, 15, 1),
(784, 0, 0, 0, 'Esuph IV b', 2250, 8, 0, 0, 0, 0, 15, 1),
(785, 0, 0, 0, 'Esuph IV c', 2550, 8, 0, 0, 0, 0, 17, 1),
(786, 0, 0, 0, 'Esuph IV d', 4800, 8, 0, 0, 0, 0, 32, 1),
(787, 0, 0, 0, 'Horakhal', 40500, 8, 0, 0, 0, 0, 270, 14),
(788, 0, 0, 0, 'Darashia 1, Flat 01', 5550, 6, 0, 0, 0, 0, 37, 2),
(789, 0, 0, 0, 'Darashia 1, Flat 02', 5550, 6, 0, 0, 0, 0, 37, 1),
(790, 0, 0, 0, 'Darashia 1, Flat 03', 12900, 6, 0, 0, 0, 0, 86, 4);
INSERT INTO `houses` (`id`, `owner`, `paid`, `warnings`, `name`, `rent`, `town_id`, `bid`, `bid_end`, `last_bid`, `highest_bidder`, `size`, `beds`) VALUES
(791, 0, 0, 0, 'Darashia 1, Flat 04', 5400, 6, 0, 0, 0, 0, 36, 1),
(792, 0, 0, 0, 'Darashia 1, Flat 05', 5400, 6, 0, 0, 0, 0, 36, 2),
(793, 0, 0, 0, 'Darashia 1, Flat 11', 5550, 6, 0, 0, 0, 0, 37, 2),
(794, 0, 0, 0, 'Darashia 1, Flat 12', 9150, 6, 0, 0, 0, 0, 61, 2),
(795, 0, 0, 0, 'Darashia 1, Flat 13', 9000, 6, 0, 0, 0, 0, 60, 2),
(796, 0, 0, 0, 'Darashia 1, Flat 14', 13050, 6, 0, 0, 0, 0, 87, 5),
(797, 0, 0, 0, 'Darashia 2, Flat 01', 5700, 6, 0, 0, 0, 0, 38, 1),
(798, 0, 0, 0, 'Darashia 2, Flat 02', 5550, 6, 0, 0, 0, 0, 37, 1),
(799, 0, 0, 0, 'Darashia 2, Flat 03', 6150, 6, 0, 0, 0, 0, 41, 1),
(800, 0, 0, 0, 'Darashia 2, Flat 04', 3150, 6, 0, 0, 0, 0, 21, 1),
(801, 0, 0, 0, 'Darashia 2, Flat 05', 6150, 6, 0, 0, 0, 0, 41, 2),
(802, 0, 0, 0, 'Darashia 2, Flat 06', 3150, 6, 0, 0, 0, 0, 21, 1),
(803, 0, 0, 0, 'Darashia 2, Flat 07', 5400, 6, 0, 0, 0, 0, 36, 1),
(804, 0, 0, 0, 'Darashia 2, Flat 11', 5400, 6, 0, 0, 0, 0, 36, 1),
(805, 0, 0, 0, 'Darashia 2, Flat 12', 3150, 6, 0, 0, 0, 0, 21, 1),
(806, 0, 0, 0, 'Darashia 2, Flat 13', 6150, 6, 0, 0, 0, 0, 41, 1),
(807, 0, 0, 0, 'Darashia 2, Flat 14', 3150, 6, 0, 0, 0, 0, 21, 1),
(808, 0, 0, 0, 'Darashia 2, Flat 15', 6300, 6, 0, 0, 0, 0, 42, 2),
(809, 0, 0, 0, 'Darashia 2, Flat 16', 3750, 6, 0, 0, 0, 0, 25, 1),
(810, 0, 0, 0, 'Darashia 2, Flat 17', 5550, 6, 0, 0, 0, 0, 37, 1),
(811, 0, 0, 0, 'Darashia 2, Flat 18', 3900, 6, 0, 0, 0, 0, 26, 1),
(812, 0, 0, 0, 'Darashia 3, Flat 01', 5400, 6, 0, 0, 0, 0, 36, 2),
(813, 0, 0, 0, 'Darashia 3, Flat 02', 8400, 6, 0, 0, 0, 0, 56, 2),
(814, 0, 0, 0, 'Darashia 3, Flat 03', 5400, 6, 0, 0, 0, 0, 36, 2),
(815, 0, 0, 0, 'Darashia 3, Flat 04', 8400, 6, 0, 0, 0, 0, 56, 2),
(816, 0, 0, 0, 'Darashia 3, Flat 05', 5250, 6, 0, 0, 0, 0, 35, 1),
(817, 0, 0, 0, 'Darashia 3, Flat 11', 5550, 6, 0, 0, 0, 0, 37, 1),
(818, 0, 0, 0, 'Darashia 3, Flat 12', 12000, 6, 0, 0, 0, 0, 80, 5),
(819, 0, 0, 0, 'Darashia 3, Flat 13', 5400, 6, 0, 0, 0, 0, 36, 2),
(820, 0, 0, 0, 'Darashia 3, Flat 14', 12150, 6, 0, 0, 0, 0, 81, 3),
(821, 0, 0, 0, 'Darashia 4, Flat 01', 5700, 6, 0, 0, 0, 0, 38, 1),
(822, 0, 0, 0, 'Darashia 4, Flat 02', 9150, 6, 0, 0, 0, 0, 61, 2),
(823, 0, 0, 0, 'Darashia 4, Flat 03', 5400, 6, 0, 0, 0, 0, 36, 1),
(824, 0, 0, 0, 'Darashia 4, Flat 04', 9150, 6, 0, 0, 0, 0, 61, 2),
(825, 0, 0, 0, 'Darashia 4, Flat 05', 5550, 6, 0, 0, 0, 0, 37, 2),
(826, 0, 0, 0, 'Darashia 4, Flat 11', 5550, 6, 0, 0, 0, 0, 37, 1),
(827, 0, 0, 0, 'Darashia 4, Flat 12', 12900, 6, 0, 0, 0, 0, 86, 3),
(828, 0, 0, 0, 'Darashia 4, Flat 13', 9150, 6, 0, 0, 0, 0, 61, 2),
(829, 0, 0, 0, 'Darashia 4, Flat 14', 9150, 6, 0, 0, 0, 0, 61, 2),
(830, 0, 0, 0, 'Darashia 5, Flat 01', 5700, 6, 0, 0, 0, 0, 38, 1),
(831, 0, 0, 0, 'Darashia 5, Flat 02', 8250, 6, 0, 0, 0, 0, 55, 2),
(832, 0, 0, 0, 'Darashia 5, Flat 03', 5550, 6, 0, 0, 0, 0, 37, 1),
(833, 0, 0, 0, 'Darashia 5, Flat 04', 8400, 6, 0, 0, 0, 0, 56, 2),
(834, 0, 0, 0, 'Darashia 5, Flat 05', 5400, 6, 0, 0, 0, 0, 36, 1),
(835, 0, 0, 0, 'Darashia 5, Flat 11', 9150, 6, 0, 0, 0, 0, 61, 2),
(836, 0, 0, 0, 'Darashia 5, Flat 12', 8550, 6, 0, 0, 0, 0, 57, 2),
(837, 0, 0, 0, 'Darashia 5, Flat 13', 9150, 6, 0, 0, 0, 0, 61, 2),
(838, 0, 0, 0, 'Darashia 5, Flat 14', 8400, 6, 0, 0, 0, 0, 56, 2),
(839, 0, 0, 0, 'Darashia 6a', 14850, 6, 0, 0, 0, 0, 99, 2),
(840, 0, 0, 0, 'Darashia 6b', 16200, 6, 0, 0, 0, 0, 108, 2),
(841, 0, 0, 0, 'Darashia 7, Flat 01', 5400, 6, 0, 0, 0, 0, 36, 1),
(842, 0, 0, 0, 'Darashia 7, Flat 02', 5550, 6, 0, 0, 0, 0, 37, 1),
(843, 0, 0, 0, 'Darashia 7, Flat 03', 13050, 6, 0, 0, 0, 0, 87, 4),
(844, 0, 0, 0, 'Darashia 7, Flat 04', 5250, 6, 0, 0, 0, 0, 35, 1),
(845, 0, 0, 0, 'Darashia 7, Flat 05', 5250, 6, 0, 0, 0, 0, 35, 2),
(846, 0, 0, 0, 'Darashia 7, Flat 11', 5400, 6, 0, 0, 0, 0, 36, 1),
(847, 0, 0, 0, 'Darashia 7, Flat 12', 12750, 6, 0, 0, 0, 0, 85, 4),
(848, 0, 0, 0, 'Darashia 7, Flat 13', 5250, 6, 0, 0, 0, 0, 35, 1),
(849, 0, 0, 0, 'Darashia 7, Flat 14', 12900, 6, 0, 0, 0, 0, 86, 4),
(850, 0, 0, 0, 'Darashia 8, Flat 01', 11250, 6, 0, 0, 0, 0, 75, 2),
(851, 0, 0, 0, 'Darashia 8, Flat 02', 15300, 6, 0, 0, 0, 0, 102, 2),
(852, 0, 0, 0, 'Darashia 8, Flat 03', 21150, 6, 0, 0, 0, 0, 141, 3),
(853, 0, 0, 0, 'Darashia 8, Flat 04', 12300, 6, 0, 0, 0, 0, 82, 2),
(854, 0, 0, 0, 'Darashia 8, Flat 05', 11700, 6, 0, 0, 0, 0, 78, 2),
(855, 0, 0, 0, 'Darashia, Villa', 27450, 6, 0, 0, 0, 0, 183, 4),
(856, 0, 0, 0, 'Darashia, Western Guildhall', 46800, 6, 0, 0, 0, 0, 312, 14),
(857, 0, 0, 0, 'Darashia, Eastern Guildhall', 55950, 6, 0, 0, 0, 0, 373, 16),
(858, 0, 0, 0, 'Darashia 8, Flat 11', 9000, 6, 0, 0, 0, 0, 60, 2),
(859, 0, 0, 0, 'Darashia 8, Flat 12', 8400, 6, 0, 0, 0, 0, 56, 2),
(860, 0, 0, 0, 'Darashia 8, Flat 13', 9300, 6, 0, 0, 0, 0, 62, 2),
(861, 0, 0, 0, 'Darashia 8, Flat 14', 8400, 6, 0, 0, 0, 0, 56, 2);

-- --------------------------------------------------------

--
-- Table structure for table `house_lists`
--

CREATE TABLE `house_lists` (
  `house_id` int NOT NULL,
  `listid` int NOT NULL,
  `list` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ip_bans`
--

CREATE TABLE `ip_bans` (
  `ip` int UNSIGNED NOT NULL,
  `reason` varchar(255) NOT NULL,
  `banned_at` bigint NOT NULL,
  `expires_at` bigint NOT NULL,
  `banned_by` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `kill_statistics`
--

CREATE TABLE `kill_statistics` (
  `name` varchar(35) NOT NULL,
  `killed_by` smallint UNSIGNED NOT NULL,
  `killed` smallint UNSIGNED NOT NULL,
  `time` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `kill_statistics`
--

INSERT INTO `kill_statistics` (`name`, `killed_by`, `killed`, `time`) VALUES
('Dragon', 0, 2, 1753028021),
('Mahrdis', 0, 1, 1753028021),
('Dragon Lord', 0, 1, 1753028021),
('Demon', 0, 4, 1753426386),
('Demon', 0, 1, 1753471923);

-- --------------------------------------------------------

--
-- Table structure for table `medivia coins`
--

CREATE TABLE `medivia coins` (
  `id` int NOT NULL,
  `servidor` text NOT NULL,
  `char_name` text NOT NULL,
  `flags` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medivia coins`
--

INSERT INTO `medivia coins` (`id`, `servidor`, `char_name`, `flags`) VALUES
(1, 'Legacy', 'Rafaaw', 'fr'),
(2, 'Purity', 'Rafaaw', 'fr'),
(3, 'Progeny', 'Rafaaw', 'fr'),
(4, 'Destiny', 'Rafaaw', 'ca'),
(5, 'Pendulum', 'Rafaaw', 'ca'),
(6, 'Odyssey', 'Rafaaw', 'ca'),
(7, 'Eternum', 'Rafaaw', 'us');

-- --------------------------------------------------------

--
-- Table structure for table `myaac_account_actions`
--

CREATE TABLE `myaac_account_actions` (
  `account_id` int NOT NULL,
  `ip` int UNSIGNED NOT NULL DEFAULT '0',
  `ipv6` binary(16) NOT NULL DEFAULT '0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `date` int NOT NULL DEFAULT '0',
  `action` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `myaac_account_actions`
--

INSERT INTO `myaac_account_actions` (`account_id`, `ip`, `ipv6`, `date`, `action`) VALUES
(4022023, 0, 0x00000000000000000000000000000001, 1675523240, 'Account created.'),
(199361, 0, 0x00000000000000000000000000000000, 1675563518, 'Account created.'),
(199361, 0, 0x00000000000000000000000000000000, 1675563519, 'Created character <b>Luanzera</b>.'),
(121234, 0, 0x00000000000000000000000000000000, 1676241588, 'Account created.'),
(121234, 0, 0x00000000000000000000000000000000, 1676304848, 'Created character <b>Teste</b>.'),
(199361, 0, 0x00000000000000000000000000000000, 1676496962, 'Created character <b>Luan Paladin</b>.'),
(145145, 623863918, 0x00000000000000000000000000000000, 1677197997, 'Account created.'),
(145145, 623863918, 0x00000000000000000000000000000000, 1677197997, 'Created character <b>Marios</b>.'),
(155155, 623863918, 0x00000000000000000000000000000000, 1677198024, 'Account created.'),
(155155, 623863918, 0x00000000000000000000000000000000, 1677198025, 'Created character <b>Marioska</b>.'),
(199361, 0, 0x00000000000000000000000000000000, 1677205059, 'Generated recovery key.'),
(1234567, 0, 0x28040828c2308242e527129bd2bd67d5, 1680813793, 'Created character <b>Kina Teste</b>.'),
(1234567, 0, 0x28040828c2308242e527129bd2bd67d5, 1680813857, 'Created character <b>Knight Tank Test</b>.'),
(1234567, 0, 0x28040828c2308242e527129bd2bd67d5, 1680823217, 'Created character <b>Magez</b>.'),
(199361, 0, 0x28040828c2308242d077c8d172e05b72, 1681528065, 'Created character <b>Luan Teste</b>.'),
(1883906, 0, 0x28040828c2314afe684f7bde273151af, 1684706782, 'Account created.'),
(1883906, 0, 0x28040828c2314afe684f7bde273151af, 1684706784, 'Created character <b>Skarian Leon</b>.'),
(158983, 0, 0x28040828c2314afe9c54fdc21caf9329, 1684719716, 'Account created.'),
(158983, 0, 0x28040828c2314afe9c54fdc21caf9329, 1684719716, 'Created character <b>Diehl</b>.'),
(221208, 769755330, 0x00000000000000000000000000000000, 1684758613, 'Account created.'),
(221208, 769755330, 0x00000000000000000000000000000000, 1684758614, 'Created character <b>Guizao</b>.'),
(221208, 769755330, 0x00000000000000000000000000000000, 1684758660, 'Generated recovery key.'),
(120822, 769755330, 0x00000000000000000000000000000000, 1684761131, 'Account created.'),
(120822, 769755330, 0x00000000000000000000000000000000, 1684761131, 'Created character <b>Guizaoo</b>.'),
(1883906, 0, 0x28040828c2314afe85c850df59eae25f, 1684762312, 'Created character <b>Mr Leon</b>.'),
(1883906, 0, 0x28040828c2314afe85c850df59eae25f, 1684764200, 'Created character <b>Luansz</b>.'),
(1883906, 0, 0x28040828c2314afe85c850df59eae25f, 1684764298, 'Created character <b>Luanzs</b>.'),
(1883906, 0, 0x28040828c2314afe85c850df59eae25f, 1684764428, 'Created character <b>Luanzin</b>.'),
(1883906, 0, 0x28040828c2314afe85c850df59eae25f, 1684764712, 'Created character <b>Luanzerah</b>.'),
(1883906, 0, 0x28040828c2314afe85c850df59eae25f, 1684764881, 'Created character <b>Munhozera</b>.'),
(1883906, 0, 0x28040828c2314afe85c850df59eae25f, 1684765206, 'Created character <b>Munhoz</b>.'),
(221208, 769755330, 0x00000000000000000000000000000000, 1684775790, 'Created character <b>Guii</b>.'),
(58764899, 0, 0x280401b18ac0469fcc15aa1ca741c9d4, 1685295998, 'Account created.'),
(58764899, 0, 0x280401b18ac0469fcc15aa1ca741c9d4, 1685295998, 'Created character <b>Madstorm</b>.'),
(6025539, 2975078967, 0x00000000000000000000000000000000, 1685410677, 'Account created.'),
(6025539, 2975078967, 0x00000000000000000000000000000000, 1685410680, 'Created character <b>Rodorfin</b>.'),
(741852, 0, 0x2804014c7582475e497427ea5e238f69, 1685918384, 'Account created.'),
(741852, 0, 0x2804014c7582475e497427ea5e238f69, 1685918385, 'Created character <b>Niva Buwan</b>.'),
(5337677, 95266422, 0x00000000000000000000000000000000, 1686584532, 'Account created.'),
(5337677, 95266422, 0x00000000000000000000000000000000, 1686584533, 'Created character <b>Hihi</b>.');

-- --------------------------------------------------------

--
-- Table structure for table `myaac_admin_menu`
--

CREATE TABLE `myaac_admin_menu` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `page` varchar(255) NOT NULL DEFAULT '',
  `ordering` int NOT NULL DEFAULT '0',
  `flags` int NOT NULL DEFAULT '0',
  `enabled` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `myaac_bugtracker`
--

CREATE TABLE `myaac_bugtracker` (
  `account` varchar(255) NOT NULL,
  `type` int NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '0',
  `text` text NOT NULL,
  `id` int NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `reply` int NOT NULL DEFAULT '0',
  `who` int NOT NULL DEFAULT '0',
  `uid` int NOT NULL,
  `tag` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `myaac_changelog`
--

CREATE TABLE `myaac_changelog` (
  `id` int NOT NULL,
  `body` varchar(500) NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 - added, 2 - removed, 3 - changed, 4 - fixed',
  `where` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 - server, 2 - site',
  `date` int NOT NULL DEFAULT '0',
  `player_id` int NOT NULL DEFAULT '0',
  `hidden` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `myaac_changelog`
--

INSERT INTO `myaac_changelog` (`id`, `body`, `type`, `where`, `date`, `player_id`, `hidden`) VALUES
(1, 'MyAAC installed. (:', 3, 2, 1675523187, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `myaac_config`
--

CREATE TABLE `myaac_config` (
  `id` int NOT NULL,
  `name` varchar(30) NOT NULL,
  `value` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `myaac_config`
--

INSERT INTO `myaac_config` (`id`, `name`, `value`) VALUES
(1, 'database_version', '33'),
(2, 'status_online', ''),
(3, 'status_players', '0'),
(4, 'status_playersMax', '0'),
(5, 'status_lastCheck', '1689146331'),
(6, 'status_uptime', '51144'),
(7, 'status_monsters', '20635'),
(8, 'status_uptimeReadable', '14h 12m'),
(9, 'status_motd', 'The Violet Project!\n\nVersion 2.0'),
(10, 'status_mapAuthor', 'Ezzz & CipSoft'),
(11, 'status_mapName', 'map'),
(12, 'status_mapWidth', '65000'),
(13, 'status_mapHeight', '65000'),
(14, 'status_server', 'The Violet Project'),
(15, 'status_serverVersion', '3.1 Beta'),
(16, 'status_clientVersion', '7.72'),
(17, 'last_usage_report', '1689097389'),
(18, 'views_counter', '1210');

-- --------------------------------------------------------

--
-- Table structure for table `myaac_faq`
--

CREATE TABLE `myaac_faq` (
  `id` int NOT NULL,
  `question` varchar(255) NOT NULL DEFAULT '',
  `answer` varchar(1020) NOT NULL DEFAULT '',
  `ordering` int NOT NULL DEFAULT '0',
  `hidden` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `myaac_forum`
--

CREATE TABLE `myaac_forum` (
  `id` int NOT NULL,
  `first_post` int NOT NULL DEFAULT '0',
  `last_post` int NOT NULL DEFAULT '0',
  `section` int NOT NULL DEFAULT '0',
  `replies` int NOT NULL DEFAULT '0',
  `views` int NOT NULL DEFAULT '0',
  `author_aid` int NOT NULL DEFAULT '0',
  `author_guid` int NOT NULL DEFAULT '0',
  `post_text` text NOT NULL,
  `post_topic` varchar(255) NOT NULL DEFAULT '',
  `post_smile` tinyint(1) NOT NULL DEFAULT '0',
  `post_html` tinyint(1) NOT NULL DEFAULT '0',
  `post_date` int NOT NULL DEFAULT '0',
  `last_edit_aid` int NOT NULL DEFAULT '0',
  `edit_date` int NOT NULL DEFAULT '0',
  `post_ip` varchar(32) NOT NULL DEFAULT '0.0.0.0',
  `sticked` tinyint(1) NOT NULL DEFAULT '0',
  `closed` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `myaac_forum_boards`
--

CREATE TABLE `myaac_forum_boards` (
  `id` int NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  `ordering` int NOT NULL DEFAULT '0',
  `guild` int NOT NULL DEFAULT '0',
  `access` int NOT NULL DEFAULT '0',
  `closed` tinyint(1) NOT NULL DEFAULT '0',
  `hidden` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `myaac_forum_boards`
--

INSERT INTO `myaac_forum_boards` (`id`, `name`, `description`, `ordering`, `guild`, `access`, `closed`, `hidden`) VALUES
(1, 'News', 'News commenting', 0, 0, 0, 1, 0),
(2, 'Trade', 'Trade offers.', 1, 0, 0, 0, 0),
(3, 'Quests', 'Quest making.', 2, 0, 0, 0, 0),
(4, 'Pictures', 'Your pictures.', 3, 0, 0, 0, 0),
(5, 'Bug Report', 'Report bugs there.', 4, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `myaac_gallery`
--

CREATE TABLE `myaac_gallery` (
  `id` int NOT NULL,
  `comment` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `author` varchar(50) NOT NULL DEFAULT '',
  `ordering` int NOT NULL DEFAULT '0',
  `hidden` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `myaac_gallery`
--

INSERT INTO `myaac_gallery` (`id`, `comment`, `image`, `thumb`, `author`, `ordering`, `hidden`) VALUES
(1, 'Demon', 'images/gallery/demon.jpg', 'images/gallery/demon_thumb.gif', 'MyAAC', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `myaac_menu`
--

CREATE TABLE `myaac_menu` (
  `id` int NOT NULL,
  `template` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `blank` tinyint(1) NOT NULL DEFAULT '0',
  `color` varchar(6) NOT NULL DEFAULT '',
  `category` int NOT NULL DEFAULT '1',
  `ordering` int NOT NULL DEFAULT '0',
  `enabled` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `myaac_menu`
--

INSERT INTO `myaac_menu` (`id`, `template`, `name`, `link`, `blank`, `color`, `category`, `ordering`, `enabled`) VALUES
(1, 'kathrine', 'Latest News', 'news', 0, '', 1, 0, 1),
(2, 'kathrine', 'News Archive', 'news/archive', 0, '', 1, 1, 1),
(3, 'kathrine', 'Changelog', 'changelog', 0, '', 1, 2, 1),
(4, 'kathrine', 'Account Management', 'account/manage', 0, '', 2, 0, 1),
(5, 'kathrine', 'Create Account', 'account/create', 0, '', 2, 1, 1),
(6, 'kathrine', 'Lost Account?', 'account/lost', 0, '', 2, 2, 1),
(7, 'kathrine', 'Server Rules', 'rules', 0, '', 2, 3, 1),
(8, 'kathrine', 'Downloads', 'downloads', 0, '', 5, 4, 1),
(9, 'kathrine', 'Report Bug', 'bugtracker', 0, '', 2, 5, 1),
(10, 'kathrine', 'Who is Online?', 'online', 0, '', 3, 0, 1),
(11, 'kathrine', 'Characters', 'characters', 0, '', 3, 1, 1),
(12, 'kathrine', 'Guilds', 'guilds', 0, '', 3, 2, 1),
(13, 'kathrine', 'Highscores', 'highscores', 0, '', 3, 3, 1),
(14, 'kathrine', 'Last Deaths', 'lastkills', 0, '', 3, 4, 1),
(15, 'kathrine', 'Houses', 'houses', 0, '', 3, 5, 1),
(16, 'kathrine', 'Bans', 'bans', 0, '', 3, 6, 1),
(17, 'kathrine', 'Forum', 'forum', 0, '', 3, 7, 1),
(18, 'kathrine', 'Team', 'team', 0, '', 3, 8, 1),
(19, 'kathrine', 'Monsters', 'creatures', 0, '', 5, 0, 1),
(20, 'kathrine', 'Spells', 'spells', 0, '', 5, 1, 1),
(21, 'kathrine', 'Server Info', 'serverInfo', 0, '', 5, 2, 1),
(22, 'kathrine', 'Commands', 'commands', 0, '', 5, 3, 1),
(23, 'kathrine', 'Gallery', 'gallery', 0, '', 5, 4, 1),
(24, 'kathrine', 'Experience Table', 'experienceTable', 0, '', 5, 5, 1),
(25, 'kathrine', 'FAQ', 'faq', 0, '', 5, 6, 1),
(26, 'kathrine', 'Buy Points', 'points', 0, '', 6, 0, 1),
(27, 'kathrine', 'Shop Offer', 'gifts', 0, '', 6, 1, 1),
(28, 'kathrine', 'Shop History', 'gifts/history', 0, '', 6, 2, 1),
(88, 'tibiacom', 'Latest News', 'news', 0, '', 1, 0, 1),
(89, 'tibiacom', 'News Archive', 'news/archive', 0, '', 1, 1, 1),
(90, 'tibiacom', 'Changelog', 'changelog', 0, '', 1, 2, 1),
(91, 'tibiacom', 'Account Management', 'account/manage', 0, '', 2, 0, 1),
(92, 'tibiacom', 'Create Account', 'account/create', 0, '', 2, 1, 1),
(93, 'tibiacom', 'Lost Account?', 'account/lost', 0, '', 2, 2, 1),
(94, 'tibiacom', 'Server Rules', 'rules', 0, '', 2, 3, 1),
(95, 'tibiacom', 'Downloads', 'downloads', 0, '', 2, 4, 1),
(96, 'tibiacom', 'Report Bug', 'bugtracker', 0, '', 2, 5, 1),
(97, 'tibiacom', 'Characters', 'characters', 0, '', 3, 0, 1),
(98, 'tibiacom', 'Who Is Online?', 'online', 0, '', 3, 1, 1),
(99, 'tibiacom', 'Highscores', 'highscores', 0, '', 3, 2, 1),
(100, 'tibiacom', 'Last Kills', 'lastkills', 0, '', 3, 3, 1),
(101, 'tibiacom', 'Houses', 'houses', 0, '', 3, 4, 1),
(102, 'tibiacom', 'Guilds', 'guilds', 0, '', 3, 5, 1),
(103, 'tibiacom', 'Polls', 'polls', 0, '', 3, 6, 1),
(104, 'tibiacom', 'Bans', 'bans', 0, '', 3, 7, 1),
(105, 'tibiacom', 'Support List', 'team', 0, '', 3, 8, 1),
(106, 'tibiacom', 'Forum', 'forum', 0, '', 4, 0, 1),
(107, 'tibiacom', 'Creatures', 'creatures', 0, '', 5, 0, 1),
(108, 'tibiacom', 'Spells', 'spells', 0, '', 5, 1, 1),
(109, 'tibiacom', 'Commands', 'commands', 0, '', 5, 2, 1),
(110, 'tibiacom', 'Exp Stages', 'experienceStages', 0, '', 5, 3, 1),
(111, 'tibiacom', 'Gallery', 'gallery', 0, '', 5, 4, 1),
(112, 'tibiacom', 'Server Info', 'serverInfo', 0, '', 5, 5, 1),
(113, 'tibiacom', 'Experience Table', 'experienceTable', 0, '', 5, 6, 1),
(114, 'tibiacom', 'Buy Points', 'points', 0, '', 6, 0, 1),
(115, 'tibiacom', 'Shop Offer', 'gifts', 0, '', 6, 1, 1),
(116, 'tibiacom', 'Shop History', 'gifts/history', 0, '', 6, 2, 1),
(117, 'tibiacom', 'Pix', 'pix/index', 0, 'ffffff', 6, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `myaac_monsters`
--

CREATE TABLE `myaac_monsters` (
  `id` int NOT NULL,
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `mana` int NOT NULL DEFAULT '0',
  `exp` int NOT NULL,
  `health` int NOT NULL,
  `speed_lvl` int NOT NULL DEFAULT '1',
  `use_haste` tinyint(1) NOT NULL,
  `voices` text NOT NULL,
  `immunities` varchar(255) NOT NULL,
  `summonable` tinyint(1) NOT NULL,
  `convinceable` tinyint(1) NOT NULL,
  `race` varchar(255) NOT NULL,
  `loot` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `myaac_news`
--

CREATE TABLE `myaac_news` (
  `id` int NOT NULL,
  `title` varchar(100) NOT NULL,
  `body` text NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 - news, 2 - ticker, 3 - article',
  `date` int NOT NULL DEFAULT '0',
  `category` tinyint(1) NOT NULL DEFAULT '0',
  `player_id` int NOT NULL DEFAULT '0',
  `last_modified_by` int NOT NULL DEFAULT '0',
  `last_modified_date` int NOT NULL DEFAULT '0',
  `comments` varchar(50) NOT NULL DEFAULT '',
  `article_text` varchar(300) NOT NULL DEFAULT '',
  `article_image` varchar(100) NOT NULL DEFAULT '',
  `hidden` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `myaac_news`
--

INSERT INTO `myaac_news` (`id`, `title`, `body`, `type`, `date`, `category`, `player_id`, `last_modified_by`, `last_modified_date`, `comments`, `article_text`, `article_image`, `hidden`) VALUES
(1, 'Hello!', 'MyAAC is just READY to use!', 1, 1675523240, 2, 5, 0, 0, 'https://my-aac.org', '', '', 0),
(2, 'Hello tickets!', 'https://my-aac.org', 2, 1675523240, 4, 5, 0, 0, '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `myaac_news_categories`
--

CREATE TABLE `myaac_news_categories` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(50) NOT NULL DEFAULT '',
  `icon_id` int NOT NULL DEFAULT '0',
  `hidden` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `myaac_news_categories`
--

INSERT INTO `myaac_news_categories` (`id`, `name`, `description`, `icon_id`, `hidden`) VALUES
(1, '', '', 0, 0),
(2, '', '', 1, 0),
(3, '', '', 2, 0),
(4, '', '', 3, 0),
(5, '', '', 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `myaac_notepad`
--

CREATE TABLE `myaac_notepad` (
  `id` int NOT NULL,
  `account_id` int NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `myaac_pages`
--

CREATE TABLE `myaac_pages` (
  `id` int NOT NULL,
  `name` varchar(30) NOT NULL,
  `title` varchar(30) NOT NULL,
  `body` text NOT NULL,
  `date` int NOT NULL DEFAULT '0',
  `player_id` int NOT NULL DEFAULT '0',
  `php` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 - plain html, 1 - php',
  `enable_tinymce` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 - enabled, 0 - disabled',
  `access` tinyint NOT NULL DEFAULT '0',
  `hidden` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `myaac_pages`
--

INSERT INTO `myaac_pages` (`id`, `name`, `title`, `body`, `date`, `player_id`, `php`, `enable_tinymce`, `access`, `hidden`) VALUES
(1, 'downloads', 'Downloads', '<p>&nbsp;</p>\n<p>&nbsp;</p>\n<div style=\"text-align: center;\">We\'re using official Tibia Client <strong>{{ config.client / 100 }}</strong><br />\n<p>Download Tibia Client <strong>{{ config.client / 100 }}</strong>&nbsp;for Windows <a href=\"https://drive.google.com/drive/folders/0B2-sMQkWYzhGSFhGVlY2WGk5czQ\" target=\"_blank\" rel=\"noopener\">HERE</a>.</p>\n<h2>IP Changer:</h2>\n<a href=\"https://static.otland.net/ipchanger.exe\" target=\"_blank\" rel=\"noopener\">HERE</a></div>', 0, 1, 0, 1, 1, 0),
(2, 'commands', 'Commands', '<table style=\"border-collapse: collapse; width: 87.8471%; height: 57px;\" border=\"1\">\n<tbody>\n<tr style=\"height: 18px;\">\n<td style=\"width: 33.3333%; background-color: #505050; height: 18px;\"><span style=\"color: #ffffff;\"><strong>Words</strong></span></td>\n<td style=\"width: 33.3333%; background-color: #505050; height: 18px;\"><span style=\"color: #ffffff;\"><strong>Description</strong></span></td>\n</tr>\n<tr style=\"height: 18px; background-color: #f1e0c6;\">\n<td style=\"width: 33.3333%; height: 18px;\"><em>!example</em></td>\n<td style=\"width: 33.3333%; height: 18px;\">This is just an example</td>\n</tr>\n<tr style=\"height: 18px; background-color: #d4c0a1;\">\n<td style=\"width: 33.3333%; height: 18px;\"><em>!buyhouse</em></td>\n<td style=\"width: 33.3333%; height: 18px;\">Buy house you are looking at</td>\n</tr>\n<tr style=\"height: 18px; background-color: #f1e0c6;\">\n<td style=\"width: 33.3333%; height: 18px;\"><em>!aol</em></td>\n<td style=\"width: 33.3333%; height: 18px;\">Buy AoL</td>\n</tr>\n</tbody>\n</table>', 0, 1, 0, 1, 1, 0),
(3, 'rules_on_the_page', 'Rules', '1. Names\na) Names which contain insulting (e.g. \"Bastard\"), racist (e.g. \"Nigger\"), extremely right-wing (e.g. \"Hitler\"), sexist (e.g. \"Bitch\") or offensive (e.g. \"Copkiller\") language.\nb) Names containing parts of sentences (e.g. \"Mike returns\"), nonsensical combinations of letters (e.g. \"Fgfshdsfg\") or invalid formattings (e.g. \"Thegreatknight\").\nc) Names that obviously do not describe a person (e.g. \"Christmastree\", \"Matrix\"), names of real life celebrities (e.g. \"Britney Spears\"), names that refer to real countries (e.g. \"Swedish Druid\"), names which were created to fake other players\' identities (e.g. \"Arieswer\" instead of \"Arieswar\") or official positions (e.g. \"System Admin\").\n\n2. Cheating\na) Exploiting obvious errors of the game (\"bugs\"), for instance to duplicate items. If you find an error you must report it to CipSoft immediately.\nb) Intentional abuse of weaknesses in the gameplay, for example arranging objects or players in a way that other players cannot move them.\nc) Using tools to automatically perform or repeat certain actions without any interaction by the player (\"macros\").\nd) Manipulating the client program or using additional software to play the game.\ne) Trying to steal other players\' account data (\"hacking\").\nf) Playing on more than one account at the same time (\"multi-clienting\").\ng) Offering account data to other players or accepting other players\' account data (\"account-trading/sharing\").\n\n3. Gamemasters\na) Threatening a gamemaster because of his or her actions or position as a gamemaster.\nb) Pretending to be a gamemaster or to have influence on the decisions of a gamemaster.\nc) Intentionally giving wrong or misleading information to a gamemaster concerning his or her investigations or making false reports about rule violations.\n\n4. Player Killing\na) Excessive killing of characters who are not marked with a \"skull\" on worlds which are not PvP-enforced. Please note that killing marked characters is not a reason for a banishment.\n\nA violation of the Tibia Rules may lead to temporary banishment of characters and accounts. In severe cases removal or modification of character skills, attributes and belongings, as well as the permanent removal of accounts without any compensation may be considered. The sanction is based on the seriousness of the rule violation and the previous record of the player. It is determined by the gamemaster imposing the banishment.\n\nThese rules may be changed at any time. All changes will be announced on the official website.', 0, 1, 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `myaac_spells`
--

CREATE TABLE `myaac_spells` (
  `id` int NOT NULL,
  `spell` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL,
  `words` varchar(255) NOT NULL DEFAULT '',
  `category` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 - attack, 2 - healing, 3 - summon, 4 - supply, 5 - support',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 - instant, 2 - conjure, 3 - rune',
  `level` int NOT NULL DEFAULT '0',
  `maglevel` int NOT NULL DEFAULT '0',
  `mana` int NOT NULL DEFAULT '0',
  `soul` tinyint NOT NULL DEFAULT '0',
  `conjure_id` int NOT NULL DEFAULT '0',
  `conjure_count` tinyint NOT NULL DEFAULT '0',
  `reagent` int NOT NULL DEFAULT '0',
  `item_id` int NOT NULL DEFAULT '0',
  `premium` tinyint(1) NOT NULL DEFAULT '0',
  `vocations` varchar(100) NOT NULL DEFAULT '',
  `hidden` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `myaac_videos`
--

CREATE TABLE `myaac_videos` (
  `id` int NOT NULL,
  `title` varchar(100) NOT NULL DEFAULT '',
  `youtube_id` varchar(20) NOT NULL,
  `author` varchar(50) NOT NULL DEFAULT '',
  `ordering` int NOT NULL DEFAULT '0',
  `hidden` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `myaac_visitors`
--

CREATE TABLE `myaac_visitors` (
  `ip` varchar(45) NOT NULL,
  `lastvisit` int NOT NULL DEFAULT '0',
  `page` varchar(2048) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `myaac_weapons`
--

CREATE TABLE `myaac_weapons` (
  `id` int NOT NULL,
  `level` int NOT NULL DEFAULT '0',
  `maglevel` int NOT NULL DEFAULT '0',
  `vocations` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `payment_history`
--

CREATE TABLE `payment_history` (
  `id` int NOT NULL,
  `account_id` int NOT NULL,
  `method` text,
  `status` text,
  `code` text,
  `copy` text,
  `char_name` text,
  `servidor` text,
  `value` float NOT NULL,
  `coins` int NOT NULL,
  `date` varchar(60) NOT NULL,
  `wallet` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `payment_history`
--

INSERT INTO `payment_history` (`id`, `account_id`, `method`, `status`, `code`, `copy`, `char_name`, `servidor`, `value`, `coins`, `date`, `wallet`) VALUES
(55, 4022023, 'Qrcode_Mercado_Pago', 'Pedente', '<img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAABRQAAAUUAQAAAACGnaNFAAAH60lEQVR42u3dQY7jNhAFUN5A978lb8BggEnaYn3SlJ0AA+R50ei2Leqpd4Uqfrbxx796Y2RkZGRkZGRkZGRkZGRkZGRkZGRkZGRkZGRkZGRkZGRkZGRkZGRkZGRkZGRkZGRkZGT83tjm1/Xrvb9//Ppuu186v6ZVpu9NV7x+sLg5IyMjIyMjIyMjIyPjsfF6NZQ/W7jZ9fuDnyf4eS//dkNNl+WbMzIyMjIyMjIyMjIyHhmncut1kdbil39/pf9TKPX7e9Nlqfpa3pyRkZGRkZGRkZGRkfE74+R5bS5N79WW0tRDmppQm1KNkZGRkZGRkZGRkZHxO2OqkcoiaaStzLXdyKmkY2RkZGRkZGRkZGRk/M5YyNeqbuqvigm1H4dLk3BfzO0xMjIyMjIyMjIyMjLuMwv+8x//Qq4CIyMjIyMjIyMjI+P/1ZhftcmTR9raqgTrbdGnavetQRsBIyMjIyMjIyMjIyPjO+MuJnrTSGphj8/tgUqYQWok9dKEYmRkZGRkZGRkZGRkfGxMeQLlK+OuaMHdtoHRvTz4NErHyMjIyMjIyMjIyMh4aExTaoVSW0DpMUpzqRZyU6+pnDA6GBkZGRkZGRkZGRkZnxlL8vMIWdE1HHrTQ0rxa4uKrMzdMTIyMjIyMjIyMjIyHhk3LaAUZpAm4epGn80unsWIXPgXMDIyMjIyMjIyMjIy7o2b7ICUAd3CZp3Wduul80JHqc3ez8QxMjIyMjIyMjIyMjIujWV8rZfOUdr3k8/t7GUDTxnDS3cbjIyMjIyMjIyMjIyMz4zLQikvXMMHymRdP0elThQjIyMjIyMjIyMjI+OJsW3Lo2nCrd9LqxGio3vY8jPuIdJLKCMjIyMjIyMjIyMj4yfG3C9afPCKb8WdXgcn6DAyMjIyMjIyMjIyMj4xnp7gmQ+2WWz+mZ6gVGT7GzEyMjIyMjIyMjIyMh4apyJr5I5QuUU6wXPkybrlRp/DmThGRkZGRkZGRkZGRsalsYy+1Xm1tFw6DDR9OTer+nFmASMjIyMjIyMjIyMjY56Ju+3dWe7iSVXVlFRQBuP6plQrd2uMjIyMjIyMjIyMjIzPjCVoYFFBlQG6dpe1skoZlhubplF4PkZGRkZGRkZGRkZGxr3xtRmUxtx203F56q2HJ9j1mspAHiMjIyMjIyMjIyMj45ExFV6pDisH4Cx2+5REtV5CqfPNByMjIyMjIyMjIyMj4zNjBoycGl1m2FLradyn3mqbabkX6CT3mpGRkZGRkZGRkZGRsRpLIEEtt9Jtyy2W9VoPqEk2GBkZGRkZGRkZGRkZPzJe9wG1Xq6fAgnOsw1aKNWu1VQeIyMjIyMjIyMjIyPjofG6L5K2/IwSLJ33+Pw8WkolqOVbaS4NRkZGRkZGRkZGRkbGB8bdcmXhmjuwUSyvHeXMz1DSMTIyMjIyMjIyMjIy7o1Z21bn4Yyy0adcls7ynAq0xWWrmouRkZGRkZGRkZGRkXHTQ7o2G3jynFzPZVlOoV50rEpCGyMjIyMjIyMjIyMj40Nj+bNS9oHRKaRg05i6Qg9pgjIyMjIyMjIyMjIyMj40Tr2cNB2XCrTUZipLLZpQKwYjIyMjIyMjIyMjI+M7Y7uPqu0bRD+3mKbZUhZB7USlpVYfMDIyMjIyMjIyMjIyjvf7Z9IhNoVy4+Vogp4rqCmcbdlwYmRkZGRkZGRkZGRkfGIstdS1Ogc0rVkf4/WNdCjOJ5nSjIyMjIyMjIyMjIyMG+PbWipHGIx8yM7rAoshuFTmvcmUZmRkZGRkZGRkZGRk3M/EpZJpWjO1gHYL5JZSmoQbjIyMjIyMjIyMjIyMx8YEyJfe4gpSkZUn60bZ7VN6UuNNZgEjIyMjIyMjIyMjI+PSWEbartJcmmqpNBiXzvc82PeT/y2MjIyMjIyMjIyMjIzvjOmO06cH3aRlpTXVXPmQz352Rg4jIyMjIyMjIyMjI+NUc/V8acodyDVSL4d8ljjpxYMfz8QxMjIyMjIyMjIyMjKmmqutjqnZj82N8iyrZlAcgkv/EUZGRkZGRkZGRkZGxifG0ipaRj33ez7BtRqgS+VWL8EF0xOczO0xMjIyMjIyMjIyMjLWHlK+frrttEWnbbfy9JC81sqxoCXW4GJkZGRkZGRkZGRkZDw2TgNq6d7ZmAqvOixX5unGu9N3GBkZGRkZGRkZGRkZj41TttqIAc81R62vrkjl1hUO47k2BRojIyMjIyMjIyMjI+N7Y5qOS5NwpUG0fNWvpOZSvoyRkZGRkZGRkZGRkfFj42sdVnf7TK2iVKotM6r3cQVv5vYYGRkZGRkZGRkZGRn3PaQWAgkWzaXy5XRFgi7CEY5n4hgZGRkZGRkZGRkZGUeef0vZaq99oPQY1T2VVlO5lebp3mcWMDIyMjIyMjIyMjIyjphZsKigjg75XMy1lf5Tu4dSt/vYXJ+fj5GRkZGRkZGRkZGR8RNjLZ5ShNpUKE0zcSWN7QpbiEYotxgZGRkZGRkZGRkZGb8zlvbRPnKgbbftLLRlEo6RkZGRkZGRkZGRkfGhMRdAKW1ghD05PfSQapU2XZY2/zAyMjIyMjIyMjIyMj4zprpp2QJKqQRX7gPlqmpKL2hh5I6RkZGRkZGRkZGRkfHI+Ke+GBkZGRkZGRkZGRkZGRkZGRkZGRkZGRkZGRkZGRkZGRkZGRkZGRkZGRkZGRkZGRkZGRk/Nv4FbyfikbuNZxsAAAAASUVORK5CYII=\" style=\"width:300px\">', '00020126450014br.gov.bcb.pix0123support@retronia.online52040000530398654040.035802BR5913G. SEBASTIANI6009Joinville62240520mpqrinter6028940910163040D8E', NULL, NULL, 0.03, 111, '2023-07-07 10:01:45', NULL),
(56, 4022023, 'Qrcode_Mercado_Pago', 'Pedente', '<img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAABRQAAAUUAQAAAACGnaNFAAAH50lEQVR42u3dW47VSgwF0Mwg859lZlBXSCBO7O08urkSEisfiENeK/xZdu3a1l9/HBsjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj4/eNWz32H//2648f127nW+tRnlKuK3d8nhhezsjIyMjIyMjIyMjI+Ni4fxp+y35C07t/nfj9BZ8Xp7+dUOW2bGFkZGRkZGRkZGRkZHxkLOVWqchKd+fzPYl8nL/qdEcjjy9nZGRkZGRkZGRkZGT8I8bj3FzaGq/UUqWHVJpQF6UaIyMjIyMjIyMjIyPj94ypRir4PNLW5tp66+k0aMfIyMjIyMjIyMjIyPhdYyPvYf6t1FLr8+kXg3Gne8srvzG3x8jIyMjIyMjIyMjIeJ1Z8L//8QdyFRgZGRkZGRkZGRkZ/1VjPo6LbLX2fXv4Wa7rs3OpJ3UWMDIyMjIyMjIyMjIy3hnHmOj93DQ6wolSN50aTp/aq+m43FJiZGRkZGRkZGRkZGR8bmx5AlsovFLyWv/SVFUVck4+YGRkZGRkZGRkZGRkfG5MU2ppJU5qELWq6pj28twuQgpS9hsjIyMjIyMjIyMjI+O9sTV5Vg5ie9lDOvIuodf/BYyMjIyMjIyMjIyMjG+MZfRtzBMoq3gS77P1NK7i6SNyafUQIyMjIyMjIyMjIyPjY+OaxtdW7jB9XrxtV89L+4WuVpvdz8QxMjIyMjIyMjIyMjKOxlJQ5Vm3ETDcmz7tegcdRkZGRkZGRkZGRkbGN8a2zOaoBVCvjEp0W0lUO56jUieKkZGRkZGRkZGRkZHxiXGIF8gTbiUSeuVstbbkZ4WM6vHrGRkZGRkZGRkZGRkZnxtTGydvcbPCdNzQKkqDdimzILeoGBkZGRkZGRkZGRkZ74ylCmol036/++fKu+Xk3XdutwplZGRkZGRkZGRkZGR8bCxF1mqVVnlPGoxrD1it4TRmG9zPxDEyMjIyMjIyMjIyMo7GNvpWoH05TsKP5dt48cNMaUZGRkZGRkZGRkZGxjwT19MGWpjamnLU9lBaDR+Z7riYp2NkZGRkZGRkZGRkZHw0EzemDaQIg1ZL7eeiLVVavcIrTaPwfYyMjIyMjIyMjIyMjNfGtJRn7CGlFlCeejvaF3zij/D1bZ6OkZGRkZGRkZGRkZHx2pgKr88lOqUESxt6XmW1tYCDYxtevhgZGRkZGRkZGRkZGd8ZS6xaqq9aZsGea6n2faVBtN2tBbrJvWZkZGRkZGRkZGRkZByMFzNxY4h0vy3N2I3JB022GBkZGRkZGRkZGRkZv2TcW/cn5xis/G/jxp/lw3NFtt/uS8rIyMjIyMjIyMjIyJjW+Gzn3tD+PBL6uqWUqrQm29o8HSMjIyMjIyMjIyMj4xPj9eOe7v65phTqcX+d8rZ1UxcyMjIyMjIyMjIyMjKuuEfOmpLSUl+pj82127ac2nZ922VdyMjIyMjIyMjIyMjIuEIGWx5uSxFqt6VVQ23b3LEqeEZGRkZGRkZGRkZGxnfGIQi6ZUUfIb3gaJVW+7nnxUTjCUZGRkZGRkZGRkZGxofGljFQyFsLlm7xAr0ddbFlzvr8L8jjcIyMjIyMjIyMjIyMjM+NrbWzWkHVItm2drb0n1LyQRh9G08wMjIyMjIyMjIyMjKuJ2t80nu2qS10NQSXKqinDSdGRkZGRkZGRkZGRsY3xvKeMcKgVV/pZatlurWBtyPvoHOfWcDIyMjIyMjIyMjIyDga83RcT08rVVXaZKdN240PKInTOyMjIyMjIyMjIyMj42PjNh/75bKdtO4nPaC8u+NXPBgZGRkZGRkZGRkZGe+MaTAuVUuZMn7G7Yxdaz3tjIyMjIyMjIyMjIyMXzL2aukCtU1LdIbY6bufx7M9PxkZGRkZGRkZGRkZGa8zC3oWQZlmS2t82hagw9hc3uTzuN0jh5GRkZGRkZGRkZGRcZiJy3t07uHpK2QMHO0BOepgtcTpN3N7jIyMjIyMjIyMjIyM62bPz/EY2j2l65R2wUlDcCnxjZGRkZGRkZGRkZGR8bWxbdS5X5ZW+3nbm/Rza3NybRVPb0cxMjIyMjIyMjIyMjK+M+4hMaA8pJ/Nxn4iNavanFxiMDIyMjIyMjIyMjIyvjH2mOi8ec4KqBV6SGOYwda2D73pITEyMjIyMjIyMjIyMo49pL68Jx3NMwzGtXKrbAu65dYTIyMjIyMjIyMjIyPjG2NTDJNwrUE0Hv2S3HVKtzEyMjIyMjIyMjIyMn7ZWCqoston7Q2aUtuuw6ZTXMHlTBwjIyMjIyMjIyMjI+NdD6nLUjMopRekvUEzdAhHeDwTx8jIyMjIyMjIyMjIuPL8W+Md5z7QFn7uYTButX5R6UnlzXh2RkZGRkZGRkZGRkbGd8ZWbu0tWeDB3jfj56Y0hHJnW+jDyMjIyMjIyMjIyMj4NWOvpfJCnx4nnXf/7HvpNMFlrgIjIyMjIyMjIyMjI+OrmqtvYtNKppJPMC7bGbQtIYGRkZGRkZGRkZGRkfGlMRVAZfQtdX/aIqFSbh3hki1slLOe1FyMjIyMjIyMjIyMjIzrPrPg8yGnIbiWFd2zCPJMXHnKmubuGBkZGRkZGRkZGRkZnxv/1oORkZGRkZGRkZGRkZGRkZGRkZGRkZGRkZGRkZGRkZGRkZGRkZGRkZGRkZGRkZGRkZGR8cvG/wC3O3kZ4/43GwAAAABJRU5ErkJggg==\" style=\"width:300px\">', '00020126450014br.gov.bcb.pix0123support@retronia.online52040000530398654040.015802BR5913G. SEBASTIANI6009Joinville62240520mpqrinter603909289846304455A', NULL, NULL, 0.01, 111, '2023-07-07 10:04:27', NULL),
(57, 4022023, 'Qrcode_Mercado_Pago', 'Pedente', '<img src=\"data:image/png;base64,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\" style=\"width:300px\">', '00020126450014br.gov.bcb.pix0123support@retronia.online520400005303986540512.005802BR5913G. SEBASTIANI6009Joinville62240520mpqrinter6039197462063046515', NULL, NULL, 12, 111, '2023-07-07 10:24:22', NULL),
(58, 4022023, 'Qrcode_Mercado_Pago', 'Pedente', '<img src=\"data:image/png;base64,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\" style=\"width:300px\">', '00020126450014br.gov.bcb.pix0123support@retronia.online520400005303986540524.005802BR5913G. SEBASTIANI6009Joinville62240520mpqrinter602905044856304381D', NULL, NULL, 24, 111, '2023-07-07 10:27:12', NULL),
(59, 4022023, 'Medivia Coins', 'Pedente', NULL, NULL, 'sdasfdfadsa', 'Legacy', 0.03, 100, '2023-07-10 17:48:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `group_id` int NOT NULL DEFAULT '1',
  `account_id` int NOT NULL DEFAULT '0',
  `level` int NOT NULL DEFAULT '1',
  `vocation` int NOT NULL DEFAULT '0',
  `health` int NOT NULL DEFAULT '150',
  `healthmax` int NOT NULL DEFAULT '150',
  `experience` bigint UNSIGNED NOT NULL DEFAULT '0',
  `lookbody` int NOT NULL DEFAULT '0',
  `lookfeet` int NOT NULL DEFAULT '0',
  `lookhead` int NOT NULL DEFAULT '0',
  `looklegs` int NOT NULL DEFAULT '0',
  `looktype` int NOT NULL DEFAULT '136',
  `maglevel` int NOT NULL DEFAULT '0',
  `mana` int NOT NULL DEFAULT '0',
  `manamax` int NOT NULL DEFAULT '0',
  `manaspent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `soul` int UNSIGNED NOT NULL DEFAULT '0',
  `town_id` int NOT NULL DEFAULT '1',
  `posx` int NOT NULL DEFAULT '0',
  `posy` int NOT NULL DEFAULT '0',
  `posz` int NOT NULL DEFAULT '0',
  `conditions` blob NOT NULL,
  `cap` int NOT NULL DEFAULT '400',
  `sex` int NOT NULL DEFAULT '0',
  `lastlogin` bigint UNSIGNED NOT NULL DEFAULT '0',
  `lastip` int UNSIGNED NOT NULL DEFAULT '0',
  `save` tinyint NOT NULL DEFAULT '1',
  `skull` tinyint NOT NULL DEFAULT '0',
  `skulltime` bigint NOT NULL DEFAULT '0',
  `lastlogout` bigint UNSIGNED NOT NULL DEFAULT '0',
  `blessings` tinyint NOT NULL DEFAULT '0',
  `onlinetime` bigint NOT NULL DEFAULT '0',
  `deletion` bigint NOT NULL DEFAULT '0',
  `balance` bigint UNSIGNED NOT NULL DEFAULT '0',
  `stamina` smallint UNSIGNED NOT NULL DEFAULT '2520',
  `skill_fist` int UNSIGNED NOT NULL DEFAULT '10',
  `skill_fist_tries` bigint UNSIGNED NOT NULL DEFAULT '0',
  `skill_club` int UNSIGNED NOT NULL DEFAULT '10',
  `skill_club_tries` bigint UNSIGNED NOT NULL DEFAULT '0',
  `skill_sword` int UNSIGNED NOT NULL DEFAULT '10',
  `skill_sword_tries` bigint UNSIGNED NOT NULL DEFAULT '0',
  `skill_axe` int UNSIGNED NOT NULL DEFAULT '10',
  `skill_axe_tries` bigint UNSIGNED NOT NULL DEFAULT '0',
  `skill_dist` int UNSIGNED NOT NULL DEFAULT '10',
  `skill_dist_tries` bigint UNSIGNED NOT NULL DEFAULT '0',
  `skill_shielding` int UNSIGNED NOT NULL DEFAULT '10',
  `skill_shielding_tries` bigint UNSIGNED NOT NULL DEFAULT '0',
  `skill_fishing` int UNSIGNED NOT NULL DEFAULT '10',
  `skill_fishing_tries` bigint UNSIGNED NOT NULL DEFAULT '0',
  `created` int NOT NULL DEFAULT '0',
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `lookaddons` int DEFAULT '0',
  `lookShader` int NOT NULL DEFAULT '0',
  `battlepass` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`id`, `name`, `group_id`, `account_id`, `level`, `vocation`, `health`, `healthmax`, `experience`, `lookbody`, `lookfeet`, `lookhead`, `looklegs`, `looktype`, `maglevel`, `mana`, `manamax`, `manaspent`, `soul`, `town_id`, `posx`, `posy`, `posz`, `conditions`, `cap`, `sex`, `lastlogin`, `lastip`, `save`, `skull`, `skulltime`, `lastlogout`, `blessings`, `onlinetime`, `deletion`, `balance`, `stamina`, `skill_fist`, `skill_fist_tries`, `skill_club`, `skill_club_tries`, `skill_sword`, `skill_sword_tries`, `skill_axe`, `skill_axe_tries`, `skill_dist`, `skill_dist_tries`, `skill_shielding`, `skill_shielding_tries`, `skill_fishing`, `skill_fishing_tries`, `created`, `hidden`, `comment`, `lookaddons`, `lookShader`, `battlepass`) VALUES
(1, 'GM Violet', 6, 1234567, 1000, 0, 150, 150, 16566949800, 0, 63, 114, 0, 276, 1000, 0, 0, 0, 0, 10, 32348, 32228, 4, '', 400, 0, 1754128584, 16777343, 1, 0, 0, 1754128596, 0, 929551, 0, 0, 2520, 10, 0, 10, 0, 10, 0, 67, 2017612633061982258, 10, 0, 10, 0, 11, 15, 0, 0, '', 3, 0, 0x0000000000000003010302000000000000000000000000000002010001000000000000000000000000000001170048616e64206f6620746865204375727365642046617465010000000000000000000000000000010e00486964656f75732046756e677573020601000000000000000000000000000001050044656d6f6e010000000000000000000000000000011800436f6d6d6f646f7265206f6620746865204b696e67646f6d01000000000000000000000000000001150046616c6c656e2049736c616e64205761726c6f636b010000000000000000000000000000010b004e6167612048756e746572010000000000000000000000000000010e00486964656f75732046756e677573010000000000000000000000000000011000446566656e646572205975616e2d7469030704000000000000000000000000000000030000000000000000000000000000010400516127610300000000000000000000000000000108005a616d756c6f736803000000000000000000000000000001080053706974666972650300000000000000000000000000000106004b616d697368030000000000000000000000000000010c004372696d736f6e2046616e67030000000000000000000000000000010c004372696d736f6e20436c6177),
(2, 'GM Ezzz', 6, 1234567, 101, 0, 155, 155, 16180000, 125, 95, 0, 76, 132, 3, 5, 5, 0, 0, 10, 32349, 32228, 4, '', 410, 1, 1754128598, 16777343, 1, 0, 0, 1754128639, 0, 240547, 0, 0, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 0, 0, '', 48, 0, 0x000000000000000301030100000000000000000000000000000110004472616b656e205761726d6173746572010000000000000000000000000000011500596f756e6720536170706869726520447261676f6e010000000000000000000000000000010f004265747261796564205772616974680206010000000000000000000000000000010c00426c61636b204b6e69676874010000000000000000000000000000010900447261676f6e666c79010000000000000000000000000000010a00417368204b6e69676874010000000000000000000000000000010500487964726101000000000000000000000000000001090048656c6c686f756e640100000000000000000000000000000108005072696d6576616c030704000000000000000000000000000000030000000000000000000000000000010400516127610300000000000000000000000000000108005a616d756c6f736803000000000000000000000000000001080053706974666972650300000000000000000000000000000106004b616d697368030000000000000000000000000000010c004372696d736f6e2046616e67030000000000000000000000000000010c004372696d736f6e20436c6177),
(3, 'Knight', 1, 1234567, 100, 4, 4872, 5960, 16126059, 127, 114, 114, 1, 139, 8, 8065, 8140, 1881998, 16, 1, 32338, 31790, 7, '', 12060, 0, 1753433163, 16777343, 1, 0, 0, 1753433165, 0, 104751, 0, 0, 2518, 13, 17, 26, 30, 74, 20553, 70, 940, 14, 94, 20, 22, 10, 0, 0, 0, '', 48, 0, 0x000000000000000301030100000000000000000000000000000111004963652044776172662057617272696f720200000000000000000000000000000214000100000000000000000000000000000106004d6564757361020601000000000000000000000000000001090044657374726f796572010000000000000000000000000000010d00536861627572616b204c6f7264010000000000000000000000000000010c00476f626c696e204d696e6572010000000000000000000000000000010600577265746368010000000000000000000000000000010c004461726b2044726170746f720100000000000000000000000000000107005761726c6f636b030704000000000000000000000000000000030000000000000000000000000000010400516127610300000000000000000000000000000108005a616d756c6f736803000000000000000000000000000001080053706974666972650300000000000000000000000000000106004b616d697368030000000000000000000000000000010c004372696d736f6e2046616e67030000000000000000000000000000010c004372696d736f6e20436c6177),
(4, 'Druid', 1, 1234567, 43, 2, 10604, 10605, 1218083, 114, 114, 110, 48, 142, 39, 8266, 10280, 10569, 4, 1, 32362, 31790, 7, '', 21310, 0, 1753601277, 16777343, 1, 0, 1683148611, 1753601280, 0, 106340, 0, 0, 2520, 22, 2938, 10, 0, 10, 38, 10, 0, 10, 1, 11, 16, 10, 12, 0, 0, '', 48, 0, 0x0000000000000003010301000000000000000000000000000001130054726f6c6c204368616d70696f6e204669726501000000000000000000000000000001130054726f6c6c204368616d70696f6e204c6561660200000000000000000000000000000203000206010000000000000000000000000000010c00547269626520436173746572010000000000000000000000000000010d00536c696e67657220426c656564030000000000000000000000000000011d00496c6c7573696f6e617279204879706e6f74697a65722d6c75726b6572010000000000000000000000000000010d004f75746361737420426c656564030000000000000000000000000000010700416c75636172640100000000000000000000000000000112004c697a617264204c6567696f6e6e61697265030704000000000000000000000000000000030000000000000000000000000000010400516127610300000000000000000000000000000108005a616d756c6f736803000000000000000000000000000001080053706974666972650300000000000000000000000000000106004b616d697368030000000000000000000000000000010c004372696d736f6e2046616e67030000000000000000000000000000010c004372696d736f6e20436c6177),
(5, 'retroniaotserv', 6, 4022023, 1, 0, 100, 100, 0, 10, 10, 10, 10, 136, 0, 100, 100, 0, 0, 1, 0, 0, 0, '', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1675523240, 0, '', 0, 0, NULL),
(6, 'Rook Sample', 1, 4022023, 1, 0, 150, 150, 0, 118, 114, 38, 57, 130, 0, 0, 0, 0, 100, 10, 32097, 32219, 7, '', 400, 1, 1675523241, 2130706433, 1, 0, 0, 1675523241, 0, 0, 0, 0, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1675523241, 1, '', 0, 0, NULL),
(7, 'Sorcerer Sample', 1, 4022023, 8, 1, 185, 185, 4200, 118, 114, 38, 57, 130, 0, 90, 90, 0, 100, 1, 1000, 1000, 7, '', 470, 1, 1675523241, 2130706433, 1, 0, 0, 1675523241, 0, 0, 0, 0, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1675523241, 1, '', 0, 0, NULL),
(8, 'Druid Sample', 1, 4022023, 8, 2, 185, 185, 4200, 118, 114, 38, 57, 130, 0, 90, 90, 0, 100, 1, 1000, 1000, 7, '', 470, 1, 1675523241, 2130706433, 1, 0, 0, 1675523241, 0, 0, 0, 0, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1675523241, 1, '', 0, 0, NULL),
(9, 'Paladin Sample', 1, 4022023, 8, 3, 185, 185, 4200, 118, 114, 38, 57, 129, 0, 90, 90, 0, 100, 1, 1000, 1000, 7, '', 470, 1, 1675523241, 2130706433, 1, 0, 0, 1675523241, 0, 0, 0, 0, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1675523241, 1, '', 0, 0, NULL),
(10, 'Knight Sample', 1, 4022023, 8, 4, 185, 185, 4200, 118, 114, 38, 57, 131, 0, 90, 90, 0, 100, 1, 1000, 1000, 7, '', 470, 1, 1675523241, 2130706433, 1, 0, 0, 1675523241, 0, 0, 0, 0, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1675523241, 1, '', 0, 0, NULL),
(11, 'Luanzera', 6, 199361, 40, 4, 665, 665, 965241, 106, 95, 78, 58, 134, 5, 80, 250, 23118, 100, 1, 32348, 32222, 7, '', 1270, 1, 1686264801, 1285483185, 1, 0, 1683746734, 1686266006, 0, 107308, 0, 0, 2520, 10, 26, 30, 2, 13, 63, 72, 8659, 10, 0, 72, 11250, 10, 0, 1675563519, 0, '', 0, 0, NULL),
(12, 'Teste', 1, 121234, 8, 4, 185, 185, 4200, 106, 95, 78, 58, 128, 0, 90, 90, 0, 100, 1, 32369, 32241, 7, '', 470, 1, 1751961361, 16777343, 1, 0, 0, 1751961376, 0, 15, 0, 0, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1676304848, 0, '', 0, 0, NULL),
(13, 'Luan Paladin', 1, 199361, 35, 3, 455, 455, 626757, 106, 95, 78, 58, 145, 15, 219, 495, 17250, 100, 1, 32397, 32195, 7, 0x010004000002ffffffff0360ea00001b001c000000001d00fe, 1010, 1, 1685999991, 1285483185, 1, 0, 0, 1686002012, 0, 88157, 0, 0, 2520, 16, 99, 10, 0, 10, 0, 10, 0, 80, 15933, 10, 0, 10, 0, 1676496962, 0, '', 0, 0, NULL),
(14, 'Marios', 1, 145145, 8, 2, 185, 185, 4200, 118, 114, 38, 57, 130, 0, 90, 90, 0, 100, 1, 0, 0, 0, '', 470, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1677197997, 0, '', 0, 0, NULL),
(15, 'Marioska', 1, 155155, 8, 2, 185, 185, 4200, 118, 114, 38, 57, 130, 0, 90, 90, 0, 100, 1, 0, 0, 0, '', 470, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1677198025, 0, '', 0, 0, NULL),
(16, 'Kina Teste', 1, 1234567, 7, 4, 170, 170, 3780, 106, 95, 78, 58, 131, 0, 85, 85, 0, 100, 1, 32370, 32235, 7, '', 445, 1, 1753476607, 16777343, 1, 0, 0, 1753476625, 0, 5278, 0, 0, 2520, 10, 0, 12, 17, 10, 0, 10, 0, 16, 111, 10, 0, 10, 0, 1680813793, 0, '', 0, 0, 0x00000000000000030103030000000000000000000000000000010c00436f727073652045617465720100000000000000000000000000000103004261740300000000000000000000000000000104005572756b02060100000000000000000000000000000106005a6f6d6269650300000000000000000000000000000107005761737065726f010000000000000000000000000000010600476f626c696e01000000000000000000000000000001060048756e746572010000000000000000000000000000010d004379636c6f707320536d697468010000000000000000000000000000010c0054726f6c6c20536861646f77030704000000000000000000000000000000030000000000000000000000000000010400516127610300000000000000000000000000000108005a616d756c6f736803000000000000000000000000000001080053706974666972650300000000000000000000000000000106004b616d697368030000000000000000000000000000010c004372696d736f6e2046616e67030000000000000000000000000000010c004372696d736f6e20436c6177),
(17, 'Luanzudo', 1, 1234567, 18, 4, 365, 365, 76860, 114, 95, 21, 114, 134, 8, 43, 140, 12000, 100, 1, 32367, 32216, 7, '', 720, 1, 1753433166, 16777343, 1, 0, 0, 1753433169, 0, 53693, 0, 0, 2520, 10, 0, 39, 736, 51, 2259, 100, 9200, 100, 36500, 100, 8550, 10, 0, 1680813857, 0, '', 48, 0, 0x00000000000000030103020000000000000000000000000000021800010000000000000000000000000000010e004d696e6f746175722047756172640100000000000000000000000000000103004275670206010000000000000000000000000000010e004d696e6f7461757220477561726403000000000000000000000000000001060056757274616b030000000000000000000000000000010400417a6f67010000000000000000000000000000010d0046656c204f7263204272757465010000000000000000000000000000010e0047686173746c7920447261676f6e020000000000000000000000000000020600030704000000000000000000000000000000030000000000000000000000000000010400516127610300000000000000000000000000000108005a616d756c6f736803000000000000000000000000000001080053706974666972650300000000000000000000000000000106004b616d697368030000000000000000000000000000010c004372696d736f6e2046616e67030000000000000000000000000000010c004372696d736f6e20436c6177),
(18, 'Magez', 1, 1234567, 33, 1, 276, 310, 506069, 88, 0, 0, 114, 128, 53, 790, 840, 15050, 200, 1, 32346, 32219, 7, '', 720, 1, 1753027904, 16777343, 1, 0, 1685500988, 1753027908, 0, 120718, 0, 0, 2520, 17, 492, 68, 4035225266123968238, 16, 500, 20, 24219, 18, 7049, 16, 35, 10, 0, 1680823217, 0, '', 48, 0, NULL),
(19, 'Luan Teste', 1, 199361, 1, 0, 150, 150, 0, 106, 95, 78, 58, 134, 0, 0, 0, 0, 100, 10, 32100, 32205, 7, '', 400, 1, 1685716034, 1251928753, 1, 0, 0, 1685716036, 0, 4385, 0, 0, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1681528065, 0, '', 0, 0, NULL),
(20, 'Skarian Leon', 1, 1883906, 237, 1, 1330, 1330, 217991548, 88, 0, 0, 114, 133, 75, 1362, 6960, 461580, 100, 1, 32352, 32215, 7, '', 2760, 1, 1684765352, 340256936, 1, 0, 0, 1684765760, 0, 6230, 0, 0, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 16, 10, 0, 1684706782, 0, '', 48, 0, NULL),
(21, 'Diehl', 1, 158983, 230, 4, 3515, 3515, 199733285, 132, 114, 114, 132, 140, 6, 1200, 1200, 247880, 100, 1, 32369, 32241, 7, '', 6020, 0, 1684723908, 340256936, 1, 0, 0, 1684724489, 0, 4548, 0, 0, 2520, 10, 0, 10, 0, 10, 0, 71, 3003, 10, 0, 71, 5699, 10, 0, 1684719716, 0, '', 48, 0, NULL),
(22, 'Guizao', 1, 221208, 8, 3, 185, 185, 4200, 106, 95, 78, 58, 128, 0, 90, 90, 0, 100, 1, 32353, 32216, 7, '', 470, 1, 1684786690, 2327597994, 1, 0, 0, 1684786692, 0, 99, 0, 0, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1684758614, 0, '', 0, 0, NULL),
(23, 'Guizaoo', 1, 120822, 1, 0, 139, 150, 25, 106, 95, 78, 58, 128, 0, 0, 0, 0, 100, 1, 32348, 32225, 7, '', 400, 1, 1751961352, 16777343, 1, 0, 0, 1751961357, 0, 2094, 0, 0, 2520, 10, 0, 11, 16, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1684761131, 0, '', 0, 0, NULL),
(24, 'Mr Leon', 1, 1883906, 1, 0, 150, 150, 0, 106, 95, 78, 58, 128, 0, 0, 0, 0, 100, 1, 32369, 32241, 7, '', 400, 1, 1684762337, 340256936, 1, 0, 0, 1684762410, 0, 73, 0, 0, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1684762312, 0, '', 0, 0, NULL),
(25, 'Luansz', 1, 1883906, 1, 0, 150, 150, 0, 106, 95, 78, 58, 128, 0, 0, 0, 0, 100, 1, 32368, 32241, 7, '', 400, 1, 1684764564, 340256936, 1, 0, 0, 1684764588, 0, 115, 0, 0, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1684764200, 0, '', 48, 0, NULL),
(26, 'Luanzs', 1, 1883906, 1, 0, 150, 150, 0, 118, 114, 38, 57, 130, 0, 0, 0, 0, 100, 0, 0, 0, 0, '', 400, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1684764298, 0, '', 0, 0, NULL),
(27, 'Luanzin', 1, 1883906, 1, 0, 150, 150, 0, 106, 95, 78, 58, 128, 0, 0, 0, 0, 100, 1, 32369, 32240, 7, '', 400, 1, 1684764657, 340256936, 1, 0, 0, 1684764694, 0, 151, 0, 0, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1684764427, 0, '', 48, 0, NULL),
(28, 'Luanzerah', 1, 1883906, 1, 0, 150, 150, 0, 118, 114, 38, 57, 130, 0, 0, 0, 0, 100, 0, 0, 0, 0, '', 400, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1684764712, 0, '', 0, 0, NULL),
(29, 'Munhozera', 1, 1883906, 1, 0, 150, 150, 0, 106, 95, 78, 58, 128, 0, 0, 0, 0, 100, 1, 32343, 32219, 7, '', 400, 1, 1684764892, 340256936, 1, 0, 0, 1684765127, 0, 235, 0, 0, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1684764881, 0, '', 0, 0, NULL),
(30, 'Munhoz', 1, 1883906, 2, 0, 96, 155, 120, 106, 95, 78, 58, 128, 0, 5, 5, 0, 100, 10, 32090, 32204, 7, '', 410, 1, 1684767692, 340256936, 1, 0, 0, 1684767769, 0, 1541, 0, 0, 2520, 10, 0, 11, 20, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1684765206, 0, '', 0, 0, NULL),
(31, 'Guii', 1, 221208, 35, 3, 595, 455, 645679, 20, 58, 2, 20, 134, 19, 455, 440, 2998, 100, 6, 32361, 31304, 7, 0x010010000002ffffffff0350b103001b001c000000001d0004401f0000050100000006401f00000701000000fe, 1010, 1, 1686688817, 1738392250, 1, 0, 0, 1686690023, 0, 26150, 0, 0, 2520, 16, 88, 14, 39, 10, 0, 15, 89, 73, 558, 38, 418, 10, 11, 1684775790, 0, '', 0, 0, NULL),
(32, 'Madstorm', 1, 58764899, 241, 4, 3695, 3680, 230082030, 95, 74, 79, 95, 134, 6, 1231, 1200, 247880, 100, 1, 32338, 31785, 7, '', 6295, 1, 1685299342, 365481393, 1, 0, 0, 1685299761, 0, 3692, 0, 0, 2520, 18, 102, 13, 56, 98, 207776, 10, 0, 21, 371, 98, 392867, 10, 0, 1685295998, 0, '', 48, 0, NULL),
(33, 'Rodorfin', 1, 6025539, 47, 7, 615, 575, 1592346, 94, 78, 94, 114, 129, 107, 540, 620, 1223739387671135200, 198, 5, 32910, 32081, 7, '', 1250, 1, 1685419394, 924472497, 1, 0, 0, 1685419471, 0, 8717, 0, 0, 2520, 18, 109, 65, 993172, 65, 993696, 65, 993410, 67, 1272, 77, 54254, 10, 0, 1685410680, 0, '', 48, 0, NULL),
(34, 'Niva Buwan', 1, 741852, 403, 2, 2185, 2160, 1082447049, 106, 95, 78, 58, 136, 155, 10613, 11885, 590930671, 100, 1, 32325, 32213, 7, '', 4420, 0, 1685920946, 713086643, 1, 0, 0, 1685922660, 0, 3825, 0, 0, 2520, 14, 45, 12, 57, 16, 389, 10, 25, 21, 7693, 17, 1012, 10, 0, 1685918385, 0, '', 0, 0, NULL),
(35, 'Hihi', 1, 5337677, 1, 0, 150, 150, 0, 118, 114, 38, 57, 130, 0, 0, 0, 0, 100, 10, 0, 0, 0, '', 400, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 1686584532, 0, '', 0, 0, NULL);

--
-- Triggers `players`
--
DELIMITER $$
CREATE TRIGGER `ondelete_players` BEFORE DELETE ON `players` FOR EACH ROW BEGIN
    UPDATE `houses` SET `owner` = 0 WHERE `owner` = OLD.`id`;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `players_online`
--

CREATE TABLE `players_online` (
  `player_id` int NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `player_deaths`
--

CREATE TABLE `player_deaths` (
  `player_id` int NOT NULL,
  `time` bigint UNSIGNED NOT NULL DEFAULT '0',
  `level` int NOT NULL DEFAULT '1',
  `killed_by` varchar(255) NOT NULL,
  `is_player` tinyint NOT NULL DEFAULT '1',
  `mostdamage_by` varchar(100) NOT NULL,
  `mostdamage_is_player` tinyint NOT NULL DEFAULT '0',
  `unjustified` tinyint NOT NULL DEFAULT '0',
  `mostdamage_unjustified` tinyint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `player_deaths`
--

INSERT INTO `player_deaths` (`player_id`, `time`, `level`, `killed_by`, `is_player`, `mostdamage_by`, `mostdamage_is_player`, `unjustified`, `mostdamage_unjustified`) VALUES
(3, 1638419638, 99, 'Orc Berserker', 0, 'Orc Berserker', 0, 0, 0),
(3, 1639776281, 20, 'Dragon', 0, 'Dragon', 0, 0, 0),
(3, 1639776987, 19, 'Warlock', 0, 'Warlock', 0, 0, 0),
(3, 1676915108, 108, 'Gamemaster', 0, 'Gamemaster', 0, 0, 0),
(3, 1676915159, 104, 'Gamemaster', 0, 'Gamemaster', 0, 0, 0),
(11, 1677451308, 48, 'Knight', 1, 'Knight', 1, 0, 0),
(4, 1677452384, 50, 'Knight', 1, 'Knight', 1, 0, 0),
(4, 1677526211, 48, 'Demon', 0, 'Demon', 0, 0, 0),
(4, 1679326414, 46, 'Hunter', 0, 'Hunter', 0, 0, 0),
(11, 1679406594, 46, 'Behemoth', 0, 'Behemoth', 0, 0, 0),
(11, 1681186026, 44, 'Dummy Target', 0, 'Dummy Target', 0, 0, 0),
(17, 1681528014, 7, 'Rat', 0, 'Rat', 0, 0, 0),
(19, 1681528101, 8, 'Rat', 0, 'Rat', 0, 0, 0),
(11, 1681528509, 43, 'Rat', 0, 'Rat', 0, 0, 0),
(11, 1681529054, 42, 'Rat', 0, 'Rat', 0, 0, 0),
(19, 1681782162, 7, 'Rat', 0, 'Rat', 0, 0, 0),
(19, 1683147711, 7, 'Druid', 1, 'Druid', 1, 1, 1),
(13, 1683588009, 41, 'Luan Paladin', 1, 'Luan Paladin', 1, 0, 0),
(19, 1683745281, 7, 'Luanzudo', 1, 'Luanzudo', 1, 0, 0),
(17, 1683745834, 20, 'Luanzera', 1, 'Luanzera', 1, 1, 1),
(13, 1683747645, 40, 'field item', 0, 'Luan Paladin', 1, 0, 0),
(4, 1684445560, 45, 'Tarantula', 0, 'Tarantula', 0, 0, 0),
(17, 1684445734, 19, 'Tarantula', 0, 'Tarantula', 0, 0, 0),
(13, 1684446440, 39, 'Tarantula', 0, 'Tarantula', 0, 0, 0),
(16, 1684447823, 8, 'Cave Rat', 0, 'Cave Rat', 0, 0, 0),
(17, 1684638300, 18, 'Hunter', 0, 'Hunter', 0, 0, 0),
(20, 1684723019, 50, 'Warlock', 0, 'Warlock', 0, 0, 0),
(20, 1684723082, 48, 'Warlock', 0, 'Warlock', 0, 0, 0),
(21, 1684723724, 45, 'Demodras', 0, 'Demodras', 0, 0, 0),
(21, 1684723773, 43, 'Demodras', 0, 'Demodras', 0, 0, 0),
(21, 1684723845, 42, 'Demon', 0, 'Demon', 0, 0, 0),
(21, 1684723890, 40, 'Demon', 0, 'Demon', 0, 0, 0),
(20, 1684724229, 246, 'Demon', 0, 'Demon', 0, 0, 0),
(21, 1684724489, 239, 'Demon', 0, 'Demon', 0, 0, 0),
(19, 1684787405, 7, 'Tarantula', 0, 'Tarantula', 0, 0, 0),
(13, 1684787687, 37, 'Luan Paladin', 1, 'Luan Paladin', 1, 0, 0),
(13, 1684791432, 36, 'field item', 0, 'Luan Paladin', 1, 0, 0),
(18, 1685240110, 12, 'Rotworm', 0, 'Rotworm', 0, 0, 0),
(32, 1685299336, 250, 'Demon', 0, 'Ferumbras', 0, 0, 0),
(33, 1685417388, 28, 'Hunter', 0, 'Hunter', 0, 0, 0),
(33, 1685418147, 36, 'Hero', 0, 'Hero', 0, 0, 0),
(33, 1685419388, 48, 'Demon', 0, 'Demon', 0, 0, 0),
(18, 1685502809, 13, 'Dragon', 0, 'Dragon', 0, 0, 0),
(18, 1685503418, 24, 'Dragon', 0, 'Dragon', 0, 0, 0),
(18, 1685503485, 24, 'Dragon', 0, 'Dragon', 0, 0, 0),
(34, 1685919907, 250, 'Ferumbras', 0, 'Warlock', 0, 0, 0),
(34, 1685919966, 241, 'Orshabaal', 0, 'Orshabaal', 0, 0, 0),
(34, 1685920013, 433, 'Orshabaal', 0, 'Orshabaal', 0, 0, 0),
(34, 1685920826, 418, 'Black Knight', 0, 'Black Knight', 0, 0, 0),
(17, 1686154993, 18, 'Black Knight', 0, 'Black Knight', 0, 0, 0),
(18, 1686358778, 33, 'Rotworm', 0, 'Rotworm', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `player_depotitems`
--

CREATE TABLE `player_depotitems` (
  `player_id` int NOT NULL,
  `sid` int NOT NULL COMMENT 'any given range eg 0-100 will be reserved for depot lockers and all > 100 will be then normal items inside depots',
  `pid` int NOT NULL DEFAULT '0',
  `itemtype` smallint UNSIGNED NOT NULL,
  `count` smallint NOT NULL DEFAULT '0',
  `attributes` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `player_depotitems`
--

INSERT INTO `player_depotitems` (`player_id`, `sid`, `pid`, `itemtype`, `count`, `attributes`) VALUES
(1, 101, 2, 2594, 1, ''),
(1, 102, 8, 2594, 1, ''),
(2, 101, 2, 2594, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `player_items`
--

CREATE TABLE `player_items` (
  `player_id` int NOT NULL DEFAULT '0',
  `pid` int NOT NULL DEFAULT '0',
  `sid` int NOT NULL DEFAULT '0',
  `itemtype` smallint UNSIGNED NOT NULL DEFAULT '0',
  `count` smallint NOT NULL DEFAULT '0',
  `attributes` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `player_items`
--

INSERT INTO `player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES
(13, 1, 101, 2491, 1, ''),
(13, 3, 102, 1988, 1, 0x2a00),
(13, 4, 103, 2656, 1, ''),
(13, 6, 104, 2455, 1, ''),
(13, 7, 105, 2488, 1, ''),
(13, 8, 106, 2195, 1, ''),
(13, 10, 107, 5091, 1, ''),
(13, 102, 108, 2510, 1, ''),
(13, 102, 109, 2148, 7, 0x0f07),
(13, 102, 110, 2148, 100, 0x0f64),
(13, 102, 111, 2311, 5, 0x160500),
(13, 102, 112, 2456, 1, ''),
(13, 102, 113, 5090, 1, ''),
(13, 102, 114, 2160, 99, 0x0f63),
(13, 102, 115, 2152, 76, 0x0f4c),
(13, 102, 116, 2513, 1, ''),
(13, 102, 117, 2671, 3, 0x0f03),
(13, 102, 118, 2544, 97, 0x0f61),
(13, 102, 119, 2268, 1, 0x160100),
(13, 102, 120, 2273, 1, 0x160100),
(13, 102, 121, 2510, 1, ''),
(13, 102, 122, 2406, 1, ''),
(13, 102, 123, 2304, 1, 0x160100),
(13, 107, 124, 2543, 79, 0x0f4f),
(13, 107, 125, 2543, 100, 0x0f64),
(13, 113, 126, 2544, 33, 0x0f21),
(13, 113, 127, 2544, 100, 0x0f64),
(13, 113, 128, 2544, 100, 0x0f64),
(13, 113, 129, 2544, 100, 0x0f64),
(3, 1, 101, 2493, 1, ''),
(3, 4, 102, 2472, 1, ''),
(3, 6, 103, 2393, 1, ''),
(3, 8, 104, 2645, 1, ''),
(3, 10, 105, 1987, 1, 0x2a00),
(3, 105, 106, 2311, 44, 0x162c00),
(3, 105, 107, 2273, 6, 0x160600),
(3, 105, 108, 2148, 100, 0x0f64),
(2, 1, 101, 2491, 1, ''),
(2, 2, 102, 2171, 1, ''),
(2, 3, 103, 1988, 1, 0x2a00),
(2, 4, 104, 2487, 1, ''),
(2, 6, 105, 2455, 1, ''),
(2, 7, 106, 2488, 1, ''),
(2, 10, 107, 5091, 1, 0x2a01),
(2, 103, 108, 2597, 1, ''),
(2, 103, 109, 2124, 1, ''),
(2, 103, 110, 2392, 1, ''),
(2, 103, 111, 2152, 94, 0x0f5e),
(2, 103, 112, 2672, 98, 0x0f62),
(2, 103, 113, 2666, 61, 0x0f3d),
(2, 103, 114, 2148, 31, 0x0f1f),
(2, 103, 115, 1988, 1, ''),
(2, 103, 116, 1987, 1, ''),
(2, 103, 117, 2396, 1, 0x160100),
(2, 103, 118, 2432, 1, ''),
(2, 103, 119, 2519, 1, ''),
(2, 103, 120, 2001, 1, ''),
(2, 103, 121, 1988, 1, ''),
(2, 103, 122, 1988, 1, ''),
(2, 103, 123, 1988, 1, ''),
(2, 103, 124, 1988, 1, ''),
(2, 107, 125, 2543, 1, 0x0f01),
(2, 120, 126, 2006, 0, 0x0f00),
(2, 120, 127, 2006, 0, 0x0f00),
(2, 120, 128, 2006, 0, 0x0f00),
(2, 120, 129, 2006, 10, 0x0f0a),
(2, 120, 130, 2006, 0, 0x0f00),
(2, 120, 131, 2006, 0, 0x0f00),
(2, 120, 132, 2006, 10, 0x0f0a),
(2, 120, 133, 2006, 10, 0x0f0a),
(2, 120, 134, 2006, 10, 0x0f0a),
(2, 120, 135, 2006, 10, 0x0f0a),
(2, 120, 136, 2006, 10, 0x0f0a),
(2, 120, 137, 2006, 10, 0x0f0a),
(2, 120, 138, 2006, 10, 0x0f0a),
(2, 120, 139, 2006, 10, 0x0f0a),
(2, 120, 140, 2006, 10, 0x0f0a),
(2, 120, 141, 2006, 10, 0x0f0a),
(2, 120, 142, 2006, 10, 0x0f0a),
(2, 120, 143, 2006, 10, 0x0f0a),
(2, 120, 144, 2006, 10, 0x0f0a),
(2, 120, 145, 2006, 10, 0x0f0a),
(11, 1, 101, 2497, 1, ''),
(11, 3, 102, 1988, 1, 0x2a00),
(11, 4, 103, 2476, 1, ''),
(11, 5, 104, 2536, 1, ''),
(11, 6, 105, 2431, 1, ''),
(11, 7, 106, 2477, 1, ''),
(11, 8, 107, 2645, 1, ''),
(11, 102, 108, 1988, 1, ''),
(11, 102, 109, 1987, 1, 0x2a01),
(11, 102, 110, 2195, 1, ''),
(11, 102, 111, 2414, 1, ''),
(11, 102, 112, 2167, 1, 0x1080080900),
(11, 102, 113, 2152, 4, 0x0f04),
(11, 102, 114, 2148, 57, 0x0f39),
(11, 102, 115, 2509, 1, ''),
(11, 102, 116, 2398, 1, ''),
(11, 102, 117, 2597, 1, ''),
(11, 102, 118, 2547, 1, 0x0f01),
(11, 102, 119, 3963, 1, ''),
(11, 102, 120, 2262, 1, 0x160100),
(11, 109, 121, 2304, 92, 0x165c00),
(11, 109, 122, 2313, 91, 0x165b00),
(4, 3, 101, 3940, 1, 0x2a01),
(4, 5, 102, 2167, 1, 0x10081c0900),
(4, 6, 103, 2407, 1, ''),
(4, 7, 104, 2470, 1, ''),
(4, 10, 105, 2165, 1, 0x10d0540800),
(4, 101, 106, 2599, 1, ''),
(4, 101, 107, 2599, 1, ''),
(4, 101, 108, 2148, 30, 0x0f1e),
(4, 101, 109, 2152, 20, 0x0f14),
(4, 101, 110, 2795, 4, 0x0f04),
(4, 101, 111, 2260, 1, ''),
(4, 101, 112, 2260, 1, ''),
(4, 101, 113, 2672, 6, 0x0f06),
(4, 101, 114, 2001, 1, ''),
(4, 114, 115, 2006, 10, 0x0f0a),
(4, 114, 116, 2006, 10, 0x0f0a),
(4, 114, 117, 2006, 10, 0x0f0a),
(4, 114, 118, 2006, 10, 0x0f0a),
(4, 114, 119, 2006, 10, 0x0f0a),
(4, 114, 120, 2006, 10, 0x0f0a),
(4, 114, 121, 2006, 10, 0x0f0a),
(4, 114, 122, 2006, 10, 0x0f0a),
(4, 114, 123, 2006, 10, 0x0f0a),
(4, 114, 124, 2006, 10, 0x0f0a),
(4, 114, 125, 2006, 10, 0x0f0a),
(4, 114, 126, 2006, 10, 0x0f0a),
(4, 114, 127, 2006, 10, 0x0f0a),
(4, 114, 128, 2006, 10, 0x0f0a),
(4, 114, 129, 2006, 10, 0x0f0a),
(4, 114, 130, 2006, 10, 0x0f0a),
(4, 114, 131, 2006, 10, 0x0f0a),
(4, 114, 132, 2006, 10, 0x0f0a),
(4, 114, 133, 2006, 10, 0x0f0a),
(4, 114, 134, 2006, 10, 0x0f0a),
(1, 3, 101, 1988, 1, ''),
(1, 7, 102, 2647, 1, ''),
(1, 101, 103, 2432, 1, ''),
(1, 101, 104, 2148, 79, 0x0f4f),
(1, 101, 105, 2148, 100, 0x0f64),
(1, 101, 106, 2148, 100, 0x0f64),
(1, 101, 107, 2795, 2, 0x0f02),
(1, 101, 108, 2678, 5, 0x0f05),
(1, 101, 109, 2148, 100, 0x0f64),
(1, 101, 110, 2148, 100, 0x0f64),
(1, 101, 111, 2148, 100, 0x0f64);

-- --------------------------------------------------------

--
-- Table structure for table `player_marketing`
--

CREATE TABLE `player_marketing` (
  `player_id` int NOT NULL DEFAULT '0',
  `player_name` varchar(32) NOT NULL,
  `uid` int UNSIGNED NOT NULL DEFAULT '0',
  `subitem` varchar(32) NOT NULL,
  `itemtype` smallint UNSIGNED NOT NULL DEFAULT '0',
  `count` smallint NOT NULL DEFAULT '0',
  `price` bigint NOT NULL DEFAULT '0',
  `rarity` smallint NOT NULL DEFAULT '0',
  `attributes` blob NOT NULL,
  `completed` varchar(32) NOT NULL DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `player_marketing`
--

INSERT INTO `player_marketing` (`player_id`, `player_name`, `uid`, `subitem`, `itemtype`, `count`, `price`, `rarity`, `attributes`, `completed`) VALUES
(1, 'GM Violet', 65536, 'false', 5548, 1, 19999, 0, 0x0744000a496e63726561736564204d616e6120526567656e65726174696f6e202b312e300a496e63726561736564204865616c746820526567656e65726174696f6e202b322e30270300000000000000010036020500000000000000010037020a0000000000000002007472020200000000000000, 'true'),
(1, 'GM Violet', 65537, 'false', 5548, 1, 1, 0, 0x0744000a496e63726561736564204d616e6120526567656e65726174696f6e202b312e300a496e63726561736564204865616c746820526567656e65726174696f6e202b322e30270300000000000000010036020500000000000000010037020a0000000000000002007472020200000000000000, 'true'),
(1, 'GM Violet', 65538, 'false', 2152, 98, 1, 0, 0x0f62, 'true'),
(1, 'GM Violet', 65539, 'false', 2512, 1, 155, 0, 0x27010000000000000002007472020100000000000000, 'false'),
(1, 'GM Violet', 65540, 'false', 2462, 1, 1, 5, 0x075b000a57656967687420526564756374696f6e202d3430250a496e637265617365642049636520526573697374616e63652032250a496e63726561736564204d6178204d616e61202b320a496e637265617365642041726d6f72202b321d16006c6567656e6461727920646576696c2068656c6d657420b80b0000240900000027070000000000000001003502020000000000000005003238363736020200000000000000020072790205000000000000000200313002020000000000000001003902020000000000000001003202020000000000000002007472020200000000000000, 'true'),
(1, 'GM Violet', 65541, 'false', 2387, 1, 1, 5, 0x0744000a426c656564696e672031250a50617272792031250a44656372656173652041747461636b20496e74657276616c202d302e30350a437269746963616c204869742031251d14006c6567656e6461727920646f75626c6520617865299e070000270600000000000000020031390201000000000000000200313102010000000000000002003133020100000000000000020031320201000000000000000200727902050000000000000002007472020100000000000000, 'true');

-- --------------------------------------------------------

--
-- Table structure for table `player_marketing_reward`
--

CREATE TABLE `player_marketing_reward` (
  `player_name` varchar(32) NOT NULL,
  `uid` int UNSIGNED NOT NULL DEFAULT '0',
  `reward` bigint NOT NULL DEFAULT '0',
  `completed` varchar(32) NOT NULL DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `player_marketing_reward`
--

INSERT INTO `player_marketing_reward` (`player_name`, `uid`, `reward`, `completed`) VALUES
('GM Violet', 65536, 19999, '1'),
('GM Violet', 65537, 1, '1'),
('GM Violet', 65538, 98, '1'),
('GM Violet', 65540, 1, '1'),
('GM Violet', 65541, 1, '1');

-- --------------------------------------------------------

--
-- Table structure for table `player_murders`
--

CREATE TABLE `player_murders` (
  `id` int NOT NULL,
  `player_id` int NOT NULL,
  `date` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `player_murders`
--

INSERT INTO `player_murders` (`id`, `player_id`, `date`) VALUES
(1190, 11, 1683745834),
(1298, 18, 1682908916),
(1299, 18, 1682908949),
(1300, 18, 1682908988),
(1303, 4, 1683147711);

-- --------------------------------------------------------

--
-- Table structure for table `player_namelocks`
--

CREATE TABLE `player_namelocks` (
  `player_id` int NOT NULL,
  `reason` varchar(255) NOT NULL,
  `namelocked_at` bigint NOT NULL,
  `namelocked_by` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `player_spells`
--

CREATE TABLE `player_spells` (
  `player_id` int NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `player_spells`
--

INSERT INTO `player_spells` (`player_id`, `name`) VALUES
(21, 'light healing'),
(13, 'ultimate healing'),
(13, 'great light'),
(13, 'invisibility'),
(13, 'magic shield'),
(13, 'light healing'),
(11, 'light healing'),
(31, 'heavy magic missile'),
(31, 'light'),
(31, 'light healing'),
(31, 'destroy field'),
(31, 'conjure arrow'),
(31, 'intense healing'),
(31, 'invisibility'),
(20, 'ultimate explosion'),
(20, 'ultimate light'),
(20, 'flame strike'),
(20, 'force strike'),
(20, 'magic rope'),
(20, 'energy strike'),
(20, 'haste'),
(20, 'strong haste'),
(20, 'great energy beam'),
(20, 'energy beam'),
(20, 'energy wave'),
(20, 'great light'),
(20, 'ultimate healing'),
(33, 'magic rope'),
(33, 'haste'),
(33, 'levitate'),
(33, 'conjure bolt'),
(33, 'conjure power bolt'),
(18, 'great light'),
(18, 'ultimate healing'),
(3, 'light healing'),
(17, 'light'),
(17, 'light healing'),
(4, 'ultimate healing'),
(4, 'haste'),
(4, 'magic shield');

-- --------------------------------------------------------

--
-- Table structure for table `player_storage`
--

CREATE TABLE `player_storage` (
  `player_id` int NOT NULL DEFAULT '0',
  `key` int UNSIGNED NOT NULL DEFAULT '0',
  `value` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `player_storage`
--

INSERT INTO `player_storage` (`player_id`, `key`, `value`) VALUES
(1, 15000, 0),
(1, 45245, 1682320419),
(1, 175420, 1754214991),
(2, 203, 1),
(2, 15000, 0),
(2, 45245, 1675521111),
(2, 555101, 1),
(2, 9015533, 8),
(2, 9015534, 1),
(2, 9015535, 2),
(2, 10001001, 21037056),
(2, 10001002, 21233664),
(2, 10002023, 1),
(3, 15000, 0),
(4, 15000, 0),
(11, 45245, 1682867382),
(12, 15000, 0),
(13, 10001001, 8781827),
(13, 10001002, 8388611),
(16, 15000, 0),
(16, 10001001, 8781827),
(17, 15000, 0),
(18, 15000, 0),
(18, 30018, 1),
(18, 10001001, 8388611),
(18, 10001002, 8781826),
(19, 10001001, 8781827),
(23, 15000, 0),
(31, 45245, 1685016559),
(31, 10001001, 21168128),
(31, 10001002, 21102592),
(32, 187, 1),
(32, 188, 1),
(32, 189, 1),
(32, 203, 1),
(33, 178, 1),
(33, 30018, 1),
(34, 50, 1),
(34, 154, 1),
(34, 218, 1);

-- --------------------------------------------------------

--
-- Table structure for table `raids`
--

CREATE TABLE `raids` (
  `name` varchar(255) NOT NULL,
  `date` bigint NOT NULL DEFAULT '0',
  `count` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `raids`
--

INSERT INTO `raids` (`name`, `date`, `count`) VALUES
('abdendrielbadgers', 1762057269, 13),
('abdendrielwolfattack', 1763441791, 7),
('ankrahmunscarabinvasion', 1767044963, 1),
('carlintowerorcs', 1763421185, 6),
('cavesgrorlam0', 1754274044, 10),
('cavesgrorlam1', 1754287406, 10),
('cavesgrorlam2', 1754263924, 9),
('cavesgrorlam3', 1754281866, 9),
('cavesgrorlam4', 1754280604, 9),
('cavesgrorlam5', 1754278119, 10),
('cormayadwarfattack', 1754243087, 10),
('darashiaundeadinvasion', 1767043583, 1),
('darashiawaspplague', 1754287891, 9),
('dracoriadieingdragons', 1754296351, 9),
('drefianecromancer', 1754265691, 9),
('edronorshabaal', 1782607504, 1),
('edronskunks', 1754066866, 5),
('foldayetis', 1754090573, 5),
('halloweenhare', 1132448568, 463),
('kazordoonhornedfox', 1754288188, 9),
('kazordoonspiderplague', 1754275456, 10),
('mintwalinminogeneral', 1754272782, 10),
('mistisledruid', 1754111908, 5),
('necropolisbeholder', 1754291916, 9),
('northroadoutlaws', 1754314092, 19),
('orclandorc', 1754262397, 10),
('pohdemodras', 1754242613, 10),
('pohwidow', 1753886346, 5),
('rookgaardrats', 1753937529, 68),
('shadowthorndharalion', 1754296512, 10),
('stonehomeghoulattack', 1754269132, 9),
('thaiscaverats', 1754337143, 18),
('thaislighthouseorcs', 1754061615, 15),
('thaisorcinvasion', 1767106451, 1),
('venoreelfinvasion', 1767057010, 1),
('venoreswampelves', 1754698433, 9);

-- --------------------------------------------------------

--
-- Table structure for table `roulette_plays`
--

CREATE TABLE `roulette_plays` (
  `id` int UNSIGNED NOT NULL,
  `player_id` int NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reward_id` int NOT NULL,
  `reward_count` int NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 = rolling | 1 = pending | 2 = delivered',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `server_config`
--

CREATE TABLE `server_config` (
  `config` varchar(50) NOT NULL,
  `value` varchar(256) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `server_config`
--

INSERT INTO `server_config` (`config`, `value`) VALUES
('db_version', '5'),
('motd_hash', '017f2540071cacf5a71dadfb68d052c27c5d0a75'),
('motd_num', '5'),
('players_record', '5');

-- --------------------------------------------------------

--
-- Table structure for table `store_history`
--

CREATE TABLE `store_history` (
  `id` int UNSIGNED NOT NULL,
  `account_id` int NOT NULL,
  `mode` int NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `coin_amount` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `time` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `store_history`
--

INSERT INTO `store_history` (`id`, `account_id`, `mode`, `description`, `coin_amount`, `time`) VALUES
(2, 1234567, 0, '30 Days of Premium Time', '-150', 1675522330),
(3, 1234567, 0, '30 Days of Premium Time', '-150', 1675522480),
(4, 1234567, 0, '30 Days of Premium Time', '-150', 1675522545),
(5, 1234567, 0, 'Withdrawn coins', '-50', 1675527880),
(6, 199361, 0, '30 Days of Premium Time', '-150', 1682297828),
(7, 1234567, 0, 'XP Boost', '-30', 1682320359),
(8, 199361, 0, 'XP Boost', '-30', 1682867322),
(9, 1234567, 0, '30 Days of Premium Time', '-150', 1682905282),
(10, 1234567, 0, 'Character Name Change', '-250', 1682919389),
(11, 1234567, 0, 'Temple Teleport', '-25', 1682919408),
(12, 1234567, 0, '30 Days of Premium Time', '-150', 1683638139),
(13, 1234567, 0, 'Withdrawn coins', '-1', 1684705145),
(14, 1234567, 0, 'Withdrawn coins', '-30', 1684878129),
(15, 221208, 0, '30 Days of Premium Time', '-150', 1685016318),
(16, 221208, 0, 'XP Boost', '-30', 1685016499),
(17, 221208, 0, 'Arrow Quiver', '-150', 1685016528),
(18, 221208, 0, 'XP Boost', '-30', 1685104306),
(19, 58764899, 0, 'GM Violet transfered you this amount.', '500', 1685296266),
(20, 1234567, 0, 'You transfered this amount to Madstorm', '-500', 1685296267),
(21, 58764899, 0, '30 Days of Premium Time', '-150', 1685296274),
(22, 1234567, 0, 'Addon 1', '-50', 1685655827),
(23, 1234567, 0, 'Addon 2', '-50', 1685655850),
(24, 1234567, 0, 'Withdrawn coins', '-5', 1685658807),
(25, 199361, 0, 'GM Violet transfered you this amount.', '65', 1685671824),
(26, 1234567, 0, 'You transfered this amount to Luanzera', '-65', 1685671824),
(27, 199361, 0, 'Addon 1', '-50', 1685672671),
(28, 199361, 0, 'Addon 2', '-50', 1685672740),
(29, 199361, 0, 'Addon 2', '-50', 1685672799),
(30, 199361, 0, 'Addon 1', '-50', 1685672822),
(31, 199361, 0, 'Crown Shield', '-150', 1685673370),
(32, 199361, 0, 'Arrow Quiver', '-1', 1685712649),
(33, 199361, 0, 'Retronia Backpack', '-1', 1685716671),
(34, 199361, 0, 'Withdrawn coins', '-100', 1685716715),
(35, 199361, 0, 'Withdrawn coins', '-100', 1685716731),
(36, 199361, 0, 'Withdrawn coins', '-100', 1685761876),
(37, 199361, 0, 'Retronia Backpack', '-1', 1685761901),
(38, 199361, 0, 'Amulet of Loss', '-1', 1685762452),
(39, 199361, 0, 'Retronia Backpack', '-1', 1685762549),
(40, 1234567, 0, 'Retronia Backpack', '-1', 1685812191),
(41, 1234567, 0, 'Addon 1', '-20', 1685812208),
(42, 1234567, 0, 'Addon 2', '-20', 1685812221),
(43, 1234567, 0, 'Addon 2', '-300', 1685812492),
(44, 199361, 0, 'Addon 1', '-20', 1685888528),
(45, 199361, 0, 'Addon 2', '-20', 1685888548),
(46, 1234567, 0, 'Withdrawn coins', '-10', 1686087790),
(47, 1234567, 0, 'Withdrawn coins', '-10', 1686091729),
(48, 1234567, 0, 'Withdrawn coins', '-18', 1686091885),
(49, 1234567, 0, 'Withdrawn coins', '-10', 1686091932),
(50, 1234567, 0, 'Withdrawn coins', '-10', 1686091998),
(51, 1234567, 0, 'Deposited Coins (Via using item)', '10', 1686092282),
(52, 1234567, 0, 'Withdrawn coins', '-10', 1686092290),
(53, 1234567, 0, 'Deposited Coins (Via using item)', '10', 1686092291),
(54, 1234567, 0, 'Withdrawn coins', '-18', 1686092382),
(55, 1234567, 0, 'Deposited Coins (Via using item)', '18', 1686092384),
(56, 1234567, 0, 'Withdrawn coins', '-100', 1686092433),
(57, 1234567, 0, 'Deposited Coins (Via using item)', '100', 1686092437),
(58, 1234567, 0, 'Withdrawn coins', '-48', 1686095216),
(59, 1234567, 0, 'Deposited Coins (Via using item)', '48', 1686095220),
(60, 1234567, 0, 'Deposited Coins (Via using item)', '100', 1686245850);

-- --------------------------------------------------------

--
-- Table structure for table `towns`
--

CREATE TABLE `towns` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `posx` int NOT NULL DEFAULT '0',
  `posy` int NOT NULL DEFAULT '0',
  `posz` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `towns`
--

INSERT INTO `towns` (`id`, `name`, `posx`, `posy`, `posz`) VALUES
(1, 'Darisha', 32369, 32241, 7),
(2, 'Carlin', 32360, 31782, 7),
(3, 'Kazordoon', 32649, 31925, 11),
(4, 'Ab\'Dendriel', 32732, 31634, 7),
(5, 'Edron', 33217, 31814, 8),
(6, 'Darashia', 33213, 32454, 1),
(7, 'Venore', 32957, 32076, 7),
(8, 'Ankrahmun', 33195, 32853, 8),
(9, 'Port Hope', 32595, 32745, 7),
(10, 'Rookgaard', 32097, 32219, 7),
(11, 'Isle of Solitude', 32316, 31942, 7),
(12, 'Home', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `web_creatures`
--

CREATE TABLE `web_creatures` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `web_creatures`
--

INSERT INTO `web_creatures` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'amazon', '2025-10-18 16:15:18', '2025-10-18 16:15:18'),
(2, 'ancient scarab', '2025-10-18 16:15:18', '2025-10-18 16:15:18'),
(3, 'ashmunrah', '2025-10-18 16:15:18', '2025-10-18 16:15:18'),
(4, 'assassin', '2025-10-18 16:15:18', '2025-10-18 16:15:18'),
(5, 'bandit', '2025-10-18 16:15:18', '2025-10-18 16:15:18'),
(6, 'banshee', '2025-10-18 16:15:18', '2025-10-18 16:15:18'),
(7, 'barbarian bloodwalker', '2025-10-18 16:15:18', '2025-10-18 16:15:18'),
(8, 'barbarian brutetamer', '2025-10-18 16:15:18', '2025-10-18 16:15:18'),
(9, 'barbarian headsplitter', '2025-10-18 16:15:18', '2025-10-18 16:15:18'),
(10, 'barbarian skullhunter', '2025-10-18 16:15:18', '2025-10-18 16:15:18'),
(11, 'bat', '2025-10-18 16:15:18', '2025-10-18 16:15:18'),
(12, 'bear', '2025-10-18 16:15:18', '2025-10-18 16:15:18'),
(13, 'behemoth', '2025-10-18 16:15:18', '2025-10-18 16:15:18'),
(14, 'beholder', '2025-10-18 16:15:18', '2025-10-18 16:15:18'),
(15, 'betrayed wraith', '2025-10-18 16:15:18', '2025-10-18 16:15:18'),
(16, 'black knight', '2025-10-18 16:15:18', '2025-10-18 16:15:18'),
(17, 'black sheep', '2025-10-18 16:15:18', '2025-10-18 16:15:18'),
(18, 'blightwalker', '2025-10-18 16:15:18', '2025-10-18 16:15:18'),
(19, 'blue butterfly', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(20, 'blue djinn', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(21, 'bonebeast', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(22, 'bug', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(23, 'carniphila', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(24, 'cave rat', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(25, 'centipede', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(26, 'chicken', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(27, 'cobra', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(28, 'crab', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(29, 'crocodile', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(30, 'crypt shambler', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(31, 'crystal spider', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(32, 'cyclops', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(33, 'dark monk', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(34, 'dark torturer', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(35, 'deathslicer', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(36, 'deer', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(37, 'defiler', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(38, 'demon', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(39, 'demon skeleton', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(40, 'destroyer', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(41, 'diabolic imp', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(42, 'dipthrah', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(43, 'dog', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(44, 'dragon', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(45, 'dragon lord', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(46, 'dwarf', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(47, 'dwarf geomancer', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(48, 'dwarf guard', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(49, 'dwarf soldier', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(50, 'dworc fleshhunter', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(51, 'dworc venomsniper', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(52, 'dworc voodoomaster', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(53, 'efreet', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(54, 'elder beholder', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(55, 'elephant', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(56, 'elf', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(57, 'elf arcanist', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(58, 'elf scout', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(59, 'fire devil', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(60, 'fire elemental', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(61, 'flamethrower', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(62, 'flamingo', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(63, 'frost dragon', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(64, 'frost troll', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(65, 'fury', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(66, 'gargoyle', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(67, 'ghost', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(68, 'ghoul', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(69, 'giant spider', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(70, 'goblin', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(71, 'green djinn', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(72, 'hand of cursed fate', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(73, 'hellfire fighter', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(74, 'hellhound', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(75, 'hero', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(76, 'hunter', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(77, 'hyaena', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(78, 'hydra', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(79, 'illusion', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(80, 'juggernaut', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(81, 'kongra', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(82, 'larva', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(83, 'lich', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(84, 'lion', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(85, 'lizard sentinel', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(86, 'lizard snakecharmer', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(87, 'lizard templar', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(88, 'lost soul', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(89, 'magicthrower', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(90, 'mahrdis', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(91, 'marid', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(92, 'merlkin', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(93, 'minotaur', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(94, 'minotaur archer', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(95, 'minotaur guard', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(96, 'minotaur mage', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(97, 'monk', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(98, 'morguthis', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(99, 'mummy', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(100, 'necromancer', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(101, 'nightmare', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(102, 'omruc', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(103, 'orc', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(104, 'orc berserker', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(105, 'orc leader', '2025-10-18 16:15:19', '2025-10-18 16:15:19'),
(106, 'orc rider', '2025-10-18 16:15:20', '2025-10-18 16:15:20'),
(107, 'orc shaman', '2025-10-18 16:15:20', '2025-10-18 16:15:20'),
(108, 'orc spearman', '2025-10-18 16:15:20', '2025-10-18 16:15:20'),
(109, 'orc warlord', '2025-10-18 16:15:20', '2025-10-18 16:15:20'),
(110, 'orc warrior', '2025-10-18 16:15:20', '2025-10-18 16:15:20'),
(111, 'panda', '2025-10-18 16:15:20', '2025-10-18 16:15:20'),
(112, 'parrot', '2025-10-18 16:15:20', '2025-10-18 16:15:20'),
(113, 'phantasm', '2025-10-18 16:15:20', '2025-10-18 16:15:20'),
(114, 'pig', '2025-10-18 16:15:20', '2025-10-18 16:15:20'),
(115, 'plaguesmith', '2025-10-18 16:15:20', '2025-10-18 16:15:20'),
(116, 'plaguethrower', '2025-10-18 16:15:20', '2025-10-18 16:15:20'),
(117, 'poison spider', '2025-10-18 16:15:20', '2025-10-18 16:15:20'),
(118, 'polar bear', '2025-10-18 16:15:20', '2025-10-18 16:15:20'),
(119, 'priestess', '2025-10-18 16:15:20', '2025-10-18 16:15:20'),
(120, 'purple butterfly', '2025-10-18 16:15:20', '2025-10-18 16:15:20'),
(121, 'rabbit', '2025-10-18 16:15:20', '2025-10-18 16:15:20'),
(122, 'rahemos', '2025-10-18 16:15:20', '2025-10-18 16:15:20'),
(123, 'rat', '2025-10-18 16:15:20', '2025-10-18 16:15:20'),
(124, 'red butterfly', '2025-10-18 16:15:20', '2025-10-18 16:15:20'),
(125, 'rotworm', '2025-10-18 16:15:20', '2025-10-18 16:15:20'),
(126, 'roulette dummy', '2025-10-18 16:15:20', '2025-10-18 16:15:20'),
(127, 'scarab', '2025-10-18 16:15:20', '2025-10-18 16:15:20'),
(128, 'scorpion', '2025-10-18 16:15:20', '2025-10-18 16:15:20'),
(129, 'serpent spawn', '2025-10-18 16:15:20', '2025-10-18 16:15:20'),
(130, 'sheep', '2025-10-18 16:15:20', '2025-10-18 16:15:20'),
(131, 'shredderthrower', '2025-10-18 16:15:20', '2025-10-18 16:15:20'),
(132, 'sibang', '2025-10-18 16:15:20', '2025-10-18 16:15:20'),
(133, 'skeleton', '2025-10-18 16:15:20', '2025-10-18 16:15:20'),
(134, 'skunk', '2025-10-18 16:15:20', '2025-10-18 16:15:20'),
(135, 'slime', '2025-10-18 16:15:20', '2025-10-18 16:15:20'),
(136, 'smuggler', '2025-10-18 16:15:20', '2025-10-18 16:15:20'),
(137, 'snake', '2025-10-18 16:15:20', '2025-10-18 16:15:20'),
(138, 'son of verminor', '2025-10-18 16:15:20', '2025-10-18 16:15:20'),
(139, 'spectre', '2025-10-18 16:15:20', '2025-10-18 16:15:20'),
(140, 'spider', '2025-10-18 16:15:20', '2025-10-18 16:15:20'),
(141, 'spit nettle', '2025-10-18 16:15:20', '2025-10-18 16:15:20'),
(142, 'stalker', '2025-10-18 16:15:20', '2025-10-18 16:15:20'),
(143, 'stone golem', '2025-10-18 16:15:20', '2025-10-18 16:15:20'),
(144, 'swamp troll', '2025-10-18 16:15:20', '2025-10-18 16:15:20'),
(145, 'tarantula', '2025-10-18 16:15:20', '2025-10-18 16:15:20'),
(146, 'terror bird', '2025-10-18 16:15:20', '2025-10-18 16:15:20'),
(147, 'thalas', '2025-10-18 16:15:20', '2025-10-18 16:15:20'),
(148, 'tiger', '2025-10-18 16:15:20', '2025-10-18 16:15:20'),
(149, 'troll', '2025-10-18 16:15:20', '2025-10-18 16:15:20'),
(150, 'undead dragon', '2025-10-18 16:15:20', '2025-10-18 16:15:20'),
(151, 'valkyrie', '2025-10-18 16:15:20', '2025-10-18 16:15:20'),
(152, 'vampire', '2025-10-18 16:15:20', '2025-10-18 16:15:20'),
(153, 'vashresamun', '2025-10-18 16:15:20', '2025-10-18 16:15:20'),
(154, 'war wolf', '2025-10-18 16:15:20', '2025-10-18 16:15:20'),
(155, 'warlock', '2025-10-18 16:15:20', '2025-10-18 16:15:20'),
(156, 'wasp', '2025-10-18 16:15:20', '2025-10-18 16:15:20'),
(157, 'wild warrior', '2025-10-18 16:15:20', '2025-10-18 16:15:20'),
(158, 'winter wolf', '2025-10-18 16:15:20', '2025-10-18 16:15:20'),
(159, 'witch', '2025-10-18 16:15:20', '2025-10-18 16:15:20'),
(160, 'wolf', '2025-10-18 16:15:20', '2025-10-18 16:15:20');

-- --------------------------------------------------------

--
-- Table structure for table `web_spells`
--

CREATE TABLE `web_spells` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `words` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` tinyint NOT NULL COMMENT 'undefined, instant, rune, conjuring, house',
  `mana` int NOT NULL,
  `mlvl` int NOT NULL,
  `premium` tinyint NOT NULL,
  `vocations` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `param` tinyint NOT NULL,
  `learn` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `web_spells`
--

INSERT INTO `web_spells` (`id`, `name`, `words`, `category`, `mana`, `mlvl`, `premium`, `vocations`, `param`, `learn`, `created_at`, `updated_at`) VALUES
(1, 'Paralyze', 'Adana Ani', 0, 600, 35, 1, '2,6', 0, 1, '2025-10-18 16:15:17', '2025-10-18 16:15:17'),
(2, 'Animate Dead', 'Adana Mort', 0, 300, 7, 0, '1,5', 0, 1, '2025-10-18 16:15:17', '2025-10-18 16:15:17'),
(3, 'Antidote Rune', 'Adana Pox', 0, 50, 4, 0, '2,6', 0, 1, '2025-10-18 16:15:17', '2025-10-18 16:15:17'),
(4, 'Convince Creature', 'Adeta Sio', 0, 100, 10, 0, '2,6', 0, 1, '2025-10-18 16:15:17', '2025-10-18 16:15:17'),
(5, 'Fire Field', 'Adevo Grav Flam', 0, 60, 3, 0, '1,2,5,6', 0, 1, '2025-10-18 16:15:17', '2025-10-18 16:15:17'),
(6, 'Poison Field', 'Adevo Grav Pox', 0, 50, 2, 0, '1,2,5,6', 0, 1, '2025-10-18 16:15:17', '2025-10-18 16:15:17'),
(7, 'Magic Wall', 'Adevo Grav Tera', 0, 250, 14, 1, '1,5', 0, 1, '2025-10-18 16:15:17', '2025-10-18 16:15:17'),
(8, 'Energy Field', 'Adevo Grav Vis', 0, 80, 5, 0, '1,2,5,6', 0, 1, '2025-10-18 16:15:17', '2025-10-18 16:15:17'),
(9, 'Chameleon', 'Adevo Ina', 0, 150, 11, 0, '2,6', 0, 1, '2025-10-18 16:15:17', '2025-10-18 16:15:17'),
(10, 'Firebomb', 'Adevo Mas Flam', 0, 150, 9, 0, '1,2,5,6', 0, 1, '2025-10-18 16:15:17', '2025-10-18 16:15:17'),
(11, 'Fire Wall', 'Adevo Mas Grav Flam', 0, 200, 13, 0, '1,2,5,6', 0, 1, '2025-10-18 16:15:17', '2025-10-18 16:15:17'),
(12, 'Poison Wall', 'Adevo Mas Grav Pox', 0, 160, 11, 0, '1,2,5,6', 0, 1, '2025-10-18 16:15:17', '2025-10-18 16:15:17'),
(13, 'Energy Wall', 'Adevo Mas Grav Vis', 0, 250, 18, 1, '1,2,5,6', 0, 1, '2025-10-18 16:15:17', '2025-10-18 16:15:17'),
(14, 'Explosion', 'Adevo Mas Hur', 0, 180, 12, 0, '1,2,5,6', 0, 1, '2025-10-18 16:15:17', '2025-10-18 16:15:17'),
(15, 'Poisonbomb', 'Adevo Mas Pox', 0, 130, 8, 1, '1,2,5,6', 0, 1, '2025-10-18 16:15:17', '2025-10-18 16:15:17'),
(16, 'Energybomb', 'Adevo Mas Vis', 0, 220, 18, 1, '1,5', 0, 1, '2025-10-18 16:15:17', '2025-10-18 16:15:17'),
(17, 'Soulfire', 'Adevo Res Flam', 0, 150, 13, 1, '1,2,5,6', 0, 1, '2025-10-18 16:15:17', '2025-10-18 16:15:17'),
(18, 'Envenom', 'Adevo Res Pox', 0, 100, 7, 1, '2,6', 0, 1, '2025-10-18 16:15:17', '2025-10-18 16:15:17'),
(19, 'Destroy Field', 'Adito Grav', 0, 60, 6, 0, '1,2,3,5,6,7', 0, 1, '2025-10-18 16:15:18', '2025-10-18 16:15:18'),
(20, 'Desintegrate', 'Adito Tera', 0, 100, 8, 0, '1,2,3,5,6,7', 0, 1, '2025-10-18 16:15:18', '2025-10-18 16:15:18'),
(21, 'Light Magic Missile', 'Adori', 0, 40, 1, 0, '1,2,3,5,6,7', 0, 1, '2025-10-18 16:15:18', '2025-10-18 16:15:18'),
(22, 'Fireball', 'Adori Flam', 0, 60, 5, 0, '1,2,3,5,6,7', 0, 1, '2025-10-18 16:15:18', '2025-10-18 16:15:18'),
(23, 'Heavy Magic Missile', 'Adori Gran', 0, 70, 3, 0, '1,2,3,5,6,7', 0, 1, '2025-10-18 16:15:18', '2025-10-18 16:15:18'),
(24, 'Great Fireball', 'Adori Gran Flam', 0, 120, 9, 0, '1,2,5,6', 0, 1, '2025-10-18 16:15:18', '2025-10-18 16:15:18'),
(25, 'Sudden Death', 'Adori Vita Vis', 0, 220, 25, 0, '1,5', 0, 1, '2025-10-18 16:15:18', '2025-10-18 16:15:18'),
(26, 'Intense Healing Rune', 'Adura Gran', 0, 60, 4, 0, '2,6', 0, 1, '2025-10-18 16:15:18', '2025-10-18 16:15:18'),
(27, 'Ultimate Healing Rune', 'Adura Vita', 0, 100, 11, 0, '2,6', 0, 1, '2025-10-18 16:15:18', '2025-10-18 16:15:18'),
(28, 'Kick Guest', 'Alana Sio', 0, 0, 0, 0, '', 1, 0, '2025-10-18 16:15:18', '2025-10-18 16:15:18'),
(29, 'Edit Door', 'Aleta Grav', 0, 0, 0, 0, '', 0, 0, '2025-10-18 16:15:18', '2025-10-18 16:15:18'),
(30, 'Invite Guest', 'Aleta Sio', 0, 0, 0, 0, '', 0, 0, '2025-10-18 16:15:18', '2025-10-18 16:15:18'),
(31, 'Invite Subowners', 'Aleta Som', 0, 0, 0, 0, '', 0, 0, '2025-10-18 16:15:18', '2025-10-18 16:15:18'),
(32, 'Extinguish', 'Exana Flam', 0, 30, 3, 0, '2,6', 0, 1, '2025-10-18 16:15:18', '2025-10-18 16:15:18'),
(33, 'Cancel Invisibility', 'Exana Ina', 0, 250, 12, 1, '2,6', 0, 1, '2025-10-18 16:15:18', '2025-10-18 16:15:18'),
(34, 'Undead Legion', 'Exana Mas Mort', 0, 300, 15, 1, '2,6', 0, 1, '2025-10-18 16:15:18', '2025-10-18 16:15:18'),
(35, 'Mass Cleanse', 'Exana Mas Res', 0, 65, 10, 1, '2,6', 0, 1, '2025-10-18 16:15:18', '2025-10-18 16:15:18'),
(36, 'Antidote', 'Exana Pox', 0, 30, 2, 0, '1,2,3,4,5,6,7,8', 0, 1, '2025-10-18 16:15:18', '2025-10-18 16:15:18'),
(37, 'Light Heal Friend', 'Exana Sio', 0, 30, 7, 1, '2,6', 1, 1, '2025-10-18 16:15:18', '2025-10-18 16:15:18'),
(38, 'Discharge', 'Exana Vis', 0, 30, 3, 0, '2,6', 0, 1, '2025-10-18 16:15:18', '2025-10-18 16:15:18'),
(39, 'Levitate', 'Exani Hur', 0, 50, 3, 1, '1,2,3,4,5,6,7,8', 1, 1, '2025-10-18 16:15:18', '2025-10-18 16:15:18'),
(40, 'Magic Rope', 'Exani Tera', 0, 20, 1, 1, '1,2,3,4,5,6,7,8', 0, 1, '2025-10-18 16:15:18', '2025-10-18 16:15:18'),
(41, 'Challenge', 'Exeta Res', 0, 30, 4, 1, '4,8', 0, 1, '2025-10-18 16:15:18', '2025-10-18 16:15:18'),
(42, 'Enchant Staff', 'Exeta Vis', 0, 80, 22, 1, '5', 0, 1, '2025-10-18 16:15:18', '2025-10-18 16:15:18'),
(43, 'Conjure Arrow', 'Exevo Con', 0, 40, 2, 0, '3,7', 0, 1, '2025-10-18 16:15:18', '2025-10-18 16:15:18'),
(44, 'Explosive Arrow', 'Exevo Con Flam', 0, 120, 10, 1, '3,7', 0, 1, '2025-10-18 16:15:18', '2025-10-18 16:15:18'),
(45, 'Conjure Bolt', 'Exevo Con Mort', 0, 70, 6, 0, '3,7', 0, 1, '2025-10-18 16:15:18', '2025-10-18 16:15:18'),
(46, 'Poisoned Arrow', 'Exevo Con Pox', 0, 70, 5, 0, '3,7', 0, 1, '2025-10-18 16:15:18', '2025-10-18 16:15:18'),
(47, 'Conjure Power Bolt', 'Exevo Con Vis', 0, 200, 14, 1, '7', 0, 1, '2025-10-18 16:15:18', '2025-10-18 16:15:18'),
(48, 'Fire Wave', 'Exevo Flam Hur', 0, 80, 7, 0, '1,5', 0, 1, '2025-10-18 16:15:18', '2025-10-18 16:15:18'),
(49, 'Poison Storm', 'Exevo Gran Mas Pox', 0, 600, 28, 1, '2,6', 0, 1, '2025-10-18 16:15:18', '2025-10-18 16:15:18'),
(50, 'Ultimate Explosion', 'Exevo Gran Mas Vis', 0, 800, 40, 1, '1,5', 0, 1, '2025-10-18 16:15:18', '2025-10-18 16:15:18'),
(51, 'Great Energy Beam', 'Exevo Gran Vis Lux', 0, 200, 14, 0, '1,5', 0, 1, '2025-10-18 16:15:18', '2025-10-18 16:15:18'),
(52, 'Wild Growth', 'Exevo Grav Vita', 0, 150, 13, 1, '6', 0, 1, '2025-10-18 16:15:18', '2025-10-18 16:15:18'),
(53, 'Energy Wave', 'Exevo Mort Hur', 0, 250, 20, 1, '1,5', 0, 1, '2025-10-18 16:15:18', '2025-10-18 16:15:18'),
(54, 'Food', 'Exevo Pan', 0, 30, 0, 0, '2,3,6,7', 0, 1, '2025-10-18 16:15:18', '2025-10-18 16:15:18'),
(55, 'Energy Beam', 'Exevo Vis Lux', 0, 100, 10, 0, '1,5', 0, 1, '2025-10-18 16:15:18', '2025-10-18 16:15:18'),
(56, 'Desintegrate Spell', 'Exito Tera', 0, 60, 7, 0, '2,6', 0, 1, '2025-10-18 16:15:18', '2025-10-18 16:15:18'),
(57, 'Find Person', 'Exiva', 0, 20, 0, 0, '1,2,3,4,5,6,7,8', 1, 1, '2025-10-18 16:15:18', '2025-10-18 16:15:18'),
(58, 'Berserk', 'Exori', 0, 0, 5, 1, '4,8', 0, 1, '2025-10-18 16:15:18', '2025-10-18 16:15:18'),
(59, 'Flame Strike', 'Exori Flam', 0, 20, 3, 1, '1,2,5,6', 0, 1, '2025-10-18 16:15:18', '2025-10-18 16:15:18'),
(60, 'Force Strike', 'Exori Mort', 0, 20, 2, 1, '1,2,5,6', 0, 1, '2025-10-18 16:15:18', '2025-10-18 16:15:18'),
(61, 'Energy Strike', 'Exori Vis', 0, 20, 3, 1, '1,2,5,6', 0, 1, '2025-10-18 16:15:18', '2025-10-18 16:15:18'),
(62, 'Light Healing', 'Exura', 0, 25, 1, 0, '1,2,3,4,5,6,7,8', 0, 1, '2025-10-18 16:15:18', '2025-10-18 16:15:18'),
(63, 'Intense Healing', 'Exura Gran', 0, 40, 2, 0, '1,2,3,5,6,7', 0, 1, '2025-10-18 16:15:18', '2025-10-18 16:15:18'),
(64, 'Mass Healing', 'Exura Gran Mas Res', 0, 120, 19, 1, '2,6', 0, 1, '2025-10-18 16:15:18', '2025-10-18 16:15:18'),
(65, 'Heal Friend', 'Exura Sio', 0, 70, 7, 1, '2,6', 1, 1, '2025-10-18 16:15:18', '2025-10-18 16:15:18'),
(66, 'Ultimate Healing', 'Exura Vita', 0, 80, 8, 0, '1,2,3,5,6,7', 0, 1, '2025-10-18 16:15:18', '2025-10-18 16:15:18'),
(67, 'Magic Shield', 'Utamo Vita', 0, 50, 4, 0, '1,2,3,5,6,7', 0, 1, '2025-10-18 16:15:18', '2025-10-18 16:15:18'),
(68, 'Invisibility', 'Utana Vid', 0, 210, 15, 0, '1,2,3,5,6,7', 0, 1, '2025-10-18 16:15:18', '2025-10-18 16:15:18'),
(69, 'Strong Haste', 'Utani Gran Hur', 0, 100, 8, 1, '1,2,5,6', 0, 1, '2025-10-18 16:15:18', '2025-10-18 16:15:18'),
(70, 'Haste', 'Utani Hur', 0, 60, 4, 1, '1,2,3,4,5,6,7,8', 0, 1, '2025-10-18 16:15:18', '2025-10-18 16:15:18'),
(71, 'Great Light', 'Utevo Gran Lux', 0, 60, 3, 0, '1,2,3,4,5,6,7,8', 0, 1, '2025-10-18 16:15:18', '2025-10-18 16:15:18'),
(72, 'Light', 'Utevo Lux', 0, 20, 0, 0, '1,2,3,4,5,6,7,8', 0, 1, '2025-10-18 16:15:18', '2025-10-18 16:15:18'),
(73, 'Summon Creature', 'Utevo Res', 0, 0, 16, 0, '1,2,5,6', 1, 1, '2025-10-18 16:15:18', '2025-10-18 16:15:18'),
(74, 'Creature Illusion', 'Utevo Res Ina', 0, 100, 10, 1, '1,2,5,6', 1, 1, '2025-10-18 16:15:18', '2025-10-18 16:15:18'),
(75, 'Ultimate Light', 'Utevo Vis Lux', 0, 140, 12, 1, '1,2,5,6', 0, 1, '2025-10-18 16:15:18', '2025-10-18 16:15:18');

-- --------------------------------------------------------

--
-- Table structure for table `z_ots_comunication`
--

CREATE TABLE `z_ots_comunication` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(255) NOT NULL DEFAULT '',
  `action` varchar(255) NOT NULL DEFAULT '',
  `param1` varchar(255) NOT NULL DEFAULT '',
  `param2` varchar(255) NOT NULL DEFAULT '',
  `param3` varchar(255) NOT NULL DEFAULT '',
  `param4` varchar(255) NOT NULL DEFAULT '',
  `param5` varchar(255) NOT NULL DEFAULT '',
  `param6` varchar(255) NOT NULL DEFAULT '',
  `param7` varchar(255) NOT NULL DEFAULT '',
  `delete_it` int NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `z_polls`
--

CREATE TABLE `z_polls` (
  `id` int NOT NULL,
  `question` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `end` int NOT NULL DEFAULT '0',
  `start` int NOT NULL DEFAULT '0',
  `answers` int NOT NULL DEFAULT '0',
  `votes_all` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `z_polls_answers`
--

CREATE TABLE `z_polls_answers` (
  `poll_id` int NOT NULL,
  `answer_id` int NOT NULL,
  `answer` varchar(255) NOT NULL,
  `votes` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_bans`
--
ALTER TABLE `account_bans`
  ADD PRIMARY KEY (`account_id`),
  ADD KEY `banned_by` (`banned_by`);

--
-- Indexes for table `account_ban_history`
--
ALTER TABLE `account_ban_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_id` (`account_id`),
  ADD KEY `banned_by` (`banned_by`);

--
-- Indexes for table `account_storage`
--
ALTER TABLE `account_storage`
  ADD PRIMARY KEY (`account_id`,`key`);

--
-- Indexes for table `account_viplist`
--
ALTER TABLE `account_viplist`
  ADD UNIQUE KEY `account_player_index` (`account_id`,`player_id`),
  ADD KEY `player_id` (`player_id`);

--
-- Indexes for table `crypto_history`
--
ALTER TABLE `crypto_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dirkyh_items`
--
ALTER TABLE `dirkyh_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guilds`
--
ALTER TABLE `guilds`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `ownerid` (`ownerid`);

--
-- Indexes for table `guildwar_kills`
--
ALTER TABLE `guildwar_kills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `warid` (`warid`);

--
-- Indexes for table `guild_invites`
--
ALTER TABLE `guild_invites`
  ADD PRIMARY KEY (`player_id`,`guild_id`),
  ADD KEY `guild_id` (`guild_id`);

--
-- Indexes for table `guild_membership`
--
ALTER TABLE `guild_membership`
  ADD PRIMARY KEY (`player_id`),
  ADD KEY `guild_id` (`guild_id`),
  ADD KEY `rank_id` (`rank_id`);

--
-- Indexes for table `guild_ranks`
--
ALTER TABLE `guild_ranks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `guild_id` (`guild_id`);

--
-- Indexes for table `guild_wars`
--
ALTER TABLE `guild_wars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `guild1` (`guild1`),
  ADD KEY `guild2` (`guild2`);

--
-- Indexes for table `houses`
--
ALTER TABLE `houses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `owner` (`owner`),
  ADD KEY `town_id` (`town_id`);

--
-- Indexes for table `house_lists`
--
ALTER TABLE `house_lists`
  ADD KEY `house_id` (`house_id`);

--
-- Indexes for table `ip_bans`
--
ALTER TABLE `ip_bans`
  ADD PRIMARY KEY (`ip`),
  ADD KEY `banned_by` (`banned_by`);

--
-- Indexes for table `kill_statistics`
--
ALTER TABLE `kill_statistics`
  ADD KEY `name` (`name`),
  ADD KEY `time` (`time`);

--
-- Indexes for table `medivia coins`
--
ALTER TABLE `medivia coins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `myaac_account_actions`
--
ALTER TABLE `myaac_account_actions`
  ADD KEY `account_id` (`account_id`);

--
-- Indexes for table `myaac_admin_menu`
--
ALTER TABLE `myaac_admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `myaac_bugtracker`
--
ALTER TABLE `myaac_bugtracker`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `myaac_changelog`
--
ALTER TABLE `myaac_changelog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `myaac_config`
--
ALTER TABLE `myaac_config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `myaac_faq`
--
ALTER TABLE `myaac_faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `myaac_forum`
--
ALTER TABLE `myaac_forum`
  ADD PRIMARY KEY (`id`),
  ADD KEY `section` (`section`);

--
-- Indexes for table `myaac_forum_boards`
--
ALTER TABLE `myaac_forum_boards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `myaac_gallery`
--
ALTER TABLE `myaac_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `myaac_menu`
--
ALTER TABLE `myaac_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `myaac_monsters`
--
ALTER TABLE `myaac_monsters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `myaac_news`
--
ALTER TABLE `myaac_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `myaac_news_categories`
--
ALTER TABLE `myaac_news_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `myaac_notepad`
--
ALTER TABLE `myaac_notepad`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `myaac_pages`
--
ALTER TABLE `myaac_pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `myaac_spells`
--
ALTER TABLE `myaac_spells`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `myaac_videos`
--
ALTER TABLE `myaac_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `myaac_visitors`
--
ALTER TABLE `myaac_visitors`
  ADD UNIQUE KEY `ip` (`ip`);

--
-- Indexes for table `myaac_weapons`
--
ALTER TABLE `myaac_weapons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_history`
--
ALTER TABLE `payment_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `account_id` (`account_id`),
  ADD KEY `vocation` (`vocation`);

--
-- Indexes for table `players_online`
--
ALTER TABLE `players_online`
  ADD PRIMARY KEY (`player_id`);

--
-- Indexes for table `player_deaths`
--
ALTER TABLE `player_deaths`
  ADD KEY `player_id` (`player_id`),
  ADD KEY `killed_by` (`killed_by`),
  ADD KEY `mostdamage_by` (`mostdamage_by`);

--
-- Indexes for table `player_depotitems`
--
ALTER TABLE `player_depotitems`
  ADD UNIQUE KEY `player_id_2` (`player_id`,`sid`);

--
-- Indexes for table `player_items`
--
ALTER TABLE `player_items`
  ADD KEY `player_id` (`player_id`),
  ADD KEY `sid` (`sid`);

--
-- Indexes for table `player_marketing`
--
ALTER TABLE `player_marketing`
  ADD KEY `player_id` (`player_id`);

--
-- Indexes for table `player_murders`
--
ALTER TABLE `player_murders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `player_namelocks`
--
ALTER TABLE `player_namelocks`
  ADD PRIMARY KEY (`player_id`),
  ADD KEY `namelocked_by` (`namelocked_by`);

--
-- Indexes for table `player_spells`
--
ALTER TABLE `player_spells`
  ADD KEY `player_id` (`player_id`);

--
-- Indexes for table `player_storage`
--
ALTER TABLE `player_storage`
  ADD PRIMARY KEY (`player_id`,`key`);

--
-- Indexes for table `raids`
--
ALTER TABLE `raids`
  ADD UNIQUE KEY `nameindex` (`name`);

--
-- Indexes for table `roulette_plays`
--
ALTER TABLE `roulette_plays`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_uuid` (`uuid`),
  ADD KEY `idx_player_id` (`player_id`);

--
-- Indexes for table `server_config`
--
ALTER TABLE `server_config`
  ADD PRIMARY KEY (`config`);

--
-- Indexes for table `store_history`
--
ALTER TABLE `store_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `towns`
--
ALTER TABLE `towns`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `web_creatures`
--
ALTER TABLE `web_creatures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_spells`
--
ALTER TABLE `web_spells`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `z_ots_comunication`
--
ALTER TABLE `z_ots_comunication`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `z_polls`
--
ALTER TABLE `z_polls`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58764900;

--
-- AUTO_INCREMENT for table `account_ban_history`
--
ALTER TABLE `account_ban_history`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crypto_history`
--
ALTER TABLE `crypto_history`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `guilds`
--
ALTER TABLE `guilds`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guildwar_kills`
--
ALTER TABLE `guildwar_kills`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guild_ranks`
--
ALTER TABLE `guild_ranks`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guild_wars`
--
ALTER TABLE `guild_wars`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `houses`
--
ALTER TABLE `houses`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=862;

--
-- AUTO_INCREMENT for table `medivia coins`
--
ALTER TABLE `medivia coins`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `myaac_admin_menu`
--
ALTER TABLE `myaac_admin_menu`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `myaac_bugtracker`
--
ALTER TABLE `myaac_bugtracker`
  MODIFY `uid` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `myaac_changelog`
--
ALTER TABLE `myaac_changelog`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `myaac_config`
--
ALTER TABLE `myaac_config`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `myaac_faq`
--
ALTER TABLE `myaac_faq`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `myaac_forum`
--
ALTER TABLE `myaac_forum`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `myaac_forum_boards`
--
ALTER TABLE `myaac_forum_boards`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `myaac_gallery`
--
ALTER TABLE `myaac_gallery`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `myaac_menu`
--
ALTER TABLE `myaac_menu`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `myaac_monsters`
--
ALTER TABLE `myaac_monsters`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `myaac_news`
--
ALTER TABLE `myaac_news`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `myaac_news_categories`
--
ALTER TABLE `myaac_news_categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `myaac_notepad`
--
ALTER TABLE `myaac_notepad`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `myaac_pages`
--
ALTER TABLE `myaac_pages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `myaac_spells`
--
ALTER TABLE `myaac_spells`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `myaac_videos`
--
ALTER TABLE `myaac_videos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_history`
--
ALTER TABLE `payment_history`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `player_murders`
--
ALTER TABLE `player_murders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1304;

--
-- AUTO_INCREMENT for table `roulette_plays`
--
ALTER TABLE `roulette_plays`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `store_history`
--
ALTER TABLE `store_history`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `towns`
--
ALTER TABLE `towns`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `web_creatures`
--
ALTER TABLE `web_creatures`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `web_spells`
--
ALTER TABLE `web_spells`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `z_ots_comunication`
--
ALTER TABLE `z_ots_comunication`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `z_polls`
--
ALTER TABLE `z_polls`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account_bans`
--
ALTER TABLE `account_bans`
  ADD CONSTRAINT `account_bans_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `account_ban_history`
--
ALTER TABLE `account_ban_history`
  ADD CONSTRAINT `account_ban_history_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `account_storage`
--
ALTER TABLE `account_storage`
  ADD CONSTRAINT `account_storage_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `account_viplist`
--
ALTER TABLE `account_viplist`
  ADD CONSTRAINT `account_viplist_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `account_viplist_ibfk_2` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `guilds`
--
ALTER TABLE `guilds`
  ADD CONSTRAINT `guilds_ibfk_1` FOREIGN KEY (`ownerid`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `guildwar_kills`
--
ALTER TABLE `guildwar_kills`
  ADD CONSTRAINT `guildwar_kills_ibfk_1` FOREIGN KEY (`warid`) REFERENCES `guild_wars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `guild_invites`
--
ALTER TABLE `guild_invites`
  ADD CONSTRAINT `guild_invites_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `guild_invites_ibfk_2` FOREIGN KEY (`guild_id`) REFERENCES `guilds` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `guild_membership`
--
ALTER TABLE `guild_membership`
  ADD CONSTRAINT `guild_membership_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `guild_membership_ibfk_2` FOREIGN KEY (`guild_id`) REFERENCES `guilds` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `guild_membership_ibfk_3` FOREIGN KEY (`rank_id`) REFERENCES `guild_ranks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `guild_ranks`
--
ALTER TABLE `guild_ranks`
  ADD CONSTRAINT `guild_ranks_ibfk_1` FOREIGN KEY (`guild_id`) REFERENCES `guilds` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `house_lists`
--
ALTER TABLE `house_lists`
  ADD CONSTRAINT `house_lists_ibfk_1` FOREIGN KEY (`house_id`) REFERENCES `houses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `players`
--
ALTER TABLE `players`
  ADD CONSTRAINT `players_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `player_deaths`
--
ALTER TABLE `player_deaths`
  ADD CONSTRAINT `player_deaths_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `player_depotitems`
--
ALTER TABLE `player_depotitems`
  ADD CONSTRAINT `player_depotitems_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `player_items`
--
ALTER TABLE `player_items`
  ADD CONSTRAINT `player_items_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `player_marketing`
--
ALTER TABLE `player_marketing`
  ADD CONSTRAINT `player_marketing_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `player_namelocks`
--
ALTER TABLE `player_namelocks`
  ADD CONSTRAINT `player_namelocks_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `player_namelocks_ibfk_2` FOREIGN KEY (`namelocked_by`) REFERENCES `players` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `player_spells`
--
ALTER TABLE `player_spells`
  ADD CONSTRAINT `player_spells_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `player_storage`
--
ALTER TABLE `player_storage`
  ADD CONSTRAINT `player_storage_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `roulette_plays`
--
ALTER TABLE `roulette_plays`
  ADD CONSTRAINT `fk_roulette_player` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
