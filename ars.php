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

  <button class="btn btn-success m-2" data-toggle="modal" data-target="#add_award">add award</button>

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

<div class="modal fade" id="add_award" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		  <div class="modal-dialog" role="document">
			<div class="modal-content">
			  <div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<h4 class="modal-title" id="myModalLabel">เพิ่มข้อมูล</h4>
			  </div>
			  <div class="modal-body">
					<form id="add_node_form">
					<div class="form-group">
						<label >ชนิด</label>
						<input type="text" class="form-control" name="send_type"  placeholder="Switch | Access Point">
					  </div>
					  <div class="form-group">
						<label >ยี่ห้อ</label>
						<input type="text" class="form-control" name="send_brand"  placeholder="ระบุ ยี่ห้อ">
					  </div>
					  <div class="form-group">
						<label >รุ่น</label>
						<input type="text" class="form-control" name="send_version"  placeholder="ระบุ รุ่น">
					  </div>
					  <div class="form-group">
						<label >Model</label>
						<input type="text" class="form-control" name="send_model"  placeholder="ระบุ Model">
					  </div>
					  <div class="form-group">
						<label >Serial Number</label>
						<input type="text" class="form-control" name="send_serialnumber"  placeholder="ระบุ Serial Number">
					  </div>
					  <div class="form-group">
						<label >MAC Address เริ่มต้น</label>
						<input type="text" class="form-control" name="send_mac1"  placeholder="ระบุ MAC Address เริ่มต้น">
					  </div>
					  <div class="form-group">
						<label >MAC Address สิ้นสุด</label>
						<input type="text" class="form-control" name="send_mac2"  placeholder="ระบุ MAC Address สิ้นสุด">
					  </div>
					  <div class="form-group">
						<label >IP Address</label>
						<input type="text" class="form-control" name="send_ip"  placeholder="ระบุ IP Address ">
					  </div>
					  <div class="form-group">
						<label >Username Login</label>
						<input type="text" class="form-control" name="send_userlogin"  placeholder="ระบุ ชื่อผู้ใช้งาน">
					  </div>
					  <div class="form-group">
						<label >Password</label>
						<input type="text" class="form-control" name="send_passwd"  placeholder="ระบุ รหัสผ่าน">
					  </div>
					  <div class="form-group">
						<label >สถานที่อุปกรณ์</label>
						<input type="text" class="form-control" name="send_location"  placeholder="ระบุ สถานที่ที่ อุปกรณ์ติดตั้ง">
					  </div>
					  <div class="form-group">
						<label >ข้อมูลอื่น ๆ</label>
						<input type="text" class="form-control" name="send_comment"  placeholder="ระบุ ข้อมูลอื่น ๆ">
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
