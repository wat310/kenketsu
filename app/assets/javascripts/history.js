$(document).on('turbolinks:load', function() {
  $(function() {

    function createList(record) {
      var lists = '';
      var category = '';
      // for文で繰り返し(繰り返し番号によって条件分岐)
      for ( var num = 0;  num < 2;  num++ ) {
        // 繰り返し番号での条件分岐
        if (num == 0) {
          category = record.day;
        } else {
          category = record.method;
        }

        var list = `<div class="history_list__category col-4 text-center px-0 category${num}">
                      ${category}
                    </div>`;
        lists += list;
      }
      return lists;
    }

    function appendList(lists, result_area) {
      var result =  `<div class='history_box row'>
                      <div class='history_list col-12 d-flex'>
                        ${lists}
                        <div class='col-3'>記録閲覧</div>
                      </div>
                    </div>`;
      result_area.append(result);
    }

    // セレクトボックスの値が変更されたら発火
    $('.history_year').change(function() {
      var year = $(this).val(); // セレクトボックスの値を取得
      var result_area = $('.history_result');

      // ajaxによる非同期通信
      $.ajax({
        type: 'GET',
        url: '/records/select_year',
        data: { keyword: year },
        dataType: 'json'
      })

      .done(function(records) {
        result_area.empty(); // 現在表示されているリストを削除

        records.forEach(function(record) { // jbuilderからのデータをforeachで分解
          var lists = createList(record); // リストを先に作成
          appendList(lists, result_area); // リストを元にHTML作成
        });
      })
      .fail(function() {
        alert('リストの表示に失敗しました')
      })
    });
  });
});