<?php
require_once("../condb.php");
if(isset($_POST['submit'])&&checkp("ad")){
    $uad=$_POST['ad'];
    $up=$_POST['pass'];
    $result=$conn->query("SELECT * FROM users WHERE user_id='$_SESSION[uid]' AND user_password='$up'");
    if($result->num_rows==1){
        if($conn->query("UPDATE users SET user_address='$uad' WHERE user_id='$_SESSION[uid]'")){
            alert("edit user address success");
            go("edit_user.php");
        }
    }else{
        alert("error password");
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
            <h3 class="my-3">Edit Adderss</h3>
            <form action="" method="post">
                <input type="text" name="ad" placeholder="new addresss" class="form-control my-3">
                <input type="password" name="pass" placeholder="password" class="form-control my-3">
                <button name="submit" type="submit" class="btn btn-outline-primary">SUBMIT</button>
            </form>
        </div>
    </div>
</body>
</html>