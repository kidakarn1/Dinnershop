<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <title>Bootstrap 101 Template</title>

        <!-- Bootstrap -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/bootstrap.css" rel="stylesheet">
        <script src="js/bootstrap.js"></script>
        <script src="js/bootstrap.min.js"></script>


        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <style>
        .size3{
            margin-top:-1%;
        }
    </style>
    <body>

        <?php
        @session_start();
        include "conn.php";
        ?>
        <div class='container'>
            <nav class="navbar navbar-inverse navbar-static-top">
                <div class="container-fluid">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header" >
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>



                    </div>


<!-- <div class=""><a href="Contact.php"><img src="image/fackbook.ico"width="3%"></a></div> -->


                    <div class="col-md-offset-0 col-md-12 col-xs-12">

                        <div class="col-md-2 col-xs-1">
                            <img src="image/dns.gif"width="75%"height="75%">
                        </div>

                        <div  align = "right" >
                            <a href="line.php"><img src="image/line.png"width="3%"></a>
                            <a href="Contact.php"><img src="image/facebook.gif"width="3%"></a>
                        </div>


                        <div  class = "col-md-offset-5" ><?php include("DnsSpan.php"); ?>
                        </div>
                    </div>

                </div>
                <div class="col-md-offset-2 col-md-10 col-xs-12">
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">

                            <li>

                                <?php if ($_SESSION['user'] == "") { ?>
                                    <a href="index.php"><font color="#ffffff"size="3">หน้าแรก</font> <span class="sr-only">(current)</span></a><?php } ?>

                                <?php if ($_SESSION['user'] != "") { ?>
                                    <a href="home.php"><font color="#ffffff"size="3">หน้าแรก <span class="sr-only">(current)</font></span></a><?php } ?>                                
                            </li>


                            <li>
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><font color="#ffffff"size="3">เครื่องดื่ม</font> <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a  href="Hot_drink.php">เครื่องดื่มร้อน</a></li>
                                    <li><a href="Cold_drink.php">เครื่องดื่มเย็น</a></li>
                                    <li><a href="Smoothie_drink.php">เครื่องดื่มปั่น</a></li>
                                </ul>
                            </li>

                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><font color="#ffffff"size="3">อาหาร </font><span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="Main_food.php">อาหารหลัก</a></li>
                                    <li><a href="Free_food.php">อาหารว่าง</a></li>
                                    <!-- <li><a href="Cake.php">เค้ก</a></li> -->
                                </ul>
                            </li>

                            <li><a href="Cake.php"><font color="#ffffff"size="3">เบเกอรี่</font><span class="sr-only"></span></a></li>


                            <!-- 
                                                            <li class="dropdown">
                                                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><font color="#ffffff"size="3">แกลลอรี่ </font><span class="caret"></span></a>
                                                                <ul class="dropdown-menu">
                                                                    <li><a href="atmosphere.php">บรรยากาศในร้าน</a></li>
                                                                    <li><a href="inspiration.php">แรงบันดาลใจ</a></li>
                                                                </ul>
                                                            </li> -->
                            <li><a href="atmosphere.php"><font color="#ffffff"size="3">บรรยากาศ</font><span class="sr-only"></span></a></li>




 <!-- <li><a href="Webboard.php"><font color="#ffffff"size="3">เว็บบอร์ด</font><span class="sr-only"></span></a></li> -->


                            <li>
                                <?php if ($_SESSION['user'] == "") { ?>
                                    <a href="#myModal"data-toggle="modal" data-target="#myModal"><font color="#ffffff"size="3">แบบประเมิน</font></a>
                                <?php } ?>

                                <?php if ($_SESSION['user'] != "") { ?>
                                    <a href="Evaluation_form.php"><font color="#ffffff"size="3">แบบประเมิน</font></a>
                                <?php } ?>

                            </li>


                            <li>

                                <?php if ($_SESSION['user'] == "") { ?> 

                                    <a type="" class=" btn btn-sm"data-toggle="modal" data-target="#myModal"><font color="#ffffff"size="3">เข้าสู่ระบบ</font></a>
                                </li> 


                            <?php } ?>

                            <?php if ($_SESSION['user'] != "") { ?>
                                <li>

                                    <a href="#fromeditmember"class=" btn btn-sm"data-toggle="modal" data-target="#fromeditmember"><font color="#ffffff "size="3">แก้ไข</font></a>
                                </li> 
                                <li>


                                    <a href="logout.php" class=" btn btn-sm"><font color="#ffffff"size="3">ออกจากระบบ</font></a><?php } ?>

                            </li>
                            <li class="size3">&nbsp;<?php include("Translate.php"); ?></li>
                        </ul>









                    </div><!-- /.navbar-collapse -->

                </div><!-- /.container-fluid -->
            </nav>
            <?php include("fromeditmember.php"); ?>
            <?php include("slideindex.php"); ?>

            <?php
            if ($_SESSION['user'] == "") {
                include "fromlogin.php";
            }
            include("promotion.php");
            //include("proorder.php");
            ?>



            <!-- Modal -->


            <script src="js/jquery-1.11.2.min.js"></script>
            <!-- Include all compiled plugins (below), or include individual files as needed -->
            <script src="js/bootstrap.min.js"></script>
            <!-- Button trigger modal -->

        </div>




    </body>

</html>
