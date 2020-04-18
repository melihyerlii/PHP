<!DOCTYPE html>
<html lang="tr" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>melihyerli.com</title>
    <link rel="stylesheet" type="text/css" href="style.css">
  </head>
  <body>
    <div class="genelDiv">
      <div class="baslik">
        <h2>melihyerli.com</h2>
        <h6>hayat bazen gülmeyi gerektirir...</h6>
      </div>
      <hr style="position:absolute; margin-top: 92px; width: 960px; margin-left: 20px;">
      <div class="yatayMenu">
        <ul>
          <li> <a href="index.php" style="font-weight: bold;">ANASAYFA</a> </li>
          <li> <a href="about.php">HAKKIMDA</a> </li>
          <li> <a href="contact.php">İLETİŞİM</a> </li>
          <li> <a href="giris.php">KAYIT OL/GİRİŞ YAP</a> </li>
        </ul>
        <hr style="position:absolute; margin-top: 120px; width: 960px; margin-left: 20px;">
      </div>
      <div class="ortaResim">
        <img src="picture/prag.jpg" alt="">
      </div>
      <div class="makaleAlani">
			<!-- BURADA ID'YE GÖRE DETAY SAYFASINA MAKALE EKLENDİ (BAŞLANGICI)  -->
				<?php
					include "baglanti.php";


						if ($_GET['id'])
						{
							$detay = $baglanti->query("SELECT * FROM makale");
						}
						foreach ($detay as $detay_cikti)
						{
							if ($detay_cikti['makaleId'] == $_GET['id']){

				?>
								<div class="makaleAlani">
									<h3><?php echo $detay_cikti["makaleBaslik"]; ?></h3>
									<p><?php echo $detay_cikti["icerik"]; ?></p>
								</div>
								<h1>Yorumlar</h1>
				<?php
							}
						}
				?>
				<!-- BURADA ID'YE GÖRE DETAY SAYFASINA MAKALE EKLENDİ (BİTİŞİ)  -->


				<!-- VERİTABANINDAKİ YORUMLARI AKTARMA (BAŞLANGIÇ) -->
				<?php

					$yorum = $baglanti->query("SELECT * FROM yorumlar WHERE onay = 1");

					foreach($yorum as $detay_yorum_yazdirma)
					{
						if ($_GET['id'] == $detay_yorum_yazdirma['yorum_makaleId']) {
				?>
					<div class="yorumAlani">
						<label for="">YORUM:</label><b><?php echo $detay_yorum_yazdirma['yorum']; ?></b> <br><br>
						<label for="">YAZAN:</label><b><?php echo $detay_yorum_yazdirma['yazan']; ?></b>
						<hr>
					</div>
				<?php
						}
					}
				?>
				<!-- VERİTABANINDAKİ YORUMLARI AKTARMA (BİTİŞ) -->




				<!-- KULLANICI TARAFINDAN YORUM EKLEME BAŞLANGICI -->
				<form action="" method="POST">
					<input type="hidden" name="konuId" value="<?php echo $_GET['id'];?>">
					<label>İsminiz: </label><input type="text" name="yorum_isim"> <br><br>
					<label>E-Posta: </label><input type="text" name="yorum_eposta"><br><br>
					<label>Yorum: </label><input type="text" name="yorum_icerik"> <br>
					<input type="submit" value="GÖNDER">
				</form>

				<?php


				  if (@$_POST) {
				    $yrm_ypn_isim = $_POST['yorum_isim'];
				    $yrm_ypn_eposta = $_POST['yorum_eposta'];
				    $yrm_ypn_icrk = $_POST['yorum_icerik'];
				    $yrm_konu_id = $_POST['konuId'];

				    $yorum_sorgu = $baglanti->prepare('INSERT INTO yorumlar SET
				      yorum_makaleId=?,
				      yazan=?,
				      email=?,
				      yorum=?');

				    $yorum_ekle = $yorum_sorgu->execute(array($yrm_konu_id, $yrm_ypn_isim, $yrm_ypn_eposta, $yrm_ypn_icrk));
				  }

				?>
				<!-- KULLANICI TARAFINDAN YORUM EKLEME SONU -->
      </div>
    </div>
  </body>
</html>

































































<!-- YORUM EKLEMEK İÇİN -->

<!-- YORUM EKLEMEK İÇİN BİTİŞ -->
