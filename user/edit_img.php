<?php
require_once("../condb.php");
if(isset($_POST['submit'])&&checkp("pass")){
    $up=$_POST['pass'];
    if($conn->query("SELECT * FROM users WHERE user_id='$_SESSION[uid]' AND user_password='$up'")){
       $fd="../img/profile/";
       $ft=$fd.basename($_FILES['img']['name']);
       if(move_uploaded_file($_FILES['img']['tmp_name'],$ft)){
            $fn=$_FILES['img']['name'];
                if($conn->query("UPDATE users SET user_image='$fn' WHERE user_id='$_SESSION[uid]'")){
                    alert("edit profil success");
                    go("edit_user.php");
                }else{
                    alert("error sql");
                }
       }else{
        alert("error moveupload");
       }
    }else{
        alert("error passowrd");
    }
       
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
       <?php require_once("../css.php"); ?>
    <title>user</title>
</head>
<body>
    <div class="container">
        <div class="main my-5 text-center">
            <h3 class="my-3">Edit Username</h3>
            <form action="" method="post" enctype="multipart/form-data">
                <input type="file" name="img"  class="form-control my-3">
                <input type="password" name="pass" placeholder="password" class="form-control my-3">
                <button name="submit" type="submit" class="btn btn-outline-primary">SUBMIT</button>
            </form>
        </div>
    </div>
</body>
</html>