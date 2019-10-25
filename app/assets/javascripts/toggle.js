$(document).on('turbolinks:load', function() {
  $(function() {
    $('#sign_up-toggle').bootstrapToggle({
      on: '男性',
      off: '女性',
      offstyle: 'danger',
      width: '150',
    });
  });
});