$(document).on('turbolinks:load', function() {
  $(function() {

    var date_text = $('.index_box__field__date__text')
    var result1 = $('.date_result1')
    var result2 = $('.date_result2')
    var result3 = $('.date_result3')

    // 画面を読み込んだ時点で、togglerボタンが出ているかどうかで処理を分ける
    if($('.navbar-toggler').css('display') == 'block') {
      date_text.css ({
        'border-bottom': 'solid 2px white',
        'border-right': 'solid 3px #00a0de'
      })
      result1.css ({
        'border-top': 'none',
        'border-left': 'solid 3px #00a0de'
      })
      result2.css ({
        'border-top': 'none',
      })
      result3.css ({
        'border-top': 'none',
      })
    }

    $(window).resize(function() { // togglerボタンが出た時にborderを変更
      if($('.navbar-toggler').css('display') == 'block') {
        date_text.css ({
          'border-bottom': 'solid 2px white',
          'border-right': 'solid 3px #00a0de'
        })
        result1.css ({
          'border-top': 'none',
          'border-left': 'solid 3px #00a0de'
        })
        result2.css ({
          'border-top': 'none'
        })
        result3.css ({
          'border-top': 'none'
        })
      }
      else {
        date_text.css ({
          'border': 'solid 3px #00a0de',
          'border-right': 'solid 2px white'
        })
        result1.css ({
          'border-top': 'solid 3px #00a0de',
          'border-left': 'none'
        })
        result2.css ({
          'border-top': 'solid 3px #00a0de',
        })
        result3.css ({
          'border-top': 'solid 3px #00a0de',
        })
      }
    })
  });
});