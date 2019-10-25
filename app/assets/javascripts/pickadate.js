$(document).on('turbolinks:load', function() {
  $(function() {
    $(window).on("focus", function () { // これがないと画面に戻った時に勝手にカレンダーが表示される
      $(document.activeElement).blur();
    });

    $('#schedule').pickadate({ // 選択できる最低限
      min: 0
    });
    $('#donation_day').pickadate({ // 選択できる最大限
      max: 0
    });

    function css_add() { // ページロード時と左右の矢印を押した時に呼び出す関数
      var sun = $('.picker__weekday:first') // firstが日曜日
      var sut = $('.picker__weekday:last') // lastが土曜日
      sun.attr('id', 'sun')
      sut.attr('id', 'sut')

      $('#sun').css({
        'background-color': 'red',
        'color': 'white'
      })
      $('#sut').css({
        'background-color': 'blue',
        'color': 'white'
      })
    }

    css_add();

    $('.picker__holder').on("click", ".picker__nav--next, .picker__nav--prev", function() {
      css_add();
    });
  });
});