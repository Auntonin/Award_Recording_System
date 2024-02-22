<?php 
session_start();
$servername="localhost";
$username="root";
$password="";
$dbname="ars1";

$conn = new mysqli ($servername,$username,$password,$dbname);

if($conn->connect_error){
    echo"connect faile".$conn->connect_error;
}

function go($txt){
    echo "<script>window.location.replace('$txt')</script>";
}

function alert($txt){
    echo "<script>alert('$txt')</script>";
}

function checks($txt){
    return isset($_SESSION[$txt])&& trim($_SESSION[$txt])!="";
}

function update(){
    global $conn ;
    if(isset($_SESSION['uid'])){
        $result = $conn->query("SELECT * FROM user WHERE user_id=$_SESSION[uid]");
        $rs = $result->fetch_array();
        $_SESSION["uid"] = $rs['user_id'];
        $_SESSION["username"] = $rs['user_name'];
        $_SESSION["level"] = $rs['level'];
        $_SESSION["userimg"] = $rs['user_image'];
    }
}
update();

function get_department($val){
    global $conn ;
    if($val != ""){
        $sql =("SELECT department_name FROM department WHERE department_id='$val'");
        $result = $conn ->query($sql);
        $department_name = $result -> fetch_assoc()['department_name'];
        return $department_name ;
    }else{
        return 'Department not found';
    }
}

function get_c($val){
    global $conn ;
    if($val != ""){
        $sql =("SELECT class_name FROM class WHERE class_id='$val'");
        $result = $conn ->query($sql);
        $class_name = $result -> fetch_assoc()['class_name'];
        return $class_name ;
    }else{
        return 'Class not found';
    }
}



function formatPN($phoneNumber) {
    // Remove any non-numeric characters from the phone number
    $phoneNumber = preg_replace('/[^0-9]/', '', $phoneNumber);

    // Check if the phone number has 10 digits
    if (strlen($phoneNumber) === 10) {
        // Format the phone number with dashes
        $formattedNumber = substr_replace($phoneNumber, '-', 3, 0);
        $formattedNumber = substr_replace($formattedNumber, '-', 7, 0);

        return $formattedNumber;
    } else {
        // If the phone number is not 10 digits, return the original input
        return $phoneNumber;
    }
}
?>