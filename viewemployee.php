<?php
include("header.php");
if(isset($_GET['delid']))
{
	$sql = "DELETE  FROM employee WHERE emp_id='" . $_GET['delid'] . "'";
	$qsql = mysqli_query($con,$sql);
	echo mysqli_error($con);
	if(mysqli_affected_rows($con) == 1)
	{
		echo "<script>viewmessagebox('Employee record deleted successfully...','viewemployee.php');</script>";
	}
}
?>
	</div>
	<!-- //banner -->
	<!-- page details -->
	
	<!-- //page details -->

	<!-- contact -->
	<section class="contact-wthree py-5" id="contact">
		<div class="container py-xl-5 py-lg-3">
			<div class="title text-center mb-sm-5 mb-4">
				<h3 class="title-w3 text-bl text-center font-weight-bold">View Employee</h3>
				<div class="arrw">
					<i  aria-hidden="true"></i>
				</div>
			</div>
			<div class="row pt-xl-4">
				<div class="col-lg-12">
					<div class="contact-form-wthreelayouts">
<table id="datatable"  class="table table-striped table-bordered">
	<thead>
		<tr>
			<th>Employee name</th>		
			<th>Login</th>		
			<th>Password</th>		
			<th>Employee type</th>		
			<th>Gender</th>		
			<th>Designation</th>
			<th>Status</th>
			<th>Action</th>			
		</tr>
	</thead>
	<tbody>
	<?php
	$sql ="SELECT * FROM employee";
	$qsql = mysqli_query($con,$sql);
	while($rs = mysqli_fetch_array($qsql))
	{
		echo "<tr>
			<td>$rs[emp_name]</td>		
			<td>$rs[login_id]</td>		
			<td style='text-align: center;'>*******</td>		
			<td>$rs[emp_type]</td>		
			<td>$rs[gender]</td>		
			<td>$rs[designation]</td>	
			<td>$rs[status]</td>	
			<td><a href='employee.php?editid=$rs[0]' class='btn btn-info' >Edit</a>  <a href='#' onclick='return confirmtodel(`$rs[0]`)' class='btn btn-danger' >Delete</a></td>		
		</tr>";
	}
	?>
	</tbody>
</table>					
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

</script>
<script>
function confirmtodel(delid)
{
	swal({
	  title: "Are you sure?",
	  text: "Once deleted, you will not be able to recover this record!",
	  icon: "warning",
	  buttons: true,
	  dangerMode: true,
	})
	.then((willDelete) => {
	  if (willDelete) {
		window.location="?delid="+delid;
	  } else {
		swal("Your Delete request terminated..!");
	  }
	});
	return false;
}
</script>