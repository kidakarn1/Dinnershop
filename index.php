<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <LINK REL="SHORTCUT ICON" HREF="image/icon.ico">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <title>ยินดีต้อนรับสู่DINNERSHOP</title>

        <!-- Bootstrap -->

        <link href="css/bootstrap.css" rel="stylesheet">
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
        <style type="text/css">

        </style>
    </head>
    <body background='image/ui.jpg'>
        <?php
		@SESSION_START();
		include("conn.php");
		  $e = $_GET[e];
		$phone=$_GET[phone];
        include "menuindex.php";
		$sql9="select * from user where username ='$_SESSION[phone]'";
$res9=mysqli_query($conn,$sql9);
$row9=mysqli_fetch_array($res9);
      
        ?>

        <div class="container">
            <div class="navbar-inverse">

                <br>
                <div class="three panel panel-default ">
                    <div class="form-group">
                        <div class=" col-md-offset-10 col-xs-offset-6 col-sm-offset-9">
                            <font color="#0000ff"size="3">จำนวนผู้เข้าชม</font>
                            <a href="http://www.amazingcounters.com"><img border="1" src="http://cc.amazingcounters.com/counter.php?i=3209761&c=9629596" alt="AmazingCounters.com"></a></center>
                        </div>
						<?php

						  if ($e == 1) {
            echo "<h3><font color=\"red\">usernameหรือpasswordผิด</font></h3>";
        } else if ($e == 2) {
            echo "<h3>กรุณาล็อกอิน</h3>";
        }
		?>
<?php if ($e == str) {
    echo "<h3><font color=\"red\">กรุณากรอกตัวเลขที่ปรากฎ</font></h3>";
} ?>
		<?php if ($phone=='5'){
echo"<h3><font color=\"red\">"."ไม่สามารถสมัครได้เนื่องจากหมายเลขโทรศัพท์"." ".$_SESSION[phone]." "."นี้ใช้ไปแล้ว"."</font></h3>";
}?>  
                    </div>


                    <br>

                    <div class="row">		

                        <br>
                        <div class="col-xs-12 col-sm-4 col-md-4">
                            <a href="Hot_drink.php"><img src="image/c1.gif"class="img-responsive img-thumbnail"></a>
                        </div>

                        <div class=" col-xs-12 col-sm-4 col-md-4">
                            <a href="Main_food.php"> <img src="image/c2.gif"class="img-responsive img-thumbnail"></a>
                        </div>

                        <div class="col-xs-12 col-sm-4 col-md-4">
                            <a href="Cake.php"><img src="image/cake.gif"class="img-responsive img-thumbnail"></a>
                        </div>
</div>
                        <div class="row">
                        <div class="col-xs-12 col-sm-4 col-md-4">

                            <a href="#promotion"data-toggle="modal"data-target="#promotion"><img src="image/promotion_icon.gif"class="img-responsive img-thumbnail"></a>
                        </div>



                        <div class=" col-xs-12 col-sm-4 col-md-4">
                            <a href="sell_product.php"><img src="image/sell_product.gif"class="img-responsive img-thumbnail"></a>
                        </div>



                        <div class="col-xs-12 col-sm-4 col-md-4">
                            <a href="recommended_product.php"><img src="image/recommended_product.gif"class="img-responsive img-thumbnail"></a>
                        </div>
                    </div>

                    <br><br>
                </div>
<?php include("footer.php") ?>
            </div>
        </div>
    </body>
</html>