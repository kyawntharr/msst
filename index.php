<?php
include_once __DIR__ . '/layouts/header.php';
include_once __DIR__ . '/controller/packageController.php';
include_once __DIR__ . '/controller/serviceController.php';
include_once __DIR__ . '/controller/saleController.php';
include_once __DIR__ . '/controller/registerController.php';
include_once __DIR__ . '/controller/teamController.php';
include_once __DIR__ . '/controller/tutorialsController.php';

$package_controller = new PackageController();
$packages = $package_controller->getPackage();

$service_controller = new serviceController();
$faqs = $service_controller->getAllfaq();

$sale_controller = new saleController();
$reg_controller = new RegisterController();

$team_controller = new teamController();
$teams = $team_controller->getAllMember();

$tuto_controller = new tutorialsController();

?>
<style>
    .service {
        padding: 50px 0;
    }

    .service .service-list {
        /* padding: 0; */
        list-style: none;
    }

    .service .service-list li {
        border-bottom: 1px solid gray;
        margin-bottom: 20px;
        padding-bottom: 20px;
    }

    .service .service-list .question {
        display: block;
        position: relative;
        font-size: 18px;
        line-height: 15px;
        opacity: 0.8;
        padding-left: 25px;
        cursor: pointer;
        color: #000;
        transition: 0.3s;
    }

    .service .service-list i {
        position: absolute;
        left: 0;
        top: -2px;
    }

    .service .service-list p {
        margin-bottom: 0;
        padding: 10px 0 0 25px;
        color: #2eb82e;
    }

    .service .service-list .icon-show {
        display: none;
    }

    .service .service-list .collapsed {
        color: black;
    }

    .service .service-list .collapsed:hover {
        font-size: 1.2em;
        color: #000;
    }

    .service .service-list .collapsed .icon-show {
        display: inline-block;
        transition: 0.6s;
    }

    .service .service-list .collapsed .icon-close {
        display: none;
        transition: 0.6s;
    }
</style>

<section class="container-fluid bg-dark g-0 position-relative home_bg">
    <img src="assets/images/mobile_bg_3.jpg" class="img-fluid w-100" style="height: 650px" alt="">

    <div class="position-absolute top-0 start-0 w-100 h-100 d-flex align-items-center" style="background: rgba(35, 61, 87, .6);">
        <div class="container">
            <div class="row justify-content-start">
                <div class="col-lg-10">
                    <h1 class="display-4 animate__animated animate__zoomInUp mmst wow" data-wow-delay="0.2s">Myanmar
                        Software Support
                        Team</h1>
                    <p class="fs-5 mb-4 pb-2  animate__animated animate__flipInX wow mmstp" data-wow-delay="1s" style="font-family: 'Zawgyi A Lan 5';">
                        Welcome From Myanmar Software Support Team.Thank for your visit!
                    </p>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- ======= Service Section ======= -->
<section id="service" class="service">
    <div class="container py-5">

        <div class="section-title">
            <h2><b>Our Service</b></h2>
        </div>

        <ul class="service-list pt-4">
            <?php


            foreach ($faqs as $faq) {

            ?>
                <li>
                    <div data-bs-toggle="collapse" class="collapsed question" href="#<?php echo $faq['id']; ?>">
                        <span class="head-text"><?php echo $faq['title']; ?></span>
                        <i class="ri-add-line icon-show"></i>
                        <i class="ri-subtract-line icon-close"></i>
                    </div>
                    <div id="<?php echo $faq['id']; ?>" class="collapse">
                        <p><?php echo $faq['content']; ?></p>
                    </div>
                </li>
            <?php
            }
            ?>
        </ul>

    </div>
</section>
<!-- End Service Section -->

<!--package section start-->
<section class="container-fluid package bg-white g-0">
    <div class="row g-0 justify-content-around p-3">
        <h3 class="text-center display-5"><i><b>Packages</b></i></h3>



        <?php

        foreach ($packages as $package) {
            // $pid = $package['id'];
            // $packBYId = $package_controller->getPackageById($pid);
            // echo $pid;

            // $packDetail = $tuto_controller->getTutoByPackId($pid);

            // print_r($packDetail);
            // echo $packDetail['title'];
            // foreach($packDetail as $pd){
            //     echo $pd['title'];
            // }
            // echo $packDetail['title'];
            // print_r($package['image']);
        ?>

            <div class="card col-md-3 my-3 mx-1 rounded-1 animate__animated animate__rotateInUpLeft wow " data-wow-delay="0.7s" style="border: 1px solid #60a626;">
                <div class="card-header align-items-center d-flex flex-column justify-content-center" style="background-color: #bbe797;">
                    <p class="package_title p-2 text-center"><?php echo $package['name']; ?></p>
                    <div>
                        <img src="uploads/<?php echo $package['image']; ?>" class="img-fluid " style="height: 100px; width: 100px">
                    </div>
                </div>
                <div class="card-body bg-white">
                    <span class="price"><i class="ri-price-tag-3-line">&nbsp;&nbsp;</i>&nbsp;&nbsp;<?php echo $package['amount']; ?>ks&nbsp;/&nbsp;month</span>
                    <ul class="text-secondary">
                        <?php echo $package['details']; ?>
                        <!-- <?php echo $package['id']; ?> -->
                        <li>And More tutorials...</li>
                    </ul>
                </div>
                <div class="card-footer border-0 justify-content-between d-flex  bg-white">

                    <a href="#packagesDetails?id='.<?php $package['id']; ?>.'" class="pk_btn btn rounded-1" data-bs-toggle="modal" data-bs-target="#packagesDetails<?php echo $package['id']; ?>"><i class="ri-information-line">&nbsp;</i>Details</a>

                    <!-- package details modals start -->
                    <div class="modal fade" id="packagesDetails<?php echo $package['id']; ?>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h1 class="modal-title fs-5" id="exampleModalLabel">
                                        <?php
                                        // $pid = $package['id'];
                                        // $pid = $_GET['id'];

                                        $packDetail = $tuto_controller->getTutoByPackId($package['id']);
                                        // 
                                        // echo $packDetail['title'];

                                        echo $package['name']. '&nbsp;Package\'s Tutorials';

                                        ?>


                                    </h1>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <!-- <?php
                                    foreach ($packDetail as $pd) {
                                        if ($package['id'] == $pd['package_id']) {
                                            // echo $pd['title'];
                                            // echo '<br>';
                                    ?>
                                            <span class="">
                                                <i class="ri-lock-fill"></i>
                                                <?php echo $pd['title']; ?>
                                            </span><br>

                                    <?php
                                        }
                                    }
                                    ?> -->
                                    <!-- for video duration start -->
                                    <?php
                                    $tutos = $tuto_controller->getTutoByPackId($package['id']);
                                    // print_r($tutos) ;
                                    foreach ($tutos as $freetuto) {
                                        $videoPath = "uploads/videos/" . $freetuto['video_url']; // Assuming 'video_url' is the column that stores the video path

                                        // Print out the video element
                                        echo '<div class="video-container container">';
                                        echo '<video src="' . $videoPath . '" class="shadow rounded-1" width="100%" height="100%" controls hidden></video>';
                                        // echo'<p>'.$freetuto['title'].'</p>';

                                        // Echo the duration in minutes and seconds
                                        // echo '<div class="duration">'.$freetuto['title'].'</div>';

                                        echo '<div class="row text-success">';
                       echo '<div class="col-md-6 "><i class="ri-video-fill"></i>&nbsp;'.$freetuto['title'].'</div>';
                                        echo '<div class="col-md-6  duration"></div><hr>';
                                        echo'</div>';
                                        echo '</div>';
                                    }
                                    ?>

                                    <script>
                                        document.addEventListener('DOMContentLoaded', function() {
                                            var videos = document.querySelectorAll('video');

                                            videos.forEach(function(video) {
                                                video.addEventListener('loadedmetadata', function() {
                                                    var duration = video.duration;
                                                    var minutes = Math.floor(duration / 60);
                                                    var seconds = Math.round(duration % 60);

                                                    var durationElement = video.parentElement.querySelector('.duration');
                                                    durationElement.textContent =  minutes + ' minutes and ' + seconds + ' seconds';
                                                    // durationElement.textContent =  minutes + ' minutes ';
                                                });
                                            });
                                        });
                                    </script>
                                    <!-- for video duration end -->
                                    <div class="text-end">
                                    <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
                                </div>
                                </div>
                                
                            </div>
                        </div>
                    </div>
                    <!-- package details modals end -->

                    <?php
                    if (isset($acc_id)) {
                        $user = $reg_controller->getUser($email);
                        $sale_user = $sale_controller->getuserbyuser($user['id']);
                        $check_sale_user = $sale_controller->getSaleUser($user['id']);
                        // var_dump($check_sale_user);

                        // print_r($package['id']);
                        // $pid = $package['id'];
                        if ($sale_user == true) {
                            foreach ($sale_user as $sale) {
                                // print_r($sale['user_id']);
                                // echo $pid;
                                // }
                                // print_r($sale_user['user_id']);
                                // print_r($user['id']);
                                // print_r($sale['packages_id']);

                                // if ($sale_user == true) {
                                // echo count($sale['user_id']);
                                //
                                if ($sale['user_id'] === $user['id'] && $package['id'] === $sale['packages_id']) {
                                    // User has bought the package
                                    echo '<a href="tutorials.php" class="pk_btn_buy btn rounded-1 text-white"><i class="ri-video-line">&nbsp;</i>Tutorial</a>';
                                    // if($sale['user_id'])
                                } else {
                                    // User has not bought the package
                                    echo '<a href="package_buying.php?id=' . $package['id'] . '" class="pk_btn btn rounded-1"><i class="ri-hand-coin-line">&nbsp;</i>Buy</a>';
                                }
                            }
                        } else {
                            echo '<a href="package_buying.php?id=' . $package['id'] . '" class="pk_btn btn rounded-1"><i class="ri-hand-coin-line">&nbsp;</i>Buy</a>';
                        }
                    } else {
                        // User is not logged in
                        // echo '<a href="' . $package['buying_link'] . '" class="pk_btn btn rounded-1" target="_blank"><i class="ri-hand-coin-line">&nbsp;</i>Buy</a>';
                        echo '<a href="register.php" class="pk_btn btn rounded-1"><i class="ri-hand-coin-line">&nbsp;</i>Buy</a>';
                    }
                    ?>


                </div>
            </div>
        <?php } ?>

    </div>
</section>
<hr>

<!--team section start-->
<section class="container bg-white mb-5 pt-3 pb-4">
    <div class="container g-0 p-3">
        <div class="row">
            <span class="display-5 align-items-center pb-4 d-flex justify-content-around animate__animated animate__flipInX wow" data-wow-delay="0.2s">Service Team</span>
            <?php

            foreach ($teams as $team) {
            ?>
                <div class="card col-md-3 bg-white team_area border-0  wow animate__animated animate__fadeInUp" data-wow-delay="0.2s">
                    <div class="rounded-1 border border-1 team">
                        <div class="team_img1 bg-white">
                            <div class="p-3 d-flex align-items-center justify-content-around flex-column team_img2">
                                <img src="uploads/team/<?php echo $team['image']; ?>" alt="" class="img-fluid rounded-circle" style="height: 130px; width: 130px">
                            </div>
                        </div>

                        <div class="d-flex flex-column team_detail">
                            <span class="team_name text-center"><?php echo $team['name']; ?></php></span>
                            <span class="team_role text-center"><?php echo $team['role']; ?></span>

                            <span class="team_dis px-3 pt-2"><?php echo substr($team['discription'], 0, 50); ?> ...</span>

                            <div class="py-3 align-items-center d-flex justify-content-center team_btn">
                                <a href="index.php?id='.<?php $team['id']; ?>.'" class="btn btn-primary btn-sm" data-bs-toggle="modal" data-bs-target="#t_member<?php echo $team['id']; ?>">Details</a>
                            </div>

                            <div class="modal fade" id="t_member<?php echo $team['id']; ?>" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                                <div class="modal-dialog modal-dialog-centered">
                                    <div class="modal-content">
                                        <div class="modal-header d-flex justify-content-center align-items-center">
                                            <div class="team_img col-md-4 text-center">
                                                <img src="uploads/team/<?php echo $team['image']; ?>" alt="" class="img-fluid rounded-circle" style="height: 80px; width: 80px">
                                            </div>
                                            <div class="row ">
                                                <h3 class="modal-title" id="staticBackdropLabel"><?php echo $team['name']; ?></h3>
                                                <span class="team_role"><?php echo $team['role']; ?></span>

                                            </div>
                                        </div>
                                        <div class="modal-body">
                                            <span class="team_dis px-3 pt-2"><?php echo $team['discription']; ?></span>
                                            <br><br>
                                            <div class="text-end">
                                                <button type="button" class="btn btn-danger btn-sm" data-bs-dismiss="modal">Close</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>


                        </div>

                    </div>

                </div>


            <?php

            }
            ?>
        </div>

    </div>
</section>
<?php
include_once __DIR__ . '/layouts/footer.php';
?>