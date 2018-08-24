<?php
include("../conn.php");
$id=$_GET[id];
$sql="delete from product where pro_id=$id";
$res=mysqli_query($conn,$sql);
if($res){
echo"ลบสำเร็จ";
	header("location: insert_product.php");
}
else{
echo"error ???";
}

?>