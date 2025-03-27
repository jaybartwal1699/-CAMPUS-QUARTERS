<?php
include("header.php");

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

// Fetch hosteller names
$sql = "SELECT hostellerid, name FROM hosteller";
$result = $conn->query($sql);

// Store hosteller names in an array
$hostellers = [];
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $hostellers[] = $row;
    }
}

// Process form submission
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Retrieve form data
    $hostellerid = $_POST["hostellerid"];
    $bill_date = $_POST["bill_date"];
    $bill_amount = $_POST["bill_amount"];

    // Validate form data (you can add more validation if needed)
    if (empty($hostellerid) || empty($bill_date) || empty($bill_amount)) {
        echo "All fields are required.";
    } else {
        // Insert the mess bill into the database
        $sql = "INSERT INTO mess_bill_test (hostellerid, bill_date, bill_amount) VALUES (?, ?, ?)";
        $stmt = $conn->prepare($sql);
        $stmt->bind_param("iss", $hostellerid, $bill_date, $bill_amount);

        if ($stmt->execute() === TRUE) {
            echo "Mess bill generated successfully.";
        } else {
            echo "Error generating mess bill: " . $conn->error;
        }

        $stmt->close();
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mess Bill Generation</title>
</head>
<body>

<!-- <h1>Generate Mess Bill</h1> -->

<!-- <form action="" method="post">
    <label for="hosteller">Select Hosteller:</label>
    <select name="hostellerid" id="hosteller" required>
        <option value="">Select a Hosteller</option>
        <?php foreach ($hostellers as $hosteller): ?>
            <option value="<?php echo $hosteller['hostellerid']; ?>"><?php echo $hosteller['name']; ?></option>
        <?php endforeach; ?>
    </select>
    <br>
    <label for="bill_date">Bill Date:</label>
    <input type="date" id="bill_date" name="bill_date" required>
    <br>
    <label for="bill_amount">Bill Amount:</label>
    <input type="number" id="bill_amount" name="bill_amount" min="0" step="0.01" required>
    <br>
    <button type="submit">Generate Bill</button>
</form> -->


<section class="contact-wthree py-5" id="contact">
		<div class="container py-xl-5 py-lg-3">
			<div class="title text-center mb-sm-5 mb-4">
				<h3 class="title-w3 text-bl text-center font-weight-bold">Generate Mess Bill</h3>
				<div class="arrw">
					<i  aria-hidden="true"></i>
				</div>
			</div>
			<div class="row pt-xl-4">
				<div class="col-lg-8 offset-2">
					<div >
<form action="" method="post" class="register-wthree">
	
	<div class="form-group">
		<label for="hosteller">Select Hosteller:</label>
    <select name="hostellerid" id="hosteller" required>
        <option value="">Select a Hosteller</option>
        <?php foreach ($hostellers as $hosteller): ?>
            <option value="<?php echo $hosteller['hostellerid']; ?>"><?php echo $hosteller['name']; ?></option>
        <?php endforeach; ?>
    </select>
	</div>
	<div class="form-group">
		<label>
			Bill Date
		</label>
		
        <input class="form-control" type="date" id="bill_date" name="bill_date" required>
    <br>
	</div>
	<div class="form-group">
		<label>
        Bill Amount:
		</label>
        <input  class="form-control" type="number" id="bill_amount" name="bill_amount" min="0" step="0.01" required>
		
	</div>

	<div class="form-group mt-4 mb-0">
		<button type="submit" name="submit" class="btn btn-w3layouts w-100">Submit</button>
	</div>
</form>
					</div>
				</div>
			</div>
		</div>
	</section>

</body>
</html>

<?php include("footer.php"); ?>
