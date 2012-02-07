$(($)->
  $('#form_xml')
    .live("ajax:complete", (xhr)->
      $('#status').empty()
      $('#status').append('<div>解析完了！</div>')
    )
    .live("ajax:beforeSend", (xhr)->
      localStorage.setItem('xml_form_key', $('#formed_xml'))
      $('#status').empty()
      $('#status').append('<div><img alt="loding" height="15" src="../images/loding.gif" width="15" />Loading...</div>')
    )
    .live("ajax:success", (event, data, status, xhr)->
      if data.sucess == 'true'
        $('#formed_xml').val(data.formed_xml);
      else
        alert('入力エラー')
        $('#formed_xml').val('')
    )
    .live("ajax:error", (data, status, xhr)->
      $('#status').empty()
      alert("failure!!!")
    )
)