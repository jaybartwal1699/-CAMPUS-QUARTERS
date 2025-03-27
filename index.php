<?php
include("header.php");
?>

<style>
	
  .round-button {
    border: none;
    border-radius: 50%;
    background-color: #f0f0f0; /* Light background color */
    color: #333; /* Text color */
    padding: 10px 20px;
    font-size: 16px;
    cursor: pointer;
    transition: background-color 0.3s ease;
  }

  .round-button:hover {
    background-color: #ddd; /* Lighter background color on hover */
  }

</style>
	<!-- banner -->
	<div class="banner-w3pvt">
	
	<?php include("SliderNew.php"); ?>
	
	
	</div>
	<!-- //banner -->
	
	
		<!-- events -->

	<!-- //events -->
<?php
if(!isset($_SESSION['hostellerid']))
{
	if(!isset($_SESSION['guestid']))
	{
		if(!isset($_SESSION['emp_id']))
		{
		?>
	<!-- news -->
	<section class="blog_w3ls " id="news">
		<div class="container py-xl-5 py-lg-3"><hr>
			<div class="title text-center mb-sm-5 mb-4">
				<h4 class="title-w3 text-bl text-center font-weight-bold"> ACCOUNT PANEL</h4>
				<div class="arrw">
					<i  aria-hidden="true"></i>
				</div>
			</div>

					<div class="row pt-4">

						<!-- blog grid -->
						<div class="col-lg-3 col-md-3 mt-lg-0 mt-5">
							<div class="card border-0 med-blog">
								<div class="card-header p-0">
									<a href="hostellerlogin.php">
										
									</a>
								</div>
								<div class="card-body border border-top-0 pb-5">
									<div class="mb-3">
										<h5 class="blog-title card-title font-weight-bold m-0">
											<a href="hostellerlogin.php">Student - Login</a>
										</h5>
									</div>
									<a href="hostellerlogin.php" class="blog-btn">Click here to Login</a>
								</div>
							</div>
						</div>
						<!-- //blog grid -->
						<!-- blog grid -->
						<div class="col-lg-3 col-md-3 mt-md-0 mt-5">
							<div class="card border-0 med-blog">
								<div class="card-header p-0">
									<a href="hosteller.php">
									
									</a>
								</div>
								<div class="card-body border border-top-0 pb-5">
									<div class="mb-3">
										<h5 class="blog-title card-title font-weight-bold m-0">
											<a href="hosteller.php">Student - Register</a>
										</h5>
									</div>
									<a href="hosteller.php" class="blog-btn">Click here to Register</a>
								</div>
							</div>
						</div>
						<!-- //blog grid -->
						<!-- blog grid -->
						<div class="col-lg-3 col-md-3 mt-lg-0 mt-5">
							<div class="card border-0 med-blog">
								<div class="card-header p-0">
									<a href="emplogin.php">
										
									</a>
								</div>
								<div class="card-body border border-top-0 pb-5">
									<div class="mb-3">
										<h5 class="blog-title card-title font-weight-bold m-0">
											<a href=" ">Admin - Login</a>
										</h5>
									</div>
									<a href=" emplogin.php" class="blog-btn">Click here to Register</a>
								</div>
							</div>
						</div>
						<!-- //blog grid -->
						<!-- blog grid -->
						<div class="col-lg-3 col-md-3 mt-lg-0 mt-5">
							<div class="card border-0 med-blog">
								<div class="card-header p-0">
									<a href="hosteller.php">
										
									</a>
								</div>
								<div class="card-body border border-top-0 pb-5">
									<div class="mb-3">
										<h5 class="blog-title card-title font-weight-bold m-0">
											<a href="hosteller.php">Admin - Register</a>
										</h5>
									</div>
									<a href="hosteller.php" class="blog-btn">Click here to Register</a>
								</div>
							</div>
						</div>
						<!-- //blog grid -->
					</div>
		
		</div>
	</section>
	<!-- //blog -->
		<?php
		}
	}
}
?>	
<?php
include("footer.php");
?>