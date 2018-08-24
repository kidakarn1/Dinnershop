<?php 
$host="localhost";
$user="root";
$password="12345678";
$dbname="dinnershop_data";
$conn= mysqli_connect($host,$user,$password,$dbname);
mysqli_set_charset($conn,'utf8');
//header('Content-Type: text/html; charset=utf-8');

?>