<?php
include("header.php");
include("connection.php"); // Assuming connection.php contains database connection details

$conn = new mysqli("localhost", "root", "", "ehostel");

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <style>
        .card {
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
            transition: 0.3s;
            width: 100%;
            margin-bottom: 20px;
          
        }

        .container {
            padding: 100px 16px;
            margin-right: 50px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #f2f2f2;
        }

        .btn-approve {
            background-color: #4CAF50;
            color: white;
            padding: 8px 12px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            text-decoration: none;
            margin-right: 5px;
        }

        .btn-approve:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>

<h1 align="center">Approval Requests</h1>

<div class="card">
    <div class="container">
        <h2>Pending Requests</h2>
        <table>
            <tr>
                <th>Student ID</th>
                <th>Username</th>
                <th>Approval Status</th>
                <th>Action</th>
            </tr>
            <?php
            // Fetch student registrations
            $sql = "SELECT hostellerid, name, approval_status FROM hosteller";
            $result = $conn->query($sql);

            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
                    echo "<tr>";
                    echo "<td>" . $row['hostellerid'] . "</td>";
                    echo "<td>" . $row['name'] . "</td>";
                    echo "<td>" . $row['approval_status'] . "</td>";
                    echo "<td>";
                    if ($row['approval_status'] == 'pending') {
                        echo "<a href='approve_registration.php?id=" . $row['hostellerid'] . "' class='btn-approve'>Approve</a>";
                    } else {
                        echo "Approved";
                    }
                    echo "</td>";
                    echo "</tr>";
                }
            } else {
                echo "<tr><td colspan='4'>No student registrations found</td></tr>";
            }
            ?>
        </table>
    </div>
</div>

<div class="card">
    <div class="container">
        <h2>Approved Requests</h2>
        <table>
            <tr>
                <th>Student ID</th>
                <th>Username</th>
                <th>Approval Status</th>
                <th>Action</th>
            </tr>
            <?php
            // Fetch student registrations with approval_status = 'approved'
            $sql = "SELECT hostellerid, name, approval_status FROM hosteller WHERE approval_status = 'approved'";
            $result = $conn->query($sql);

            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
                    echo "<tr>";
                    echo "<td>" . $row['hostellerid'] . "</td>";
                    echo "<td>" . $row['name'] . "</td>";
                    echo "<td>" . $row['approval_status'] . "</td>";
                    echo "<td>Approved</td>";
                    echo "</tr>";
                }
            } else {
                echo "<tr><td colspan='4'>No student registrations found</td></tr>";
            }
            ?>
        </table>
    </div>
</div>

<?php include("footer.php"); ?>

</body>
</html>

<?php
$conn->close();
?>
