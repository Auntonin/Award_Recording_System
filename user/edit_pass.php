<?php
require_once("../condb.php");
if(isset($_POST['submit'])&&checkp("pass0")){
    $up0=$_POST['pass0'];
    $up1=$_POST['pass1'];
    $up2=$_POST['pass2'];
    if($conn->query("SELECT * FROM users WHERE user_id='$_SESSION[uid]' AND user_password='$up0'")){
       if($up1==$up2){
        if($conn->query("UPDATE users SET user_password='$up1' WHERE user_id='$_SESSION[uid]'")){
            alert("edit password success");
            go("edit_user.php");
        }else{
            alert("error update password");
        }
       }else{
        alert("error confirm password");
       }
       
       
    }else{
        alert("error old password");
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
            <h3 class="my-3">Edit Password</h3>
            <form action="" method="post">
                <input type="password" name="pass0" placeholder="old password" class="form-control my-3">
                <input type="password" name="pass1" placeholder="new password" class="form-control my-3">
                <input type="password" name="pass2" placeholder="confirm password" class="form-control my-3">
                <button name="submit" type="submit" class="btn btn-outline-primary">SUBMIT</button>
            </form>
        </div>
    </div>
</body>
</html>