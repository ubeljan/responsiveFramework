-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Gegenereerd op: 09 jun 2018 om 13:56
-- Serverversie: 5.7.22-0ubuntu0.16.04.1
-- PHP-versie: 7.2.5-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `responsiveframework_ci3`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `git_basis`
--

CREATE TABLE `git_basis` (
  `id` int(11) NOT NULL,
  `naam` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adres` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `woonplaats` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefoon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `git_basis`
--

INSERT INTO `git_basis` (`id`, `naam`, `adres`, `pc`, `woonplaats`, `telefoon`, `email`, `titel`, `email2`) VALUES
(1, 'Responsive Framework', 'Straat 1', '1234 AA', 'Enschede', '053 431 78 76', 'info@responsiveframework.nl', 'Responsive Framework', 'info@responsiveframework.nl');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `git_footer`
--

CREATE TABLE `git_footer` (
  `id` int(11) NOT NULL,
  `datum` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `tekst` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `git_footer`
--

INSERT INTO `git_footer` (`id`, `datum`, `tekst`) VALUES
(1, '2017-06-20 10:37:15', '<p> © 2017 <a title=\"vanWijhe.Web\" href=\"http://www.vanwijheweb.nl/\" target=\"_blank\">vanWijhe.Web</a></p>');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `git_header`
--

CREATE TABLE `git_header` (
  `id` int(11) NOT NULL,
  `charset` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `copyright` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `robots` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisit_after` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `git_header`
--

INSERT INTO `git_header` (`id`, `charset`, `author`, `copyright`, `robots`, `owner`, `revisit_after`, `description`, `keywords`) VALUES
(1, 'UTF-8', 'Ubel Jan van Wijhe', 'van Wijhe Consultancy', 'index, follow', 'Ubel Jan van Wijhe', '1 week', 'Responsive Framework is de basis voor elke website', 'Responsive, Framework, basis, website, vanwijhecons, vanwijheweb');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `git_niv1`
--

CREATE TABLE `git_niv1` (
  `id` int(11) NOT NULL,
  `naam` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menunaam` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `onder_boven` int(11) NOT NULL DEFAULT '0',
  `online` int(11) NOT NULL,
  `datum_in` date NOT NULL,
  `datum_uit` date NOT NULL,
  `volgorde` int(11) NOT NULL,
  `tekst` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `omschrijving` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sleutelwoorden` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `git_niv1`
--

INSERT INTO `git_niv1` (`id`, `naam`, `menunaam`, `onder_boven`, `online`, `datum_in`, `datum_uit`, `volgorde`, `tekst`, `omschrijving`, `sleutelwoorden`) VALUES
(1, 'Over Responsive Framework', 'over_responsive_framework', 1, 1, '2014-11-03', '2054-11-30', 1, '<p>Responsive is een hedendaags toverwoord.</p>\r\n<p>&nbsp;</p>\r\n<p>Websites dienen responsive te zijn. Dus meeschalen met de scherm grootte van het te gebruiken apparaat.</p>\r\n<p>&nbsp;</p>\r\n<p>Daar kun je tegenwoordig op het Internet veel frameworks voor vinden. Het nadeel van veel van deze frameworks is, dat ze groot zijn en veel zelf willen bepalen. Een ander nadeel is veelal dat je ze eerst volledig eigen moet maken voordat je ze goed gebruiken kunt. Dat kan soms een steile leercurve zijn.</p>\r\n<p>&nbsp;</p>\r\n<p>Ik vroeg mij dan ook af of dat nodig is?</p>\r\n<p>En wat heeft een responsive website nu eigenlijk minimaal nodig? Welke technieken worden er gebruikt?</p>\r\n<p>Zou het mogelijk zijn om deze technieken puur te gebruiken en dan zelf verder uit te breiden?</p>\r\n<p>&nbsp;</p>\r\n<p>Dan blijkt dat er niet zoveel technieken er zijn. En deze technieken zijn allemaal te vinden op <a title=\"Github\" href=\"https://github.com/\">Github</a>.</p>\r\n<p>Als je deze technieken combineert tot &eacute;&eacute;n pakket, heb je Responsive Framework.</p>\r\n<p>Een framework welke klein en snel is en weinig resources gebruikt.</p>\r\n<p>&nbsp;</p>\r\n<p>Deze website is gemaakt met o.a. Responsive Framework.</p>', 'Over Responsive Framework', 'responsive,framework'),
(2, 'Bronnen', 'bronnen', 1, 1, '2014-11-03', '2054-11-30', 4, '<p>Deze pagina geeft de gebruikte componenten en hun Url\'s weer.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h2>CSS</h2>\r\n<p>&nbsp;</p>\r\n<p><strong>Basis</strong></p>\r\n<p>&nbsp;</p>\r\n<p><a href=\"https://necolas.github.io/normalize.css/\">Normalize.css</a><br />Makes browsers render all elements more consistently and in line with modern standards.</p>\r\n<p>&nbsp;</p>\r\n<p><a href=\"http://www.responsivegridsystem.com/\">Responsive Grid System</a><br />The Responsive Grid System is a quick, easy <span class=\"and\">&amp;</span> flexible way to create a responsive web site.</p>\r\n<p>&nbsp;</p>\r\n<p><a href=\"https://gist.github.com/bartholomej/8415655\">RespMediaQueries.css</a><br />CSS Media Query Cheat Sheet (with Foundation)</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Uitgebreid</strong></p>\r\n<p>&nbsp;</p>\r\n<p><a href=\"http://fontawesome.io/\">Font-awesome.css</a><br />The iconic font and CSS toolkit</p>\r\n<p>&nbsp;</p>\r\n<p><a href=\"https://github.com/AndreLion/mediaquery\">CSS Media Query Live Demo</a><br />CSS Media Query Cheat Sheet and Live Demo</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h2>Javascript</h2>\r\n<p>&nbsp;</p>\r\n<p><a href=\"http://www.jarallax.com/\">Jarallax</a><br />With Jarallax it\'s easy to create a parallax scrolling website.</p>\r\n<p>&nbsp;</p>\r\n<p><a href=\"https://www.smartmenus.org/\">Smartmenu</a><br />Advanced jQuery website menu plugin. Mobile first, responsive and accessible list-based website menus that work on all devices.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', 'Gebruikte bronnen Responsive Framework', 'Gebruikte bronnen, Responsive Framework'),
(12, 'Uitleg', 'uitleg', 1, 1, '2014-11-03', '2054-11-30', 3, '<p>De meeste responsive websites gebruiken een Cascading Style Sheet (CSS) opbouw welke uit minstens 2 gedeeltes bestaat. Het eerste gedeelte definieerd het responsive grid systeem en het tweede gedeelte defineert de media queries.</p>\r\n<p>&nbsp;</p>\r\n<p>Responsive grid</p>\r\n<pre class=\"language-css\"><code>/*  GRID OF TWO   ============================ */\r\n.span_2_of_2 {\r\n	width: 100%;\r\n}\r\n.span_1_of_2 {\r\n	width: 49.2%;\r\n}</code></pre>\r\n<p>Het responsive grid systeem bepaalt de blokken structuur en wanneer ze onder elkaar schuiven. De structuur kan uit een aantal horizontale blokken bestaan. Per rij kan dit een verschillend aantal zijn.</p>\r\n<p>&nbsp;</p>\r\n<p>Media queries</p>\r\n<pre class=\"language-css\"><code>/* max-width  480 ======================================== */\r\n@media only screen and (max-width: 480px) {\r\n   .col { color: Black ; padding:0 8px 0 8px; ; margin:0; 	}\r\n    h1 { font-size: 1.8rem; line-height: 1; letter-spacing: -.1rem; color: #555555 ; padding: 10px 0 10px 0; margin: 0; }\r\n    h2 { font-size: 1.6rem; line-height: 1; letter-spacing: -.1rem; color: #555555 ; padding: 10px 0 10px 0; margin: 0; }  \r\n    p { font-size: 10pt; }  \r\n}\r\n\r\n/* min-width 480   &lt;-&gt;  max-width: 768 =================== */\r\n@media only screen and (min-width: 480px) and (max-width: 768px) {\r\n   .col { color: Black ; }\r\n}\r\n\r\n/* min-width 768   &lt;-&gt;  max-width: 1024 ================== */\r\n@media only screen and (min-width: 768px) and (max-width: 1024px) { \r\n   .col { color: Black ;	}\r\n}\r\n\r\n/* min-width  1024 ======================================= */\r\n@media only screen and (min-width: 1024px) {\r\n   .col { color: Black ; }	\r\n}\r\n</code></pre>\r\n<p>De media queries bepalen de eigenschappen van de indivuduele blokken binnen een aantal breedtes. Deze breedtes kun je zelf bepalen maar handiger is om de afmetingen van de gebruikte breedtes binnen de te gebruiken apparaten aan te houden. Dat betekent telefoons, tablets en desktops.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', 'Uitleg Responsive Framework', 'Uitleg, Responsive Framework'),
(13, 'Waarom', 'waarom', 0, 1, '2018-06-01', '2088-06-01', 2, '<p>Tja waarom?</p>\r\n<p>Waarom een nieuw Responsive Framework?</p>\r\n<p>&nbsp;</p>\r\n<p>Eigenlijk is hij niet nieuw.</p>\r\n<p>Het enige wat ik gedaan heb, is een aantal bestaande technieken bij elkaar zetten. En in een bepaalde volgorde.</p>\r\n<p>Om zo de basis te leggen voor een willekeurig Responsive Website.</p>\r\n<p>En dat had ik nog niet gevonden.</p>\r\n<p>&nbsp;</p>\r\n<p>Bestaande Responsive Frameworks zijn erg uitgebreid.</p>\r\n<p>Ze kunnen veel, maar kunnen ze niet teveel?</p>\r\n<p>Stel als je alleen een basis nodig hebt en je wilt je eigen stijlen schrijven?</p>\r\n<p>&nbsp;</p>\r\n<p>Dan heb je iets aan dit Responsive Framework.</p>\r\n<p>Dan kun jezelf helemaal uitleven.</p>\r\n<p>Ik zou zeggen: Leef je uit.</p>', 'waarom Responsive Framework', '');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `git_niv2`
--

CREATE TABLE `git_niv2` (
  `id` int(11) NOT NULL,
  `naam` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menunaam` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_niv1` int(11) NOT NULL,
  `online` int(11) NOT NULL,
  `datum_in` date NOT NULL,
  `datum_uit` date NOT NULL,
  `volgorde` int(11) NOT NULL,
  `tekst` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `omschrijving` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sleutelwoorden` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `git_niv2`
--

INSERT INTO `git_niv2` (`id`, `naam`, `menunaam`, `id_niv1`, `online`, `datum_in`, `datum_uit`, `volgorde`, `tekst`, `omschrijving`, `sleutelwoorden`) VALUES
(2, 'Normalize', 'normalize', 12, 1, '2018-01-19', '2118-01-20', 1, '<p>Normalize.css zorgt ervoor dat browsers alle elementen consistenter weergeven en in overeenstemming zijn met moderne standaarden. Het richt zich met name op de stijlen die moeten worden genormaliseerd.</p>\r\n<p>&nbsp;</p>\r\n<pre class=\"language-css\"><code>/* Document\r\n   ========================================================================== */\r\n\r\n/**\r\n * 1. Correct the line height in all browsers.\r\n * 2. Prevent adjustments of font size after orientation changes in\r\n *    IE on Windows Phone and in iOS.\r\n */\r\n\r\nhtml {\r\n  line-height: 1.15; /* 1 */\r\n  -ms-text-size-adjust: 100%; /* 2 */\r\n  -webkit-text-size-adjust: 100%; /* 2 */\r\n}\r\n\r\n/* Sections\r\n   ========================================================================== */\r\n\r\n/**\r\n * Remove the margin in all browsers (opinionated).\r\n */\r\n\r\nbody {\r\n  margin: 0;\r\n}\r\n\r\n/**\r\n * Add the correct display in IE 9-.\r\n */\r\n\r\narticle,\r\naside,\r\nfooter,\r\nheader,\r\nnav,\r\nsection {\r\n  display: block;\r\n}</code></pre>', '', ''),
(3, 'Responsive grid', 'responsive_grid', 12, 1, '2018-01-19', '2088-01-20', 2, '<p>Responsive grid bepaalt de afmetingen van het grid waar alle blokken content in geplaatst worden.</p>\r\n<p>Deze opstapeling van blokken kan verschuiven naarmater er minder ruimte op het scherm is.</p>\r\n<p>&nbsp;</p>\r\n<pre class=\"language-css\"><code>/*  SECTIONS  ============================================================================= */\r\n\r\n.section {\r\n	clear: both;\r\n	padding: 0px;\r\n	margin: 0px auto;\r\n	max-width: 1200px;\r\n}\r\n\r\n/*  GROUPING  ============================================================================= */\r\n\r\n\r\n.group:before,\r\n.group:after {\r\n    content:\"\";\r\n    display:table;\r\n}\r\n.group:after {\r\n    clear:both;\r\n}\r\n.group {\r\n    zoom:1; /* For IE 6/7 (trigger hasLayout) */\r\n}\r\n\r\n/*  GRID COLUMN SETUP   ==================================================================== */\r\n\r\n.col {\r\n	display: block;\r\n	float:left;\r\n	margin: 1% 0 1% 1.6%;\r\n}\r\n\r\n.col:first-child { margin-left: 0; } /* all browsers except IE6 and lower */\r\n\r\n\r\n/*  REMOVE MARGINS AS ALL GO FULL WIDTH AT 480 PIXELS */\r\n\r\n@media only screen and (max-width: 480px) {\r\n	.col { \r\n		margin: 1% 0 1% 0%;\r\n	}\r\n}\r\n\r\n/*  GRID OF TWO   ============================================================================= */\r\n\r\n\r\n.span_2_of_2 {\r\n	width: 100%;\r\n}\r\n\r\n.span_1_of_2 {\r\n	width: 49.2%;\r\n}\r\n\r\n/*  GO FULL WIDTH AT LESS THAN 480 PIXELS */\r\n\r\n@media only screen and (max-width: 480px) {\r\n	.span_2_of_2 {\r\n		width: 100%; \r\n	}\r\n	.span_1_of_2 {\r\n		width: 100%; \r\n	}\r\n}\r\n\r\n/*  GRID OF THREE   ============================================================================= */\r\n\r\n	\r\n.span_3_of_3 {\r\n	width: 100%; \r\n}\r\n\r\n.span_2_of_3 {\r\n	width: 66.13%; \r\n}\r\n\r\n.span_1_of_3 {\r\n	width: 32.26%; \r\n}\r\n\r\n\r\n/*  GO FULL WIDTH AT LESS THAN 480 PIXELS */\r\n\r\n@media only screen and (max-width: 480px) {\r\n	.span_3_of_3 {\r\n		width: 100%; \r\n	}\r\n	.span_2_of_3 {\r\n		width: 100%; \r\n	}\r\n	.span_1_of_3 {\r\n		width: 100%;\r\n	}\r\n}</code></pre>\r\n<p>&nbsp;</p>', '', ''),
(4, 'Responsive Framework', 'responsive_framework', 12, 1, '2018-01-18', '2088-01-20', 3, '<p>Responsive Framework is de basis van de website voor alle stylen welke niet met responsive te maken hebben.</p>\r\n<p>&nbsp;</p>\r\n<pre class=\"language-css\"><code>* { -webkit-box-sizing: border-box; -moz-box-sizing: border-box; box-sizing: border-box; }\r\nhtml { overflow-y: scroll;  padding: 0;margin: 0; }\r\n\r\n/* Base Styles\r\n&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash; */\r\nbody { font-size: 11pt; line-height: 1.6;  font-weight: 400; font-family: \"Raleway\", \"HelveticaNeue\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; color: #222; }\r\n\r\n/* Typography\r\n&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash; */\r\nh1, h2, h3, h4, h5, h6 { margin-top: 0; margin-bottom: 10px;  font-weight: bold; }\r\nh1 { font-size: 2.5rem; line-height: 1; letter-spacing: -.1rem; color: #555555 ; }\r\nh2 { font-size: 2.0rem; line-height: 1; letter-spacing: -.1rem; color: #555555 ; font-weight: bold;}\r\nh3 { font-size: 1.5rem; line-height: 1; letter-spacing: -.1rem; color: #555555 ; }\r\nh4 { font-size: 1.4rem; line-height: 1; letter-spacing: -.08rem; color: #555555 ; }\r\nh5 { font-size: 1.3rem; line-height: 1; letter-spacing: -.05rem; color: #555555 ; }\r\nh6 { font-size: 1.2rem; line-height: 1; letter-spacing: 0; }\r\n\r\np {  padding: 0;margin: 0; }\r\n\r\n/* Links\r\n&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash;&ndash; */\r\na { color: #1EAEDB; }\r\na:hover { color: #0FA0CE; }</code></pre>', '', ''),
(5, 'Media Queries', 'media_queries', 12, 1, '2018-01-19', '2088-01-20', 4, '<p>De media queries bepalen de eigenschappen van de individuele blokken binnen een aantal breedtes. <br />Deze breedtes kun je zelf bepalen maar handiger is om de afmetingen van de gebruikte breedtes binnen de te gebruiken apparaten aan te houden. <br />Dat betekent telefoons, tablets en desktops.</p>\r\n<p>&nbsp;</p>\r\n<pre class=\"language-css\"><code>/* max-width  480 ======================================== */\r\n@media only screen and (max-width: 480px) {\r\n   .col { color: Black ; padding:0 8px 0 8px; ; margin:0; 	}\r\n    h1 { font-size: 1.8rem; line-height: 1; letter-spacing: -.1rem; color: #555555 ; padding: 10px 0 10px 0; margin: 0; }\r\n    h2 { font-size: 1.6rem; line-height: 1; letter-spacing: -.1rem; color: #555555 ; padding: 10px 0 10px 0; margin: 0; }  \r\n    p { font-size: 10pt; }  \r\n}\r\n\r\n/* min-width 480   &lt;-&gt;  max-width: 768 =================== */\r\n@media only screen and (min-width: 480px) and (max-width: 768px) {\r\n   .col { color: Black ; }\r\n}\r\n\r\n/* min-width 768   &lt;-&gt;  max-width: 1024 ================== */\r\n@media only screen and (min-width: 768px) and (max-width: 1024px) { \r\n   .col { color: Black ;	}\r\n}\r\n\r\n/* min-width  1024 ======================================= */\r\n@media only screen and (min-width: 1024px) {\r\n   .col { color: Black ; }	\r\n}\r\n</code></pre>\r\n<p>&nbsp;</p>', '', '');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `git_basis`
--
ALTER TABLE `git_basis`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `git_footer`
--
ALTER TABLE `git_footer`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `git_header`
--
ALTER TABLE `git_header`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `git_niv1`
--
ALTER TABLE `git_niv1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `volgorde` (`volgorde`,`id`);

--
-- Indexen voor tabel `git_niv2`
--
ALTER TABLE `git_niv2`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `git_basis`
--
ALTER TABLE `git_basis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `git_footer`
--
ALTER TABLE `git_footer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `git_header`
--
ALTER TABLE `git_header`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `git_niv1`
--
ALTER TABLE `git_niv1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT voor een tabel `git_niv2`
--
ALTER TABLE `git_niv2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
