<?php
require_once("../condb.php");

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>admin</title>
   <?php require_once("../css.php"); ?>
</head>
<body>
    <?php 
    require_once("menu.php");
    ?>
<div class="container text-center mt-5">
    <h3 class="my-3">View User</h3>
    <table class="table text-center">
        <tr>
            <th>รหัส</th>
            <th>ชื่อ</th>
            <th>แผนก</th>
            <th>ชั้นปี</th>
            <th>tel</th>
            <th>Level</th>
            
           
        </tr>

        <?php
            $result=$conn->query("SELECT * FROM user ");
            while($rs=$result->fetch_array()){ ?>
                <tr>
                    <td><?= $rs['user_id']?></td>
                    <td><?= $rs['user_name']?></td>
                    <td><?= get_department($rs['department_Id'])?></td>
                    <td><?= get_c($rs['class_Id'])?></td>
                    <td><?= formatPN($rs['tel']) ?></td>
                    <td><?= $rs['level'] ?></td>
                </tr>
           <?php }
        ?>
    </table>
</div>
</body>
</html>