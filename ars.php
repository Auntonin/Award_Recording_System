<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Awards Table</title>
  <?php 
  require_once("condb.php");
  require_once("css.php"); ?>
  
  <style>
    .table{
      font-size: 14px;
    }
  </style>


</head>
<body>

<div class="m-2 mt-5">
  
  <h2>Awards Table</h2>


  <table class="table table-bordered border  table-striped" id="awardsTable">
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

<button type="button" class="btn btn-success m-2" data-bs-toggle="modal" data-bs-target="#add_award">add award</button>



<div class="modal fade " id="add_award" tabindex="-1" role="dialog modal-dialog-centered" aria-labelledby="myModalLabel" >
		  <div class="modal-dialog " role="document">
			<div class="modal-content ">
			  <div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<h4 class="modal-title" id="myModalLabel">เพิ่มข้อมูล</h4>
			  </div>
			  <div class="modal-body">
					<form id="add_node_form" enctype="multipart-form-data">
					<div class="form-group">
						<label >Award Type</label>
						<select name="award_type"  id="award_type" class="form-control">
            <option value="">select</option>
            </select>
					  </div>

					  <div class="form-group">
						<label >Type</label>
						<select name="type"  id="type" class="form-control">
            <option value="">select</option>
            </select>
					  </div>

					  <div class="form-group">
						<label >Category</label>
            <select name="category"  id="category" class="form-control">
            <option value="">select</option>
            </select>
					  </div>

					  <div class="form-group">
						<label >Level</label>
            <select name="level"  id="Level" class="form-control">
            <option value="">select</option>
            </select>
					  </div>

					  <div class="form-group">
						<label >Name</label>
            <select name="skill_id"  id="skill" class="form-control">
            <option value="">select</option>
            </select>
					  </div>

					  <div class="form-group">
						<label >Department</label>
            <select name="department"  id="department" class="form-control">
            <option value="">select</option>
            </select>
					  </div>

					  <div class="form-group">
						<label >Class</label>
							<select name="class"  id="class" class="form-control">
            <option value="">select</option>
            </select>
					  </div>

					  <div class="form-group">
						<label >Organizer</label>
						<input type="text" name="organizer" class="form-control">
					  </div>

					  <div class="form-group">
						<label >Location</label>
						<input type="text" name="location" class="form-control">
					  </div>

					  <div class="form-group">
						<label >Issue Date</label>
            <input type="date" name="data" class="form-control">
					  </div>

					  <div class="form-group">
						<label >Description</label>
							<input type="text" name="description" class="form-control">
					  </div>

            <div class="form-group">
						<label >Image</label>
							<input type="file" name="image" class="form-control">
					  </div>

            <div class="form-group">
						<label >File</label>
						<input type="file" name="award_pdf" class="form-control">
					  </div>

					</form>
			  </div>
			  <div class="modal-footer">
				<button type="button" class="btn btn-primary" onclick="return add_node_form();">Add Node</button>
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			  </div>
			</div>
		  </div>
		</div>

<?php require_once("js.php"); ?>


<script>
  $(document).ready(function () {
<?php require_once("service/script.js"); ?>
   
    
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
