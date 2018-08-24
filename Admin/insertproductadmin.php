<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <title>Bootstrap 101 Template</title>

        <!-- Bootstrap -->
        <link href="../css/bootstrap.min.css" rel="stylesheet">

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>
        <?php
        include"../conn.php";
        $sql = "select*from user,member where user.username='$_SESSION[user]'
        and member.mem_id=user.user_id";
        $res = mysqli_query($conn, $sql);
        $row = mysqli_fetch_array($res);
        date_default_timezone_set("asia/bangkok");
        $datetime = date("d/m/y");
        ?>

        <div class="modal fade" id="insertproductadmin" tabindex="-1" role="dialog" aria-labelledby="insertproductadmin">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="insertproductadmin">เพิ่มข้อมูลสินค้า</h4>
                    </div>
                    <br>
                    <form class="form-horizontal" method="post" action="pcaddproduct.php"enctype="multipart/form-data"id="formre">
                        <input type="hidden" name="id_product">
                        <div class="form-group">
                            <label for="fname" class="col-sm-2 control-label">ชื่อสินค้า:</label>
                            <div class="col-md-3">
                                <input type="text" class="form-control" id="fname" name="name" placeholder="nameproduct">
                            </div>

                            <label for="lname" class="col-sm-2 control-label">ราคา:</label>
                            <div class="col-sm-8 col-md-3">
                                <input type="text" class="form-control" id="lname" name="price" placeholder="price">
                            </div>

                        </div>

                      

                        <div class="form-group">
                            <label for="id_category" class="col-sm-2 control-label">ประเภท:</label>
                            <div class="col-sm-8">
                                <input type="radio"name="id_category"value="1">เครื่องดื่มร้อน<br>
                                <input  type="radio"name="id_category"value="2">เครื่องดื่มเย็น<br>
                                 <input  type="radio"name="id_category"value="3">เครื่องดื่มปั่น<br>
                                  <input  type="radio"name="id_category"value="4">อาหารหลัก<br>
                                   <input  type="radio"name="id_category"value="5">อาหารว่าง<br>
                                    <input  type="radio"name="id_category"value="9">เค้ก
                            </div>
                        </div>

                 

                        <div class="form-group">
                            <label for="address" class="col-sm-2 control-label">คำอธิบาย:</label>
                            <div class="col-sm-8">
                                <textarea type="text" class="form-control" id="pass" name="Description"placeholder="Description"></textarea>
                            </div>
                        </div>

                        <!--                        <div class="form-group">
                                                    <label for="pass" class="col-sm-2 control-label">รูป</label>
                                                    <div class="col-sm-8">
                                                        <input type="password" class="form-control" id="pass" name="pass"placeholder="Photo">
                                                    </div>
                                                </div>-->
                        <div class="form-group">
                            <label for="status" class="col-sm-2 control-label">รูปภาพ:</label>
                            <div class="col-sm-8">
                               <label for="file">เลือกรูปสินค้า</label>
                                <input type="file" name="file" id="file" />
                            </div>
                        </div>
                          <div class="form-group">
                            <label for="pro_number" class="col-sm-2 control-label">จำนวนสินค้า:</label>
                            <div class="col-md-3">
                                <input type="text" class="form-control" id="fname" name="pro_number" placeholder="pro_number">
                            </div>
                          </div>

						   <div class="form-group">
                            <label for="calories" class="col-sm-2 control-label">แคลอรี่</label>
                            <div class="col-md-3">
                                <input type="text" class="form-control" id="calories" name="calories" placeholder="calories">
                            </div>
                          </div>


                        <div class="modal-footer">

                            <input class="btn btn-primary" type="submit" value="บันทึก" >
                            <button type="Reset" class="btn btn-danger">ยกเลิก</button>

                        </div></form>
                </div>
            </div>
        </div>
    </body>

</html>