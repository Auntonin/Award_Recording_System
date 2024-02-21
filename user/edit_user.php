<?php
require_once("../condb.php");



?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
       <?php require_once("../css.php"); ?>
    <title>edit</title>
</head>
<body>
    <div class="container">
        <div class="main my-5 ">
        <div>
            <img src="../img/user/<?= $_SESSION['userimg'] ?>" alt="img" width="300" height="300">
            <h3 class="m-3">usernaeme : <?= $_SESSION['username']?></h3>
        </div>
        <div>
            <a href="edit_name.php" class="btn btn-outline-primary mx-2">EDIT USERNAME</a>
            <a href="edit_pass.php" class="btn btn-outline-primary mx-2">EDIT PASSWORD</a>
            <a href="edit_ad.php" class="btn btn-outline-primary mx-2">EDIT ADDRESS</a>
            <a href="edit_img.php" class="btn btn-outline-primary mx-2">EDIT PROFILE</a>
            <a href="../index.php" class="btn btn-primary mx-2">GO HOME</a>
        </div>
        </div>
    </div>
</body>
</html>