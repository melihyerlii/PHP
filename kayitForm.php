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
        margin-top: 50px;
        margin-left: 70px;
      }
      #buton{
        width: 363px;
        height: 30px;
        border-radius: 15px;
        border-color: white;
        border-width: medium;
        background-color: black;
        color: white;

      }
      .secmeli{
        width: 200px;
        height: 30px;
        margin-left: 55px;
      }
    </style>
  </head>
  <body>
    <div class="girisAlani">
      <form class="girisFormAlani" action="kaydet.php" method="POST">
        <label>Kullanıcı Adı: </label>
        <input type="text" name="kAdi" value="" class="textStyle"> <br><br>
        <label>Sifre: </label>
        <input type="password" name="kSifre" value="" class="textStyle" style="margin-left: 78px;"> <br><br>
        <label for="">İsim:</label>
        <input type="text" name="kIsim" value="" class="textStyle" style="margin-left: 95px;"><br><br>
        <label for="">Cinsiyet:</label>
        <input type="text" name="kCins" value="" class="textStyle" style="margin-left: 60px;" placeholder="E / K"><br><br>
        <label for="">T.C.:</label>
        <input type="number" name="kTC" value="" class="textStyle" style="margin-left: 110px;"><br><br>
        <label for="">Telefon:</label>
        <input type="number" name="kTel" value="" class="textStyle" style="margin-left: 62px;"><br><br>
        <label for="">E-posta:</label>
        <input type="email" name="kMail" value="" class="textStyle" style="margin-left: 63px;"><br>
        <input type="submit" name="girisYapButon" value="Kayıt Ol" id="buton">
      </form>
    </div>
  </body>
</html>
