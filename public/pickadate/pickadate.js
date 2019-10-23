$(document).on('turbolinks:load', function() {
  $(function() {
    $('#schedule').pickadate({
      min: 0
    });
    $('#donation_day').pickadate({
      max: 0
    });
  }
  );
});