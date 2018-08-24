<center>
<h1>Up Load File</h1>
</center>
<p>
<hr size=1>
<?php
$rootdir = "../img_products"; 
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
include("../conn.php");
?>
<?php
$id=$_POST[id];
$name=$_POST[name];
$price=$_POST[price];
$Description=$_POST[Description];
$id_category=$_POST[id_category];
$image=$_FILES['file']['name'];
$pro_number=$_POST[pro_number];
$calories=$_POST[calories];


//nameต้องมาจากdatabase name='$name' $nameคือ ตัวแปรที่เราตั้งขึ้น $name=$_POST[name];
$sql="insert into product values(
'null',
'$name',
'$price',
'$Description',
'$id_category',
'$image',
'$pro_number',
'$calories'
)";
//echo $_FILES[file];
echo $sql;
if ($res=mysqli_query($conn,$sql)){
echo"update สำเร็จ";
header("location: insert_product.php");

}
else {
echo"บันทึกไม่สำเร็จ.....?????";
echo $sql;
}

?>




