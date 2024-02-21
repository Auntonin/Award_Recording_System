<?php
require_once("../condb.php");
if(isset($_POST['submit'])&&checkp("username")){
    $un=$_POST['username'];
    $up=$_POST['pass'];
    $uad=$_POST['ad'];
    $result=$conn->query("SELECT * FROM users WHERE user_name='$un'");
    if($result->num_rows==0){
       if($conn->query("INSERT INTO users(user_name,user_password,user_address) VALUE('$un','$up','$uad')")){
        alert("register success");
        go("login.php");
       }
    }else{
        alert("error useranme or password");
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
       <?php require_once("../css.php"); ?>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <title>user</title>
</head>
<body>
    <div class="container">
        <div class="main my-5 text-center">
            <h3 class="my-3">Register</h3>
            <form action="" method="post">
                <input type="text " name="username" placeholder="username" class="form-control my-3">
                <input type="password " name="pass" placeholder="password" class="form-control my-3">
                <input type="text " name="ad" placeholder="address" class="form-control my-3">
                <button name="submit" type="submit" class="btn btn-outline-primary">SUBMIT</button>
            </form>
        </div>
    </div>
</body>
</html>