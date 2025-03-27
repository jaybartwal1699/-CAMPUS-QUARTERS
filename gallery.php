<?php
include("header.php");
$sqlphotogallery_type ="SELECT * FROM photo LEFT JOIN gallery_type ON photo.gallery_type_id=gallery_type.gallery_type_id WHERE gallery_type.gallery_type_id='$_GET[gallery_type_id]'";
$qsqlsqlphotogallery_type = mysqli_query($con,$sqlphotogallery_type);
$rssqlphotogallery_type = mysqli_fetch_array($qsqlsqlphotogallery_type);
?>
</div>
<!-- //banner -->

<!-- gallery -->
<div class="gallery py-5" id="gallery">
    <div class="container pb-xl-5 pb-lg-3">
        <div class="title text-center mb-sm-5 mb-4">
            <h3 class="title-w3 text-bl text-center font-weight-bold"><?php echo $rssqlphotogallery_type['gallery_type']; ?></h3>
            <p><?php echo $rssqlphotogallery_type['gallery_type_description']; ?></p>
            <div class="arrw">
			<i class="bi bi-bar-chart"></i>
            </div>
        </div>
        <div class="news-grids pt-xl-4">
            <?php
            $imgloopid=0;
            $sqlphoto ="SELECT * FROM photo  WHERE gallery_type_id='$_GET[gallery_type_id]' LIMIT 5"; // Limit the query to fetch only 5 images
            $qsqlsqlphoto = mysqli_query($con,$sqlphoto);
            while($rssqlphoto = mysqli_fetch_array($qsqlsqlphoto))
            {
            ?>
            <?php
                if($imgloopid == 0)
                {
            ?>
                <div class="row my-4">
            <?php
                }
            ?>
                    <div class="col-md-4 gal-img my-md-0 my-4">
                        <center class='btn btn-info' style="width: 100%;"><?php echo $rssqlphoto['photo_title']; ?></center>
                        <a href="#gal<?php echo $rssqlphoto[0]; ?>" title="<?php echo $rssqlphoto['photo_title']; ?>"><img src="imggallery/<?php echo $rssqlphoto['photo_img']; ?>" alt="<?php echo $rssqlphoto['photo_title']; ?>" class="img-fluid" style='width: 100%;height: 225px;'></a>
                    </div>
            <?php
                if($imgloopid == 2)
                {
            ?>
                </div>
            <?php
                $imgloopid=0;
                }
                else
                {
                    $imgloopid = $imgloopid +1;
                }
            ?>
<!-- popup-->
<div id="gal<?php echo $rssqlphoto[0]; ?>" class="popup-effect animate">
    <div class="popup">
        <img src="imggallery/<?php echo $rssqlphoto['photo_img']; ?>" alt="<?php echo $rssqlphoto['photo_title']; ?>" class="img-fluid" />
        <h5 class="text-name-pop mt-4"><?php echo $rssqlphoto['photo_title']; ?></h5>
        <?php /*<p class="mt-3">Nulla viverra pharetra se, eget pulvinar neque pharetra ac int. placerat placerat dolor.</p> */ ?>
        <a class="close" href="#gallery">&times;</a>
    </div>
</div>
<!-- //popup -->
            <?php
            }
            ?>
        </div>
    </div>
</div>

<?php
include("footer.php");
?>
