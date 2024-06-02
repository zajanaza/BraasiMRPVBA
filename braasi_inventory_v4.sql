-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Počítač: 127.0.0.1
-- Vytvořeno: Stř 22. kvě 2024, 22:32
-- Verze serveru: 10.4.32-MariaDB
-- Verze PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `braasi_inventory`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `commodities`
--

CREATE TABLE `commodities` (
  `com_code` varchar(5) NOT NULL,
  `com_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;

--
-- Vypisuji data pro tabulku `commodities`
--

INSERT INTO `commodities` (`com_code`, `com_name`) VALUES
('ACSR', 'Doplňky'),
('ADAC', 'Příslušenství'),
('APPR', 'Oblečení'),
('BGPK', 'Batohy'),
('BIKE', 'Kolo'),
('BRND', 'Branding'),
('FBRK', 'Látky'),
('FLNG', 'Výplně'),
('HRDW', 'Hardware'),
('LTHR', 'Kůže'),
('PCKG', 'Balení'),
('SNFB', 'Světlá'),
('STRP', 'Popruh'),
('TEST', 'test1'),
('THRD', 'Nitě'),
('VCHR', 'Vouchery');

-- --------------------------------------------------------

--
-- Struktura tabulky `locations`
--

CREATE TABLE `locations` (
  `location_code` varchar(5) NOT NULL,
  `location_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;

--
-- Vypisuji data pro tabulku `locations`
--

INSERT INTO `locations` (`location_code`, `location_name`) VALUES
('', ''),
('DIL', 'Dílna'),
('EXT', 'Externí pracoviště'),
('SKL', 'Sklad');

-- --------------------------------------------------------

--
-- Struktura tabulky `material_list`
--

CREATE TABLE `material_list` (
  `part_number` varchar(10) NOT NULL,
  `description` varchar(50) NOT NULL,
  `unit_code` varchar(5) NOT NULL,
  `com_code` varchar(5) NOT NULL,
  `subcom_code` varchar(5) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;

--
-- Vypisuji data pro tabulku `material_list`
--

INSERT INTO `material_list` (`part_number`, `description`, `unit_code`, `com_code`, `subcom_code`) VALUES
('BRND000001', 'tkaná etiketa kos. černobílá Braasi Industry', 'ks', 'BRND', ''),
('BRND000002', 'tkaná etiketa kos. černobílá Braasi Industry baby', 'ks', 'BRND', ''),
('BRND000003', 'tkaná etiketa přežehlená černobílá B/IN', 'ks', 'BRND', ''),
('BRND000004', 'tkaná etiketa přežehlená úzká čepice', 'ks', 'BRND', ''),
('BRND000005', 'tkaná etiketa kosočtverec meděná Braasi Industry', 'ks', 'BRND', ''),
('BRND000006', 'tkaná etiketa X-PAC', 'ks', 'BRND', ''),
('BRND000007', 'tkaná etiketa OUTLAST', 'ks', 'BRND', ''),
('BRND000008', 'tkaná etiketa ROBE', 'ks', 'BRND', ''),
('BRND000009', 'tkaná etiketa DIRECT', 'ks', 'BRND', ''),
('BRND000010', 'tkaná etiketa SEYFOR', 'ks', 'BRND', ''),
('BRND000011', 'tkaná etiketa PPF/ BRAASI', 'ks', 'BRND', ''),
('BRND000012', 'tkaná etiketa ČESKO DIGITAL', 'ks', 'BRND', ''),
('BRND000013', 'tkaná etiketa WE ARE PUBLICIS', 'ks', 'BRND', ''),
('BRND000014', 'tkaná etiketa CLEVERHOOD', 'ks', 'BRND', ''),
('BRND000015', 'tkaná etiketa CLEVERHOOD/ BRAASI', 'ks', 'BRND', ''),
('BRND000016', 'tkaná etiketa WINQS', 'ks', 'BRND', ''),
('BRND000017', 'tkaná etiketa GARAGE 22', 'ks', 'BRND', ''),
('BRND000018', 'tkaná etiketa BEEFEATER', 'ks', 'BRND', ''),
('BRND000019', 'tkaná etiketa JOHNNIE WALKER', 'ks', 'BRND', ''),
('BRND000020', 'tkaná etiketa HORALKY', 'ks', 'BRND', ''),
('BRND000021', 'tkaná etiketa CANVA', 'ks', 'BRND', ''),
('FBRK000001', 'Kortexin černý', 'm', 'FBRK', 'ASI'),
('FBRK000002', 'Kortexin žlutý', 'm', 'FBRK', 'ASI'),
('FBRK000003', 'Kortexin bílý', 'm', 'FBRK', 'ASI'),
('FBRK000004', 'Kortexin červený', 'm', 'FBRK', 'ASI'),
('FBRK000005', 'Kortexin sv.šedá', 'm', 'FBRK', 'ASI'),
('FBRK000006', 'Kortexin hnědý', 'm', 'FBRK', 'ASI'),
('FBRK000007', 'Kortexin oranžový', 'm', 'FBRK', 'ASI'),
('FBRK000008', 'černý PES s PVC zátěrem', 'm', 'FBRK', 'ASI'),
('FBRK000009', 'žlutý PES s PVC zátěrem', 'm', 'FBRK', 'ASI'),
('FBRK000010', '3D tkanina', 'm2', 'FBRK', 'FNC'),
('FBRK000011', 'Outlast', 'm2', 'FBRK', 'FNC'),
('FBRK000012', 'Ubeon žlutá', 'm2', 'FBRK', 'LNG'),
('FBRK000013', 'Ubeon světle šedá', 'm2', 'FBRK', 'LNG'),
('FBRK000014', 'Ubeon modrá', 'm2', 'FBRK', 'LNG'),
('FBRK000015', 'Ubeon bílá', 'm2', 'FBRK', 'LNG'),
('FBRK000016', 'Ulsedan zářivě žlutá', 'm2', 'FBRK', 'LNG'),
('FBRK000017', 'Ulsedan zářivě oranžová', 'm2', 'FBRK', 'LNG'),
('FBRK000018', 'Ulsedan modrá', 'm2', 'FBRK', 'LNG'),
('FBRK000019', 'Ulsedan černá', 'm2', 'FBRK', 'LNG'),
('FBRK000020', 'Ulsedan zelená plzeňská', 'm2', 'FBRK', 'LNG'),
('FBRK000021', 'Ulsedan khaki', 'm2', 'FBRK', 'LNG'),
('FBRK000022', 'Ulsedan olivová', 'm2', 'FBRK', 'LNG'),
('FBRK000023', 'Ulsedan červená', 'm2', 'FBRK', 'LNG'),
('FBRK000024', 'Ulsedan fialová', 'm2', 'FBRK', 'LNG'),
('FBRK000025', 'Uzaron fialová', 'm2', 'FBRK', 'LNG'),
('FBRK000026', 'Uzaron červená', 'm2', 'FBRK', 'LNG'),
('FBRK000027', 'Uzaron růžová', 'm2', 'FBRK', 'LNG'),
('FBRK000028', 'Uzaron žlutá', 'm2', 'FBRK', 'LNG'),
('FBRK000029', 'Uzaron královská modrá', 'm2', 'FBRK', 'LNG'),
('FBRK000030', 'Uzaron černá', 'm2', 'FBRK', 'LNG'),
('FBRK000031', 'Uzaron zářivě žlutá', 'm2', 'FBRK', 'LNG'),
('FBRK000032', 'Uzaron tmavě šedá', 'm2', 'FBRK', 'LNG'),
('FBRK000033', 'Padákovina černá', 'm2', 'FBRK', 'PAR'),
('FBRK000034', 'Padákovina khaki', 'm2', 'FBRK', 'PAR'),
('FBRK000035', 'Padákovina stříbrná', 'm2', 'FBRK', 'PAR'),
('FBRK000036', 'Padákovina navy', 'm2', 'FBRK', 'PAR'),
('FBRK000037', 'Cordura CZ 1100 černá PU zátěr', 'm', 'FBRK', 'CRD'),
('FBRK000038', 'Cordura CZ 1100 khaki PU zátěr', 'm', 'FBRK', 'CRD'),
('FBRK000039', 'Cordura CZ 500 ripstop černá', 'm', 'FBRK', 'CRD'),
('FBRK000040', 'Cordura CZ 500 ripstop khaki', 'm', 'FBRK', 'CRD'),
('FBRK000041', 'Cordura Belgická \"UKORET\" 1100 černá', 'm', 'FBRK', 'CRD'),
('FBRK000042', 'Cordura DE 1100 černá AC zátěr', 'm', 'FBRK', 'CRD'),
('FBRK000043', 'Cordura DE 1100 navy AC zátěr', 'm', 'FBRK', 'CRD'),
('FBRK000044', 'Cordura DE 1100 oranžová AC zátěr', 'm', 'FBRK', 'CRD'),
('FBRK000045', 'Cordura DE 1100 červená AC zátěr', 'm', 'FBRK', 'CRD'),
('FBRK000046', 'Cordura DE 1100 modrá AC zátěr', 'm', 'FBRK', 'CRD'),
('FBRK000047', 'Cordura DE 1100 žlutá AC zátěr', 'm', 'FBRK', 'CRD'),
('FBRK000048', 'Cordura DE 1100 ecru AC zátěr', 'm', 'FBRK', 'CRD'),
('FBRK000049', 'Cordura DE 1100 tmavě šedá AC zátěr', 'm', 'FBRK', 'CRD'),
('FBRK000050', 'Cordura DE 1100 khaki AC zátěr', 'm', 'FBRK', 'CRD'),
('FBRK000051', 'Cordura DE 1100 kávová AC zátěr', 'm', 'FBRK', 'CRD'),
('FBRK000052', 'Cordura DE 1100 trávově zelená AC zátěr', 'm', 'FBRK', 'CRD'),
('FBRK000053', 'Cordura DE 1100 coyote AC zátěr', 'm', 'FBRK', 'CRD'),
('FBRK000054', 'Cordura DE 1100 jarní zelená AC zátěr', 'm', 'FBRK', 'CRD'),
('FBRK000055', 'Cordura DE 1100 tan AC zátěr', 'm', 'FBRK', 'CRD'),
('FBRK000056', 'Cordura DE 1100 akvamarin AC zátěr', 'm', 'FBRK', 'CRD'),
('FBRK000057', 'Cordura DE 1100 khaki PVC zátěr', 'm', 'FBRK', 'CRD'),
('FBRK000058', 'Cordura DE 1100 šedá AC zátěr', 'm', 'FBRK', 'CRD'),
('FBRK000059', 'Cordura DE 1100 fialová AC zátěr', 'm', 'FBRK', 'CRD'),
('FBRK000060', 'Cordura DE 1100 zlatá AC zátěr', 'm', 'FBRK', 'CRD'),
('FBRK000061', 'Cordura DE 1100 tmavě zelená AC zátěr', 'm', 'FBRK', 'CRD'),
('FBRK000062', 'Cordura DE 1100 armádní zelená AC zátěr', 'm', 'FBRK', 'CRD'),
('FBRK000063', 'Cordura DE 1100 olivově zelená AC zátěr', 'm', 'FBRK', 'CRD'),
('FBRK000064', 'Cordura DE 1100 růžová AC zátěr', 'm', 'FBRK', 'CRD'),
('FBRK000065', 'Cordura CZ 500 černá PU zátěr', 'm2', 'FBRK', 'CRD'),
('FBRK000066', 'Cordura DE 500 černá PU zátěr', 'm', 'FBRK', 'CRD'),
('FBRK000067', 'Cordura DE 500 navy AC zátěr', 'm', 'FBRK', 'CRD'),
('FBRK000068', 'Cordura DE 500 oranžová AC zátěr', 'm', 'FBRK', 'CRD'),
('FBRK000069', 'Cordura DE 500 žlutá AC zátěr', 'm', 'FBRK', 'CRD'),
('FBRK000070', 'Cordura DE 500 bílá AC zátěr', 'm', 'FBRK', 'CRD'),
('FBRK000071', 'Cordura DE 500 světle modrá AC zátěr', 'm', 'FBRK', 'CRD'),
('FBRK000072', 'Cordura DE 500 šedá AC zátěr', 'm', 'FBRK', 'CRD'),
('FBRK000073', 'Cordura DE 500 tmavě šedá/zelená AC zátěr', 'm', 'FBRK', 'CRD'),
('FBRK000074', 'Cordura DE 500 hnědá AC zátěr', 'm', 'FBRK', 'CRD'),
('FBRK000075', 'Cordura DE 500 zářivě žlutá AC zátěr', 'm', 'FBRK', 'CRD'),
('FBRK000076', 'Cordura DE 500 blankytně modrá AC zátěr', 'm', 'FBRK', 'CRD'),
('FBRK000077', 'Cordura DE 500 světle šedá AC zátěr', 'm', 'FBRK', 'CRD'),
('FBRK000078', 'Cordura DE 500 červená AC zátěr', 'm', 'FBRK', 'CRD'),
('FBRK000079', 'Cordura DE 500 khaki AC zátěr', 'm', 'FBRK', 'CRD'),
('FBRK000080', 'Cordura DE 500 vínová AC zátěr', 'm', 'FBRK', 'CRD'),
('FBRK000081', 'Cordura DE 500 tan AC zátěr', 'm', 'FBRK', 'CRD'),
('FBRK000082', 'Xpac VX21 black', 'm', 'FBRK', 'XPC'),
('FBRK000083', 'Xpac VX21 purple', 'm', 'FBRK', 'XPC'),
('FBRK000084', 'Xpac VX21 yellow', 'm', 'FBRK', 'XPC'),
('FBRK000085', 'Xpac VX21 white', 'm', 'FBRK', 'XPC'),
('FBRK000086', 'Xpac RX36/DWR black', 'm', 'FBRK', 'XPC'),
('FBRK000087', 'Xpac RX36/DWR white', 'm', 'FBRK', 'XPC'),
('FBRK000088', 'Xpac RX30/DWR black', 'm', 'FBRK', 'XPC'),
('FBRK000089', 'Xpac RX15/DWR white', 'm', 'FBRK', 'XPC'),
('FBRK000090', 'Xpac VX21 RIPSTOP black', 'm', 'FBRK', 'XPC'),
('FBRK000091', 'Patrik Antzcak tisk', 'm', 'FBRK', 'PES'),
('FBRK000092', 'Paperjoe tisk', 'm', 'FBRK', 'PES'),
('FBRK000093', 'Bavlna CZ černá', 'm', 'FBRK', 'CTN'),
('FBRK000094', 'Bavlna IT impregnace černá', 'm', 'FBRK', 'CTN'),
('FBRK000095', 'Bavlna IT oranžová', 'm', 'FBRK', 'CTN'),
('FBRK000096', 'Bavlna CZ khaki', 'm', 'FBRK', 'CTN'),
('FBRK000097', 'Bavlna IT přírodní', 'm', 'FBRK', 'CTN'),
('FBRK000098', 'Bavlna CZ přírodn', 'm', 'FBRK', 'CTN'),
('FBRK000099', 'Bavlna CZ žlutá', 'm', 'FBRK', 'CTN'),
('FBRK000100', 'Bavlna CZ tmavě žlutá', 'm', 'FBRK', 'CTN'),
('FBRK000101', 'Bavlna CZ magenta', 'm', 'FBRK', 'CTN'),
('FBRK000102', 'Bavlna CZ červená', 'm', 'FBRK', 'CTN'),
('FBRK000103', 'Bavlna CZ modrá', 'm', 'FBRK', 'CTN'),
('FBRK000104', 'Bavlna England (monocle) khaki', 'm', 'FBRK', 'CTN'),
('FBRK000105', 'Bavlna England (monocle) navy', 'm', 'FBRK', 'CTN'),
('FBRK000106', 'Bavlna IT šedá', 'm', 'FBRK', 'CTN'),
('FBRK000107', 'podložení molitanu záda', 'm', 'FBRK', 'FND'),
('FLNG000001', 'Molitan 2 cm', 'm', 'FLNG', ''),
('FLNG000002', 'EVA pěna 10 mm', 'm', 'FLNG', ''),
('FLNG000003', 'Eva pěna 6 mm', 'm', 'FLNG', ''),
('FLNG000004', 'Eva pěna 2 mm', 'm', 'FLNG', ''),
('HRDW000001', 'YKK samice 25 mm černá', 'ks', 'HRDW', ''),
('HRDW000002', 'YKK samec 25 mm černá', 'ks', 'HRDW', ''),
('HRDW000003', 'YKK samec 25 mm černá EVO', 'ks', 'HRDW', ''),
('HRDW000004', 'YKK samice 25 mm černá EVO', 'ks', 'HRDW', ''),
('HRDW000005', 'YKK samice 20 mm černá', 'ks', 'HRDW', ''),
('HRDW000006', 'YKK samec 20 mm černá', 'ks', 'HRDW', ''),
('HRDW000007', 'YKK samec 16 mm černá', 'ks', 'HRDW', ''),
('HRDW000008', 'YKK samice 16 mm černá', 'ks', 'HRDW', ''),
('HRDW000009', 'YKK žebříček 16 mm černá', 'ks', 'HRDW', ''),
('HRDW000010', 'YKK žebříček 20 mm černá', 'ks', 'HRDW', ''),
('HRDW000011', 'YKK žebříček 25 mm černá', 'ks', 'HRDW', ''),
('HRDW000012', 'YKK žebříček 25 mm černá WICKER', 'ks', 'HRDW', ''),
('HRDW000013', 'YKK očko 18 mm černá', 'ks', 'HRDW', ''),
('HRDW000014', 'YKK očko 20 mm černá', 'ks', 'HRDW', ''),
('HRDW000015', 'YKK očko 25 mm černá', 'ks', 'HRDW', ''),
('HRDW000016', 'YKK očko 40 mm černá', 'ks', 'HRDW', ''),
('HRDW000017', 'YKK zip černý pogumovaný', 'ks', 'HRDW', ''),
('HRDW000018', 'YKK 5 zip černý reverzní', 'ks', 'HRDW', ''),
('HRDW000019', 'YKK jezdec 5E černá', 'ks', 'HRDW', ''),
('HRDW000020', 'YKK jezdec 5EJ černá', 'ks', 'HRDW', ''),
('HRDW000021', 'YKK klíčenka černá', 'ks', 'HRDW', ''),
('HRDW000022', 'YKK D-kroužek černá', 'ks', 'HRDW', ''),
('HRDW000023', 'YKK karabina černá', 'ks', 'HRDW', ''),
('HRDW000024', 'YKK trojzubec 50 mm černá (samec+samice)', 'ks', 'HRDW', ''),
('HRDW000025', 'YKK bikeroller přezka', 'ks', 'HRDW', ''),
('HRDW000026', 'YKK jezdec 5E bílý', 'ks', 'HRDW', ''),
('HRDW000027', 'YKK průvleky 20 mm', 'ks', 'HRDW', ''),
('HRDW000028', 'trojzubec 40 mm černá (samec+samice)', 'ks', 'HRDW', ''),
('HRDW000029', 'žebříček 40 mm černá CROSSBODY', 'ks', 'HRDW', ''),
('HRDW000030', 'YKK zip 28 cm žlutý', 'ks', 'HRDW', ''),
('HRDW000031', 'YKK zip 28 cm bílý', 'ks', 'HRDW', ''),
('HRDW000032', 'YKK zip kovový 18 cm černý', 'ks', 'HRDW', ''),
('HRDW000033', 'YKK zip kovový 18 cm bílý', 'ks', 'HRDW', ''),
('HRDW000034', 'zip kovový 18 cm černý', 'ks', 'HRDW', ''),
('HRDW000035', 'YKK zip spirálový reverzní 5 CI černá', 'm', 'HRDW', ''),
('HRDW000036', 'Fidlock V-BUCKLE 20 mm jednostranně nastavitelná', 'ks', 'HRDW', ''),
('HRDW000037', 'Fidlock V-BUCKLE 25 mm jednostranně nastavitelná', 'ks', 'HRDW', ''),
('HRDW000038', 'Fidlock V-BUCKLE 40 LL 40 mm nastavitelná černá', 'ks', 'HRDW', ''),
('HRDW000039', 'Fidlock V-BUCKLE 40 SB 40 mm fix černá', 'ks', 'HRDW', ''),
('HRDW000040', 'Fidlock HOOK 40 belt LL', 'ks', 'HRDW', ''),
('HRDW000041', 'Fidlock přezka 20 mm stříbrná', 'ks', 'HRDW', ''),
('HRDW000042', 'Fidlock Stripe X3', 'ks', 'HRDW', ''),
('HRDW000043', 'Fidlock Coinstrap 15 mm na helmu', 'ks', 'HRDW', ''),
('HRDW000044', 'Fidlock SNAP špuntík samec M kulatá nízká černá', 'ks', 'HRDW', ''),
('HRDW000045', 'Fidlock SNAP špuntík samice M kulatá nízká černá', 'ks', 'HRDW', ''),
('HRDW000046', 'Fidlock SNAP samec S na gumičku', 'ks', 'HRDW', ''),
('HRDW000047', 'Fidlock SNAP samice S kulatá nízká černá', 'ks', 'HRDW', ''),
('HRDW000048', 'Fidlock SNAP male M 25 adjuster k rolce', 'ks', 'HRDW', ''),
('HRDW000049', 'Fidlock HOOK 20 na gumičku černá', 'ks', 'HRDW', ''),
('HRDW000050', 'WeTool kovový žebříček 20 mm černá', 'ks', 'HRDW', ''),
('HRDW000051', 'WeTool kovový žebříček 25 mm černá', 'ks', 'HRDW', ''),
('HRDW000052', 'WeTool kovový G-Hook 20 mm levá černá', 'ks', 'HRDW', ''),
('HRDW000053', 'WeTool kovový G-Hook 20 mm pravá černá', 'ks', 'HRDW', ''),
('HRDW000054', 'WeTool kovový G-Hook 25 mm pravá otvírák černý', 'ks', 'HRDW', ''),
('HRDW000055', 'WeTool kovový H-Hook 25 mm černá', 'ks', 'HRDW', ''),
('HRDW000056', 'WeTool kovový karabina 20 mm černá', 'ks', 'HRDW', ''),
('HRDW000057', 'WeTool kovový protikus karabina 20 mm černá', 'ks', 'HRDW', ''),
('HRDW000058', 'WeTool kovová karabina obdélníková 20 mm černá', 'ks', 'HRDW', ''),
('HRDW000059', 'WeTool kovová karabina obdélníková 10 mm černá', 'ks', 'HRDW', ''),
('HRDW000060', 'WeTool kovová karabina otočná 20 mm černá', 'ks', 'HRDW', ''),
('HRDW000061', 'WeTool kovové D-očko 20 mm černá', 'ks', 'HRDW', ''),
('HRDW000062', 'WeTool kovové hawkeye toggle 25 mm černá', 'ks', 'HRDW', ''),
('HRDW000063', 'titanová žabka Austere 20 mm', 'ks', 'HRDW', ''),
('HRDW000064', 'optic fibre lighting', 'ks', 'HRDW', ''),
('HRDW000065', 'PJ trojzubec 25 mm bílá (samec+samice)', 'ks', 'HRDW', ''),
('HRDW000066', 'PJ žebříček 25 mm bílá', 'ks', 'HRDW', ''),
('HRDW000067', 'PJ žebříček 20 mm bílá', 'ks', 'HRDW', ''),
('HRDW000068', 'PJ samec 20 mm bílá', 'ks', 'HRDW', ''),
('HRDW000069', 'PJ samice 20 mm bílá', 'ks', 'HRDW', ''),
('HRDW000070', 'PJ očko 20 mm bílá', 'ks', 'HRDW', ''),
('HRDW000071', 'PJ očko 20 mm černá', 'ks', 'HRDW', ''),
('HRDW000072', 'PJ očko 40 mm černá', 'ks', 'HRDW', ''),
('HRDW000073', 'PJ spona 20 mm bílá', 'ks', 'HRDW', ''),
('HRDW000074', 'PJ trojzubec 10 mm bílá (samec+samice)', 'ks', 'HRDW', ''),
('HRDW000075', 'PJ trojzubec 10 mm khaki (samec+samice)', 'ks', 'HRDW', ''),
('HRDW000076', 'PJ trojzubec 20 mm bílá (samec+samice)', 'ks', 'HRDW', ''),
('HRDW000077', 'PJ trojzubec 10 mm černá', 'ks', 'HRDW', ''),
('HRDW000078', 'PJ karabina 20 mm černá', 'ks', 'HRDW', ''),
('HRDW000079', 'PJ karabina 30 mm černá', 'ks', 'HRDW', ''),
('HRDW000080', 'PJ trojzubec 30 mm černá', 'ks', 'HRDW', ''),
('HRDW000081', 'PJ žebříček 40 mm černá', 'ks', 'HRDW', ''),
('HRDW000082', 'PJ D-kroužek černá 20 mm', 'ks', 'HRDW', ''),
('HRDW000083', 'Massag kovový zebříček 20 mm měděný', 'ks', 'HRDW', ''),
('HRDW000084', 'Massag kovový žebříček 20 mm černá', 'ks', 'HRDW', ''),
('HRDW000085', 'Massag auto druk černá', 'ks', 'HRDW', ''),
('HRDW000086', 'Metal clash hook', 'ks', 'HRDW', ''),
('HRDW000087', 'Massag vsuvka kovová černá', 'ks', 'HRDW', ''),
('HRDW000088', 'cordlock', 'ks', 'HRDW', ''),
('LTHR000001', 'SILK 0842 černá', 'm', 'LTHR', ''),
('LTHR000002', 'SILK 0250 rezavá', 'm', 'LTHR', ''),
('LTHR000003', 'VENICE 64080 Albicocca', 'm', 'LTHR', ''),
('LTHR000004', 'VENICE 64100 Black černá', 'm', 'LTHR', ''),
('LTHR000005', 'VENICE 64030 Ecrú písková', 'm', 'LTHR', ''),
('LTHR000006', 'VENICE 64150 Pervinca lila', 'm', 'LTHR', ''),
('LTHR000007', 'VENICE 64150 Cloud Pink nude', 'm', 'LTHR', ''),
('LTHR000008', 'VENICE 64110 Corallo lososová', 'm', 'LTHR', ''),
('LTHR000009', 'VENICE 64040 Cappuccino bílá káva', 'm', 'LTHR', ''),
('PCKG000001', 'papírová karta příběh + označení batohu', 'ks', 'PCKG', ''),
('PCKG000002', 'igelitový pytel s logem', 'ks', 'PCKG', ''),
('PCKG000003', 'krabice 51x38x7', 'ks', 'PCKG', ''),
('PCKG000004', 'lepící páska Braasi Industry', 'm', 'PCKG', ''),
('PCKG000005', 'štítek Zásilkovna', 'ks', 'PCKG', ''),
('PCKG000006', 'štítek GLS', 'ks', 'PCKG', ''),
('PCKG000007', 'košilka', 'ks', 'PCKG', ''),
('STRP000001', 'poporuh černý PAD 10 mm', 'm', 'STRP', ''),
('STRP000002', 'popruh černý PAD 16 mm', 'm', 'STRP', ''),
('STRP000003', 'popruh černý PAD 20 mm', 'm', 'STRP', ''),
('STRP000004', 'popruh černý PAD 25 mm', 'm', 'STRP', ''),
('STRP000005', 'popruh černý PAD 40 mm', 'm', 'STRP', ''),
('STRP000006', 'lemovka černá PAD 25 mm', 'm', 'STRP', ''),
('STRP000007', 'lemovka černá PES 25 mm', 'm', 'STRP', ''),
('STRP000008', 'pruženka černá 40 mm', 'm', 'STRP', ''),
('STRP000009', 'pruženka černá 25 mm', 'm', 'STRP', ''),
('STRP000010', 'popruh černý PES 10 mm', 'm', 'STRP', ''),
('STRP000011', 'popruh černý PES 16 mm', 'm', 'STRP', ''),
('STRP000012', 'popruh černý PES 20 mm', 'm', 'STRP', ''),
('STRP000013', 'popruh černý PES 25 mm', 'm', 'STRP', ''),
('STRP000014', 'popruh černý PES 55 mm', 'm', 'STRP', ''),
('STRP000015', 'popruh černý bavlna 20 mm', 'm', 'STRP', ''),
('STRP000016', 'popruh bílý PAD 10 mm', 'm', 'STRP', ''),
('STRP000017', 'popruh bílý PAD 20 mm', 'm', 'STRP', ''),
('STRP000018', 'popruh bílý PAD 25 mm', 'm', 'STRP', ''),
('STRP000019', 'popruh přírodní bavlna 20 mm', 'm', 'STRP', ''),
('STRP000020', 'popruh přírodní bavlna 30 mm', 'm', 'STRP', ''),
('STRP000021', 'popruh modrý PAD 10 mm', 'm', 'STRP', ''),
('STRP000022', 'popruh modrý PAD 20 mm', 'm', 'STRP', ''),
('STRP000023', 'popruh modrý PAD 25 mm', 'm', 'STRP', ''),
('STRP000024', 'popruh modrý bavlna 40 mm', 'm', 'STRP', ''),
('STRP000025', 'popruh oranžový reflexní PAD 16 mm', 'm', 'STRP', ''),
('STRP000026', 'popruh oranžový reflexní PAD 20 mm', 'm', 'STRP', ''),
('STRP000027', 'popruh oranžový tmavě PAD 20 mm', 'm', 'STRP', ''),
('STRP000028', 'popruh červený PAD 10 mm', 'm', 'STRP', ''),
('STRP000029', 'popruh červený PAD 20 mm', 'm', 'STRP', ''),
('STRP000030', 'popruh červený PAD 25 mm', 'm', 'STRP', ''),
('STRP000031', 'popruh zelený reflexní PAD 10 mm', 'm', 'STRP', ''),
('STRP000032', 'popruh žlutý PAD 10 mm', 'm', 'STRP', ''),
('STRP000033', 'popruh šedý PAD 10 mm', 'm', 'STRP', ''),
('STRP000034', 'popruh béžový PAD 20 mm', 'm', 'STRP', ''),
('STRP000035', 'popruh fialový PAD 20 mm', 'm', 'STRP', ''),
('STRP000036', 'popruh khaki bavlna 34 mm', 'm', 'STRP', ''),
('STRP000037', 'popruh pruhovaný č,o,z,m,ž 25 mm', 'm', 'STRP', ''),
('STRP000038', 'popruh pruhovaný š,f,š 30 mm', 'm', 'STRP', ''),
('STRP000039', 'pryžové vlákno černá PES', 'm', 'STRP', ''),
('STRP000040', 'gumolano červené 4mm', 'm', 'STRP', ''),
('STRP000041', 'gumolano černé 4mm', 'm', 'STRP', ''),
('STRP000042', 'oděvní vázačka bílý PES 3,5mm', 'm', 'STRP', ''),
('STRP000043', 'oděvní vázačka černý PES 3,5 mm', 'm', 'STRP', ''),
('STRP000044', 'oděvní vázačka žlutý PES 3,5 mm', 'm', 'STRP', ''),
('STRP000045', 'paracorde modrá  3,5 mm', 'm', 'STRP', ''),
('STRP000046', 'paracorde červený 3,5 mm', 'm', 'STRP', ''),
('STRP000047', 'paracorde černý 3,5 mm', 'm', 'STRP', ''),
('STRP000048', 'automobilové pásy 45mm', 'm', 'STRP', ''),
('STRP000049', 'dutinka zlatá 20 mm', 'm', 'STRP', ''),
('STRP000050', 'suché zipy 10 mm háček', 'm', 'STRP', ''),
('STRP000051', 'suché zipy 10 mm plyš', 'm', 'STRP', ''),
('STRP000052', 'suché zipy 25 mm háček', 'm', 'STRP', ''),
('STRP000053', 'suché zipy 25 mm plyš', 'm', 'STRP', ''),
('STRP000054', 'suché zipy 30 mm háček', 'm', 'STRP', ''),
('STRP000055', 'suché zipy 30 mm plyš', 'm', 'STRP', ''),
('STRP000056', 'suché zipy 50 mm plyš', 'm', 'STRP', ''),
('STRP000057', 'suché zipy 50 mm háček', 'm', 'STRP', ''),
('TEST000001', 'test1', 'ks', 'ACSR', ''),
('TEST000002', 'test2', 'm2', 'APPR', ''),
('TEST000003', 'test3', 'm2', 'FBRK', 'CTN'),
('THRD000001', 'Ultrapoly 30 černá 999', 'ks', 'THRD', ''),
('THRD000002', 'Ultrapoly 30 modrá 549', 'ks', 'THRD', ''),
('THRD000003', 'Ultrapoly 30 světle šedá 882', 'ks', 'THRD', ''),
('THRD000004', 'Ultrapoly 30 žlutá 125', 'ks', 'THRD', ''),
('THRD000005', 'Ultrapoly 30 královská modrá 556', 'ks', 'THRD', ''),
('THRD000006', 'Ultrapoly 30 zářivě růžová 345', 'ks', 'THRD', ''),
('THRD000007', 'Ultrapoly 30 neon oranžová 215', 'ks', 'THRD', ''),
('THRD000008', 'Ultrapoly 30 bílá 001', 'ks', 'THRD', ''),
('THRD000009', 'Ultrapoly 30 modrá podšívka 658', 'ks', 'THRD', ''),
('THRD000010', 'Ultrapoly 30 fialová 458', 'ks', 'THRD', ''),
('THRD000011', 'Ultrapoly 30 přírodní 710', 'ks', 'THRD', ''),
('THRD000012', 'Ultrapoly 30 vínová 344', 'ks', 'THRD', ''),
('THRD000013', 'Ultrapoly 30 červená 337', 'ks', 'THRD', ''),
('THRD000014', 'Ultrapoly 30 tmavě šedá 888', 'ks', 'THRD', ''),
('THRD000015', 'Ultrapoly 30 desertní 1222', 'ks', 'THRD', ''),
('THRD000016', 'Ultrapoly 30 neon žlutá 115', 'ks', 'THRD', ''),
('THRD000017', 'Ultrapoly 30 foxy 273', 'ks', 'THRD', ''),
('THRD000018', 'Ultrapoly 30 khaki', 'ks', 'THRD', '');

-- --------------------------------------------------------

--
-- Struktura tabulky `stock_on_hand`
--

CREATE TABLE `stock_on_hand` (
  `part_number` varchar(10) NOT NULL,
  `description` varchar(50) NOT NULL,
  `qty` decimal(10,3) NOT NULL,
  `unit_code` varchar(5) NOT NULL,
  `location_code` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;

--
-- Vypisuji data pro tabulku `stock_on_hand`
--

INSERT INTO `stock_on_hand` (`part_number`, `description`, `qty`, `unit_code`, `location_code`) VALUES
('BRND000001', 'tkaná etiketa kos. černobílá Braasi Industry', 67.000, 'ks', 'DIL'),
('BRND000001', 'tkaná etiketa kos. černobílá Braasi Industry', 106.000, 'ks', 'SKL'),
('BRND000002', 'tkaná etiketa kos. černobílá Braasi Industry baby', 160.000, 'ks', 'DIL'),
('BRND000002', 'tkaná etiketa kos. černobílá Braasi Industry baby', 141.000, 'ks', 'SKL'),
('BRND000003', 'tkaná etiketa přežehlená černobílá B/IN', 163.000, 'ks', 'DIL'),
('BRND000003', 'tkaná etiketa přežehlená černobílá B/IN', 82.000, 'ks', 'SKL'),
('BRND000004', 'tkaná etiketa přežehlená úzká čepice', 132.000, 'ks', 'DIL'),
('BRND000004', 'tkaná etiketa přežehlená úzká čepice', 172.000, 'ks', 'SKL'),
('BRND000005', 'tkaná etiketa kosočtverec meděná Braasi Industry', 73.000, 'ks', 'DIL'),
('BRND000005', 'tkaná etiketa kosočtverec meděná Braasi Industry', 147.000, 'ks', 'SKL'),
('BRND000006', 'tkaná etiketa X-PAC', 183.000, 'ks', 'DIL'),
('BRND000006', 'tkaná etiketa X-PAC', 117.000, 'ks', 'SKL'),
('BRND000007', 'tkaná etiketa OUTLAST', 4.000, 'ks', 'DIL'),
('BRND000007', 'tkaná etiketa OUTLAST', 16.000, 'ks', 'SKL'),
('BRND000008', 'tkaná etiketa ROBE', 112.000, 'ks', 'DIL'),
('BRND000008', 'tkaná etiketa ROBE', 67.000, 'ks', 'SKL'),
('BRND000009', 'tkaná etiketa DIRECT', 8.000, 'ks', 'DIL'),
('BRND000009', 'tkaná etiketa DIRECT', 24.000, 'ks', 'SKL'),
('BRND000010', 'tkaná etiketa SEYFOR', 44.000, 'ks', 'DIL'),
('BRND000010', 'tkaná etiketa SEYFOR', 33.000, 'ks', 'SKL'),
('BRND000011', 'tkaná etiketa PPF/ BRAASI', 163.000, 'ks', 'DIL'),
('BRND000011', 'tkaná etiketa PPF/ BRAASI', 65.000, 'ks', 'SKL'),
('BRND000012', 'tkaná etiketa ČESKO DIGITAL', 78.000, 'ks', 'DIL'),
('BRND000012', 'tkaná etiketa ČESKO DIGITAL', 64.000, 'ks', 'SKL'),
('BRND000013', 'tkaná etiketa WE ARE PUBLICIS', 109.000, 'ks', 'DIL'),
('BRND000013', 'tkaná etiketa WE ARE PUBLICIS', 137.000, 'ks', 'SKL'),
('BRND000014', 'tkaná etiketa CLEVERHOOD', 13.000, 'ks', 'DIL'),
('BRND000014', 'tkaná etiketa CLEVERHOOD', 48.000, 'ks', 'SKL'),
('BRND000015', 'tkaná etiketa CLEVERHOOD/ BRAASI', 195.000, 'ks', 'DIL'),
('BRND000015', 'tkaná etiketa CLEVERHOOD/ BRAASI', 98.000, 'ks', 'SKL'),
('BRND000016', 'tkaná etiketa WINQS', 36.000, 'ks', 'DIL'),
('BRND000016', 'tkaná etiketa WINQS', 105.000, 'ks', 'SKL'),
('BRND000017', 'tkaná etiketa GARAGE 22', 82.000, 'ks', 'DIL'),
('BRND000017', 'tkaná etiketa GARAGE 22', 131.000, 'ks', 'SKL'),
('BRND000018', 'tkaná etiketa BEEFEATER', 34.000, 'ks', 'DIL'),
('BRND000018', 'tkaná etiketa BEEFEATER', 190.000, 'ks', 'SKL'),
('BRND000019', 'tkaná etiketa JOHNNIE WALKER', 22.000, 'ks', 'DIL'),
('BRND000019', 'tkaná etiketa JOHNNIE WALKER', 11.000, 'ks', 'SKL'),
('BRND000020', 'tkaná etiketa HORALKY', 71.000, 'ks', 'DIL'),
('BRND000020', 'tkaná etiketa HORALKY', 141.000, 'ks', 'SKL'),
('BRND000021', 'tkaná etiketa CANVA', 130.000, 'ks', 'DIL'),
('BRND000021', 'tkaná etiketa CANVA', 96.000, 'ks', 'SKL');

-- --------------------------------------------------------

--
-- Struktura tabulky `subcommodities`
--

CREATE TABLE `subcommodities` (
  `subcom_code` varchar(5) NOT NULL,
  `subcom_name` varchar(25) NOT NULL,
  `com_code` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;

--
-- Vypisuji data pro tabulku `subcommodities`
--

INSERT INTO `subcommodities` (`subcom_code`, `subcom_name`, `com_code`) VALUES
('', '', 'FBRK'),
('ASI', 'Látky Asie', 'FBRK'),
('CRD', 'Cordura', 'FBRK'),
('CTN', 'Bavlna', 'FBRK'),
('FNC', 'Funkční látky', 'FBRK'),
('FND', 'Podklad', 'FBRK'),
('LIN', 'Len', 'FBRK'),
('LNG', 'Podšívkovina', 'FBRK'),
('PAR', 'Padákovina', 'FBRK'),
('PES', 'Potisklý PES', 'FBRK'),
('PPS', 'Polyester', 'FBRK'),
('SUB', 'subcomname', 'BGPK'),
('TVK', 'Tyvek', 'FBRK'),
('WOL', 'Vlna', 'FBRK'),
('XPC', 'X-Pac', 'FBRK');

-- --------------------------------------------------------

--
-- Struktura tabulky `units`
--

CREATE TABLE `units` (
  `unit_code` varchar(5) NOT NULL,
  `unit_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;

--
-- Vypisuji data pro tabulku `units`
--

INSERT INTO `units` (`unit_code`, `unit_name`) VALUES
('ks', 'kus'),
('m', 'metr'),
('m2', 'metr čtvereční'),
('TEST', 'test1');

--
-- Indexy pro exportované tabulky
--

--
-- Indexy pro tabulku `commodities`
--
ALTER TABLE `commodities`
  ADD PRIMARY KEY (`com_code`);

--
-- Indexy pro tabulku `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`location_code`);

--
-- Indexy pro tabulku `material_list`
--
ALTER TABLE `material_list`
  ADD PRIMARY KEY (`part_number`),
  ADD UNIQUE KEY `description` (`description`),
  ADD KEY `fk_com_code_material_list` (`com_code`),
  ADD KEY `fk_subcom_code_material_list` (`subcom_code`),
  ADD KEY `fk_unit_code_material_list` (`unit_code`);

--
-- Indexy pro tabulku `stock_on_hand`
--
ALTER TABLE `stock_on_hand`
  ADD PRIMARY KEY (`part_number`,`location_code`),
  ADD KEY `fk_unit_code_soh` (`unit_code`),
  ADD KEY `fk_location_code_soh` (`location_code`),
  ADD KEY `fk_description_soh` (`description`);

--
-- Indexy pro tabulku `subcommodities`
--
ALTER TABLE `subcommodities`
  ADD PRIMARY KEY (`subcom_code`),
  ADD KEY `fk_com_code_subcommodities` (`com_code`);

--
-- Indexy pro tabulku `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`unit_code`);

--
-- Omezení pro exportované tabulky
--

--
-- Omezení pro tabulku `material_list`
--
ALTER TABLE `material_list`
  ADD CONSTRAINT `fk_com_code_material_list` FOREIGN KEY (`com_code`) REFERENCES `commodities` (`com_code`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_subcom_code_material_list` FOREIGN KEY (`subcom_code`) REFERENCES `subcommodities` (`subcom_code`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_unit_code_material_list` FOREIGN KEY (`unit_code`) REFERENCES `units` (`unit_code`) ON UPDATE CASCADE;

--
-- Omezení pro tabulku `stock_on_hand`
--
ALTER TABLE `stock_on_hand`
  ADD CONSTRAINT `fk_description_soh` FOREIGN KEY (`description`) REFERENCES `material_list` (`description`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_location_code_soh` FOREIGN KEY (`location_code`) REFERENCES `locations` (`location_code`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_part_number_soh` FOREIGN KEY (`part_number`) REFERENCES `material_list` (`part_number`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_unit_code_soh` FOREIGN KEY (`unit_code`) REFERENCES `units` (`unit_code`) ON UPDATE CASCADE;

--
-- Omezení pro tabulku `subcommodities`
--
ALTER TABLE `subcommodities`
  ADD CONSTRAINT `fk_com_code_subcommodities` FOREIGN KEY (`com_code`) REFERENCES `commodities` (`com_code`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
