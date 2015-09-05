//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require bootstrap-datetimepicker.min

$(function() {
  $(".form_datetime").datetimepicker({format: 'dd-mm-yyyy hh:ii'});

  $('#event-tabs a').click(function (e) {
      e.preventDefault()
      $(this).tab('show')
  });
});
