$(document).on('turbolinks:load', function() {
  $(function() {

    // $('.detail_btn').click(function() {
    //   var text = $(this).text();
    //   if (text == "詳細") {
    //     $(this).text("閉じる");
    //   }
    //   else {
    //     $(this).text("詳細");
    //   }
    // })



    // ページの先頭へ戻る
    $('.return_btn').click(function() {
      $('body, html').animate({scrollTop: 0}, 200, 'linear');
    })
  });
});