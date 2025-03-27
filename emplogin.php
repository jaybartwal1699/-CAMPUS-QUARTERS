<?php
include("header.php");
if(isset($_SESSION['emp_id']))
{
	echo "<script>window.location='empaccount.php';</script>";
}
if(isset($_POST['submit']))
{
	$sql ="SELECT * FROM employee WHERE login_id='$_POST[login_id]' AND password='$_POST[password]' AND status='Active'";
	$qsql=mysqli_query($con,$sql);
	echo mysqli_error($con);
	if(mysqli_num_rows($qsql)==1)
	{
		$rs= mysqli_fetch_array($qsql);
		$_SESSION['emp_id'] = $rs['emp_id'];
		$_SESSION['emp_type'] = $rs['emp_type'];
		echo "<script>window.location='empaccount.php';</script>";
	}
	else
	{
		//echo "<script>alert('You have entered invalid login credentials..');</script>";
		echo "<script>viewmessagebox('You have entered invalid login credentials..','emplogin.php')</script>";
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
  /* Update card design */
  .contact-form-wthreelayouts {
    background: #fff;
    padding: 30px;
    border-radius: 10px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
  }

  /* Update button design */
  .btn-w3layouts {
    background-color: #007bff;
    color: #fff;
    border: none;
    padding: 10px 20px;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease;
  }

  .btn-w3layouts:hover {
    background-color: #0056b3;
  }
</style>


</head>
<body>
<section  id="contact">
		<div class="container py-xl-5 py-lg-3">
			<div class="title text-center mb-sm-5 mb-4">
				<h3 class="title-w3 text-bl text-center font-weight-bold">Warden / Admin Login Portal</h3>
				<div class="arrw">
					<i aria-hidden="true"></i>
				</div>
			</div>
			<div class="row pt-xl-4">
				<div class="col-lg-8 offset-2">
					<div >
<form action="" method="post" class="register-wthree" name="frmform" onsubmit="return validateform()" >
	<div class="form-group">
		<label>
			Login ID <span id="idlogin_id" class="errclass" ></span> 
		</label>
		<input class="form-control"  type="text" name="login_id">
		</div>
	<div class="form-group">
		<label>
			Password <span id="idpassword" class="errclass" ></span> 
		</label>
		<input class="form-control"  type="password" name="password">
	</div>
	<div class="form-group mt-4 mb-0">
		<button type="submit" name="submit" class="btn btn-w3layouts w-100">Click here to Login</button>
	</div>
</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- //contact -->

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