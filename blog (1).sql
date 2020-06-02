-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 02 Haz 2020, 22:22:38
-- Sunucu sürümü: 5.7.19
-- PHP Sürümü: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `blog`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanicilar`
--

DROP TABLE IF EXISTS `kullanicilar`;
CREATE TABLE IF NOT EXISTS `kullanicilar` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `kadi` varchar(20) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `sifre` varchar(40) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `isim` varchar(40) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `cinsiyet` char(1) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `tcno` varchar(11) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `telefon` varchar(11) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `mail` varchar(40) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `kadi` (`kadi`),
  UNIQUE KEY `tcno` (`tcno`),
  UNIQUE KEY `telefon` (`telefon`),
  UNIQUE KEY `mail` (`mail`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `kullanicilar`
--

INSERT INTO `kullanicilar` (`id`, `kadi`, `sifre`, `isim`, `cinsiyet`, `tcno`, `telefon`, `mail`) VALUES
(1, 'melihyerlii', 'MLHyrl3101', 'Melih', 'E', '44902848582', '05060685723', 'melihyerli@hotmail.com'),
(2, 'taskinyerli', 'taskin57', 'Taşkın', 'E', '43042910272', '05060685722', 'taskinyerli@hotmail.com'),
(3, 'adm', 'adm123', 'Adem', 'E', '12341234123', '05390941252', 'admkrdnz@outlook.com'),
(5, '', '', '', '', '', '', ''),
(6, 'dnm1', 'dnmsifre', 'Deneme', 'K', '12345678901', '09876543212', 'denem@hotmail.com'),
(7, 'denemepdo', 'pdo', 'PFO', 'E', '54334586734', '05067894567', 'denem@gmail.com'),
(8, 'deneme2', '', 'DENEME', 'E', '11223344556', '99887766554', 'denem@OUTLOOK.com');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `makale`
--

DROP TABLE IF EXISTS `makale`;
CREATE TABLE IF NOT EXISTS `makale` (
  `makaleId` int(4) NOT NULL AUTO_INCREMENT,
  `yazan` varchar(100) NOT NULL,
  `makaleBaslik` varchar(40) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `tarih` date NOT NULL,
  `icerik` varchar(16000) CHARACTER SET utf16 COLLATE utf16_turkish_ci NOT NULL,
  PRIMARY KEY (`makaleId`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `makale`
--

INSERT INTO `makale` (`makaleId`, `yazan`, `makaleBaslik`, `tarih`, `icerik`) VALUES
(1, 'Melih', 'PHP Nedir ?', '2020-04-16', 'PHP : Hypertext Preprocessor (Türkçe: Üstünyazı Önişlemcisi) (Aslen: Personal Home Page - Kişisel Ana Sayfa) , internet için üretilmiş, sunucu taraflı, çok geniş kullanımlı, genel amaçlı, içerisine HTML gömülebilen betik ve programlama dilidir. İlk kez 1995 yılında Rasmus Lerdorf tarafından yaratılan PHP\'nin geliştirilmesi bugün PHP topluluğu tarafından sürdürülmektedir. Ocak 2013 itibarıyla 244 milyondan fazla web sitesi PHP ile çalışırken 2.1 milyon web sunucusunda PHP kurulumu bulunmaktadır.\r\n\r\nPHP kodları PHP işleme modülü bulunan bir web sunucusu tarafından yorumlanır ve çıktı olarak web sayfası üretilir. Bu kodlar veriyi işlemek üzere harici bir dosyaya kaydedilerek çağırılabildiği gibi doğrudan HTML kodunun içine de gömülebilir. PHP zaman içinde bir komut satırı arayüzü sunacak şekilde evrilmiştir, PHP-GTK yardımıyla grafiksel masaüstü uygulaması geliştirmek de mümkündür.\r\n\r\nPHP özgür bir yazılım olup PHP Lisansı ile dağıtılmaktadır. Bu lisans kullanım şartları kısmında GNU Genel Kamu Lisansı ile örtüşmese de, PHP tüm web sunuculara ve hemen hemen tüm işletim sistemi ve platforma ücretsiz olarak yüklenebilir.'),
(2, 'Melih', 'Microsoft Visual Studio ?', '2020-04-16', 'Microsoft Visual Studio, Microsoft tarafından geliştirilen bir tümleşik geliştirme ortamıdır (IDE). Microsoft Windows, Windows Mobile, Windows CE, .NET Framework, .NET Compact Framework ve Microsoft Silverlight tarafından desteklenen tüm platformlar için yönetilen kod ile birlikte yerel kod ve Windows Forms uygulamaları, web siteleri, web uygulamaları ve web servisleri ile birlikte konsol ve grafiksel kullanıcı arayüzü uygulamaları geliştirmek için kullanılır.\r\n\r\nVisual Studio IntelliSense\'in yanı sıra \"code refactoring\" destekleyen bir kod editörü içerir. Entegre hata ayıklayıcı, hem kaynak-seviyesinde hem de makine-seviyesinde çalışır. Diğer yerleşik araçlar, GUI uygulamaları, web tasarımcısı, sınıf tasarımcısı ve veritabanı şema tasarımcısı yaratabilmek için bir form tasarımcısı içerir. Hemen hemen her işlevsellik düzeyinde dahil olmak üzere, kaynak kontrol sistemleri için destek (Subversion ve Visual SourceSafe gibi) sunan eklentileri kabul eder.\r\n\r\nVisual Studio, değişik programlama dillerini destekler, bu da kod editörü ve hata ayıklayıcısının neredeyse tüm programlama dillerini desteklemesini sağlamaktadır. Dahili diller C/C++ (Görsel yoluyla C++), VB.NET (Visual Basic .NET üzerinden), C# (Visual C# ile), ve F# (Visual Studio 2010 itibarıyla) içermektedir.'),
(3, 'Melih', 'C Sharp', '2020-04-16', 'C programlama dilinde bir tam sayı değişkeni 1 artırmak için ++ soneki kullanılır. C++ dili adını, C diliyle Nesneye Yönelimli Programlama yapabilmek için eklentiler (C With Classes) almıştır. Benzer şekilde C++ diline yeni eklentiler yapılarak ((C++)++) bir adım daha ileriye götürülmüş ve tamamen nesneye yönelik tasarlanmış C# dilinin isimlendirilmesinde, + karakterlerinin birbirlerine yakınlaşmış hali ve bir melodi anahtarı olan C# Major kullanılmıştır.\r\n\r\nBu dilin tasarlanmasına Pascal, Delphi derleyicileri ve J++ programlama dilinin tasarımlarıyla bilinen Anders Hejlsberg liderlik etmiştir.\r\n\r\nBirçok alanda Java\'yı kendisine örnek alır ve C# da java gibi C ve C++ kod sözdizimine benzer bir kod yapısındadır. .NET kütüphanelerini kullanmak amacıyla yazılan programların çalıştığı bilgisayarlarda uyumlu bir kütüphanenin ve yorumlayıcının bulunması gereklidir. Bu, Microsoft\'un .Net Framework\'u olabileceği gibi ECMA standartlarına uygun herhangi bir kütüphane ve yorumlayıcı da olabilir. Yaygın diğer kütüphanelere örnek olarak Portable.Net ve Mono verilebilir.\r\n\r\nÖzellikle nesne yönelimli programlama kavramının gelişmesine katkıda bulunan en aktif programlama dillerinden biridir .NET platformunun anadili olduğu bazı kesimler tarafından kabul görse de bazıları bunun doğru olmadığını savunur.\r\n\r\nC#, .NET orta seviyeli programlama dillerindendir. Yani hem makine diline hem de insan algısına eşit seviyededir. Buradaki orta ifadesi dilin gücünü değil makine dili ile günlük konuşma diline olan mesafesini göstermektedir. Örneğin; Visual Basic .NET (VB.NET) yüksek seviyeli bir dildir dersek bu, dilin insanların günlük yaşantılarında konuşma biçimine yakın şekilde yazıldığını ifade etmektedir. Dolayısıyla VB.NET, C#.NET\'ten daha güçlü bir dildir diyemeyiz. Programın çalışması istenen bilgisayarlarda framework kurulu olması gerekmektedir.');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yorumlar`
--

DROP TABLE IF EXISTS `yorumlar`;
CREATE TABLE IF NOT EXISTS `yorumlar` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `yorum_makaleId` int(4) NOT NULL,
  `yazan` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `yorum` longtext CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `onay` char(1) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `yorumlar`
--

INSERT INTO `yorumlar` (`id`, `yorum_makaleId`, `yazan`, `email`, `yorum`, `onay`) VALUES
(13, 1, 'Yeni', '123@hotmaikl.com', '123', '1'),
(3, 1, 'Melih', 'melihyerli0@hotmail.com', 'deneme1', '1'),
(5, 3, 'ANONİM', 'birileri@hotmail.com', 'kjasdkasdlşasd', '1'),
(17, 2, 'melihyerlii', 'deneneme@hotmail.com', '2. ıdli makale', '1'),
(10, 2, 'as', 'melihyerli0@hotmail.com', 'deneme1', '1'),
(16, 2, 'melihyerlii', 'deneneme@hotmail.com', '2. ıdli makale', '1'),
(15, 3, 'melihyerlii', 'melihyerli0@hotmail.com', 'Yeni yorum yapıyorum', '1');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
