<?php
require_once("../condb.php");
if(isset($_GET['uid'])){
    $uid=$_GET['uid'];
    if($conn->query("UPDATE users  SET user_status=1 WHERE user_id='$uid'")){
        alert("unban success");
        go("view_user.php");

    }else{
        alert("unban error");
    }
}

if(isset($_GET['bid'])){
    $uid=$_GET['bid'];
    if($conn->query("UPDATE users  SET user_status=0 WHERE user_id='$uid'")){
        alert("cancle");
        go("view_user.php");
    }else{
        alert("cancle error");
    }
}
go("admin.php");

?>