$(document).on('turbolinks:load', function() {
  $(function() {

    var date_title = $('.index_box__field__date__title')
    var result1 = $('.date_result1')
    var result2 = $('.date_result2')
    var result3 = $('.date_result3')
    var day = $('.index_box__field__date__title--upper')
    var method = $('.index_box__field__date__title--lower')

    // 画面を読み込んだ時点で、togglerボタンが出ているかどうかで処理を分ける
    if($('.navbar-toggler').css('display') == 'block') {
      date_title.css ({
        'border': 'none',
        'background-color': 'transparent'
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
      day.css ({
        'border': 'solid 3px #00a0de',
        'border-bottom': 'none',
        'background-color': '#a8d3ff'
      })
      method.css ({
        'border': 'solid 3px #00a0de',
        'border-top': 'none',
        'border-bottom': 'solid 2px #8b8b8b',
        'background-color': '#a8d3ff'
      })
    }

    $(window).resize(function() { // togglerボタンが出た時にborderを変更
      if($('.navbar-toggler').css('display') == 'block') {
        date_title.css ({
          'border': 'none',
          'background-color': 'transparent'
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
        day.css ({
          'border': 'solid 3px #00a0de',
          'border-bottom': 'none',
          'background-color': '#a8d3ff'
        })
        method.css ({
          'border': 'solid 3px #00a0de',
          'border-top': 'none',
          'border-bottom': 'solid 2px #8b8b8b',
          'background-color': '#a8d3ff'
        })
      }
      else {
        date_title.css ({
          'border-bottom': 'solid 2px white',
          'border-right': 'solid 3px #00a0de'
        })
        date_title.css ({
          'border': 'solid 3px #00a0de',
          'border-right': 'solid 2px #8b8b8b',
          'background-color': '#a8d3ff'
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
        day.css ({
          'border': 'none',
          'background-color': 'transport'
        })
        method.css ({
          'border': 'none',
          'background-color': 'transport'
        })
      }
    })
  });
});