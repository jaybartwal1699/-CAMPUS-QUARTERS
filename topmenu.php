<style>
#mmenu, #mmenu ul {
    margin: 0;
    padding: 0;
    list-style: none;
    background-color: lightgoldenrodyellow; /* Set background color to yellow */
}

#mmenu {
    width: 100%; /* Set width to 100% */
    background-color: lightgoldenrodyellow; /* Light background color */
    overflow: hidden; /* Ensure that overflowing content is hidden */
    display: flex; /* Use flexbox */
    border-top: 1px solid #111; /* Top border */
	border-bottom: 1px solid #111;
}

#mmenu li {
    flex: 1; /* Distribute available space equally among menu items */
    position: relative;
}

#mmenu a {
    display: block;
    padding: 12px 20px; /* Adjust padding */
    color: #000; /* Text color black */
    text-decoration: none;
    font-size: 14px; /* Font size */
    text-align: center; /* Center text */
    background-color: lightgoldenrodyellow; /* Set background color to yellow */
}

#mmenu > li > a {
    background-color: white; /* Blue background for top-level links */
    color: #111; /* Text color white */
    border-right: 2px solid #ddd; /* Right border */
}

#mmenu li:hover > a {
    background-color: lightcyan; /* Darker blue on hover */
}

#mmenu ul {
    display: none;
    position: absolute;
    top: 100%; /* Position submenus below their parent */
    left: 0;
    background-color: #fff; /* White background for dropdown */
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1); /* Box shadow */
    z-index: 9999;
    border-top: 2px solid #ddd; /* Top border for submenus */
}

#mmenu ul ul {
    top: 0; /* Position nested submenus below their parent */
    left: 100%;
}

#mmenu li:hover > ul {
    display: block;
}

#mmenu ul li {
    position: relative;
}

#mmenu ul a {
    padding: 10px 20px; /* Adjust padding */
}

#mmenu ul a:hover {
    background-color: #f0f0f0; /* Light gray background on hover */
}
</style>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
$(document).ready(function(){
    $('#mmenu > li').click(function(){
        $(this).find('ul').toggle();
    });
});
</script>





<?php
if(isset($_SESSION['hostellerid']))
{
?>
	<div id="mmenu">

		<li><a href="hostelleraccount.php">Main</a></li>

		<li>
			<a href="hostellerprofile.php">My Account</a>
			<ul>
			<li><a href="hostellerprofile.php">Profile</a></li>
			<li><a href="hostellerchangepswd.php">Change Password</a></li>
			</ul>
		</li>

		<li><a href="hostelbookingblock.php">Book Rooms</a></li>

		<li>
			<a href="generate.php">Pay Mess Bill</a>
		
		</li>
		
		
		<!-- <li>
			<a href="#">Report</a>
			<ul>
				<li><a href=" ">Attendance report</a></li>
				<li><a href="viewfees.php">Hostel Fees Report</a></li>
			</ul>
		</li> -->

		<li><a href="logout.php">Logout</a></li>
		
	</div>
<?php
}
if(isset($_SESSION['guestid']))
{
?>
	<div id="mmenu">

		<li><a href="guestaccount.php">Main</a></li>

		<li>
			<a href="#">My Account</a>
			<ul>
			<li><a href="guestprofile.php">Profile</a></li>
			<li><a href="guestchangepswd.php">Change Password</a></li>
			</ul>
		</li>

		<li><a href="hostelbookingreport.php">Hostel Booking Report</a></li>

		<li><a href="logout.php">Logout</a></li>
		
	</div>
<?php
}
if(isset($_SESSION['emp_id']))
{
?>
	<div id="mmenu">

		<li><a href="empaccount.php">Dashboard</a></li>

		<li>
			<a href="employeeprofile.php">Account</a>
			<ul>
			<li><a href="employeeprofile.php">Profile</a></li>
			<li><a href="empchangepswd.php">Change Password</a></li>
			<?php
			if($_SESSION['emp_type'] == "Admin")
			{
			?>
			<li><a href="employee.php">Add New employee</a></li>
			<li><a href="viewemployee.php">View employees</a></li>
			<?php
			}
			?>
			</ul>
		</li>

		<li>
			<a href="viewhosteller.php">Hosteller</a>
			
		</li>
		
		
		
		
		<li>
			<a href="attendance.php">Attendance</a>
			
		</li>
		
		<?php
		if($_SESSION['emp_type'] == "Admin")
		{
		?>	
		<li>
			<a href="room.php">Add Room</a>
			
		</li>
		
		


		<li>
			<a href="mess1.php">Add Mess Bill</a>
		
		</li>
		<!-- <li>
			<a href="blocks.php">Add Block</a>
		
		</li> -->

		<li>
			<a href="employee.php">Add Employee</a>
		
		</li>
		

		<?php
		}
		?>
		<!-- <li>
			<a href="#">Gallery</a>
			<ul>
				<li><a href="photo.php" class="drop-text">Upload Photo</a></li>
				 <li><a href="viewphoto.php" class="drop-text">View Photos</a></li> -->
				<!-- <li><a href="gallerytype.php" class="drop-text">New Gallery</a></li>
				<li><a href="viewgallerytype.php" class="drop-text">View Gallery</a></li> -->
			<!-- </ul>
		</li>-->
		<!-- <li>
			<a href="#">Mess Bill</a>
			<ul>
			<li><a href="messbill.php">Mess bill & Others</a></li>
			 <li><a href="viewmessbill.php">view messbill</a></li> -->
			<!-- </ul>
		</li> --> 
		<li><a href="logout.php">Logout</a></li>
	</div>
<?php
}
?>