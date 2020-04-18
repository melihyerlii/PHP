<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>melihyerli.com</title>
    <style>
      body{
        font-family: 'Baloo Paaji 2', cursive;
        background-color: #bfbfbf;
      }
      .girisAlani{
        margin-top: 100px;
        width: 500px;
        height: 500px;
        margin-left: auto;
        margin-right: auto;
        border-radius: 15px;
      }
      .textStyle{
        width: 200px;
        height: 30px;
        border-radius: 5px;
      }
      .girisFormAlani{
        font-size: 25px;
        position: absolute;
        margin-top: 150px;
        margin-left: 70px;
      }
      .buton{
        width: 363px;
        height: 30px;
        border-radius: 15px;
        border-color: white;
        border-width: medium;
        background-color: black;
        color: white;
      }
    </style>
  </head>
  <body>
    <div class="girisAlani">
      <form class="girisFormAlani" action="" method="POST">
        <label>Kullanıcı Adı: </label> <input type="text" name="kullaniciAdi" value="" class="textStyle"> <br><br>
        <label>Sifre: </label> <input type="password" name="kullaniciSifre" value="" class="textStyle" style="margin-left: 78px;"> <br>
        <input type="submit" name="girisYapButon" value="GİRİŞ YAP" class="buton">
      </form>
      <form action="kayitForm.php" method="POST" style="margin-left:70px; margin-top:315px;position:absolute;">
        <input type="submit" name="" value="KAYIT OL" class="buton">
      </form>
    </div>
  </body>
</html>
<?php
  include 'baglanti.php';
    if($_POST)
    {
        $kullanici=$_POST["kullaniciAdi"];
        $sifreniz=$_POST["kullaniciSifre"];

        if(!empty($kullanici) || !empty($sifreniz))
        {
            $sorgu=$baglanti->prepare("SELECT * FROM kullanicilar WHERE kadi=? and sifre=?");
            $sorgu->execute(array($kullanici,$sifreniz));
            $islem=$sorgu->fetch();

            if($islem)
            {
                $_SESSION['KullaniciAdi'] = $islem['username'];
                header("Location:girisindex.php?username=".$kullanici."");
            }
            else
            {
                echo "Kullanıcı Adınız veya Şifreniz Yanlış";
            }
        }
        else
        {
            echo "Boş Alan Bırakmayınız.";
        }
    }
?>
