<?php
require_once("../condb.php");
if(isset($_POST['submit'])&&checkp("username")&&checkp("pass")){
    $un=$_POST['username'];
    $up=$_POST['pass'];
    $result=$conn->query("SELECT * FROM users WHERE user_id='$_SESSION[uid]' AND user_password='$up'");
    if($result->num_rows==1){
        $result=$conn->query("SELECT * FROM users WHERE user_name='$un'");
        if($result->num_rows==0){
        if($conn->query("UPDATE users SET user_name='$un' WHERE user_id='$_SESSION[uid]'")){
            alert("edit username success");
            go("edit_user.php");
        }
        }else{
            alert("error password");
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
            <h3 class="my-3">Edit Username</h3>
            <form action="" method="post">
                <input type="text" name="username" placeholder="new username" class="form-control my-3">
                <input type="password" name="pass" placeholder="password" class="form-control my-3">
                <button name="submit" type="submit" class="btn btn-outline-primary">SUBMIT</button>
            </form>
        </div>
    </div>
</body>
</html>