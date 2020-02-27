$(document).ready(function() {
  // search patient

  // save comment to database
  $(document).on("click", "#submit_btn", function() {
    const generatedId =
      Date.now().toString(36) +
      Math.random()
        .toString(36)
        .substr(2);

    var uId = generatedId;
    var lastName = $("#lastName").val();
    var firstName = $("#firstName").val();
    var middleName = $("#middleName").val();
    var dateOfBirth = $("#dateOfBirth").val();
    var ward = $("#ward").val();
    $.ajax({
      url: "server.php",
      type: "POST",
      data: {
        save: 1,
        uId: uId,
        lastName: lastName,
        firstName: firstName,
        middleName: middleName,
        dateOfBirth: dateOfBirth,
        ward: ward
      },
      success: function(response) {
        $("#lastName").val("");
        $("#firstName").val("");
        $("#middleName").val("");
        $("#dateOfBirth").val("");
        $("#ward").val("");

        $("#display_area").append(response);
      }
    });
  });
  // delete from database
  $(document).on("click", ".delete", function() {
    var id = $(this).data("id");
    $clicked_btn = $(this);
    $.ajax({
      url: "server.php",
      type: "GET",
      data: {
        delete: 1,
        id: id
      },
      success: function(response) {
        // remove the deleted comment
        $clicked_btn.parent().remove();
        $("#name").val("");
        $("#comment").val("");
      }
    });
  });
  var edit_id;
  var $edit_comment;
  $(document).on("click", ".edit", function() {
    edit_id = $(this).data("id");
    $edit_comment = $(this).parent();
    // grab the comment to be editted
    var name = $(this)
      .siblings(".display_name")
      .text();
    var comment = $(this)
      .siblings(".comment_text")
      .text();
    // place comment in form
    $("#name").val(name);
    $("#comment").val(comment);
    $("#submit_btn").hide();
    $("#update_btn").show();
  });
  $(document).on("click", "#update_btn", function() {
    var id = edit_id;
    var name = $("#name").val();
    var comment = $("#comment").val();
    $.ajax({
      url: "server.php",
      type: "POST",
      data: {
        update: 1,
        id: id,
        name: name,
        comment: comment
      },
      success: function(response) {
        $("#name").val("");
        $("#comment").val("");
        $("#submit_btn").show();
        $("#update_btn").hide();
        $edit_comment.replaceWith(response);
      }
    });
  });
});
