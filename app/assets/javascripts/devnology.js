$(function() {
  $(".form_datetime").datetimepicker({format: 'dd-mm-yyyy hh:ii'});

  $('#event-tabs a').click(function (e) {
      e.preventDefault()
      $(this).tab('show')
  });
});
