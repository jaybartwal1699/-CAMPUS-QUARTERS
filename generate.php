<?php
include("header.php");

// Start session to access hosteller's ID stored after login
session_start();

// Check if hosteller is logged in
if (!isset($_SESSION['hostellerid'])) {
    // Redirect to login page if not logged in
    header("Location: login.php"); // Replace with your login page URL
    exit();
}

// Retrieve hosteller's ID from session
$hosteller_id = $_SESSION['hostellerid'];

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

$bill_details = "";
$bill_amount = 0;

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Retrieve form data
    $selected_date = $_POST["selected_date"];

    // Fetch hosteller's bill for the selected date
    $sql = "SELECT bill_date, bill_amount FROM mess_bill_test WHERE hostellerid = ? AND bill_date = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("is", $hosteller_id, $selected_date);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        // Display bill details
        $bill_details .= "<h2>Mess Bill for " . date("d-M-Y", strtotime($selected_date)) . "</h2>";
        $bill_details .= "<table class='table table-bordered'><tr><th>Bill Date</th><th>Bill Amount</th></tr>";
        while ($row = $result->fetch_assoc()) {
            $bill_details .= "<tr><td>" . date("d-M-Y", strtotime($row['bill_date'])) . "</td><td>" . $row['bill_amount'] . "</td></tr>";
            $bill_amount = $row['bill_amount'];
        }
        $bill_details .= "</table>";
        $bill_details .= "<button id='payButton' class='btn btn-primary mt-3 mx-auto d-block'>Pay Now</button>";

    } else {
        $bill_details .= "<div class='alert alert-warning'>No bill found for the selected date.</div>";
    }

    $stmt->close();
}

$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Mess Bill</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://checkout.razorpay.com/v1/checkout.js"></script>
    <style>
        .bill-details {
            margin-top: 20px;
        }
        .bill-details h2 {
            margin-bottom: 20px;
        }
        .bill-details table {
            width: 100%;
            margin-bottom: 20px;
        }
        .alert {
            margin-top: 20px;
        }
    </style>
</head>
<body>

<section class="contact-wthree py-5" id="contact">
    <div class="container py-xl-5 py-lg-3">
        <div class="title text-center mb-sm-5 mb-4">
            <h3 class="title-w3 text-bl text-center font-weight-bold">View Bill</h3>
            <div class="arrw">
                <i aria-hidden="true"></i>
            </div>
        </div>
        <div class="row pt-xl-4">
            <div class="col-lg-8 offset-2">
                <div>
                    <form action="" method="post" class="register-wthree">
                        <div class="form-group">
                            <label for="selected_date">Select Date:</label>
                            <input class="form-control" type="date" id="selected_date" name="selected_date" required>
                        </div>
                        <div class="form-group mt-4 mb-0">
                            <button type="submit" name="submit" class="btn btn-w3layouts w-100">Submit</button>
                        </div>
                    </form>

                    <!-- Bill details section -->
                    <div class="bill-details">
                        <?php echo $bill_details; ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<script>
    document.addEventListener('DOMContentLoaded', function() {
        var payButton = document.getElementById('payButton');
        if (payButton) {
            payButton.addEventListener('click', function(e) {
                var options = {
                    "key": "rzp_test_Xj9dN8wtcJX8xw", // Replace with your Razorpay API key
                    "amount": "<?php echo $bill_amount * 100; ?>", // Convert to the smallest currency unit
                    "currency": "INR",
                    "name": "Your Company Name",
                    "description": "Mess Bill Payment",
                    "handler": function(response) {
                        // Post payment details to server for verification
                        var form = document.createElement('form');
                        form.method = 'POST';
                        form.action = 'verify_payment.php'; // Create this file to handle payment verification

                        var razorpay_payment_id = document.createElement('input');
                        razorpay_payment_id.type = 'hidden';
                        razorpay_payment_id.name = 'razorpay_payment_id';
                        razorpay_payment_id.value = response.razorpay_payment_id;
                        form.appendChild(razorpay_payment_id);

                        var razorpay_order_id = document.createElement('input');
                        razorpay_order_id.type = 'hidden';
                        razorpay_order_id.name = 'razorpay_order_id';
                        razorpay_order_id.value = response.razorpay_order_id;
                        form.appendChild(razorpay_order_id);

                        var razorpay_signature = document.createElement('input');
                        razorpay_signature.type = 'hidden';
                        razorpay_signature.name = 'razorpay_signature';
                        razorpay_signature.value = response.razorpay_signature;
                        form.appendChild(razorpay_signature);

                        document.body.appendChild(form);
                        form.submit();
                    },
                    "prefill": {
                        "name": "Customer Name",
                        "email": "customer@example.com",
                        "contact": "9999999999"
                    },
                    "theme": {
                        "color": "#F37254"
                    }
                };
                var rzp1 = new Razorpay(options);
                rzp1.open();
                e.preventDefault();
            });
        }
    });
</script>

</body>
</html>

<?php include("footer.php"); ?>
