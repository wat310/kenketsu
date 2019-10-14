$(document).on('turbolinks:load', function() {
  $(function() {

    var nav_li = $('.nav-link')
    var nav_top = $('.nav-top')

    // 画面を読み込んだ時点で、togglerボタンが出ているかどうかで処理を分ける
    if($('.navbar-toggler').css('display') == 'block') {
      nav_li.css ({
        'border-top': 'solid 1px white',
        'padding-left': '20px'
      })
      nav_top.css ({
        'margin-top': '10px'
      })
    }

    $(window).resize(function() { // togglerボタンが出た時にリストの上に白線を付ける
      if($('.navbar-toggler').css('display') == 'block') {
        nav_li.css ({
          'border-top': 'solid 1px white',
          'padding-left': '20px'
        })
        nav_top.css ({
          'margin-top': '10px'
        })
        
      }
      else {
        nav_li.css ({
          'border': 'none'
        })
        nav_top.css ({
          'margin-top': '0'
        })
      }
    })
  });
});