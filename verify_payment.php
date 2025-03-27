<?php
include("header.php");
require('vendor/autoload.php');
use Razorpay\Api\Api;
use Razorpay\Api\Errors\SignatureVerificationError;

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

// Razorpay API credentials
$keyId = 'YOUR_KEY_ID';
$keySecret = 'YOUR_KEY_SECRET';
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
        // You can update your database to mark the bill as paid here
    } catch (SignatureVerificationError $e) {
        echo "Payment verification failed: " . $e->getMessage();
    }
    exit;
}
?>
