<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Awards Table</title>
  <?php 
  require_once("condb.php");
  require_once("css.php"); ?>
  
</head>
<body>

<div class="container table- mt-5">
  <h2>Awards Table</h2>
  <table class="table table-bordered table-striped" id="awardsTable">
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
        <th>Edit</th>
        <th>Delete</th>
      </tr>
    </thead>
    <tbody>
    </tbody>
  </table>

</div>

<?php require_once("js.php"); ?>


<script>
  $(document).ready(function () {
    var awardsTable = $('#awardsTable').DataTable({
      // "destroy": true,
      // "lengthChange": true,
      // "paging": true,
      // "searching": true,
      // "ordering": true,
      // "info": true,
      // "responsive": true,
      // "autoWidth": false,
      // "pageLength": 25,
      // "processing": true,
      // "serverSide": true,

      "ajax": {
        "url": "ajax/service.php",
        "type": "POST",
        "dataType": 'json',
      },
      "columns": [
        { "data": "award_id" },
        { "data": "award_type_name" },
        { "data": "type_name" },
        { "data": "award_category_name" },
        { "data": "award_level_name" },
        { "data": "skill_name" },
        { "data": "department_name" },
        { "data": "class_name" },
        { "data": "organizer_name" },
        { "data": "location" },
        { "data": "issue_date" },
        { "data": "description" },
        { "data": "award_status" },
        { "data": "award_image" },
        { "data": "award_file" },
        {
        "data": null,
        "render": function (data, type, row) {
          return '<button class="btn btn-warning btn-sm edit-btn">Edit</button>';
        }
      },
      {
        "data": null,
        "render": function (data, type, row) {
          return '<button class="btn btn-danger btn-sm delete-btn">Delete</button>';
        }
      }

      ]
    });
  });
</script>

</body>
</html>
