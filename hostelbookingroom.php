<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Horizontal Icon Display</title>
    <!-- Add Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Add Bootstrap Icons CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
    <style>
        /* Custom CSS styles */
        .card-body-custom {
            border: 2px solid #3498db; /* Border style */
            border-radius: 20px; /* Rounded corners */
            padding: 20px; /* Padding inside the card body */
            margin-bottom: 20px; /* Spacing at the bottom */
            width: 100%; /* Ensure card stretches to fit content */
            display: flex; /* Use flexbox layout */
            justify-content: center; /* Center align items horizontally */
        }

        .center-content {
            display: flex; /* Use flexbox layout */
            gap: 20px; /* Spacing between elements */
            align-items: center; /* Align items vertically */
            justify-content: center; /* Center align items horizontally */
        }

        .blog-btn {
            background-color: #27ae60; /* Green background color */
            border: 1px solid transparent; /* Border for the buttons */
            border-radius: 20px; /* Rounded shape for rectangular buttons */
            padding: 15px; /* Padding inside the buttons */
            width: 70px; /* Width of the buttons */
            height: 70px; /* Height of the buttons */
            text-align: center; /* Center align text */
            color: #fff; /* Text color */
            transition: all 0.3s ease; /* Smooth transition on hover */
            display: flex; /* Use flexbox layout */
            align-items: center; /* Align items vertically */
            justify-content: center; /* Center align items horizontally */
        }

        .blog-btn.grey {
            background-color: #95a5a6; /* Grey background color */
        }

        .blog-btn:hover {
            background-color: #2c3e50; /* Darker green on hover */
            text-decoration: none; /* Remove underline on hover */
        }

        /* Styling for h2 tag */
        h2 {
            font-size: 24px; /* Font size */
            color: black; /* Text color */
            margin-bottom: 20px; /* Bottom margin */
            text-align: center; /* Center align text */
        }
    </style>
</head>
<body>
    
</body>
</html>
<?php
include("header.php");
$sqlfees_structure ="SELECT * FROM fees_structure WHERE status='Active' AND hostellertype='$_SESSION[hostellertype]' AND fee_str_id='$_GET[fee_str_id]'";
$qsqlfees_structure = mysqli_query($con,$sqlfees_structure);
$rsfees_structure = mysqli_fetch_array($qsqlfees_structure);

$sqlblocks ="SELECT * FROM blocks WHERE status='Active' AND block_id='$_GET[block_id]'"; 
$qsqlblocks = mysqli_query($con,$sqlblocks);
$rsblocks = mysqli_fetch_array($qsqlblocks);


$sqladmission = "SELECT * FROM admission WHERE ('$dt' BETWEEN start_date AND end_date) AND admission.status='Active' AND hostellerid='" . $_SESSION['hostellerid'] . "'";
$qsqladmission = mysqli_query($con,$sqladmission);
if(mysqli_num_rows($qsqladmission) >=1)
{
    $rsadmission = mysqli_fetch_array($qsqladmission);
    $sqlbilling = "SELECT * FROM billing WHERE admission_id='$rsadmission[0]'";
    $qsqlbilling = mysqli_query($con,$sqlbilling);
    echo mysqli_error($con);
    $countbooking = mysqli_num_rows($qsqlbilling);
    $rsbilling = mysqli_fetch_array($qsqlbilling);
    echo "<script>window.location='billingreceipt.php?insid=$rsbilling[0]';</script>";
}
?>
    
    
    <!-- news -->
    <section class="blog_w3ls py-5" id="news">
        <div class="container py-xl-5 py-lg-3">
            <div class="title text-center mb-sm-5 mb-4">
                <h3 class="title-w3 text-bl text-center font-weight-bold">Select Room No.</h3>
                <div class="arrw">
                    <i  aria-hidden="true"></i>
                </div>
                <center>
                <table  class="table table-striped table-bordered" style="width:700px;background-color: white;">
                    <tr>
                        <th>Block</th>
                        <td><?php echo $rsblocks['block_name']; ?></td>
                    </tr>
                    <tr>
                        <th>Room type</th>
                        <td><?php echo $rsfees_structure['room_type']; ?></td>
                    </tr>
                    <tr>
                        <th>Fees</th>
                        <td><?php echo $currencysymbol; ?><?php echo $rsfees_structure['cost']; ?></td>
                    </tr>
                </table>
                </center>
            </div>
            <!-- Centering the content below -->
            <div class="text-center"> <!-- Added text-center class here -->
                <div class="row pt-4"><!-- Removed text-center class here -->
                
            <?php
            $sql ="SELECT * FROM room WHERE status='Active'  AND block_id='$_GET[block_id]' AND fee_str_id='$rsfees_structure[fee_str_id]'";
            $qsql = mysqli_query($con,$sql);
            echo mysqli_error($con);
            while($rs = mysqli_fetch_array($qsql))
            {
                $sqladmission = "SELECT * FROM admission WHERE room_id='$rs[room_id]' AND (('$dt' BETWEEN start_date AND end_date) OR (start_date>'$dt')) AND status='Active'";
                $qsqladmission = mysqli_query($con,$sqladmission);
                $rsadmission = mysqli_fetch_array($qsqladmission);
                $admissionnumrows = mysqli_num_rows($qsqladmission);
            ?>
        <!-- blog grid -->
        <div class="col-lg-2 col-md-2 text-center"> <!-- Added text-center class here -->
    <div class="card border-0 med-blog">
        <div class="h2">
            <a href="#">
                <h2><?php echo $rs['room_no']; ?></h2>
            </a>
        </div>
        <div class="center-content">
            <?php
            // Assuming $rs['no_of_beds'], $admissionnumrows, $countbooking, $rs['room_id'] are defined elsewhere
            for ($i = 0; $i < $rs['no_of_beds']; $i++) {
                if ($admissionnumrows > $i) {
                    ?>
                    <div>
                        <a href="#" onclick="alert('Already booked..');return false;" class="blog-btn grey"><i class="bi bi-person-check" aria-hidden="true"></i></a>
                    </div>
                    <?php
                } else {
                    ?>
                    <div>
                        <a href="#" onclick="return confirmbeforebook('<?php echo $countbooking; ?>','<?php echo $rs['room_id']; ?>')" class="blog-btn"><i class="fa fa-user" aria-hidden="true"></i></a>
                    </div>
                    <?php
                }
            }
            ?>
        </div>
    </div>
    <hr>
</div>
        <!-- //blog grid -->
            <?php
            }
            ?>  
                    
                </div>
            </div>
        </div>
    </section>
    <!-- //blog -->
<script>
function confirmbeforebook(bookid,room_id)
{
    if(bookid > 0)
    {
        swal("You have already booked a Room..");
        return false;
    }
    else
    {
            swal({
              title: "Are you sure?",
              text: "Are you sure want to book this room?",
              icon: "warning",
              buttons: true,
              dangerMode: true,
            })
            .then((willDelete) => {
              if (willDelete) {
                window.location="admission.php?block_id=<?php echo $_GET['block_id']; ?>&fee_str_id=<?php echo $_GET['fee_str_id']; ?>&room_id="+room_id;
              } else {
                swal("Your request terminated..!");
              }
            });
            return false;
    }
}
</script>
<?php
include("footer.php");
?>
