(function() {
  jQuery(function() {});

  $(document).on("page:change", function() {
    $(".comment-form").on("ajax:beforeSend", function(evt, xhr, settings) {
      return $(this).find('textarea').addClass('uneditable-input').attr('disabled', 'disabled');
    }).on("ajax:success", function(evt, data, status, xhr) {
      $(this).find('textarea').removeClass('uneditable-input').removeAttr('disabled', 'disabled').val('');
      return $(xhr.responseText).hide().insertAfter($(this)).show('slow');
    });
    return $(document).on("page:change").on("ajax:beforeSend", ".comment", function() {
      return $(this).fadeTo('fast', 0.5);
    }).on("ajax:success", ".comment", function() {
      return $(this).hide('fast');
    }).on("ajax:error", ".comment", function() {
      return $(this).fadeTo('fast', 1);
    });
  });

}).call(this);
