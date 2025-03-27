<?php
include("header.php");

?>
	</div>
	<!-- //banner -->
	<!-- page details -->
	
	<!-- //page details -->

	<!-- contact -->
	<section class="contact-wthree py-5" id="contact">
		<div >
			<div class="title text-center mb-sm-5 mb-4">
				<h3 class="title-w3 text-bl text-center font-weight-bold">View Hosteller</h3>
				<div class="arrw">
					<i  aria-hidden="true"></i>
				</div>
			</div>
			
			<?php

// Database connection parameters
$servername = "localhost"; // Change this if your MySQL server is hosted elsewhere
$username = "root"; // Change this to your MySQL username
$password = ""; // Change this to your MySQL password
$dbname = "ehostel"; // Change this to your MySQL database name

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// SQL query to fetch all hosteller details
$sql = "SELECT * FROM hosteller";
$result = $conn->query($sql);

// Check if there are any results
if ($result->num_rows > 0) {
    // Output data of each row in a table format with styling
	echo "<style>
	table {
		border-collapse: collapse;
		width: 80%; /* Adjust the width as per your requirement */
		margin: auto; /* Center the table */
	}
	th, td {
		border: 1px solid #dddddd;
		text-align: left;
		padding: 8px;
	}
	th {
		background-color: #f2f2f2;
	}
	tr:nth-child(even) {
		background-color: #f2f2f2;
	}
	</style>";
    echo "<table>
            <tr>
                <th>Hosteller ID</th>
                <th>Hosteller Type</th>
                <th>Name</th>
                <th>Email ID</th>
                <th>Date of Birth</th>
                <th>Father's Name</th>
                <th>Mother's Name</th>
                <th>Address</th>
                <th>Contact No</th>
                <th>Status</th>
                <th>Place Belong</th>
                
                <th>Approval Status</th>
            
            </tr>";
    while($row = $result->fetch_assoc()) {
        echo "<tr>
                <td>".$row["hostellerid"]."</td>
                <td>".$row["hostellertype"]."</td>
                <td>".$row["name"]."</td>
                <td>".$row["emailid"]."</td>
                <td>".$row["dob"]."</td>
                <td>".$row["father_name"]."</td>
                <td>".$row["mother_name"]."</td>
                <td>".$row["address"]."</td>
                <td>".$row["contact_no"]."</td>
                <td>".$row["status"]."</td>
                <td>".$row["place_belong"]."</td>
                
                <td>".$row["approval_status"]."</td>
                
            </tr>";
    }
    echo "</table>";
} else {
    echo "0 results";
}
$conn->close();
?>


	<?php
	include("footer.php");
	?>
<script>
//12
/* Custom filtering function which will search data in column four between two values */
$.fn.dataTable.ext.search.push(
    function( settings, data, dataIndex ) {
        var min = parseInt( $('#min').val(), 10 );
        var min12 = parseInt( $('#min12').val(), 10 );
        var max = parseInt( $('#max').val(), 10 );1
        var max12 = parseInt( $('#max12').val(), 10 );
        var age = parseFloat( data[9] ) || 0; // use data for the age column
        var age12 = parseFloat( data[12] ) || 0; // use data for the age column
 
        if ( ( isNaN( min ) && isNaN( max ) ) ||
             ( isNaN( min ) && age <= max ) ||
             ( min <= age   && isNaN( max ) ) ||
             ( min <= age   && age <= max )  ||
			 ( isNaN( min12 ) && isNaN( max12) ) ||
             ( isNaN( min12 ) && age <= max12 ) ||
             ( min <= age12   && isNaN( max12 ) ) ||
             ( min <= age12   && age <= max12 ) )
        {
            return true;
        }
        return false;
    }
);
 
$(document).ready(function() {
    var table = $('#datatable').DataTable();
     
    // Event listener to the two range filtering inputs to redraw on input
    $('#min, #max,#min12, #max12').keyup( function() {
        table.draw();
    } );
} );
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