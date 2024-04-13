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
    #imagePreview {
  text-align: center; 
  }

 
  #pdfPreview {
    width: 100%;
    height: 500px;
    border: 1px solid #ddd;
    margin-top: 10px;
    display: none; /* ซ่อนตัวอย่างไฟล์ PDF เริ่มต้น */
  }

  </style>


</head>
<body>

<div class="m-2 mt-5">
<button type="button" class="btn btn-success m-2" data-bs-toggle="modal" data-bs-target="#add_award">add award</button>
  
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
        <th>File</th>
        <th>Edit</th>
        <th>Delete</th>
      </tr>
    </thead>
    <tbody>
    </tbody>
  </table>

 
</div>




<div class="modal fade " id="add_award" tabindex="-1" role="dialog modal-dialog-centered" aria-labelledby="myModalLabel" >
		  <div class="modal-dialog modal-lg" role="document">
			<div class="modal-content ">
			  <div class="modal-header">
				<h4 class="modal-title" id="addModalLabel">เพิ่มข้อมูลรางวัล</h4>
				<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			  </div>
			  <div class="modal-body">
					<form id="add_node_form" enctype="multipart-form-data">

          <div class="form-group">
						<label >Award Type</label>
						<select name="award_type"  id="award_type" class="form-control">
            <option value="">select</option>   
            <?php getSelecterAward("award_type","award_type_id","award_type_name"); ?>
            </select>
					  </div>

					  <div class="form-group">
						<label >Type</label>
						<select name="type"  id="type" class="form-control">
            <option value="">select</option>
            <?php getSelecterAward("types","type_id","type_name"); ?>
            </select>
					  </div>

					  <div class="form-group">
						<label >Category</label>
            <select name="category"  id="category" class="form-control">
            <option value="">select</option>
            <?php getSelecterAward("award_category","award_category_id","award_category_name"); ?>
            </select>
					  </div>

					  <div class="form-group">
						<label >Level</label>
            <select name="level"  id="level" class="form-control">
            <option value="">select</option>
            <?php getSelecterAward("award_level","award_level_id","award_level_name"); ?>

            </select>
					  </div>

					  <div class="form-group">
						<label >Name</label>
            <select name="skill_id"  id="skill" class="form-control">
            <option value="">select</option>
            <?php getSelecterAward("skill","skill_id","skill_name"); ?>
            </select>
					  </div>

					  <div class="form-group">
						<label >Department</label>
            <select name="department"  id="department" class="form-control">
            <option value="">select</option>
            <?php getSelecterAward("department","department_id","department_name"); ?>
            </select>
					  </div>

					  <div class="form-group">
						<label >Class</label>
							<select name="class"  id="class" class="form-control">
            <option value="">select</option>
            <?php getSelecterAward("class","calss_id","class_name"); ?>
            </select>
					  </div>

					  <div class="form-group">
						<label >Organizer</label>
						<input type="text" name="organizer" class="form-control" placeholder="ผู้จัด">
					  </div>

					  <div class="form-group">
						<label >Location</label>
						<input type="text" name="location" class="form-control" placeholder="สถานที่">
					  </div>

					  <div class="form-group">
						<label >Issue Date</label>
            <input type="date" name="data" class="form-control" >
					  </div>

					  <div class="form-group">
						<label >Description</label>
							<input type="text" name="description" class="form-control" placeholder="รายละเอียด">
					  </div>

            <div class="form-group">
						<label >Image </label>
            <!-- <input type="file" id="image" name="image[]" class="form-control" multiple onchange="previewImage()"> -->
            <input type="file" id="image" name="image[]" class="form-control" multiple onchange="previewImage()">

					  </div>
            <div id="imagePreview" class="mt-2"></div>
            <!-- <img id="imagePreview" alt="Image Preview"> -->


            <div class="form-group">
						<label >Award File</label>
						<input  type="file" id="award_pdf" name="award_pdf" class="form-control" accept="application/pdf" onchange="previewPDF()">
					  </div>
            <embed id="pdfPreview" src="#" type="application/pdf" frameborder="0" scrolling="auto"></embed>

					</form>
			  </div>
			  <div class="modal-footer">
				<button type="button" class="btn btn-primary" onclick="return add_node_form();">Add Award</button>
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
			  </div>
			</div>
		  </div>
		</div>

<?php require_once("js.php"); ?>

<script>
  function previewImage() {
  var preview = document.getElementById('imagePreview');
  var files = document.getElementById('image').files;
  preview.innerHTML = ''; // ล้างเนื้อหาของตัวอย่างรูปภาพเดิม

  for (var i = 0; i < files.length; i++) {
    var file = files[i];
    var reader = new FileReader();

    reader.onload = (function (img) {
      return function (e) {
        var image = document.createElement('img');
        image.src = e.target.result;
        image.style.maxWidth = '300px'; // ปรับขนาดรูปภาพตัวอย่างให้เหมาะสม
        image.style.marginRight = '20px'; // เพิ่มระยะห่างระหว่างรูปภาพ
        preview.appendChild(image); // เพิ่มรูปภาพตัวอย่างลงใน div ที่มี id เป็น 'imagePreview'
      };
    })(file);

    reader.readAsDataURL(file);
  }
}

function previewPDF() {
  var preview = document.getElementById('pdfPreview');
  var file = document.getElementById('award_pdf').files[0];
  var reader = new FileReader();

  reader.onloadend = function () {
    preview.src = reader.result;
    preview.style.display = 'block'; // แสดงตัวอย่างไฟล์ PDF เมื่อมีการอัปโหลด
  }

  if (file) {
    reader.readAsDataURL(file);
  } else {
    preview.src = "";
    preview.style.display = 'none'; // ซ่อนตัวอย่างไฟล์ PDF เมื่อไม่มีการเลือกไฟล์
  }
}
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
        "data":{"status":"allAward"},

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
        { "data": "award_file" },
        {
        "data": null,
        "render": function (data, type, row) {
          return '<button class="btn btn-warning btn-sm edit-btn" onclick="editAward" >Edit</button>';
        }
      },
      {
        "data": null,
        "render": function (data, type, row) {
          return '<button class="btn btn-danger btn-sm delete-btn" onclick="deleteAward" >Delete</button>';
        }
      }

      ]
    });
  });
</script>

</body>
</html>
