
<?php include("connection.php") ?>
<?php include("header.php") ?>
<div class="title text-center mb-sm-5 mb-4">
			<h3 class="title-w3 text-bl text-center font-weight-bold" style="color: Black;">Room Details & OverView</h3>
			<div class="arrw">
				<i  aria-hidden="true"></i>
			</div>
		</div>
<?php


// Connect to your database (replace with your actual database credentials)
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

// Fetch rooms data from the database
$sql = "SELECT * FROM room";
$result = $conn->query($sql);

// Check if there are rooms in the database
if ($result->num_rows > 0) {
    // Output room icons
    while($row = $result->fetch_assoc()) {
        echo "<img src='images/pngegg.png' class='room-icon' data-room-id='" . $row["room_id"] . "' data-room-description='" . $row["description"] . "' data-room-data='" . json_encode($row) . "' />";
    }
} else {
    echo "No rooms found in the database.";
}

// Close connection
$conn->close();
?>

<!-- JavaScript for tooltip -->
<script>
document.addEventListener("DOMContentLoaded", function() {
    const roomIcons = document.querySelectorAll(".room-icon");

    roomIcons.forEach(function(icon) {
        icon.addEventListener("mouseover", function() {
            const roomData = JSON.parse(this.getAttribute("data-room-data"));

            // Create and display room data in a tooltip
            const tooltip = document.createElement("div");
            tooltip.innerHTML = "<strong>Room ID:</strong> " + roomData.room_id + "<br>" +
                                 "<strong>Block ID:</strong> " + roomData.block_id + "<br>" +
                                 "<strong>Fee Structure ID:</strong> " + roomData.fee_str_id + "<br>" +
                                 "<strong>Room Number:</strong> " + roomData.room_no + "<br>" +
                                 "<strong>Number of Beds:</strong> " + roomData.no_of_beds + "<br>" +
                                 "<strong>Description:</strong> " + roomData.description + "<br>" +
                                 "<strong>Status:</strong> " + roomData.status;
            tooltip.style.position = "absolute";
            tooltip.style.backgroundColor = "white";
            tooltip.style.border = "1px solid black";
            tooltip.style.padding = "5px";
            tooltip.style.left = (this.offsetLeft + this.offsetWidth + 10) + "px";
            tooltip.style.top = this.offsetTop + "px";
            document.body.appendChild(tooltip);

            // Remove tooltip on mouseout
            icon.addEventListener("mouseout", function() {
                document.body.removeChild(tooltip);
            });
        });
    });
});
</script>
<style>
    .room-icon {
        width: 80px; /* Adjust icon size */
        height: 80px; /* Adjust icon size */
        margin: 20px; /* Add more space between icons */
        cursor: pointer; /* Change cursor to pointer on hover */
    }

    .tooltip {
        position: absolute;
        background-color: rgba(255, 255, 255, 0.9); /* Add transparency to tooltip */
        border: 1px solid black;
        padding: 10px;
        z-index: 1px;
        max-width: 300px; /* Limit tooltip width */
        pointer-events: none; /* Allow pointer events to pass through tooltip */
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.2); /* Add shadow to tooltip */
    }

    /* Style tooltip arrow */
    .tooltip .arrow {
        position: absolute;
        width: 0;
        height: 0;
        border-style: solid;
        border-width: 6px;
        border-color: transparent transparent black transparent;
        top: calc(50% - 6px);
        left: -12px;
    }
</style>

<div class="title text-center mb-sm-5 mb-4">
			<h3 class="title-w3 text-bl text-center font-weight-bold" style="color: Black;">Room Details With Names & OverView</h3>
			<div class="arrw">
				<i  aria-hidden="true"></i>
			</div>
		</div>

        <?php

// Create a connection
$conn = new mysqli($localhost, "root", "", "ehostel");

// Check the connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// SQL query to fetch room ID and hosteller name
$sql = "SELECT r.room_id, h.name
        FROM admission a
        INNER JOIN room r ON a.room_id = r.room_id
        INNER JOIN hosteller h ON a.hostellerid = h.hostellerid";
$result = $conn->query($sql);

// Check if there are results
if ($result->num_rows > 0) {
    // Output room icons with hosteller names
    while($row = $result->fetch_assoc()) {
        echo "<img src='images/pngegg.png' class='room-icon' data-room-id='" . $row["room_id"] . "' data-hosteller-name='" . $row["name"] . "' />";
    }
} else {
    echo "No rooms found in the database.";
}

// Close the connection
$conn->close();
?>

<!-- JavaScript for tooltip -->
<script>
document.addEventListener("DOMContentLoaded", function() {
    const roomIcons = document.querySelectorAll(".room-icon");

    roomIcons.forEach(function(icon) {
        icon.addEventListener("mouseover", function() {
            const roomID = this.getAttribute("data-room-id");
            const hostellerName = this.getAttribute("data-hosteller-name");

            // Create and display room data in a tooltip
            const tooltip = document.createElement("div");
            tooltip.innerHTML = "<strong>Room ID:</strong> " + roomID + "<br>" +
                                 "<strong>Hosteller Name:</strong> " + hostellerName + "<br>" +
                                 "<strong>Other Room Details...</strong>";
            tooltip.style.position = "absolute";
            tooltip.style.backgroundColor = "white";
            tooltip.style.border = "1px solid black";
            tooltip.style.padding = "5px";
            tooltip.style.left = (this.offsetLeft + this.offsetWidth + 10) + "px";
            tooltip.style.top = this.offsetTop + "px";
            document.body.appendChild(tooltip);

            // Remove tooltip on mouseout
            icon.addEventListener("mouseout", function() {
                document.body.removeChild(tooltip);
            });
        });
    });
});
</script>

<style>
.room-icon {
    width: 80px; /* Adjust icon size */
    height: 80px; /* Adjust icon size */
    margin: 20px; /* Add more space between icons */
    cursor: pointer; /* Change cursor to pointer on hover */
}

.tooltip {
    position: absolute;
    background-color: rgba(255, 255, 255, 0.9); /* Add transparency to tooltip */
    border: 1px solid black;
    padding: 10px;
    z-index: 1px;
    max-width: 300px; /* Limit tooltip width */
    pointer-events: none; /* Allow pointer events to pass through tooltip */
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.2); /* Add shadow to tooltip */
}

/* Style tooltip arrow */
.tooltip .arrow {
    position: absolute;
    width: 0;
    height: 0;
    border-style: solid;
    border-width: 6px;
    border-color: transparent transparent black transparent;
    top: calc(50% - 6px);
    left: -12px;
}
</style>





<?php include("footer.php") ?>