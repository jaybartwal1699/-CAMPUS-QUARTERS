<?php
require_once 'vendor/autoload.php';

use Twilio\Rest\Client as TwilioClient;
use Vonage\Client\Credentials\Basic as VonageBasic;
use Vonage\Client as VonageClient;

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $service = $_POST['service'];
    $to_number = $_POST['to_number'];
    $message = $_POST['message'];

    if ($service == 'twilio') {
        // Your Twilio credentials
        $sid = '';
        $token = '';
        $twilio_number = '';

        // Initialize the Twilio client
        $client = new TwilioClient($sid, $token);

        // Send the SMS via Twilio
        try {
            $client->messages->create(
                $to_number,
                [
                    'from' => $twilio_number,
                    'body' => $message
                ]
            );
            echo "Message sent via Twilio!";
        } catch (Exception $e) {
            echo "Failed to send message via Twilio: " . $e->getMessage();
        }
    } elseif ($service == 'vonage') {
        // Your Vonage (Nexmo) credentials
        $api_key = 'your_api_key';
        $api_secret = 'your_api_secret';

        // Initialize the Vonage client
        $basic  = new VonageBasic($api_key, $api_secret);
        $client = new VonageClient($basic);

        // Send the SMS via Vonage
        try {
            $response = $client->message()->send([
                'to' => $to_number,
                'from' => 'VonageAPI',
                'text' => $message
            ]);
            echo "Message sent via Vonage! ID: " . $response['message-id'];
        } catch (Exception $e) {
            echo "Failed to send message via Vonage: " . $e->getMessage();
        }
    }
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Send SMS</title>
</head>
<body>
    <h1>Send SMS</h1>
    <form method="POST" action="">
        <label for="service">Choose Service:</label>
        <select name="service" id="service">
            <option value="twilio">Twilio</option>
            <option value="vonage">Vonage (Nexmo)</option>
        </select>
        <br><br>
        <label for="to_number">To Number:</label>
        <input type="text" id="to_number" name="to_number" required>
        <br><br>
        <label for="message">Message:</label>
        <textarea id="message" name="message" required></textarea>
        <br><br>
        <input type="submit" value="Send SMS">
    </form>
</body>
</html>
