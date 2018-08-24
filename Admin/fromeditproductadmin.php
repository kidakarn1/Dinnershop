<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <LINK REL="SHORTCUT ICON" HREF="../image/icon.ico">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <title>ยินดีต้อนรับสู่DINNERSHOP</title>

        <!-- Bootstrap -->

        <link href="../css/bootstrap.css" rel="stylesheet">
        <link href="../css/bootstrap.min.css" rel="stylesheet">
        <style type="text/css">



        </style>
    </head>
    <body>  

        <?php
		@SESSION_START();
        include("../conn.php");
        include("menu.php");
        ?>



        <?
        $id=$_GET[id];
        $sql="select*from product where pro_id='$id' ";

        $res=mysqli_query($conn,$sql);
        $row=mysqli_fetch_assoc($res);
		$_SESSION[imageproduct]=$row[image];
        ?>
        <div class="container">
            <div class="navbar-inverse">
                <br>
                <div class="three panel panel-default">

                    <div class="panel-heading">
                        <center>

                            <h2>แก้ไขสินค้า</h2>

                        </center>
                    </div>
                    <form class="form-horizontal" action="pcEditproduct.php" method="post"
                          enctype="multipart/form-data">


                        <center>
                            <h4>
                                <label>รหัสสินค้า:<?php echo $row[pro_id] ?></label>
                                <input type="hidden" name="id_product" value="<?php echo $row[pro_id] ?>">
                            </h4>
                        </center>



                        <div class="form-group">


                            <label class="col-md-2 control-label">ชื่อสินค้า:</label>
                            <div class="col-md-3">
                                <input class="form-control" type="text" name="name" value="<?php echo $row[pro_name] ?>">
                            </div>

                            <label class="col-md-2 control-label">ราคา:</label>
                            <div class="col-md-3">
                                <input class="form-control" type="text" name="price"value="<?php echo $row[price] ?>" />
                            </div>
                        </div>


                        <div class="form-group">
                            <label class="col-md-2 control-label">คำอธิบาย:</label>
                            <div class="col-md-3">
                                <input class="form-control" type="text" name="Description"value="<?php echo $row[Description] ?>" />

                            </div>

                            <div class="form-group">
                                <label class="col-md-2 control-label">รูปภาพ :</label>

                                <div class="col-md-2">
                                    <img src="../img_products/<?php echo $row["image"] ?>"   />
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-md-2 control-label">จำนวนสินค้า</label>
                            <div class="col-md-3">
                                <input class="form-control" type="text"name="pro_number" value="<?php echo $row[pro_number] ?>">

                            </div>


                            <div class="form-group">

                                <label class="col-md-2 control-label" for="file">เลือกรูปสินค้า:</label>
                                <div class="col-md-3">
                                    <input class="col-md-4 control-label" type="file" name="file" id="file" />
                                </div>
                            </div>
                        </div>









                        <label class="col-md-2 control-label">เลือกประเภทสินค้า : </label>

                        <div class="form-group">

                            <table>

                                <tr>
                                    <td class="radio-inline">
                                        <input type="radio"name="id_category"value="1"<?php if ($row[cat_id] == "1") echo "checked"; ?>>1 เครื่องดื่มร้อน

                                    </td>
                                </tr>


                                <tr>
                                    <td class="radio-inline">


                                        <input  type="radio"name="id_category"value="2"<?php if ($row[cat_id] == "2") echo "checked"; ?>>2 เครื่องดื่มเย็น

                                    </td>

                                </tr>



                                <tr>
                                    <td class="radio-inline">
                                        <input type="radio"name="id_category"value="3"<?php if ($row[cat_id] == "3") echo "checked"; ?>>3 เครื่องดื่มปั่น

                                    <td>
                                </tr>
                                <tr>
                                    <td class="radio-inline">
                                        <input type="radio"name="id_category"value="4"<?php if ($row[cat_id] == "4") echo "checked"; ?>>4 อาหารหลัก
                                    </td>
                                </tr>
                                <tr>
                                    <td class="radio-inline">
                                        <input type="radio"name="id_category"value="5"<?php if ($row[cat_id] == "5") echo "checked"; ?>>5 อาหารว่าง
                                    </td>
                                </tr>
								    <tr>
                                    <td class="radio-inline">
                                        <input type="radio"name="id_category"value="9"<?php if ($row[cat_id] == "9") echo "checked"; ?>>6 เบเกอรี่
                                    </td>
                                </tr>
                            </table>
							
                            <div class="form-group">

                                <label class="col-md-2 control-label" for="file">แคลลอรี่</label>
                                <div class="col-md-3">
                                     <input class="form-control" type="text"name="calories" value="<?php echo $row[calories] ?>">
                                </div>
                            </div>
                        </div>
<center>
                        <input class="btn btn-success" type="submit" value="บันทึกข้อมูล">
						 <input class="btn btn-warning" type="reset" value="ยกเลิก">
						<a href="delproductadmin.php?id=<?php echo $row[pro_id];?>"class="btn btn-danger">ลบ</a>
</center>>                 
                    </form>
                </div><?php include("../footer.php") ?> 
            </div>
        </div>
    </body>
</html>
