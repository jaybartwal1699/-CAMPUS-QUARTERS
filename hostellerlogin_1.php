<body>
  <div class="hero_area">
  <header class="header_section">
      <div class="container-fluid">
        <nav class="navbar navbar-expand-lg custom_nav-container">
          <a class="navbar-brand" href="index.html">
            <img src="images/logo.png" alt="" />
            <span>
              Spering
            </span>
          </a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>

          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav  ">
              <li class="nav-item active">
                <a class="nav-link" href="index.html">Home <span class="sr-only">(current)</span></a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="about.html"> About</a>
              </li>
              
              <li class="nav-item">
                <a class="nav-link" href="hostellerlogin_1.php">hosteller </a>

                    

              </li>

              <li class="nav-item">
                <a class="nav-link" href="emplogin.php">Warden </a>
              </li>

              <li class="nav-item">
                <a class="nav-link" href="work.html">Gallery </a>
              </li>

              <li class="nav-item">
                <a class="nav-link" href="work.html">Contect Us </a>
              </li> 



              <li class="nav-item">
                <a class="nav-link" href="category.html"> Category </a>
              </li>
            </ul>
            <div class="user_option">
              <a href="">
                <span>
                  Login
                </span>
              </a>
              <form class="form-inline my-2 my-lg-0 ml-0 ml-lg-4 mb-3 mb-lg-0">
                <button class="btn  my-2 my-sm-0 nav_search-btn" type="submit"></button>
              </form>
            </div>
          </div>
          <div>
            <div class="custom_menu-btn ">
              <button>
                <span class=" s-1">

                </span>
                <span class="s-2">

                </span>
                <span class="s-3">

                </span>
              </button>
            </div>
          </div>

        </nav>
      </div>
    </header>
    <header class="header_section">
      <!-- Your existing code -->

      <section class="slider_section">
        <!-- Your existing code -->
      </section>

      <!-- Add the login form -->
      <section class="login_section">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-md-6">
              <div class="login_form">
                <h2>Login</h2>
                <form action="login.php" method="POST"> 

                <php 
                <?php
include("header.php");
if(isset($_SESSION['hostellerid']))
{
	echo "<script>window.location='hostelleraccount.php';</script>";
}
if(isset($_POST['submit']))
{
	$sql ="SELECT * FROM hosteller WHERE emailid='$_POST[login_id]' AND password='$_POST[password]' AND status='Active'";
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
</div>
	<!-- //banner -->

	<!-- contact -->
	<section class="contact-wthree" id="contact">
		<div class="container py-xl-5 py-lg-3">
			<div class="title text-center mb-sm-5 mb-4">
				<h3 class="title-w3 text-bl text-center font-weight-bold">Student login Portal</h3>
				<div class="arrw">
					<i class="fa fa-building-o" aria-hidden="true"></i>
				</div>
			</div>
			<div class="row pt-xl-4">
				<div class="col-lg-8 offset-2">
					<div class="contact-form-wthreelayouts">
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
	<!-- //contact -->

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
                ?>

                </form>
              </div>
            </div>
          </div>
        </div>
      </section>
    </header>
  </div>

  <!-- Your existing JavaScript imports -->
  <script src="js_1/jquery-3.4.1.min.js"></script>
  <script src="js_1/bootstrap.js"></script>
  <script src="js_1/custom.js"></script>
</body>
