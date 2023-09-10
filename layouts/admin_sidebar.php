<?php
session_start();

include_once __DIR__ . '/../controller/registerController.php';
$reg_controller = new RegisterController();

if (isset($_SESSION['email'])) {
    $email = $_SESSION['email'];
    $admin = $reg_controller->getUser($email);
} else {
    echo "<script>location.href='index.php'</script>";
}




?>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Corona Admin</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="../assets/vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="../assets/vendors/css/vendor.bundle.base.css">
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <link rel="stylesheet" href="../assets/vendors/jvectormap/jquery-jvectormap.css">
    <link rel="stylesheet" href="../assets/vendors/flag-icon-css/css/flag-icon.min.css">
    <link rel="stylesheet" href="../assets/vendors/owl-carousel-2/owl.carousel.min.css">
    <link rel="stylesheet" href="../assets/vendors/owl-carousel-2/owl.themFe.default.min.css">
    <link href="https://cdn.jsdelivr.net/npm/remixicon@3.4.0/fonts/remixicon.css" rel="stylesheet">

    <!-- include summernote css/js -->
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">

    <!-- Layout styles -->
    <link rel="stylesheet" href="../assets/css/style.css">
    <!-- End layout styles -->
</head>

<body>
    <div class="container-scroller">
        <!-- partial:partials/_sidebar.html -->
        <nav class="sidebar sidebar-offcanvas" id="sidebar">
            <div class="sidebar-brand-wrapper d-none d-lg-flex align-items-center justify-content-center fixed-top">
                <h2>M S S T</h2>
                <!--            <a class="sidebar-brand brand-logo" href="index.php"><img src="assets/images/logo.svg" alt="logo" /></a>-->
                <!--            <a class="sidebar-brand brand-logo-mini" href="index.php"><img src="assets/images/logo-mini.svg" alt="logo" /></a>-->
            </div>
            <ul class="nav">
                <li class="nav-item profile">
                    <div class="profile-desc">
                        <div class="profile-pic">
                            <div class="count-indicator">
                                <img class="img-xs rounded-circle " src="../uploads/<?php echo $admin['image'] ?>" alt="">
                                <span class="count bg-success"></span>
                            </div>
                            <div class="profile-name">
                                <h5 class="mb-0 font-weight-normal"><?php echo $admin['name']; ?></h5>
                                <span>Admin - admin panel</span>
                            </div>
                        </div>
                        <!--                    <a href="#" id="profile-dropdown" data-toggle="dropdown"><i class="mdi mdi-dots-vertical"></i></a>-->

                    </div>
                </li>
                <li class="nav-item nav-category">
                    <span class="nav-link">Navigation</span>
                </li>

                <li class="nav-item menu-items">
                    <a class="nav-link" href="home.php">
                        <span class="menu-icon">
                            <i class="mdi mdi-speedometer"></i>
                        </span>
                        <span class="menu-title">Dashboard</span>
                    </a>
                </li>
                <li class="nav-item menu-items">
                    <a class="nav-link" data-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
                        <span class="menu-icon">
                            <i class="mdi mdi-account-multiple-plus"></i>
                        </span>
                        <span class="menu-title">Accounts</span>
                        <i class="menu-arrow"></i>
                    </a>
                    <div class="collapse" id="ui-basic">
                        <ul class="nav flex-column sub-menu">
                            <li class="nav-item menu-items"> <a class="nav-link" href="register.php">Register</a></li>
                            <li class="nav-item menu-items"> <a class="nav-link" href="app_user.php">Users</a></li>
                            <li class="nav-item menu-items"> <a class="nav-link" href="admin.php">Admins</a></li>
                        </ul>
                    </div>
                </li>
                <li class="nav-item menu-items">
                    <a class="nav-link" href="app_brands.php">
                        <span class="menu-icon">
                            <i class="mdi mdi-braille"></i>
                        </span>
                        <span class="menu-title">Brands</span>
                    </a>
                </li>
                <li class="nav-item menu-items">
                    <a class="nav-link" href="app_models.php">
                        <span class="menu-icon">
                            <i class="mdi mdi-menu"></i>
                        </span>
                        <span class="menu-title">Models</span>
                    </a>
                </li>
                <li class="nav-item menu-items">
                    <a class="nav-link" href="app_firmware.php">
                        <span class="menu-icon">
                            <i class="mdi mdi-foursquare"></i>
                        </span>
                        <span class="menu-title">Firmwares</span>
                    </a>
                </li>
                <li class="nav-item menu-items">
                    <a class="nav-link" href="app_tools.php">
                        <span class="menu-icon">
                            <i class="mdi mdi-file-document"></i>
                        </span>
                        <span class="menu-title">Tools Category</span>
                    </a>
                </li>
                <li class="nav-item menu-items">
                    <a class="nav-link" href="app_tool_down.php">
                        <span class="menu-icon">
                            <i class="mdi mdi-file-document"></i>
                        </span>
                        <span class="menu-title">Tools</span>
                    </a>
                </li>
                <li class="nav-item menu-items">
                    <a class="nav-link" href="app_box.php">
                        <span class="menu-icon">
                            <i class="mdi mdi-file-document"></i>
                        </span>
                        <span class="menu-title">Box Category</span>
                    </a>
                </li>
                <li class="nav-item menu-items">
                    <a class="nav-link" href="app_box_down.php">
                        <span class="menu-icon">
                            <i class="mdi mdi-file-document"></i>
                        </span>
                        <span class="menu-title">Box</span>
                    </a>
                </li>
                <li class="nav-item menu-items">
                    <a class="nav-link" href="app_package.php">
                        <span class="menu-icon">
                            <i class="mdi mdi-numeric-0-box-multiple-outline"></i>
                        </span>
                        <span class="menu-title">Packages</span>
                    </a>
                </li>
                <li class="nav-item menu-items">
                    <a class="nav-link" href="app_tutorials.php">
                        <span class="menu-icon">
                            <i class="ri-video-line"></i>
                        </span>
                        <span class="menu-title">Tutorials</span>
                    </a>
                </li>
                <li class="nav-item menu-items">
                    <a class="nav-link" href="app_service.php">
                        <span class="menu-icon">
                            <i class="ri-questionnaire-line"></i>
                        </span>
                        <span class="menu-title">Servie FAQ</span>
                    </a>
                </li>

                <li class="nav-item menu-items">
                    <a class="nav-link" href="app_contact.php">
                        <span class="menu-icon">
                            <i class="mdi mdi mdi-home-map-marker"></i>
                        </span>
                        <span class="menu-title">Contact</span>
                    </a>
                </li>
                <li class="nav-item menu-items">
                    <a class="nav-link" href="app_team.php">
                        <span class="menu-icon">
                            <i class="mdi mdi mdi-human-male-female"></i>
                        </span>
                        <span class="menu-title">Team</span>
                    </a>
                </li>

            </ul>
        </nav>
        <!-- partial -->
        <!-- for error see  mt-5 pt-5 -->
        <div class="container-fluid page-body-wrapper pt-3">
            <!-- partial:partials/_navbar.html -->
            <nav class="navbar p-0 fixed-top d-flex flex-row">
                <!-- <div class="navbar-brand-wrapper d-flex d-lg-none align-items-center justify-content-center">
                <a class="navbar-brand brand-logo-mini" href="index.php"><img src="assets/images/logo-mini.svg" alt="logo" /></a>
            </div> -->
                <div class="navbar-menu-wrapper flex-grow d-flex align-items-stretch">
                    <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
                        <span class="mdi mdi-menu"></span>
                    </button>
                    <ul class="navbar-nav w-100">
                        <li class="nav-item w-100">
                            <form class="nav-link mt-2 mt-md-0 d-none d-lg-flex search">
                                <input type="text" class="form-control" placeholder="Search products">
                            </form>
                        </li>
                    </ul>
                    <ul class="navbar-nav navbar-nav-right">
                        <li class="nav-item dropdown">
                            <a class="nav-link count-indicator dropdown-toggle" id="messageDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
                                <i class="mdi mdi-email"></i>
                                <span class="count bg-success"></span>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="messageDropdown">
                                <h6 class="p-3 mb-0">Messages</h6>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item preview-item">
                                    <div class="preview-thumbnail">
                                        <img src="assets/images/faces/face4.jpg" alt="image" class="rounded-circle profile-pic">
                                    </div>
                                    <div class="preview-item-content">
                                        <p class="preview-subject ellipsis mb-1">Mark send you a message</p>
                                        <p class="text-muted mb-0"> 1 Minutes ago </p>
                                    </div>
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item preview-item">
                                    <div class="preview-thumbnail">
                                        <img src="assets/images/faces/face2.jpg" alt="image" class="rounded-circle profile-pic">
                                    </div>
                                    <div class="preview-item-content">
                                        <p class="preview-subject ellipsis mb-1">Cregh send you a message</p>
                                        <p class="text-muted mb-0"> 15 Minutes ago </p>
                                    </div>
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item preview-item">
                                    <div class="preview-thumbnail">
                                        <img src="assets/images/faces/face3.jpg" alt="image" class="rounded-circle profile-pic">
                                    </div>
                                    <div class="preview-item-content">
                                        <p class="preview-subject ellipsis mb-1">Profile picture updated</p>
                                        <p class="text-muted mb-0"> 18 Minutes ago </p>
                                    </div>
                                </a>
                                <div class="dropdown-divider"></div>
                                <p class="p-3 mb-0 text-center">4 new messages</p>
                            </div>
                        </li>
                        <li class="nav-item dropdown border-left">
                            <a class="nav-link count-indicator dropdown-toggle" id="notificationDropdown" href="#" data-toggle="dropdown">
                                <i class="mdi mdi-bell"></i>
                                <span class="count bg-danger"></span>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="notificationDropdown">
                                <h6 class="p-3 mb-0">Notifications</h6>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item preview-item">
                                    <div class="preview-thumbnail">
                                        <div class="preview-icon bg-dark rounded-circle">
                                            <i class="mdi mdi-calendar text-success"></i>
                                        </div>
                                    </div>
                                    <div class="preview-item-content">
                                        <p class="preview-subject mb-1">Event today</p>
                                        <p class="text-muted ellipsis mb-0"> Just a reminder that you have an event today </p>
                                    </div>
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item preview-item">
                                    <div class="preview-thumbnail">
                                        <div class="preview-icon bg-dark rounded-circle">
                                            <i class="mdi mdi-settings text-danger"></i>
                                        </div>
                                    </div>
                                    <div class="preview-item-content">
                                        <p class="preview-subject mb-1">Settings</p>
                                        <p class="text-muted ellipsis mb-0"> Update dashboard </p>
                                    </div>
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item preview-item">
                                    <div class="preview-thumbnail">
                                        <div class="preview-icon bg-dark rounded-circle">
                                            <i class="mdi mdi-link-variant text-warning"></i>
                                        </div>
                                    </div>
                                    <div class="preview-item-content">
                                        <p class="preview-subject mb-1">Launch Admin</p>
                                        <p class="text-muted ellipsis mb-0"> New admin wow! </p>
                                    </div>
                                </a>
                                <div class="dropdown-divider"></div>
                                <p class="p-3 mb-0 text-center">See all notifications</p>
                            </div>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link" id="profileDropdown" href="#" data-toggle="dropdown">
                                <div class="navbar-profile">
                                    <img class="img-xs rounded-circle" src="../uploads/<?php echo $admin['image'] ?>" alt="">
                                    <p class="mb-0 d-none d-sm-block navbar-profile-name"><?php echo $admin['name'] ?></p>
                                    <i class="mdi mdi-menu-down d-none d-sm-block"></i>
                                </div>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="profileDropdown">
                                <!--                            <h6 class="p-3 mb-0">Profile</h6>-->
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item preview-item" href="logout.php">
                                    <div class="preview-thumbnail">
                                        <div class="preview-icon bg-dark rounded-circle">
                                            <i class="mdi mdi-logout text-danger"></i>
                                        </div>
                                    </div>
                                    <div class="preview-item-content">
                                        <p class="preview-subject mb-1">Log out</p>
                                    </div>
                                </a>
                                <div class="dropdown-divider"></div>
                            </div>
                        </li>
                    </ul>
                    <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
                        <span class="mdi mdi-format-line-spacing"></span>
                    </button>
                </div>
            </nav>