<?php
// Include database connection
include("connection.php");

$conn = new mysqli("localhost", "root","", "ehostel");

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Check if hosteller ID is provided
if (isset($_GET['id'])) {
    $hosteller_id = $_GET['id'];

    // Update student registration approval status to set registration_approved to 1
    $sql1 = "UPDATE hosteller SET registration_approved = 1 WHERE hostellerid = $hosteller_id";
    if ($conn->query($sql1) === TRUE) {
        // Update approval_status to 'approved'
        $sql2 = "UPDATE hosteller SET approval_status = 'approved' WHERE hostellerid = $hosteller_id";
        if ($conn->query($sql2) === TRUE) {
            echo "Registration Approved successfully";
        } else {
            echo "Error updating approval status: " . $conn->error;
        }
    } else {
        echo "Error updating registration approval: " . $conn->error;
    }
} else {
    echo "Hosteller ID not provided";
}

// Redirect back to admin page
header("Location: Approve.php");
exit();
?>
