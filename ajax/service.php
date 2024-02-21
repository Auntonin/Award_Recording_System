
<?php
require_once("../condb.php");

// Query to retrieve data from the Awards table
$sql = "SELECT * FROM Awards
        LEFT JOIN award_type ON awards.award_type_Id = award_type.award_type_id
        LEFT JOIN type ON awards.type_Id = type.type_id
        LEFT JOIN award_category ON awards.award_category_Id = award_category.award_category_id
        LEFT JOIN award_level ON awards.award_level_Id = award_level.award_level_id
        LEFT JOIN skill ON awards.skill_Id = skill.skill_id
        LEFT JOIN department ON awards.department_Id = department.department_id
        LEFT JOIN class ON awards.class_Id = class.class_id
        LEFT JOIN award_image ON awards.award_image_Id = award_image.award_image_id";

$result = $conn->query($sql);

$data = array();

if ($result) {
    while ($row = $result->fetch_assoc()) {
        $data[] = $row;
    }
    echo json_encode($data);
} else {
    echo json_encode(['error' => $conn->error]);
}

$conn->close();
?>
