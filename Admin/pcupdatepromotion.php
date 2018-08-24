
<?php
include("../conn.php");
$image=$_POST[image];
$pro_name=$_POST[pro_name];
$pro_Description=$_POST[pro_Description];
$pro_Dateon=$_POST[pro_Dateon];
$pro_Dateend=$_POST[pro_Dateend];

$image2=$_POST[image2];
$pro_name2=$_POST[pro_name2];
$pro_Description2=$_POST[pro_Description2];
$pro_Dateon2=$_POST[pro_Dateon2];
$pro_Dateend2=$_POST[pro_Dateend2];


$image3=$_POST[image3];
$pro_name3=$_POST[pro_name3];
$pro_Description3=$_POST[pro_Description3];
$pro_Dateon3=$_POST[pro_Dateon3];
$pro_Dateend3=$_POST[pro_Dateend3];

//if($_FILES['file']['name']==""){$image=$_SESSION[imagemember];}
$sql3="update promotion set 
promotion_name='$pro_name',
description='$pro_Description',
image='$image',
promotion_Dateon='$pro_Dateon',
promotion_Dateoff='$pro_Dateend'
where promotion_id='1'";

$sql4="update promotion set 
promotion_name='$pro_name2',
description='$pro_Description2',
image='$image2',
promotion_Dateon='$pro_Dateon2',
promotion_Dateoff='$pro_Dateend2'
where promotion_id='2'";

$sql5="update promotion set 
promotion_name='$pro_name3',
description='$pro_Description3',
image='$image3',
promotion_Dateon='$pro_Dateon3',
promotion_Dateoff='$pro_Dateend3'
where promotion_id='3'";

if ($res3=mysqli_query($conn,$sql3) and $res4=mysqli_query($conn,$sql4) and $res5=mysqli_query($conn,$sql5)){
echo"update สำเร็จ";
header("location: homeadmin.php");

}
else {
echo"บันทึกไม่สำเร็จ.....?????";
echo $sql3;
}
?>




