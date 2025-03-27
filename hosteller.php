<?php
include("header.php");
if(isset($_POST['submit']))
{
	if(isset($_GET['editid']))
	{
		//Update statement starts here
		 $sql ="UPDATE hosteller SET hostellertype='$_POST[hostellertype]',name='$_POST[name]',emailid='$_POST[emailid]',password='$_POST[password]',dob='$_POST[dob]',father_name='$_POST[father_name]',mother_name='$_POST[mother_name]',address='$_POST[address]',contact_no='$_POST[contact_no]',status='Active',place_belong='$_POST[place_belong]',jee_main_rank='$_POST[jee_main_rank]',management_quota='$_POST[management_quota]',ccgpa10='$_POST[ccgpa10]',a12='$_POST[a12]',cocurricular_activities='$_POST[cocurricular_activities]' WHERE hostellerid='" . $_GET['editid'] . "'";
		$qsql = mysqli_query($con,$sql);
		if(mysqli_affected_rows($con) ==1 )
		{
			//echo "<SCRIPT>alert('Hosteller record updated successfully..');</SCRIPT>";
			//echo "<script>window.location='viewhosteller.php';</script>";
			echo "<script>viewmessagebox('hosteller  record updated successfully  ....','viewhosteller.php')</script>";
		}
		else
		{
			echo mysqli_error($con);
		}
		//Update statement ends here		
	}
	else
	{
		
		$sql = "INSERT INTO hosteller(hostellertype,name,emailid,password,dob,father_name,mother_name,address,contact_no,status,place_belong,jee_main_rank,management_quota,ccgpa10,a12,cocurricular_activities) VALUES('$_POST[hostellertype]','$_POST[name]','$_POST[emailid]','$_POST[password]','$_POST[dob]','$_POST[father_name]','$_POST[mother_name]','$_POST[address]','$_POST[contact_no]','Active','$_POST[place_belong]','$_POST[jee_main_rank]','$_POST[management_quota]','$_POST[ccgpa10]','$_POST[a12]','$_POST[cocurricular_activities]')";
		$qsql = mysqli_query($con,$sql);
		if(mysqli_affected_rows($con) ==1 )
		{
			echo "<script>viewmessagebox('Hosteller Registration done successfully....','hostellerlogin.php')</script>";
		}
		else
		{
			echo mysqli_error($con);
		}
	}
}
if(isset($_GET['editid']))
{
	$sqledit = "SELECT * FROM  hosteller WHERE hostellerid='" . $_GET['editid'] . "'";
	$qsqledit = mysqli_query($con,$sqledit);
	$rsedit = mysqli_fetch_array($qsqledit);
}
?>
	</div>
	<!-- //banner -->

	<!-- contact -->
	<section class="contact-wthree" id="contact">
		<div class="container py-lg-3">
			<div class="title text-center">
				<h3 class="title-w3 text-bl text-center font-weight-bold">Hosteller Registration Form</h3>
			</div>
			<div class="row pt-xl-4">
				<div class="col-lg-12 ">
					<div >
<form action="" method="post" class="register-wthree" name="frmform" onsubmit="return validateform()">
	
	
	<div class="row">
		<div class="col-lg-6">
			<label>
				Hosteller type
			</label><span class="errclass" id="idhostellertype"></span>
			<select name="hostellertype" class="form-control">
				<option value="">Select</option>
				<?php
				$arr = array("Employee","Student","Others");
				foreach($arr as $val)
				{
					
					if($val == $rsedit['hostellertype'])
					{
					echo "<option value='$val' selected>$val</option>";
					}
					else
					{
					echo "<option value='$val'>$val</option>";
					}
				}
				?>
			</select>
		</div>
		<div class="col-lg-6">
			<label>
				Name
			</label><span class="errclass" id="idname"></span>
			<input class="form-control"  type="text" name="name"  value="<?php echo $rsedit['name'];?>">
		</div>
	</div>


		
	<div class="row">
		<div class="col-lg-6">
		<br>
		<label>
			Email ID
		</label><span class="errclass" id="idemailid"></span>
		<input class="form-control" type="email" placeholder="Email ID" name="emailid" value="<?php echo $rsedit['emailid'];?>">
		</div>
		<div class="col-lg-6">
		<br>
			<label>Date of Birth</label><span class="errclass" id="iddob"></span>
			<input class="form-control" type="date" placeholder="DOB" name="dob" value="<?php echo $rsedit['dob'];?>">
		</div>
	</div>
		
	
	<div class="row">
		<div class="col-lg-6">
		<br>
			<label>
				Password	
			</label><span class="errclass" id="idpassword"></span>
			<input class="form-control" type="password" placeholder="Password" name="password" value="<?php echo $rsedit['password'];?>" >
		</div>
		<div class="col-lg-6">
		<br>
			<label>
				Confirm Password	
			</label><span class="errclass" id="idcpassword"></span>
			<input class="form-control" type="password" placeholder="Confirm Password" name="cpassword" value="<?php echo $rsedit['password'];?>" >
		</div>
	</div>
	
	
	<div class="row">
		<div class="col-lg-6">
		<br>
			<label>
				Father Name
			</label><span class="errclass" id="idfather_name"></span>
			<input class="form-control"  type="text" name="father_name" value="<?php echo $rsedit['father_name'];?>">
		</div>
		<div class="col-lg-6">
		<br>
			<label>
			Mother Name
			</label><span class="errclass" id="idmother_name"></span>
			<input class="form-control"  type="text" name="mother_name" value="<?php echo $rsedit['mother_name'];?>">
		</div>
	</div>
	

	<div class="form-group">
		<br>
		<label>
			Address
		</label><span class="errclass" id="idaddress"></span>
		<textarea name="address" class="form-control"><?php echo $rsedit['address'];?></textarea>
	</div>




	<div class="row">
		<div class="col-lg-6">
		<br>
		<label>
			Mobile No
		</label><span class="errclass" id="idparent_no"></span>
		<input class="form-control"  type="text" name="contact_no" value="<?php echo $rsedit['contact_no'];?>">
		</div>
		<div class="col-lg-6">
		<br>
		<label>
				Place belong
			</label><span class="errclass" id="idplace_belong"></span>
			<input class="form-control"  type="text" name="place_belong" value="<?php echo $rsedit['place_belong'];?>">
		</div>
	</div>




		
	
	<div class="form-group mt-4 mb-0">
		<button type="submit" name="submit" class="btn btn-w3layouts w-100">Click here to Register</button>
	</div>
</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- //contact -->

<?php
include("footer.php");
?>
<script>
function validateform()
{
	var numericExpression = /^[0-9]+$/;
	var alphaExp = /^[a-zA-Z]+$/;
	var alphaSpaceExp = /^[a-zA-Z\s]+$/;
	var alphanumericExp = /^[0-9a-zA-Z]+$/;
	var emailExp = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/;
	var mobnoExp = /^([0|\+[0-9]{1,5})?([7-9][0-9]{9})$/;

	$(".errclass").html('');
	
	var errstatus = "true";
	if(document.frmform.hostellertype.value == "")
	{
		document.getElementById("idhostellertype").innerHTML = "Kindly select hosteller type...";
		errstatus = "false";
	}
	if(!document.frmform.name.value.match(alphaSpaceExp))
	{
		document.getElementById("idname").innerHTML = "Entered name is not valid...";
		errstatus = "false";
	}
	if(document.frmform.name.value == "")
	{
		document.getElementById("idname").innerHTML = "Name should not be empty...";
		errstatus = "false";
	}
	if(!document.frmform.emailid.value.match(emailExp))
	{
		document.getElementById("idemailid").innerHTML = "Entered Email ID is not valid...";
		errstatus = "false";
	}
	if(document.frmform.emailid.value == "")
	{
		document.getElementById("idemailid").innerHTML = "Email ID should not be empty...";
		errstatus = "false";
	}
	if(document.frmform.dob.value == "")
	{
		document.getElementById("iddob").innerHTML = "Date of Birth should not be empty...";
		errstatus = "false";
	}
	
	if(document.frmform.password.value.length<6)
	{
		document.getElementById("idpassword").innerHTML = "Password should contain more than 6 characters.....";
		errstatus = "false";
	}
	if(document.frmform.password.value == "")
	{
		document.getElementById("idpassword").innerHTML = "Password should not be empty...";
		errstatus = "false";
	}
	if(document.frmform.cpassword.value == "")
	{
		document.getElementById("idcpassword").innerHTML = "Confirm password should not be empty...";    
		errstatus = "false";
	}
	if(document.frmform.password.value != document.frmform.cpassword.value)
	{
		document.getElementById("idcpassword").innerHTML = "Password and Confirm password not matching...";
		errstatus = "false";
	}
	if(!document.frmform.father_name.value.match(alphaSpaceExp))
	{
		document.getElementById("idfather_name").innerHTML = "Entered name is not valid...";
		errstatus = "false";
	}
	if(document.frmform.father_name.value == "")
	{
		document.getElementById("idfather_name").innerHTML = "Father name should not be empty...";
		errstatus = "false";
	}
	if(document.frmform.address.value == "")
	{
		document.getElementById("idaddress").innerHTML = "Address should not be empty...";
		errstatus = "false";
	}
	if(!document.frmform.contact_no.value.match(numericExpression))
	{
		document.getElementById("idparent_no").innerHTML = "Contact number should contain digits..";
		errstatus = "false";
	}
	if(!document.frmform.contact_no.value.match(mobnoExp))
	{
		document.getElementById("idparent_no").innerHTML = "Entered Mobile Number is not valid..";
		errstatus = "false";
	}
	if(document.frmform.contact_no.value.length != 10)
	{
		document.getElementById("idparent_no").innerHTML = "Contact number should contain 10 digits..";
		errstatus = "false";
	}
	if(document.frmform.contact_no.value == "")
	{
		document.getElementById("idparent_no").innerHTML = "Mobile number should not be empty...";
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