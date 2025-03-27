

<div class="col-md-12"  style="font-family: Arial, sans-serif;"   style="color: lightblue" align="center">
<h4 style='color: red'>Attendate data Summary:</h4>
</div>

<?php
// Database connection
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

// Fetch attendance data from the database
$sql = "SELECT
            h.name AS student_name,
            att.attdate AS attendance_date,
            COUNT(att.attendanceid) AS attendance_count
        FROM
            attendance att
        INNER JOIN
            admission a ON att.admission_id = a.admission_id
        INNER JOIN
            hosteller h ON a.hostellerid = h.hostellerid
        GROUP BY
            h.name, att.attdate
        ORDER BY
            h.name, att.attdate";

$result = $conn->query($sql);

// Format the data into an associative array
$data = array();
while ($row = $result->fetch_assoc()) {
    $student_name = $row['student_name'];
    $attendance_date = $row['attendance_date'];
    $attendance_count = (int)$row['attendance_count'];

    // Store data in the format suitable for Google Charts
    $data[$student_name][] = array('date' => $attendance_date, 'count' => $attendance_count);
}

// Fetch the names of the students with the highest and lowest attendance counts
$sql_min_max = "SELECT
                    MIN_ATT.hosteller_name AS min_attendance_student_name,
                    MAX_ATT.hosteller_name AS max_attendance_student_name
                FROM (
                    SELECT 
                        h.name AS hosteller_name,
                        COUNT(att.attendanceid) AS attendance_count
                    FROM 
                        attendance att
                    INNER JOIN 
                        admission a ON att.admission_id = a.admission_id
                    INNER JOIN 
                        hosteller h ON a.hostellerid = h.hostellerid
                    GROUP BY 
                        h.name
                    ORDER BY 
                        COUNT(att.attendanceid) ASC
                    LIMIT 1
                ) AS MIN_ATT
                CROSS JOIN (
                    SELECT 
                        h.name AS hosteller_name,
                        COUNT(att.attendanceid) AS attendance_count
                    FROM 
                        attendance att
                    INNER JOIN 
                        admission a ON att.admission_id = a.admission_id
                    INNER JOIN 
                        hosteller h ON a.hostellerid = h.hostellerid
                    GROUP BY 
                        h.name
                    ORDER BY 
                        COUNT(att.attendanceid) DESC
                    LIMIT 1
                ) AS MAX_ATT";

$result_min_max = $conn->query($sql_min_max);
$row_min_max = $result_min_max->fetch_assoc();
$min_attendance_student_name = $row_min_max['min_attendance_student_name'];
$max_attendance_student_name = $row_min_max['max_attendance_student_name'];

// Close the database connection
$conn->close();
?>

<!DOCTYPE html>
<html>
<head>
    <style>
        /* Center align the chart within its container */
        #curve_chart {
            margin: 0 auto;
            display: block;
        }
    </style>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

    <script type="text/javascript">
        google.charts.load('current', {'packages':['corechart']});
        google.charts.setOnLoadCallback(drawChart);

        function drawChart() {
            var data = new google.visualization.DataTable();
            data.addColumn('date', 'Date');

            <?php
            // Add a column for each student
            foreach ($data as $student_name => $attendance_data) {
                echo "data.addColumn('number', '$student_name');";
            }
            ?>

            data.addRows([
                <?php
                // Add attendance data rows
                foreach ($data[array_key_first($data)] as $row) {
                    $date = "new Date('{$row['date']}')";
                    $row_values = array();

                    foreach ($data as $student_name => $attendance_data) {
                        $count = 0;

                        foreach ($attendance_data as $data_point) {
                            if ($data_point['date'] === $row['date']) {
                                $count = $data_point['count'];
                                break;
                            }
                        }

                        $row_values[] = $count;
                    }

                    echo "[$date, " . implode(', ', $row_values) . "],";
                }
                ?>
            ]);

            var options = {
                title: 'Attendance Records (Lowest: <?php echo $min_attendance_student_name; ?>, Highest: <?php echo $max_attendance_student_name; ?>)',
                legend: { position: 'right' }
            };

            var chart = new google.visualization.ScatterChart(document.getElementById('curve_chart'));
            chart.draw(data, options);
        }
    </script>
</head>
<body>
<div id="curve_chart" style="width: 900px; height: 500px"></div>
</body>
</html>


