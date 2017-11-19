-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 11 Kas 2017, 13:36:34
-- Sunucu sürümü: 5.7.17
-- PHP Sürümü: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `parkurutamamla`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `admin`
--

CREATE TABLE `admin` (
  `Id` int(11) NOT NULL,
  `OkulId` int(11) NOT NULL,
  `Sifre` varchar(255) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `istasyon`
--

CREATE TABLE `istasyon` (
  `Id` int(11) NOT NULL,
  `SoruId` int(11) NOT NULL,
  `ParkurId` int(11) NOT NULL,
  `Sonrakiistasyon` int(11) DEFAULT NULL,
  `Sira` int(11) NOT NULL,
  `QrcodeAdresi` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `EksilenPuan` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `okul`
--

CREATE TABLE `okul` (
  `Id` int(11) NOT NULL,
  `Adi` varchar(255) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `parkur`
--

CREATE TABLE `parkur` (
  `Id` int(11) NOT NULL,
  `Adi` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `OkulId` int(11) NOT NULL,
  `Aktifmi` bit(1) NOT NULL,
  `BaslangicPuani` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `parkuryarismaci`
--

CREATE TABLE `parkuryarismaci` (
  `Id` int(11) NOT NULL,
  `ParkurId` int(11) NOT NULL,
  `YarismaciId` int(11) NOT NULL,
  `ToplamZaman` int(11) NOT NULL,
  `BasladigiTarih` datetime NOT NULL,
  `BitisTarihi` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sinif`
--

CREATE TABLE `sinif` (
  `Id` int(11) NOT NULL,
  `OkulId` int(11) NOT NULL,
  `SinifAdi` varchar(255) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `soru`
--

CREATE TABLE `soru` (
  `Id` int(11) NOT NULL,
  `GorselAdresi` int(11) NOT NULL,
  `Cevap` varchar(10) COLLATE utf8_turkish_ci NOT NULL,
  `Adi` varchar(255) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yarismaci`
--

CREATE TABLE `yarismaci` (
  `Id` int(11) NOT NULL,
  `YarismaciAdi` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `Sifre` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `SinifId` int(11) NOT NULL,
  `Onayli` bit(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yarismaciistasyon`
--

CREATE TABLE `yarismaciistasyon` (
  `Id` int(11) NOT NULL,
  `YarismaciId` int(11) NOT NULL,
  `IstasyonId` int(11) NOT NULL,
  `OlusturmaTarihi` datetime NOT NULL,
  `AnlikPuan` int(11) NOT NULL,
  `Cevap` varchar(10) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `istasyon`
--
ALTER TABLE `istasyon`
  ADD PRIMARY KEY (`Id`);

--
-- Tablo için indeksler `okul`
--
ALTER TABLE `okul`
  ADD PRIMARY KEY (`Id`);

--
-- Tablo için indeksler `parkur`
--
ALTER TABLE `parkur`
  ADD PRIMARY KEY (`Id`);

--
-- Tablo için indeksler `parkuryarismaci`
--
ALTER TABLE `parkuryarismaci`
  ADD PRIMARY KEY (`Id`);

--
-- Tablo için indeksler `sinif`
--
ALTER TABLE `sinif`
  ADD PRIMARY KEY (`Id`);

--
-- Tablo için indeksler `soru`
--
ALTER TABLE `soru`
  ADD PRIMARY KEY (`Id`);

--
-- Tablo için indeksler `yarismaci`
--
ALTER TABLE `yarismaci`
  ADD PRIMARY KEY (`Id`);

--
-- Tablo için indeksler `yarismaciistasyon`
--
ALTER TABLE `yarismaciistasyon`
  ADD PRIMARY KEY (`Id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `istasyon`
--
ALTER TABLE `istasyon`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `okul`
--
ALTER TABLE `okul`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `parkur`
--
ALTER TABLE `parkur`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `parkuryarismaci`
--
ALTER TABLE `parkuryarismaci`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `soru`
--
ALTER TABLE `soru`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `yarismaci`
--
ALTER TABLE `yarismaci`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `yarismaciistasyon`
--
ALTER TABLE `yarismaciistasyon`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
