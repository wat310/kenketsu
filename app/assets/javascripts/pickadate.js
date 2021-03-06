$(document).on('turbolinks:load', function() {
  $(function() {
    $(window).on("focus", function () { // これがないと画面に戻った時に勝手にカレンダーが表示される
      $(document.activeElement).blur();
    });

    $('#schedule').pickadate({ // 選択できる最低限
      min: 0
    });

    $('#time').pickatime({ // 時間について
      format: 'HH:i', // 24時間表記
        interval: 15,   // 表示間隔
        min: [10,00],   // 予約開始時間
        max: [20,00],    // 予約終了時間
        clear: 'クリア',
    });

    $('#donation_day').pickadate({ // 選択できる最大限
      max: 0
    });

    function css_add() { // ページロード時と左右の矢印を押した時に呼び出す関数
      var sun = $('.picker__weekday:first'); // firstが日曜日
      var sut = $('.picker__weekday:last') // lastが土曜日

      sut.attr('id', 'sut')
      sun.attr('id', 'sun')
      // sut.attr('id', 'sut')

      $('#sun').css({
        'background-color': 'red',
        'color': 'white'
      });

      $('#sut').css({
        'background-color': 'blue',
        'color': 'white'
      });
    }

    css_add(); // ページロード時に呼び出し

    $('.picker__holder').on("click", ".picker__nav--next, .picker__nav--prev", function() {
      css_add();
    });

    // window.onpopstate = function (event) {
    //   console.log("aaa");
    //   css_add();
    // };
  });
});