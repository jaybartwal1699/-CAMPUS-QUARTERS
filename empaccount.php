<?php
include("header.php");
if(!isset($_SESSION['emp_id']))
{
	echo "<script>window.location='emplogin.php';</script>";
}
?>
</div>
	
	<section class="blog_w3ls py-5" id="news">
		<div class="container py-xl-5 py-lg-3">
			<div class="title text-center mb-sm-5 mb-4">
				<h3 class="title-w3 text-bl text-center font-weight-bold">Employee Dashboard</h3>
				<div class="arrw">
					<i aria-hidden="true"></i>
				</div>
			</div>	
            
            <?php include("atten_data.php"); ?>
            
<div class="col-md-12">
<h4 style='color: red' align="center">Recent Admissions:</h4>
	<table id="datatable"  class="table table-striped table-bordered">
	<thead>
		<tr>	
			<th>Hosteller</th>		
			<th>Room No.</th>		
			<th>Start date</th>		
			<th>End date</th>		
			<th>Food Type</th>		
		</tr>
	</thead>
	<tbody>
	<?php
	$sql ="SELECT * FROM admission LEFT JOIN hosteller ON admission.hostellerid=hosteller.hostellerid LEFT JOIN room ON room.room_id=admission.room_id WHERE admission.status='Active' Order by admission_id DESC limit 0,3";
	$qsql = mysqli_query($con,$sql);
	while($rs = mysqli_fetch_array($qsql))
	{
		echo "<tr>
			<td>$rs[hostellertype] - $rs[name]</td>		
			<td>$rs[room_no]</td>		
			<td>" . date("d-m-Y",strtotime($rs['start_date'])) . "</td>		
			<td>" . date("d-m-Y",strtotime($rs['end_date'])) . "</td>		
			<td>$rs[food_type]</td>			
		</tr>";
	}
	?>
	</tbody>
</table>					

</div>			


			
		
<div class="row">
    <style>
        .custom-card-body {
    background-color: #dcf9fc;
    border: 1px solid #007bff; 
}

.notification-badge {
    background-color: red;
    color: white;
    border-radius: 4px;
    padding: 5px 10px;
    font-size: 15px;
}

.notification-text {
    color: red;
    margin-left: 5px;
    font-size: 14px;
}


    </style>
   
    <div class="col-lg-6 col-md-6">
    <div class="card border-0 custom-card">
        <div class="card-header p-3">
            <h5 class="blog-title card-title font-weight-bold m-3 text-center" style="color:#02b3c7;">Employee Records</h5>
        </div>
        <div class="card-body custom-card-body pb-3 text-center">
            <div class="mb-3">
                <h5 class="blog-title card-title font-weight-bold m-3" >
                    <?php
                    $sql = "SELECT * FROM employee";
                    $qsql = mysqli_query($con,$sql);
                    echo mysqli_num_rows($qsql);
                    ?> Records
                </h5>
            </div>
            <div class="d-flex justify-content-center">
                <a href="#" class="blog-btn">Click Here</a>
            </div>
        </div>
    </div>
</div>


  
<div class="col-lg-6 col-md-6">
    <div class="card border-0 custom-card">
        <div class="card-header p-3 position-relative">
            <h5 class="blog-title card-title font-weight-bold m-3 text-center" style="color:#02b3c7; font-size: 1.2rem;">
                Pending Records 
                <?php
                // Fetch count of pending records
                $pendingRecordsSql = "SELECT COUNT(*) AS pending_records FROM hosteller WHERE approval_status = 'pending'";
                $pendingRecordsResult = mysqli_query($con, $pendingRecordsSql);
                $pendingRecordsData = mysqli_fetch_assoc($pendingRecordsResult);
                $pendingRecordsCount = $pendingRecordsData['pending_records'];
                ?>
                <?php if ($pendingRecordsCount > 0): ?>
                    <span class="notification-badge"><?php echo $pendingRecordsCount; ?> panding</span>
                    <span class="notification-text">Notification</span>
                <?php endif; ?>
            </h5>
        </div>
        <div class="card-body custom-card-body pb-3 text-center">
            <div class="mb-3">
                <h5 class="blog-title card-title font-weight-bold m-3">
                    <?php echo mysqli_num_rows($qsql); ?> Records
                </h5>
            </div>
            <div class="d-flex justify-content-center">
                <a href="Approve.php" class="blog-btn">Click Here</a>
            </div>
        </div>
    </div>
</div>





<div class="col-lg-6 col-md-6">
    <div class="card border-0 custom-card">
        <div class="card-header p-3">
            <h5 class="blog-title card-title font-weight-bold m-3 text-center" style="color:#02b3c7;">Room Records Detail</h5>
        </div>
        <div class="card-body custom-card-body pb-3 text-center">
            <div class="mb-3">
                <h5 class="blog-title card-title font-weight-bold m-3">
                    <?php
                    $sql = "SELECT * FROM room";
                    $qsql = mysqli_query($con,$sql);
                    echo mysqli_num_rows($qsql);
                    ?> Records
                </h5>
            </div>
            <div class="d-flex justify-content-center">
                <a href="room_hover.php" class="blog-btn">Click Here</a>
            </div>
        </div>
    </div>
</div>



</div>

			
	
</section>
	
	
				
				
			
				
<?php
include("footer.php");
?>










