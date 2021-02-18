-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2021. Feb 17. 19:33
-- Kiszolgáló verziója: 10.4.16-MariaDB
-- PHP verzió: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `pizza`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `pizza`
--

CREATE TABLE `pizza` (
  `pazon` int(11) NOT NULL,
  `pnev` varchar(15) COLLATE utf8_hungarian_ci NOT NULL DEFAULT '',
  `par` int(4) NOT NULL DEFAULT 0,
  `tipus` varchar(30) COLLATE utf8_hungarian_ci NOT NULL,
  `osszetevok` varchar(256) COLLATE utf8_hungarian_ci NOT NULL,
  `foto` varchar(60) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `pizza`
--

INSERT INTO `pizza` (`pazon`, `pnev`, `par`, `tipus`, `osszetevok`, `foto`) VALUES
(1, 'Capricciosa', 900, 'vegyes', 'parmezán,paradicsom', 'fotok/pizza1.jpg'),
(2, 'Frutti di Mare', 1100, 'halas', 'kagyló,rák,parmezán', 'fotok/pizza2.jpg'),
(3, 'Hawaii', 780, 'húsos', 'csirke hús,ananász,sajt', 'fotok/pizza3.jpg'),
(4, 'Vesuvio', 890, 'vegetáriánus', 'zöldségek:...', 'fotok/pizza4.jpg'),
(5, 'Sorrento', 990, 'gombás', 'gomba, sajt', 'fotok/pizza5.jpg'),
(6, 'Americana', 1200, 'vegyes', 'fűszeres paradicsomszósz, sonka, gomba, kolbász ', 'fotok/pizza6.jpg');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `rendeles`
--

CREATE TABLE `rendeles` (
  `razon` int(11) NOT NULL,
  `vazon` int(11) NOT NULL,
  `pazon` int(11) NOT NULL,
  `db` int(3) NOT NULL,
  `datum` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `rendeles`
--

INSERT INTO `rendeles` (`razon`, `vazon`, `pazon`, `db`, `datum`) VALUES
(32, 4, 2, 1, '2010-10-01 00:00:00'),
(33, 7, 2, 1, '2010-10-01 00:00:00'),
(34, 1, 1, 1, '2010-10-02 00:00:00'),
(35, 5, 2, 1, '2010-10-02 00:00:00'),
(36, 2, 3, 1, '2010-10-02 00:00:00'),
(37, 4, 2, 1, '2010-10-03 00:00:00'),
(38, 6, 2, 1, '2010-10-04 00:00:00'),
(39, 7, 4, 1, '2010-10-04 00:00:00'),
(40, 1, 5, 1, '2010-10-04 00:00:00'),
(41, 3, 5, 1, '2010-10-04 00:00:00'),
(42, 2, 1, 1, '2010-10-05 00:00:00'),
(43, 5, 2, 1, '2010-10-05 00:00:00'),
(44, 6, 2, 1, '2010-10-06 00:00:00'),
(45, 4, 3, 1, '2010-10-06 00:00:00'),
(46, 1, 4, 1, '2010-10-06 00:00:00'),
(47, 2, 5, 1, '2010-10-06 00:00:00'),
(48, 7, 2, 1, '2010-10-06 00:00:00'),
(49, 3, 2, 1, '2010-10-07 00:00:00'),
(50, 4, 5, 1, '2010-10-07 00:00:00'),
(51, 1, 1, 1, '2010-10-07 00:00:00'),
(52, 5, 3, 1, '2010-10-08 00:00:00');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `vevo`
--

CREATE TABLE `vevo` (
  `vazon` int(11) NOT NULL,
  `vnev` varchar(30) COLLATE utf8_hungarian_ci NOT NULL DEFAULT '',
  `vcim` varchar(30) COLLATE utf8_hungarian_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `vevo`
--

INSERT INTO `vevo` (`vazon`, `vnev`, `vcim`) VALUES
(1, 'Hapci', ''),
(2, 'Vidor', ''),
(3, 'Tudor', ''),
(4, 'Kuka', ''),
(5, 'Szende', ''),
(6, 'Szundi', ''),
(7, 'Morgo', '');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `pizza`
--
ALTER TABLE `pizza`
  ADD PRIMARY KEY (`pazon`);

--
-- A tábla indexei `rendeles`
--
ALTER TABLE `rendeles`
  ADD PRIMARY KEY (`razon`),
  ADD KEY `vazon` (`vazon`);

--
-- A tábla indexei `vevo`
--
ALTER TABLE `vevo`
  ADD PRIMARY KEY (`vazon`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `pizza`
--
ALTER TABLE `pizza`
  MODIFY `pazon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT a táblához `rendeles`
--
ALTER TABLE `rendeles`
  MODIFY `razon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT a táblához `vevo`
--
ALTER TABLE `vevo`
  MODIFY `vazon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
