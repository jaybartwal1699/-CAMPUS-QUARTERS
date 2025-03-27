<?php

// Your Textlocal API credentials
$apiKey = 'NzMzODUwNTM0YTM1NTU2NTZjMzQ0NTRhNDU1ODQ2NmY=';

// Sender name (11 characters max)
$sender = 'jay';

// Recipient's phone number
$phoneNumber = '9537076012';

// Message content
$message = 'Hello, this is a test message from Textlocal!';

// Prepare data for POST request
$data = array(
    'apikey' => $apiKey,
    'numbers' => $phoneNumber,
    'sender' => $sender,
    'message' => $message
);

// Send the POST request to Textlocal API
$ch = curl_init('https://api.textlocal.in/send/');
curl_setopt($ch, CURLOPT_POST, true);
curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($data));
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
$response = curl_exec($ch);
curl_close($ch);

// Process API response
$responseData = json_decode($response, true);
if ($responseData && isset($responseData['status']) && $responseData['status'] == 'success') {
    echo 'SMS sent successfully!';
} else {
    echo 'Error: ' . $responseData['errors'][0]['message'];
}

?>
