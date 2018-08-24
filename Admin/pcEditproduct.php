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

	if (empty($_FILES["file"]["size"])){
		echo "ไม่สามารถส่งไฟล์นี้ได้กรุณาตรวจสอบไฟล์ของท่านด้วยครับ";}
	else if($_FILES["file"]["size"]>$limitfile){
		echo "หวาๆๆๆ ไฟล์ใหญ่ไปน้าาาา";} 
	else {
		copy($_FILES["file"]["tmp_name"],$a); 
		echo " ได้รับไฟล์แล้ว ชื่อ ".$_FILES['file']['name']." ขนาด ".$_FILES['file']['size']/ 1024 . " Kb<br>";
	}



?>

<img src="<?php echo $a?>" >
<!-- <meta http-equiv="refresh" content="2; URL=.">	 -->

<?php
@SESSION_START();
include("../conn.php");
$id=$_POST[id_product];
$name=$_POST[name];
$price=$_POST[price];
$Description=$_POST[Description];
$id_category=$_POST[id_category];
$pro_number=$_POST[pro_number];
$image=$_FILES['file']['name'];
$calories=$_POST[calories];
//echo $_SESSION[imageproduct];

if($_FILES['file']['name']==""){
	$image=$_SESSION[imageproduct];}

//nameต้องมาจากdatabase name='$name' $nameคือ ตัวแปรที่เราตั้งขึ้น $name=$_POST[name];
$sql="update product set 
pro_name='$name',
price='$price',
Description='$Description',
cat_id='$id_category',
image='$image',
pro_number='$pro_number',
calories='$calories'
where pro_id='$id' ";
echo $_FILES[file];


if ($res=mysqli_query($conn,$sql)){
echo"update สำเร็จ";
header("location: insert_product.php");









}
else {
echo"บันทึกไม่สำเร็จ.....?????";
}
//echo $sex;
echo $sql;
?>




