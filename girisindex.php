<!DOCTYPE html>
<html lang="en" dir="ltr">
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
          <li> <a href="#">GİRİŞ YAPTINIZ: <?php include 'baglanti.php'; echo $_GET['username'];?></a> </li>
          <li> <a href="index.php">ÇIKIŞ YAP</a> </li>
        </ul>
        <hr style="position:absolute; margin-top: 120px; width: 960px; margin-left: 20px;">
      </div>
      <div class="ortaResim">
        <img src="picture/prag.jpg" alt="">
      </div>
      <div class="makaleAlani">
<?php

        include "baglanti.php";

        $sorgu_makale = $baglanti->query("SELECT * FROM makale");


        foreach ($sorgu_makale as $cikti_makale){
?>
          <h3><?php echo $cikti_makale["makaleBaslik"]; ?></h3>
          <p><?php echo $cikti_makale["icerik"]; ?></p>
          <p> <a href="detay.php?id=<?php echo $cikti_makale['makaleId'];?>" style="color: black;">Yorumları Oku ya da Yorum Yap.</a> </p>
          <hr>
        <?php
        }
        ?>
      </div>
    </div>
  </body>
</html>
