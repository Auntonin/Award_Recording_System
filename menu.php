<div class="d-flex flex-wrap p-3 md-3 align-items-center border-bottom bg-light">
        <h3 class="me-auto text-center">Award_Recording_System</h3>
        <nav class="nav my-2 mr-md-0 me-3">
                <a class="p-2 text-dark  nav-link " href="index.php">HOME</a>
                <a class="p-2 text-dark nav-link" href="show_award.php">AWARD</a>
                <?php if (isset($_SESSION['uid'])) { ?>

                        <?php if ($_SESSION['level'] == "admin") { ?>
                                <a class="p-2 text-dark nav-link" href="admin/admin.php">admin</a>
                        <?php } ?>

                <?php } ?>
        </nav>

        <?php if (isset($_SESSION['uid'])) { ?>
                <a class="btn btn-outline-dark " href="user/logout.php">LOGOUT</a>
                
                <a class="p-2 text-dark" href="user/edit_user.php"><img src="img/user/<?= $_SESSION['userimg'] ?>" width="40"
                                height="40"></a>
        <?php } else { ?>
                <a class="btn btn-outline-primary mx-1" href="user/login.php">LOGIN</a>
                <a class="btn btn-primary mx-1" href="user/register.php">REGISTER</a>
        <?php } ?>

</div>