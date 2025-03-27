<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Hostel Information</title>
  <style>
    /* Style for block images */
    .block {
      width: 200px;
      height: auto;
      margin: 10px;
      cursor: pointer;
    }

    /* Style for room images */
    .room {
      width: 100px;
      height: auto;
      margin: 5px;
      cursor: pointer;
    }
  </style>
</head>
<body>
  <!-- Display block images -->
  <div id="blocks">
    <?php
    // PHP code to fetch block data from the fact table
    $db_connection = mysqli_connect("localhost", "root", "", "ehostel");
    if ($db_connection) {
      $query = "SELECT block_id, rooms, hostellers FROM fact_table";
      $result = mysqli_query($db_connection, $query);
      if ($result) {
        while ($row = mysqli_fetch_assoc($result)) {
          $blockId = $row['block_id'];
          $rooms = $row['rooms'];
          $hostellers = $row['hostellers'];
          // Display block image with block_id as alt attribute
          echo "<img class='block' src='images/pngegg.png' alt='Block {$blockId}' title='Block {$blockId}' data-rooms='{$rooms}' data-hostellers='{$hostellers}'>";
        }
        mysqli_free_result($result);
      }
      mysqli_close($db_connection);
    }
    ?>
  </div>

  <!-- Display room images -->
  <div id="rooms" style="display: none;">
    <!-- Room images will be added dynamically using JavaScript -->
  </div>

  <!-- Script for functionality -->
  <script>
    document.addEventListener('DOMContentLoaded', function() {
      const blocks = document.querySelectorAll('.block');
      const roomsDiv = document.getElementById('rooms');

      // Add event listeners to block images
      blocks.forEach(block => {
        block.addEventListener('click', function() {
          // Clear any previous room images
          roomsDiv.innerHTML = '';

          // Extract block data
          const rooms = JSON.parse(this.getAttribute('data-rooms'));
          const hostellers = JSON.parse(this.getAttribute('data-hostellers'));

          // Add room images for the clicked block
          rooms.forEach(room => {
            fetchRoomImagesForBlock(room);
          });
        });
      });

      // Function to fetch room images for a block from PHP script
      function fetchRoomImagesForBlock(room) {
        // You need to implement this function to fetch room images for the given room
        // You can use AJAX or another method to fetch the images
        // Once you have the images, append them to the roomsDiv
        // Example:
        // roomsDiv.innerHTML += `<img class="room" src="${room.imageSrc}" alt="${room.roomNumber}" title="${room.roomNumber}">`;
      }
    });
  </script>
</body>
</html>
