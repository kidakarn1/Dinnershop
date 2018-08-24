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
        <link href="css/dns_9.css" rel="stylesheet">

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
        <?php include "menu.php"; ?>


        <div class="container">
            <div class="navbar-inverse">
                <br>
                <div class="three panel panel-default">

                    <div class="panel-heading"><center><h4>ผลการค้นหา</h4></center></div>
                    <div class="three panel-body">



                        <?PHP
                        @SESSION_START();
                        include("conn.php");
                        $search = $_POST[search];
                        $sql = "select * from product where pro_name ='$search'";
                        $res = mysqli_query($conn, $sql);
                        ?>
                        <?php while ($row = mysqli_fetch_array($res)) {
                            ?>



                            <div class="col-xs-12 col-sm-6 col-md-3">
                                <div class="tableproduct thumbnail ">
                                    <span class=""> <!-- ห้ามลบเอา span ครอบ ทำให้สามารถ กำหนดขนาดได้ -->
                                        <center>
                                            <img src="img_products/<?php echo $row["image"]; ?>" alt="..." height="100">
                                        </center>
                                    </span><br>



                                    <center>

                                        <div class=" tableproduct1 caption">

                                            <h5><?php echo $row["pro_name"] . " " . $row["Description"]; ?><p></p>

                                                <font color="red"><?php echo "ราคา" . " " . $row[price] . " " . "บาท" ?></font><p></p>
                                                จำนวน <select name='number'id='number'>
                                                    <option value='5' selected>5</option >
                                                    <option value='4' selected>4</option >
                                                    <option value='3' selected>3</option >
                                                    <option value='2' selected>2</option >
                                                    <option value='1' selected>1</option >
                                                </select> แก้ว
                                            </h5>
                                            <?php if ($_SESSION['user'] == "") { ?>

                                                <button type="button" class="btn btn-sm btn-success" data-toggle="modal" data-target="#myModal">หยิบใส่ตะกร้า</button>


                                            <?php } ?>
                                            <?php if ($_SESSION['user'] != "") { ?>
                                                <a href="#" class="btn btn-success" role="button">หยิบใส่ตะกร้า</a> 
                                            <?php } ?>

                                        </div>
                                    </center>
                                </div>



                            </div><?php } ?> 

                        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->


                    </div>
                </div><?php include("footer.php") ?>


                

            </div>
        </div>
    </body>
</html>