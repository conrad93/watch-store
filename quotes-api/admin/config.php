<?php
    $host="localhost";
	$user="root";
	$password="";
	$db="quotes_api";
	$conn=mysqli_connect($host,$user,$password,$db);
	if(!$conn){
		echo 'Connection error: ' . mysqli_connect_error();
	}
?>