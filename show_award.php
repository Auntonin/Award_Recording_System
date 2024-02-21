<?php require_once("condb.php"); ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <?php require_once("css.php"); ?>

    <title>show_award</title>
</head>

<body>
    <?php require_once("menu.php"); ?>

    <div class="container mt-5">
        <div class="main row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">

        <?php
            $sql = "SELECT * FROM Awards";
            $result = $conn->query($sql);

            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
                    echo "<div class='card m-2' style='width: 18rem;'>";
                    echo "<img src='data:image/jpeg;base64," . base64_encode($row['award_image']) . "' alt='Award Image'>";
                    echo "<div class='card-body'>";
                    echo "<p class='card-text'>" . $row['description'] . "</p>";
                    echo "</div>";
                    echo "</div>";
                }
            } else {
                echo "<p>No awards found</p>";
            }

            $conn->close();
        ?>
        </div>
    </div>

    <?php require_once("js.php"); ?>
</body>

</html>
