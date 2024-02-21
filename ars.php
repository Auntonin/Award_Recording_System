<?php require_once("condb.php"); ?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Awards Table</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-5">
  <h2>Awards Table</h2>
  <table class="table">
    <thead>
      <tr>
        <th>ID</th>
        <th>Award Type</th>
        <th>Type</th>
        <th>Category</th>
        <th>Level</th>
        <th>Name</th>
        <th>Department</th>
        <th>Class</th>
        <th>Organizer</th>
        <th>Location</th>
        <th>Issue Date</th>
        <th>Description</th>
        <th>Status</th>
        <th>Image</th>
        <th>File</th>
      </tr>
    </thead>
    <tbody>
      <?php
  

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

      if ($result->num_rows > 0) {
          while ($row = $result->fetch_assoc()) {
              echo "<tr>";
              echo "<td>" . $row["award_id"] . "</td>";
              echo "<td>" . $row["award_type_name"] . "</td>";
              echo "<td>" . $row["type_name"] . "</td>";
              echo "<td>" . $row["award_category_name"] . "</td>";
              echo "<td>" . $row["award_level_name"] . "</td>";
              echo "<td>" . $row["skill_name"] . "</td>";
              echo "<td>" . $row["department_name"] . "</td>";
              echo "<td>" . $row["class_name"] . "</td>";
              echo "<td>" . $row["organizer_name"] . "</td>";
              echo "<td>" . $row["location"] . "</td>";
              echo "<td>" . $row["issue_date"] . "</td>";
              echo "<td>" . $row["description"] . "</td>";
              echo "<td>" . $row["award_status"] . "</td>";
              echo "<td>" . $row["award_image"] . "</td>";
              echo "<td>" . $row["award_file"] . "</td>";
              echo "</tr>";
          }
      } else {
          echo "<tr><td colspan='16'>No records found</td></tr>";
      }

      $conn->close();
      ?>
    </tbody>
  </table>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
