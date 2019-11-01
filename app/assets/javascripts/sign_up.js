$(document).on('turbolinks:load', function() {
  $(function() {
    $('#sign_up-toggle').bootstrapToggle({ // 性別選択のtoggleボタン
      on: '男性',
      off: '女性',
      offstyle: 'danger',
      width: '150',
    });

    $('#passcheck').bootstrapToggle({ // パスワードのtoggleボタン
      on: '表示',
      off: '隠す',
      onstyle: 'info',
      offstyle: 'secondary',
      width: '100',
    });

    $('#passcheck').change(function(){
      if ( $(this).prop('checked') ) {
          $('.password').attr('type','text');
      } else {
          $('.password').attr('type','password');
      }
    });

  });
});