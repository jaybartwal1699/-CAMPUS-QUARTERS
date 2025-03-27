<?php
include("header.php");
if(isset($_SESSION['hostellerid']))
{
	echo "<script>window.location='hostelleraccount.php';</script>";
}
if(isset($_POST['submit']))
{
	$sql ="SELECT * FROM hosteller WHERE emailid='{$_POST['login_id']}' 
	AND password='{$_POST['password']}' 
	AND status='Active' 
	AND registration_approved = 1";

	
	$qsql=mysqli_query($con,$sql);
	echo mysqli_error($con);
	if(mysqli_num_rows($qsql)==1)
	{
		$rs= mysqli_fetch_array($qsql);
		$_SESSION['hostellerid'] = $rs['hostellerid'];
		$_SESSION['hostellertype'] = $rs['hostellertype'];
		echo "<script>window.location='hostelleraccount.php';</script>";
	}
	else
	{
		//echo "<script>alert('You have entered invalid login credentials..');</script>";
		echo "<script>viewmessagebox('You have entered invalid login credentials..','hostellerlogin.php')</script>";
	}
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
	<style>
		body {
    
    background-size: cover; /* Cover the entire background */
    background-position: center; /* Center the background image */
    color: white; /* Set text color to white for better visibility on the background image */
}

</style>
</head>
<body>
</div>
	<!-- //banner -->

	<!-- contact -->
	
<div class="container">
  
<section  id="contact">
		<div class="container py-xl-5 py-lg-3">
			<div class="title text-center mb-sm-5 mb-4">
				<h3 class="title-w3 text-bl text-center font-weight-bold">Student Login</h3>
				<div class="arrw">
					<i aria-hidden="true"></i>
				</div>
			</div>
			<div class="row pt-xl-4">
				<div class="col-lg-8 offset-2">
					<div >
<form action="" method="post" class="register-wthree" name="frmform" onsubmit="return validateform()">
	<div class="form-group">
		<label> 
			Email ID <span id="idlogin_id" class="errclass" ></span> 
		</label>
		<input class="form-control"  type="text" name="login_id">
		</div>
	<div class="form-group">
		<label>
			Password  <span id="idpassword" class="errclass" ></span> 
		</label>
		<input class="form-control"  type="password" name="password">
	</div>
	<div class="form-group mt-4 mb-0">
		<button type="submit" name="submit" class="btn btn-w3layouts w-100">Click here to Login</button>
		<?php
		/*
		<hr>
		<a href="recoverpassword.php"><b>Click here to Recover Password..</b></a>
		*/
		?>
	</div>
</form>
					</div>
				</div>
			</div>
		</div>
	</section>
</div>
</div>

	
</body>
</html>
	<?php
	include("footer.php");
	?>
	<script>
	function validateform()
{
	$(".errclass").html('');
	
	var errstatus = "true";
	if(document.frmform.login_id.value == "")
	{
		document.getElementById("idlogin_id").innerHTML = " Login ID should not be empty...";
		errstatus = "false";
	}
	if(document.frmform.password.value == "")
	{
		document.getElementById("idpassword").innerHTML = " Password should not be empty...";
		errstatus = "false";
	}
	if(errstatus == "true")
	{
		return true;
	}
	else
	{
		return false;
	}
}
</script>

