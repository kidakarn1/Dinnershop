<?php 
@SESSION_START();
include("conn.php");


 $pro_id=$_POST[proid];
 $number=$_POST[number];

 $sql3="select*from product where pro_id='$pro_id'";
 $res3=mysqli_query($conn,$sql3);
 $row3=mysqli_fetch_array($res3);

$sql4="select*from orderdns  where pro_id='$pro_id' and mem_id='$_SESSION[mem_id]' and order_id='' ";
$res4=mysqli_query($conn,$sql4);
$row4=mysqli_fetch_array($res4);


 $order_number=$row4[order_number]+$number;
 $order_sum=$row3[price]*$order_number;

if ($_SESSION[user]==""){
  $_SESSION[mem_id]=$ip = gethostbyname($host);   
}
 $sql="replace into orderdns values('$pro_id','','$order_number','$order_sum','$_SESSION[mem_id]','','','','','','','')";
 $res=mysqli_query($conn,$sql);
 if($res){
	 $pro_number=$row3[pro_number]-$number;
	 $sql5="update product set pro_number='$pro_number'  where pro_id='$pro_id' ";
	 $res5=mysqli_query($conn,$sql5);

header("location: proorder.php"); 
 }