﻿<center>
<h1>Up Load File</h1>
</center>
<p>
<hr size=1>
<?php
$rootdir = "dwp"; 
//กำหนด directory สำหรับเก็บ file ที่จะ upload เข้าไป
$limitfile=10000000000; 
//กำหนด ขนาด file ที่อนุญาติให้โหลดเข้ามาเก็บได้ (ต่อ 1 file) หน่วยเป็น byte
$a="$rootdir/".$_FILES["file"]["name"] ;
echo $a;

		copy($_FILES["file"]["tmp_name"],$a); 
		echo " ได้รับไฟล์แล้ว ชื่อ ".$_FILES['file']['name']." ขนาด ".$_FILES['file']['size']/ 1024 . " Kb<br>";




?>

<img src="<?php echo $a?>" >
<!-- <meta http-equiv="refresh" content="2; URL=.">	 -->

<?php
@SESSION_START();
include("conn.php");

date_default_timezone_set("asia/bangkok");
$datetime=date("yhis");

$regis_date=date("y-m-d");
$ex_date=date('Y-m-d',strtotime("+1 year"));

$daterow4=$datetime;
?>
<?php
$id=$_POST[id];
$_SESSION[lname]=$_POST[lname];
$_SESSION[fname]=$_POST[fname];
$_SESSION[username]=$_POST[username];
$_SESSION[password]=$_POST[password];
$sex=$_POST[sex];
$_SESSION[phone]=$_POST[phone];
$_SESSION[facebook]=$_POST[facebook];
$_SESSION[line]=$_POST[line];
$_SESSION[address]=$_POST[address];
$_SESSION[brithday]=$_POST[brithday];
$image=$_FILES['file']['name'];
$status=$_POST[status];
 $numcaptcha_md5=$_SESSION['numcaptcha_md5'];
$str=$_POST[str];

    if(md5($str)!=$numcaptcha_md5){ 
	header("location: index.php?e=str");
	}
	if($image==''){
		$image='default.png';
}
$sql9="select * from user where username = $_SESSION[phone]";
$res9=mysqli_query($conn,$sql9);
$row9=mysqli_fetch_array($res9);
if($_SESSION[phone]== $row9[username]){
?>
<meta http-equiv="refresh" content="0; url=index.php?phone=<?php echo "5";?>" />
<?php
}
 if(md5($str)==$numcaptcha_md5 and $_SESSION[phone]!= $row9[username]){$sql="insert into member values(
'$daterow4',
'$_SESSION[fname]',
'$_SESSION[lname]',
'$sex',
'$_SESSION[phone]',
'$_SESSION[line]',
'$_SESSION[facebook]',
'$_SESSION[address]',
'$image',
'$regis_date',
'$ex_date',
'$_SESSION[brithday]'
)";
$res=mysqli_query($conn,$sql);

$phonmd5=md5($_SESSION[phone]);
echo $sql1="insert into user values(
'$daterow4',
'$_SESSION[phone]',
'$phonmd5',
'User'
)";
$res1=mysqli_query($conn,$sql1);

echo $sql2="insert into mempromotion values(default,'$daterow4','','')";
$res2=mysqli_query($conn,$sql2);}

 if($res and $res1 and $res2){
echo"update สำเร็จ";
header("location: finismember.php");
}
else{
echo"บันทึกไม่สำเร็จ.....?????";
echo $sql;
}
//echo $sex;
?>