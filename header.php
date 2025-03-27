<?php
session_start();
error_reporting(E_ALL & ~E_NOTICE  &  ~E_STRICT &  ~E_WARNING);
date_default_timezone_set('Asia/Kolkata');
$dt = date("Y-m-d");
include("connection.php");
$sqlguestfees_structure = "SELECT * FROM fees_structure WHERE hostellertype='Guest'";
$qsqlguestfees_structure = mysqli_query($con,$sqlguestfees_structure);
$rsguestfees_structure = mysqli_fetch_array($qsqlguestfees_structure);
//$currencysymbol = "₹";
$currencysymbol = "RM ";
?>
<!DOCTYPE html>
<html lang="zxx">

<head>
	<title>Campus Quarters</title>
	<!-- Meta tag Keywords -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8" />
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!-- //Meta tag Keywords -->

	<!-- Custom-Files -->
	<link rel="stylesheet" href="css/bootstrap.css">
	<!-- Bootstrap-Core-CSS -->
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
	<!-- Style-CSS -->
	<link href="css/font-awesome.min.css" rel="stylesheet">
	<!-- Font-Awesome-Icons-CSS -->
	<!-- //Custom-Files -->

	<!-- Web-Fonts -->
	<link href="//fonts.googleapis.com/css?family=Arizonia&amp;subset=latin-ext" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Righteous&amp;subset=latin-ext" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Great+Vibes&amp;subset=latin-ext" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i&amp;subset=latin-ext"
	 rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i" rel="stylesheet">
	<!-- //Web-Fonts -->
	<link href="css/jquery.dataTables.min.css" rel="stylesheet">
	<script src="js/jquery-3.3.1.js"></script>	
	<script src="js/jquery.dataTables.min.js"></script>
	<style>
	.errclass
	{
		color: red;
		padding-left: 5px;
	}
	</style>
<script src="js/sweetalert.min.js"></script>
<script>
function viewmessagebox(msg,pagename)
{
	swal({title: 'Online Hostel..',text: msg, type: 'success'}).then(function() {  window.location =  pagename;});
}
</script>

</head>

<body>
<?php

?>
<?php
if(basename($_SERVER['PHP_SELF']) == "index.php")
{
?>
	<div class="main-w3pvt" id="home" style="background-color:black;">
<?php
}
else
{
?>	
	
	
<?php
}
?>
<?php include("Header1.php"); ?>
<?php include("topmenu.php");?>
		<!-- header -->
		