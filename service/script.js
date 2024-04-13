
$(document).ready(function () {

function add_award_form() {
    $.ajax({
      type: "POST",
      url: "ajax/add_award.php",
      data: $("#add_award_form").serialize(),
      success: function(response) {
      }
    });
  }

  function edit_award(){
    $.ajax({
      type: "POST",
      url: "ajax/service.php",
      data:{"status":"editAward"},
    })
  }

  
});
