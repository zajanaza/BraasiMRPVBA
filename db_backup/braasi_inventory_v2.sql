-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Počítač: 127.0.0.1
-- Vytvořeno: Stř 15. kvě 2024, 21:45
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
('aaa', 'aaa'),
('BAL', 'Baleni'),
('BAT', 'Batoh'),
('BRA', 'Branding'),
('ddd', 'test'),
('HAR', 'Hardware'),
('LAT', 'Latky'),
('new', 'newddd'),
('NIT', 'Nite'),
('POP', 'Popruh'),
('VYP', 'Vyplne');

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
('BAL00001', 'papírová karta příběh + označení batohu', 'ks', 'BAL', ''),
('BAL00002', 'igelitový pytel s logem', 'ks', 'BAL', ''),
('BAL00003', 'krabice 51x38x7', 'ks', 'BAL', ''),
('BAL00004', 'lepící páska Braasi Industry', 'm', 'BAL', ''),
('BAL00005', 'štítek Zásilkovna', 'ks', 'BAL', ''),
('BAL00006', 'štítek GLS', 'ks', 'BAL', ''),
('BRA00001', 'tkaná etiketa kosočtverec černobílá Braasi Industr', 'ks', 'BRA', ''),
('BRA00002', 'tkaná etiketa přežehlená černobílá B/IN', 'ks', 'BRA', ''),
('BRA00003', 'tkaná etiketa přežehlená úzká čepice', 'ks', 'BRA', ''),
('BRA00004', 'tkaná etiketa kosočtverec meděná Braasi Industry', 'ks', 'BRA', ''),
('BRA00005', 'tkaná etiketa ROBE', 'ks', 'BRA', ''),
('BRA00006', 'tkaná etiketa DIRECT', 'ks', 'BRA', ''),
('BRA00007', 'tkaná etiketa SEYFOR', 'ks', 'BRA', ''),
('BRA00008', 'tkaná etiketa PPF/ BRAASI', 'ks', 'BRA', ''),
('BRA00009', 'tkaná etiketa ČESKO DIGITAL', 'ks', 'BRA', ''),
('BRA00010', 'tkaná etiketa WE ARE PUBLICIS', 'ks', 'BRA', ''),
('BRA00011', 'tkaná etiketa CLEVERHOOD', 'ks', 'BRA', ''),
('BRA00012', 'tkaná etiketa CLEVERHOOD/ BRAASI', 'ks', 'BRA', ''),
('BRA00013', 'tkaná etiketa WINQS', 'ks', 'BRA', ''),
('BRA00014', 'tkaná etiketa GARAGE 22', 'ks', 'BRA', ''),
('BRA00015', 'tkaná etiketa BEEFEATER', 'ks', 'BRA', ''),
('BRA00016', 'tkaná etiketa JOHNNIE WALKER', 'ks', 'BRA', ''),
('BRA00017', 'tkaná etiketa HORALKY', 'ks', 'BRA', ''),
('BRA00018', 'tkaná etiketa CANVA', 'ks', 'BRA', ''),
('HAR00001', 'YKK samice 25 mm černá', 'ks', 'HAR', ''),
('HAR00002', 'YKK samec 25 mm černá', 'ks', 'HAR', ''),
('HAR00003', 'YKK samec 25 mm černá EVO', 'ks', 'HAR', ''),
('HAR00004', 'YKK samice 25 mm černá EVO', 'ks', 'HAR', ''),
('HAR00005', 'YKK samice 20 mm černá', 'ks', 'HAR', ''),
('HAR00006', 'YKK samec 20 mm černá', 'ks', 'HAR', ''),
('HAR00007', 'YKK samec 16 mm černá', 'ks', 'HAR', ''),
('HAR00008', 'YKK samice 16 mm černá', 'ks', 'HAR', ''),
('HAR00009', 'YKK žebříček 16 mm černá', 'ks', 'HAR', ''),
('HAR00010', 'YKK žebříček 20 mm černá', 'ks', 'HAR', ''),
('HAR00011', 'YKK žebříček 25 mm černá', 'ks', 'HAR', ''),
('HAR00012', 'YKK žebříček 25 mm černá WICKER', 'ks', 'HAR', ''),
('HAR00013', 'YKK očko 18 mm černá', 'ks', 'HAR', ''),
('HAR00014', 'YKK očko 20 mm černá', 'ks', 'HAR', ''),
('HAR00015', 'YKK očko 25 mm černá', 'ks', 'HAR', ''),
('HAR00016', 'YKK očko 40 mm černá', 'ks', 'HAR', ''),
('HAR00017', 'YKK zip černý pogumovaný', 'ks', 'HAR', ''),
('HAR00018', 'YKK 5 zip černý reverzní', 'ks', 'HAR', ''),
('HAR00019', 'YKK jezdec 5E černá', 'ks', 'HAR', ''),
('HAR00020', 'YKK jezdec 5EJ černá', 'ks', 'HAR', ''),
('HAR00021', 'YKK klíčenka černá', 'ks', 'HAR', ''),
('HAR00022', 'YKK D-kroužek černá', 'ks', 'HAR', ''),
('HAR00023', 'YKK karabina černá', 'ks', 'HAR', ''),
('HAR00024', 'YKK trojzubec 50 mm černá (samec+samice)', 'ks', 'HAR', ''),
('HAR00025', 'YKK bikeroller přezka', 'ks', 'HAR', ''),
('HAR00026', 'YKK jezdec 5E bílý', 'ks', 'HAR', ''),
('HAR00027', 'YKK průvleky 20 mm', 'ks', 'HAR', ''),
('HAR00028', 'trojzubec 40 mm černá (samec+samice)', 'ks', 'HAR', ''),
('HAR00029', 'žebříček 40 mm černá CROSSBODY', 'ks', 'HAR', ''),
('HAR00030', 'YKK zip 28 cm žlutý', 'ks', 'HAR', ''),
('HAR00031', 'YKK zip 28 cm bílý', 'ks', 'HAR', ''),
('HAR00032', 'YKK zip kovový 18 cm černý', 'ks', 'HAR', ''),
('HAR00033', 'YKK zip kovový 18 cm bílý', 'ks', 'HAR', ''),
('HAR00034', 'zip kovový 18 cm černý', 'ks', 'HAR', ''),
('HAR00035', 'YKK zip spirálový reverzní 5 CI černá', 'ks', 'HAR', ''),
('HAR00036', 'Fidlock V-BUCKLE 20 mm jednostranně nastavitelná', 'ks', 'HAR', ''),
('HAR00037', 'Fidlock V-BUCKLE 25 mm jednostranně nastavitelná', 'ks', 'HAR', ''),
('HAR00038', 'Fidlock V-BUCKLE 40 LL 40 mm nastavitelná černá', 'ks', 'HAR', ''),
('HAR00039', 'Fidlock V-BUCKLE 40 SB 40 mm fix černá', 'ks', 'HAR', ''),
('HAR00040', 'Fidlock HOOK 40 belt LL', 'ks', 'HAR', ''),
('HAR00041', 'Fidlock přezka 20 mm stříbrná', 'ks', 'HAR', ''),
('HAR00042', 'Fidlock Stripe X3', 'ks', 'HAR', ''),
('HAR00043', 'Fidlock Coinstrap 15 mm na helmu', 'ks', 'HAR', ''),
('HAR00044', 'Fidlock SNAP špuntík samec M kulatá nízká černá', 'ks', 'HAR', ''),
('HAR00045', 'Fidlock SNAP špuntík samice M kulatá nízká černá', 'ks', 'HAR', ''),
('HAR00046', 'Fidlock SNAP samec S na gumičku', 'ks', 'HAR', ''),
('HAR00047', 'Fidlock SNAP samice S kulatá nízká černá', 'ks', 'HAR', ''),
('HAR00048', 'Fidlock SNAP male M 25 adjuster k rolce', 'ks', 'HAR', ''),
('HAR00049', 'Fidlock HOOK 20 na gumičku černá', 'ks', 'HAR', ''),
('HAR00050', 'WeTool kovový žebříček 20 mm černá', 'ks', 'HAR', ''),
('HAR00051', 'WeTool kovový žebříček 25 mm černá', 'ks', 'HAR', ''),
('HAR00052', 'WeTool kovový G-Hook 20 mm levá černá', 'ks', 'HAR', ''),
('HAR00053', 'WeTool kovový G-Hook 20 mm pravá černá', 'ks', 'HAR', ''),
('HAR00054', 'WeTool kovový G-Hook 25 mm levá černý', 'ks', 'HAR', ''),
('HAR00055', 'WeTool kovový H-Hook 25 mm černá', 'ks', 'HAR', ''),
('HAR00056', 'WeTool kovový karabina 20 mm černá', 'ks', 'HAR', ''),
('HAR00057', 'WeTool kovový protikus karabina 20 mm černá', 'ks', 'HAR', ''),
('HAR00058', 'WeTool kovová karabina obdélníková 20 mm černá', 'ks', 'HAR', ''),
('HAR00059', 'WeTool kovová karabina obdélníková 10 mm černá', 'ks', 'HAR', ''),
('HAR00060', 'WeTool kovová karabina otočná 20 mm černá', 'ks', 'HAR', ''),
('HAR00061', 'WeTool kovové D-očko 20 mm černá', 'ks', 'HAR', ''),
('HAR00062', 'titanová žabka 20 mm', 'ks', 'HAR', ''),
('HAR00063', 'PJ trojzubec 25 mm bílá (samec+samice)', 'ks', 'HAR', ''),
('HAR00064', 'PJ žebříček 25 mm bílá', 'ks', 'HAR', ''),
('HAR00065', 'PJ žebříček 20 mm bílá', 'ks', 'HAR', ''),
('HAR00066', 'PJ samec 20 mm bílá', 'ks', 'HAR', ''),
('HAR00067', 'PJ samice 20 mm bílá', 'ks', 'HAR', ''),
('HAR00068', 'PJ očko 20 mm bílá', 'ks', 'HAR', ''),
('HAR00069', 'PJ očko 20 mm černá', 'ks', 'HAR', ''),
('HAR00070', 'PJ očko 40 mm černá', 'ks', 'HAR', ''),
('HAR00071', 'PJ spona 20 mm bílá', 'ks', 'HAR', ''),
('HAR00072', 'PJ trojzubec 10 mm bílá (samec+samice)', 'ks', 'HAR', ''),
('HAR00073', 'PJ trojzubec 10 mm černá', 'ks', 'HAR', ''),
('HAR00074', 'PJ karabina 20 mm černá', 'ks', 'HAR', ''),
('HAR00075', 'PJ karabina 30 mm černá', 'ks', 'HAR', ''),
('HAR00076', 'PJ trojzubec 30 mm černá', 'ks', 'HAR', ''),
('HAR00077', 'PJ žebříček 40 mm černá', 'ks', 'HAR', ''),
('HAR00078', 'PJ D-kroužek černá 20 mm', 'ks', 'HAR', ''),
('HAR00079', 'Massag kovový zebříček 20 mm měděný', 'ks', 'HAR', ''),
('HAR00080', 'Massa kovový žebříček 20 mm černá', 'ks', 'HAR', ''),
('HAR00081', 'Metal clash hook', 'ks', 'HAR', ''),
('LAT00001', 'Kortexin černý', 'm', 'LAT', 'ASI'),
('LAT00002', 'Kortexin žlutý', 'm', 'LAT', 'ASI'),
('LAT00003', 'Kortexin bílý', 'm', 'LAT', 'ASI'),
('LAT00004', 'Kortexin červený', 'm', 'LAT', 'ASI'),
('LAT00005', 'Kortexin sv.šedá', 'm', 'LAT', 'ASI'),
('LAT00006', 'Kortexin hnědý', 'm', 'LAT', 'ASI'),
('LAT00007', 'Kortexin oranžový', 'm', 'LAT', 'ASI'),
('LAT00008', 'černý PES s PVC zátěrem', 'm', 'LAT', 'ASI'),
('LAT00009', 'žlutý PES s PVC zátěrem', 'm', 'LAT', 'ASI'),
('LAT00010', '3D tkanina', 'm', 'LAT', ''),
('LAT00011', 'Outlast', 'm', 'LAT', 'FUN'),
('LAT00012', 'Ubeon žlutá', 'm', 'LAT', 'PODS'),
('LAT00013', 'Ubeon světle šedá', 'm', 'LAT', 'PODS'),
('LAT00014', 'Ubeon modrá', 'm', 'LAT', 'PODS'),
('LAT00015', 'Ubeon se zátěrem bílá', 'm', 'LAT', 'PODS'),
('LAT00016', 'Ulsedan zářivě žlutá', 'm', 'LAT', 'PODS'),
('LAT00017', 'Ulsedan zářivě oranžová', 'm', 'LAT', 'PODS'),
('LAT00018', 'Ulsedan modrá', 'm', 'LAT', 'PODS'),
('LAT00019', 'Ulsedan černá', 'm', 'LAT', 'PODS'),
('LAT00020', 'Ulsedan zelená plzeňská', 'm', 'LAT', 'PODS'),
('LAT00021', 'Ulsedan červená', 'm', 'LAT', 'PODS'),
('LAT00022', 'Ulsedan fialová', 'm', 'LAT', 'PODS'),
('LAT00023', 'Uzaron fialová', 'm', 'LAT', 'PODS'),
('LAT00024', 'Uzaron červená', 'm', 'LAT', 'PODS'),
('LAT00025', 'Uzaron růžová', 'm', 'LAT', 'PODS'),
('LAT00026', 'Uzaron žlutá', 'm', 'LAT', 'PODS'),
('LAT00027', 'Uzaron královská modrá', 'm', 'LAT', 'PODS'),
('LAT00028', 'Uzaron černá', 'm', 'LAT', 'PODS'),
('LAT00029', 'Ubeon zelená', 'm', 'LAT', 'PODS'),
('LAT00030', 'Padákovina černá', 'm', 'LAT', 'PAD'),
('LAT00031', 'Padákovina khaki', 'm', 'LAT', 'PAD'),
('LAT00032', 'Padákovina stříbrná', 'm', 'LAT', 'PAD'),
('LAT00033', 'Padákovina navy', 'm', 'LAT', 'PAD'),
('LAT00034', 'Cordura CZ 1100 černá PU zátěr', 'm', 'LAT', 'COR'),
('LAT00035', 'Cordura CZ 1100 khaki PU zátěr', 'm', 'LAT', 'COR'),
('LAT00036', 'Cordura DE 1100 černá AC zátěr', 'm', 'LAT', 'COR'),
('LAT00037', 'Cordura DE 1100 navy AC zátěr', 'm', 'LAT', 'COR'),
('LAT00038', 'Cordura DE 1100 oranžová AC zátěr', 'm', 'LAT', 'COR'),
('LAT00039', 'Cordura DE 1100 červená AC zátěr', 'm', 'LAT', 'COR'),
('LAT00040', 'Cordura DE 1100 modrá AC zátěr', 'm', 'LAT', 'COR'),
('LAT00041', 'Cordura DE 1100 žlutá AC zátěr', 'm', 'LAT', 'COR'),
('LAT00042', 'Cordura DE 1100 ecru AC zátěr', 'm', 'LAT', 'COR'),
('LAT00043', 'Cordura DE 1100 tmavě šedá AC zátěr', 'm', 'LAT', 'COR'),
('LAT00044', 'Cordura DE 1100 khaki AC zátěr', 'm', 'LAT', 'COR'),
('LAT00045', 'Cordura DE 1100 kávová AC zátěr', 'm', 'LAT', 'COR'),
('LAT00046', 'Cordura Belgická \"UKORET\" 1100 černá', 'm', 'LAT', 'COR'),
('LAT00047', 'Cordura DE 1100 trávově zelená AC zátěr', 'm', 'LAT', 'COR'),
('LAT00048', 'Cordura DE 1100 coyote AC zátěr', 'm', 'LAT', 'COR'),
('LAT00049', 'Cordura DE 1100 jarní zelená AC zátěr', 'm', 'LAT', 'COR'),
('LAT00050', 'Cordura DE 1100 tan AC zátěr', 'm', 'LAT', 'COR'),
('LAT00051', 'Cordura DE 1100 akvamarin AC zátěr', 'm', 'LAT', 'COR'),
('LAT00052', 'Cordura DE 1100 khaki PVC zátěr', 'm', 'LAT', 'COR'),
('LAT00053', 'Cordura DE 1100 šedá AC zátěr', 'm', 'LAT', 'COR'),
('LAT00054', 'Cordura DE 1100 fialová AC zátěr', 'm', 'LAT', 'COR'),
('LAT00055', 'Cordura DE 1100 zlatá AC zátěr', 'm', 'LAT', 'COR'),
('LAT00056', 'Cordura DE 1100 tmavě zelená AC zátěr', 'm', 'LAT', 'COR'),
('LAT00057', 'Cordura DE 1100 armádní zelená AC zátěr', 'm', 'LAT', 'COR'),
('LAT00058', 'Cordura DE 1100 olivově zelená AC zátěr', 'm', 'LAT', 'COR'),
('LAT00059', 'Cordura DE 1100 růžová AC zátěr', 'm', 'LAT', 'COR'),
('LAT00060', 'Cordura CZ 500 černá PU zátěr', 'm', 'LAT', 'COR'),
('LAT00061', 'Cordura DE 500 černá PU zátěr', 'm', 'LAT', 'COR'),
('LAT00062', 'Cordura DE 500 navy AC zátěr', 'm', 'LAT', 'COR'),
('LAT00063', 'Cordura DE 500 oranžová AC zátěr', 'm', 'LAT', 'COR'),
('LAT00064', 'Cordura DE 500 žlutá AC zátěr', 'm', 'LAT', 'COR'),
('LAT00065', 'Cordura DE 500 bílá AC zátěr', 'm', 'LAT', 'COR'),
('LAT00066', 'Cordura DE 500 světle modrá AC zátěr', 'm', 'LAT', 'COR'),
('LAT00067', 'Cordura DE 500 šedá AC zátěr', 'm', 'LAT', 'COR'),
('LAT00068', 'Cordura DE 500 šedá/zelená AC zátěr', 'm', 'LAT', 'COR'),
('LAT00069', 'Cordura DE 500 hnědá AC zátěr', 'm', 'LAT', 'COR'),
('LAT00070', 'Cordura DE 500 zářivě žlutá AC zátěr', 'm', 'LAT', 'COR'),
('LAT00071', 'Cordura DE 500 blankytně modrá AC zátěr', 'm', 'LAT', 'COR'),
('LAT00072', 'Cordura DE 500 světle šedá AC zátěr', 'm', 'LAT', 'COR'),
('LAT00073', 'Cordura DE 500 červená AC zátěr', 'm', 'LAT', 'COR'),
('LAT00074', 'Cordura DE 500 khaki AC zátěr', 'm', 'LAT', 'COR'),
('LAT00075', 'Cordura DE 500 vínová AC zátěr', 'm', 'LAT', 'COR'),
('LAT00076', 'Cordura DE 500 šedá ocelová AC zátěr', 'm', 'LAT', 'COR'),
('LAT00077', 'Cordura DE 500 tan AC zátěr', 'm', 'LAT', 'COR'),
('LAT00078', 'Xpac VX21 black', 'm', 'LAT', 'AME'),
('LAT00079', 'Xpac VX21 purple', 'm', 'LAT', 'AME'),
('LAT00080', 'Xpac VX21 yellow', 'm', 'LAT', 'AME'),
('LAT00081', 'Xpac VX21 white', 'm', 'LAT', 'AME'),
('LAT00082', 'Xpac RX36/DWR black', 'm', 'LAT', 'AME'),
('LAT00083', 'Xpac RX36/DWR white', 'm', 'LAT', 'AME'),
('LAT00084', 'Xpac RX30/DWR black', 'm', 'LAT', 'AME'),
('LAT00085', 'Xpac RX15/DWR white', 'm', 'LAT', 'AME'),
('LAT00086', 'Xpac VX21 RIPSTOP black', 'm', 'LAT', 'AME'),
('LAT00087', 'Patrik Antzcak tisk', 'm', 'LAT', 'PES'),
('LAT00088', 'Paperjoe tisk', 'm', 'LAT', 'PES'),
('LAT00089', 'Bavlna CZ černá', 'm', 'LAT', 'BAV'),
('LAT00090', 'Bavlna IT impregnace černá', 'm', 'LAT', 'BAV'),
('LAT00091', 'Bavlna IT oranžová', 'm', 'LAT', 'BAV'),
('LAT00092', 'Bavlna CZ khaki', 'm', 'LAT', 'BAV'),
('LAT00093', 'Bavlna IT přírodní', 'm', 'LAT', 'BAV'),
('LAT00094', 'Bavlna CZ přírodn', 'm', 'LAT', 'BAV'),
('LAT00095', 'Bavlna CZ žlutá', 'm', 'LAT', 'BAV'),
('LAT00096', 'Bavlna CZ tmavě žlutá', 'm', 'LAT', 'BAV'),
('LAT00097', 'Bavlna CZ magenta', 'm', 'LAT', 'BAV'),
('LAT00098', 'Bavlna CZ modrá', 'm', 'LAT', 'BAV'),
('LAT00099', 'Bavlna England (monocle) khaki', 'm', 'LAT', 'BAV'),
('LAT00100', 'Bavlna England (monocle) navy', 'm', 'LAT', 'BAV'),
('LAT00101', 'podložení molitanu záda', 'm', 'LAT', 'PODK'),
('LAT00102', 'SILK 0842 černá', 'm', 'LAT', 'KUZ'),
('LAT00103', 'SILK 0250 rezavá', 'm', 'LAT', 'KUZ'),
('LAT00104', 'VENICE 64080 Albiocca tělová', 'm', 'LAT', 'KUZ'),
('LAT00105', 'VENICE 64100 Black černá', 'm', 'LAT', 'KUZ'),
('LAT00106', 'VENICE 64030 Ecrú písková', 'm', 'LAT', 'KUZ'),
('LAT00107', 'VENICE 64150 Pervinca lila', 'm', 'LAT', 'KUZ'),
('LAT00108', 'VENICE 64150 Cloud Pink nude', 'm', 'LAT', ''),
('LAT00109', 'VENICE 64110 Corallo lososová', 'm', 'LAT', ''),
('LAT00110', 'VENICE 64040 Cappuccino bílá káva', 'm', 'LAT', 'KUZ'),
('NIT00001', 'Ultrapoly 30 černá 999', 'ks', 'NIT', ''),
('NIT00002', 'Ultrapoly 30 modrá 549', 'ks', 'NIT', ''),
('NIT00003', 'Ultrapoly 30 světle šedá 882', 'ks', 'NIT', ''),
('NIT00004', 'Ultrapoly 30 žlutá 125', 'ks', 'NIT', ''),
('NIT00005', 'Ultrapoly 30 královská modrá 556', 'ks', 'NIT', ''),
('NIT00006', 'Ultrapoly 30 zářivě růžová 345', 'ks', 'NIT', ''),
('NIT00007', 'Ultrapoly 30 neon oranžová 215', 'ks', 'NIT', ''),
('NIT00008', 'Ultrapoly 30 bílá 001', 'ks', 'NIT', ''),
('NIT00009', 'Ultrapoly 30 modrá podšívka 658', 'ks', 'NIT', ''),
('NIT00010', 'Ultrapoly 30 fialová 458', 'ks', 'NIT', ''),
('NIT00011', 'Ultrapoly 30 přírodní 710', 'ks', 'NIT', ''),
('NIT00012', 'Ultrapoly 30 vínová 344', 'ks', 'NIT', ''),
('NIT00013', 'Ultrapoly 30 červená 337', 'ks', 'NIT', ''),
('NIT00014', 'Ultrapoly 30 tmavě šedá 888', 'ks', 'NIT', ''),
('NIT00015', 'Ultrapoly 30 desertní 1222', 'ks', 'NIT', ''),
('NIT00016', 'Ultrapoly 30 neon žlutá 115', 'ks', 'NIT', ''),
('NIT00017', 'Ultrapoly 30 foxy 273', 'ks', 'NIT', ''),
('POP00001', 'poporuh černý PAD 10 mm', 'm', 'POP', ''),
('POP00002', 'popruh černý PAD 16 mm', 'm', 'POP', ''),
('POP00003', 'popruh černý PAD 20 mm', 'm', 'POP', ''),
('POP00004', 'popruh černý PAD 25 mm', 'm', 'POP', ''),
('POP00005', 'popruh černý PAD 40 mm', 'm', 'POP', ''),
('POP00006', 'lemovka černá PAD 25 mm', 'm', 'POP', ''),
('POP00007', 'lemovka černá PES 25 mm', 'm', 'POP', ''),
('POP00008', 'pruženka černá 25 mm', 'm', 'POP', ''),
('POP00009', 'popruh černý PES 10 mm', 'm', 'POP', ''),
('POP00010', 'popruh černý PES 16 mm', 'm', 'POP', ''),
('POP00011', 'popruh černý PES 20 mm', 'm', 'POP', ''),
('POP00012', 'popruh černý PES 25 mm', 'm', 'POP', ''),
('POP00013', 'popruh černý PES 55 mm', 'm', 'POP', ''),
('POP00014', 'popruh černý bavlna 20 mm', 'm', 'POP', ''),
('POP00015', 'popruh bílý PAD 10 mm', 'm', 'POP', ''),
('POP00016', 'popruh bílý PAD 20 mm', 'm', 'POP', ''),
('POP00017', 'popruh bílý PAD 25 mm', 'm', 'POP', ''),
('POP00018', 'popruh přírodní bavlna 20 mm', 'm', 'POP', ''),
('POP00019', 'popruh přírodní bavlna 30 mm', 'm', 'POP', ''),
('POP00020', 'popruh modrý PAD 10 mm', 'm', 'POP', ''),
('POP00021', 'popruh modrý PAD 20 mm', 'm', 'POP', ''),
('POP00022', 'popruh modrý PAD 25 mm', 'm', 'POP', ''),
('POP00023', 'popruh modrý bavlna 40 mm', 'm', 'POP', ''),
('POP00024', 'popruh oranžový reflexní PAD 16 mm', 'm', 'POP', ''),
('POP00025', 'popruh oranžový reflexní PAD 20 mm', 'm', 'POP', ''),
('POP00026', 'popruh oranžový tmavě PAD 20 mm', 'm', 'POP', ''),
('POP00027', 'popruh červený PAD 10 mm', 'm', 'POP', ''),
('POP00028', 'popruh červený PAD 20 mm', 'm', 'POP', ''),
('POP00029', 'popruh červený PAD 25 mm', 'm', 'POP', ''),
('POP00030', 'popruh zelený reflexní PAD 10 mm', 'm', 'POP', ''),
('POP00031', 'popruh žlutý PAD 10 mm', 'm', 'POP', ''),
('POP00032', 'popruh šedý PAD 10 mm', 'm', 'POP', ''),
('POP00033', 'popruh béžový PAD 20 mm', 'm', 'POP', ''),
('POP00034', 'popruh fialový PAD 20 mm', 'm', 'POP', ''),
('POP00035', 'popruh kaki bavlna 34 mm', 'm', 'POP', ''),
('POP00036', 'popruh pruhovaný č,o,z,m,ž 25 mm', 'm', 'POP', ''),
('POP00037', 'popruh pruhovaný š,f,š 30 mm', 'm', 'POP', ''),
('POP00038', 'pryžové vlákno černá PES', 'm', 'POP', ''),
('POP00039', 'gumolano červené 4mm', 'm', 'POP', ''),
('POP00040', 'oděvní vázačka bílý PES 3,5mm', 'm', 'POP', ''),
('POP00041', 'oděvní vázačka černý PES 3,5 mm', 'm', 'POP', ''),
('POP00042', 'oděvní vázačka žlutý PES 3,5 mm', 'm', 'POP', ''),
('POP00043', 'paracorde modrá  3,5 mm', 'm', 'POP', ''),
('POP00044', 'paracorde červený 3,5 mm', 'm', 'POP', ''),
('POP00045', 'paracorde černý 3,5 mm', 'm', 'POP', ''),
('POP00046', 'automobilové pásy 45mm', 'm', 'POP', ''),
('POP00047', 'dutinka zlatá 20 mm', 'm', 'POP', ''),
('POP00048', 'suché zipy 10 mm háček', 'm', 'POP', ''),
('POP00049', 'suché zipy 10 mm plyš', 'm', 'POP', ''),
('POP00050', 'suché zipy 25 mm háček', 'm', 'POP', ''),
('POP00051', 'suché zipy 25 mm plyš', 'm', 'POP', ''),
('POP00052', 'suché zipy 30 mm háček', 'm', 'POP', ''),
('POP00053', 'suché zipy 30 mm plyš', 'ks', 'POP', ''),
('POP00054', 'prsní zavírání pytel 20mm*600mm', 'ks', 'POP', ''),
('POP00055', 'horní lem pytel 20mm*930mm', 'ks', 'POP', ''),
('TEST', 'balení sedm', 'ks', 'BAL', ''),
('TEST10', 'balení sedm', 'ks', 'BAL', ''),
('TEST2', 'balení sedm', 'ks', 'BAL', ''),
('TEST3', 'balení sedm', 'ks', 'BAL', ''),
('TEST5', 'balení sedm', 'ks', 'BAL', ''),
('TEST6', 'balení sedm', 'ks', 'BAL', ''),
('TEST7', 'balení sedm', 'ks', 'BAL', ''),
('TEST8', 'balení sedm', 'ks', 'BAL', ''),
('TEST9', 'balení sedm', 'ks', 'BAL', ''),
('VYP00001', 'Molitan 2 cm', 'm', 'VYP', ''),
('VYP00002', 'EVA pěna 10 mm', 'm', 'VYP', ''),
('VYP00003', 'Eva pěna 6 mm', 'm', 'VYP', ''),
('VYP00004', 'Eva pěna 2 mm', 'm', 'VYP', '');

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
('', 'Not defined', 'LAT'),
('AME', 'Amerika', 'LAT'),
('ASI', 'Latky Asie', 'LAT'),
('BAV', 'Bavlna', 'LAT'),
('COR', 'Cordura', 'LAT'),
('FUN', 'Funkcni latky', 'LAT'),
('KUZ', 'Kuze', 'LAT'),
('PAD', 'Padakovina', 'LAT'),
('PES', 'Potiskly PES', 'LAT'),
('PODK', 'Podklad', 'LAT'),
('PODS', 'Podsivkovina', 'LAT');

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
('aaa', 'aaa'),
('abc', 'sssd'),
('cod', 'codigo'),
('ert', 'ert'),
('km', 'kilometr'),
('km2', 'kilometr2'),
('km3', 'kilometr3'),
('km4', 'kilometr3'),
('km5', 'kilometr5'),
('km6', 'kilometr5'),
('km7', 'ksks'),
('ks', 'kus'),
('m', 'metr'),
('new', 'newaa'),
('qqq', 'qqq'),
('roll', 'role'),
('sss', 'sss'),
('uuu', 'uuu');

--
-- Indexy pro exportované tabulky
--

--
-- Indexy pro tabulku `commodities`
--
ALTER TABLE `commodities`
  ADD PRIMARY KEY (`com_code`);

--
-- Indexy pro tabulku `material_list`
--
ALTER TABLE `material_list`
  ADD PRIMARY KEY (`part_number`),
  ADD KEY `fk_com_code_material_list` (`com_code`),
  ADD KEY `fk_subcom_code_material_list` (`subcom_code`),
  ADD KEY `fk_unit_code_material_list` (`unit_code`);

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
-- Omezení pro tabulku `subcommodities`
--
ALTER TABLE `subcommodities`
  ADD CONSTRAINT `fk_com_code_subcommodities` FOREIGN KEY (`com_code`) REFERENCES `commodities` (`com_code`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
