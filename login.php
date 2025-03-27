<?php

// Database connection settings (adjust these according to your database configuration)
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "ehostel";

// Check if the request method is POST
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Get the email and password from the request
    $emailid = $_POST['emailid'];
    $password = $_POST['password'];

    // Create connection
    $conn = new mysqli($servername, $username, $password, $dbname);

    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // Prepare SQL statement to select user with matching emailid and password
    $sql = "SELECT * FROM hosteller WHERE emailid = '$emailid' AND password = '$password'";

    // Execute SQL statement
    $result = $conn->query($sql);

    // Check if any rows are returned
    if ($result->num_rows > 0) {
        // User authenticated successfully
        $response['success'] = true;
        $response['message'] = "Login successful";
    } else {
        // Authentication failed
        $response['success'] = false;
        $response['message'] = "Invalid email or password";
    }

    // Close database connection
    $conn->close();

    // Send JSON response
    echo json_encode($response);
} else {
    // Invalid request method
    echo "Invalid request method";
}

?>
