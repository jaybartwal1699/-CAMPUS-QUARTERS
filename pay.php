<?php
// Install the Razorpay PHP SDK via Composer before using this script
require('vendor/autoload.php');

use Razorpay\Api\Api;
use Razorpay\Api\Errors\SignatureVerificationError;

// Razorpay API credentials
$keyId = 'rzp_test_Xj9dN8wtcJX8xw';
$keySecret = 'I4w8xFDwmND96X3DyZqUiIeP';
$api = new Api($keyId, $keySecret);

// Handle payment verification
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['razorpay_payment_id'])) {
    $attributes = [
        'razorpay_signature' => $_POST['razorpay_signature'],
        'razorpay_payment_id' => $_POST['razorpay_payment_id'],
        'razorpay_order_id' => $_POST['razorpay_order_id']
    ];

    try {
        $api->utility->verifyPaymentSignature($attributes);
        echo "Payment successful!";
    } catch (\Razorpay\Api\Errors\SignatureVerificationError $e) {
        echo "Payment verification failed: " . $e->getMessage();
    }
    exit;
}

// Create an order
$orderData = [
    'receipt' => 'rcptid_11',
    'amount' => 50000, // amount in the smallest currency unit (e.g., 50000 paise = 500 INR)
    'currency' => 'INR',
    'payment_capture' => 1 // auto capture
];

$razorpayOrder = $api->order->create($orderData);
$orderId = $razorpayOrder['id'];
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Razorpay Payment</title>
</head>
<body>
    <button id="payButton">Pay with Razorpay</button>

    <script src="https://checkout.razorpay.com/v1/checkout.js"></script>
    <script>
        document.getElementById('payButton').onclick = function(e) {
            var options = {
                "key": "<?php echo $keyId; ?>", // Razorpay API key
                "amount": "50000", // 50000 paise = 500 INR
                "currency": "INR",
                "name": "Your Company Name",
                "description": "Test Transaction",
                "order_id": "<?php echo $orderId; ?>", // Order ID generated on the backend
                "handler": function(response) {
                    // Post payment details to server for verification
                    var form = document.createElement('form');
                    form.method = 'POST';
                    form.action = '';

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
        }
    </script>
</body>
</html>
