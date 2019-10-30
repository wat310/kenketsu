$(document).on('turbolinks:load', function() {
  $(function() {
    if($('#schedule').val() != "" && $('#time').val() != "") { // 初期値があった場合
      $('#show_submit').prop("disabled", true);
      $('#schedule').prop("disabled", true);
      $('#time').prop("disabled", true);
    }

    $('#schedule_edit').click(function() { // 編集ボタンが押された時
      $('#show_submit').prop("disabled", false);
      $('#schedule').prop("disabled", false);
      $('#time').prop("disabled", false);
      $('#schedule_edit').prop("disabled", true);
    });

  });
});