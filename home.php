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
        include "menuindex.php";
        @session_start();
        include("conn.php");
        ?>
        <?php
        $sql1 = "select*from user,member where user.username='" . $_SESSION[user] . "'
			and member.mem_id=user.user_id";
        $res1 = mysqli_query($conn, $sql1);
        $row1 = mysqli_fetch_assoc($res1);
        $_SESSION[mem_id] = $row1[mem_id];
        $_SESSION[fname] = $row1[fname];
        $_SESSION[lname] = $row1[lname];
        $_SESSION[image] = $row1[image];
        ?>
        <div class="container">
            <div class="navbar-inverse">

         <!-- <font color="#ffffff"size="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="image/people.gif"width="4%"height="4%">&nbsp;คุณ&nbsp;<?php echo $_SESSION[fname]; ?>&nbsp;
                <?php echo $_SESSION[lname]; ?> </font> -->

                <br>
                <div class="three panel panel-default ">

                    <img src="dwp/<?php echo $row1[image]; ?>"width="5%"><?php echo $_SESSION[fname] . " " . $_SESSION[lname]; ?>

                    <br>


                    <div class="row">


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