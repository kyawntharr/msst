<?php
session_start();
include_once __DIR__ . '/../controller/registerController.php';
include_once __DIR__ . '/../controller/accountsController.php';

$register_controller = new RegisterController();
$account_controller = new AccountsController();
$email = $password = $emailErr = $passErr = $noti = '';
if (isset($_POST['submit'])) {
    $email = $_POST['email'];
    $_SESSION['email'] = $email;
    $password = $_POST['password'];
    $user = $register_controller->getUser($email);

    if (empty($user)) {
        $emailErr = 'Email address is not available!';
    } elseif ($password == $user['password']) {
        $acc = $account_controller->getAccountType($user['id']);
        if ($acc['account_type_id'] == '1') {
            echo "<script>location.href='home.php'</script>";
        } else {
            $noti = 'Invalid Login!';
        }
    } else {
        $passErr = 'Incorrect password!';
    }
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
        <div class="container-fluid page-body-wrapper full-page-wrapper">
            <div class="row w-100 m-0">
                <div class="content-wrapper full-page-wrapper d-flex align-items-center auth login-bg">
                    <div class="card col-lg-4 mx-auto">
                        <div class="card-body px-5 py-5">
                            <h3 class="card-title text-left mb-3">Admin Login</h3>
                            <form action="" method="post">
                                <div class="text-center">
                                    <span class="text-danger"><?php echo $noti; ?></span>
                                </div>
                                <div class="form-group">
                                    <label>Email *</label>
                                    <input type="email" name="email" class="form-control p_input"
                                        value="<?php echo $email; ?>" required>
                                    <span class="error" style="color:red; font-size:12px"><?php echo $emailErr; ?></span>
                                </div>
                                <div class="form-group">
                                    <label>Password *</label>
                                    <input type="password" name="password" class="form-control p_input"
                                        value="<?php echo $password; ?>" required>
                                    <span class="error" style="color:red; font-size:12px;"><?php echo $passErr; ?></span>
                                </div>

                                <div class="text-center p-3">
                                    <button type="submit" name="submit"
                                        class="btn btn-primary btn-block enter-btn">Login</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <!-- content-wrapper ends -->
            </div>
            <!-- row ends -->
        </div>
        <!-- page-body-wrapper ends -->
    </div>
    <!-- container-scroller -->
    <!-- plugins:js -->
    <script src="../assets/vendors/js/vendor.bundle.base.js"></script>
    <!-- endinject -->
    <!-- Plugin js for this page -->
    <!-- End plugin js for this page -->
    <!-- inject:js -->
    <script src="../assets/js/off-canvas.js"></script>
    <script src="../assets/js/hoverable-collapse.js"></script>
    <script src="../assets/js/misc.js"></script>
    <script src="../assets/js/settings.js"></script>
    <script src="../assets/js/todolist.js"></script>
    <!-- endinject -->
</body>

</html>
