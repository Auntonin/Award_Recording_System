
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

  //add_award_form
  $.ajax({
      url: 'ajax/award_types.php', 
      type: 'POST',
      dataType: 'json',
      success: function (data) {
      
        $.each(data, function (index, value) {
          $('#award_type').append('<option value="' + value.award_type_id + '">' + value.award_type_name + '</option>');
        });
      },
      error: function (xhr, status, error) {
        console.error('Error fetching Award Types:', error);
      }
    });

    // $.ajax({
    //     url: 'ajax/award_types.php', 
    //     type: 'POST',
    //     dataType: 'json',
    //     success: function (data) {
    
    //         $.each(data, function (index, value) {
    //             $('#type').append('<option value="' + value.type_id + '">' + value.type_name + '</option>');
    //         });
    //     },
    //     error: function (xhr, status, error) {
    //         console.error('Error fetching Types:', error);
    //     }
    // });
   
    // $.ajax({
    //     url: 'ajax/award_types.php', 
    //     type: 'POST',
    //     dataType: 'json',
    //     success: function (data) {
    
    //         $.each(data, function (index, value) {
    //             $('#category').append('<option value="' + value.cate_id + '">' + value.cate_name + '</option>');
    //         });
    //     },
    //     error: function (xhr, status, error) {
    //         console.error('Error fetching Types:', error);
    //     }
    // });

    // $.ajax({
    //     url: 'ajax/award_types.php', 
    //     type: 'POST',
    //     dataType: 'json',
    //     success: function (data) {
    
    //         $.each(data, function (index, value) {
    //             $('#level').append('<option value="' + value.level_id + '">' + value.level_name + '</option>');
    //         });
    //     },
    //     error: function (xhr, status, error) {
    //         console.error('Error fetching Types:', error);
    //     }
    // });

    // $.ajax({
    //     url: 'ajax/award_types.php', 
    //     type: 'POST',
    //     dataType: 'json',
    //     success: function (data) {
    
    //         $.each(data, function (index, value) {
    //             $('#skill').append('<option value="' + value.skill_id + '">' + value.skill_name + '</option>');
    //         });
    //     },
    //     error: function (xhr, status, error) {
    //         console.error('Error fetching Types:', error);
    //     }
    // });

    // $.ajax({
    //     url: 'ajax/award_types.php', 
    //     type: 'POST',
    //     dataType: 'json',
    //     success: function (data) {
    
    //         $.each(data, function (index, value) {
    //             $('#department').append('<option value="' + value.department_id + '">' + value.department_name + '</option>');
    //         });
    //     },
    //     error: function (xhr, status, error) {
    //         console.error('Error fetching Types:', error);
    //     }
    // });
   
    // $.ajax({
    //     url: 'ajax/award_types.php', 
    //     type: 'POST',
    //     dataType: 'json',
    //     success: function (data) {
    
    //         $.each(data, function (index, value) {
    //             $('#class').append('<option value="' + value._id + '">' + value._name + '</option>');
    //         });
    //     },
    //     error: function (xhr, status, error) {
    //         console.error('Error fetching Types:', error);
    //     }
    // });

});
