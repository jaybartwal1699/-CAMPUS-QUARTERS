<?php
include("header.php");
if(!isset($_SESSION['hostellerid']))
{
    echo "<script>window.location='hostellerlogin.php';</script>";
}
if(isset($_GET['delid']))
{
    $sql = "DELETE  FROM mess_bill WHERE mess_bill_id='" . $_GET['delid'] . "'";
    $qsql = mysqli_query($con,$sql);
    echo mysqli_error($con);
    if(mysqli_affected_rows($con) == 1)
    {
        echo "<script>alert('Record deleted successfully..');</script>";
        echo "<script>window.location='viewmessbill.php';</script>";
    }
}

function getWorkingDays($startDate,$endDate){
    $startDate = strtotime($startDate);
    $endDate = strtotime($endDate);

    if($startDate <= $endDate){
        $datediff = $endDate - $startDate;
        return floor($datediff / (60 * 60 * 24));
    }
    return false;

}
?>

<?php
// Specify the student ID for which you want to display attendance
$student_id = 1; // Change this to the desired student ID

// Database connection parameters
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "ehostel";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);


// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$student_id = $_SESSION['hostellerid']; // Dynamically set student ID from session

// SQL query to fetch attendance and absence data for the specified student ID
$sql = "SELECT
            att.attdate AS attendance_date,
            SUM(CASE WHEN att.attendancestatus = 'Present' THEN 1 ELSE 0 END) AS attendance_count,
            SUM(CASE WHEN att.attendancestatus = 'Absent' THEN 1 ELSE 0 END) AS absence_count
        FROM
            attendance att
        INNER JOIN
            admission a ON att.admission_id = a.admission_id
        INNER JOIN
            hosteller h ON a.hostellerid = h.hostellerid
        WHERE
            h.hostellerid = $student_id
        GROUP BY
            att.attdate
        ORDER BY
            att.attdate";

$result = $conn->query($sql);

// Initialize arrays to store dates, attendance counts, and absence counts
$dates = array();
$attendance_counts = array();
$absence_counts = array();

// Fetch and store data in arrays
if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        $dates[] = $row['attendance_date'];
        $attendance_counts[] = $row['attendance_count'];
        $absence_counts[] = $row['absence_count'];
    }
}

// Close connection
$conn->close();

// Plotting the data using a line graph (using a plotting library like Chart.js)
?>




<!DOCTYPE html>
<html lang="en">
<head>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.7.0/chart.min.js"></script>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    

    <style>

		

.chart-container {
    display: flex;
    justify-content: center;
    align-items: center;
    padding-bottom: 10px;
    padding-top: 10px;
    margin: 0 auto; /* Center horizontally */
    width: 600px; /* Set width */
    height: 400px; /* Set height */
    margin-bottom: 20px;
    margin-top: 20px; /* Adjust margin to provide space between components */
}

        /* Adjustments for layout */
        body {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        .main-container {
            min-height: 100vh; /* Ensure full viewport height */
            display: flex;
            flex-direction: column;
        }

        .content {
            flex: 1; /* Allow content to grow */
            padding: 20px;
        }
        
    /* Styling the table */
    table {
        width: 50%; /* Adjust width as needed */
        margin: 0 auto; /* Center the table horizontally */
        border-collapse: collapse;
    }

    th, td {
        padding: 6px;
        text-align: center;
        border: 1px solid #ddd; /* Add borders */
    }

    th {
        background-color: #f2f2f2;
    }

    /* Styling table rows */
    tr:nth-child(even) {
        background-color: #f9f9f9;
    }

    /* Hover effect on rows */
    tr:hover {
        background-color: #f2f2f2;
    }

    </style>
</head>
<body style="background-color: white;">

<div class="title text-center mb-sm-5 mb-4">
    <h3 class="title-w3 text-bl text-center font-weight-bold" style="color: black;">Student Account</h3>
    <div class="arrw">
        <i  aria-hidden="true"></i>
    </div>
</div>

<div class="row welcome-bottom text-center">
    <div class="col-lg-12 col-sm-12">
        <div class="welcome-grid bg-white py-5 px-4">
            <h4 class="mt-4 mb-3 text-dark">Admission Detail</h4>
            <p>
                <table id="datatable"  class="table table-striped table-bordered" style=" width: 50%;">
                    <thead>
                        <tr>
                            <th>Room Type</th>      
                            <th>Room No.</th>       
                            <th>Start date</th>     
                            <th>End date</th>       
                            <th>Food Type</th>      
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $sql ="SELECT * FROM admission LEFT JOIN hosteller ON admission.hostellerid=hosteller.hostellerid LEFT JOIN room ON room.room_id=admission.room_id LEFT JOIN fees_structure ON fees_structure.fee_str_id=room.fee_str_id LEFT JOIN blocks on blocks.block_id=fees_structure.block_id WHERE admission.status='Active' AND ('$dt' BETWEEN admission.start_date AND admission.end_date) AND  hosteller.hostellerid='" . $_SESSION['hostellerid'] . "'  Order by admission_id DESC limit 0,1";
                        $qsql = mysqli_query($con,$sql);
                        while($rs = mysqli_fetch_array($qsql))
                        {
                            echo "<tr>
                                <td>$rs[block_name] - $rs[room_type]</td>       
                                <td>$rs[room_no]</td>            
                                <td>" . date("d-m-Y",strtotime($rs['start_date'])) . "</td>        
                                <td>" . date("d-m-Y",strtotime($rs['end_date'])) . "</td>        
                                <td>$rs[food_type]</td>            
                            </tr>";
                        }
                        ?>
                    </tbody>
                </table>                            
            </p>
        </div>
    </div>
    <br><hr>
</div>

<div class="title text-center mb-sm-5 mb-4">
    <h4 class="mt-4 mb-3 text-dark">Student Attendance Detail Graph</h4>
    <div class="arrw">
        <i aria-hidden="true"></i>
    </div>

    <!-- Include Chart.js library -->
    <div class="chart-container" style="margin-bottom: 2px;">
        <canvas id="attendanceChart"></canvas>

        <script>
    var ctx = document.getElementById('attendanceChart').getContext('2d');
    var myChart = new Chart(ctx, {
        type: 'bar', // Change the type to 'bar' for a bar graph
        data: {
            labels: <?php echo json_encode($dates); ?>,
            datasets: [{
                    label: 'Attendance',
                    data: <?php echo json_encode($attendance_counts); ?>,
                    backgroundColor: 'rgba(54, 162, 235, 0.6)', // Background color of attendance bars
                    borderColor: 'rgba(54, 162, 235, 1)', // Border color of attendance bars
                    borderWidth: 1 // Border width of attendance bars
                },
                {
                    label: 'Absences',
                    data: <?php echo json_encode($absence_counts); ?>,
                    backgroundColor: 'rgba(255, 99, 132, 0.6)', // Background color of absence bars (red)
                    borderColor: 'rgba(255, 99, 132, 1)', // Border color of absence bars (red)
                    borderWidth: 1 // Border width of absence bars
                }
            ]
        },
        options: {
            plugins: {
                title: {
                    display: true,
                    text: 'Student Attendance', // Chart title
                    font: {
                        size: 20 // Font size of title
                    }
                },
                legend: {
                    display: true // Display legend
                }
            },
            scales: {
                y: {
                    beginAtZero: true,
                    grid: {
                        display: true // Display grid lines
                    },
                    ticks: {
                        stepSize: 1 // Set step size for ticks
                    },
                    title: {
                        display: true,
                        text: 'Count' // Y-axis title
                    }
                },
                x: {
                    grid: {
                        display: false // Hide grid lines
                    },
                    title: {
                        display: true,
                        text: 'Date' // X-axis title
                    }
                }
            },
            animation: {
                duration: 2000, // Animation duration
                easing: 'easeInOutQuart' // Animation easing
            }
        }
    });
</script>
    </div>
</div>



</body>
</html>

<?php
include("footer.php");
?>
