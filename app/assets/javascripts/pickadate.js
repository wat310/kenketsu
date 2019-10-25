$(document).on('turbolinks:load', function() {
  $(function() {
    $(window).on("focus", function () { // これがないと画面に戻った時に勝手にカレンダーが表示される
      $(document.activeElement).blur();
    });
    $('#schedule').pickadate({
      min: 0
    });
    $('#donation_day').pickadate({
      max: 0
    });
  }
  );
});