$(($)->
  $('#form_xml')
    .live("ajax:complete", (xhr)->
      $('#status').empty()
      $('#status').append('<div>Done.</div>')
    )
    .live("ajax:beforeSend", (xhr)->
      $('#status').empty()
      $('#status').append('<div><img alt="loding" height="15" src="/assets/../images/loding.gif" width="15" />Loading...</div>')
    )
    .live("ajax:success", (event, data, status, xhr)->
      $('#formed_xml').val(data.formed_xml);
    )
    .live("ajax:error", (data, status, xhr)->
      $('#status').empty()
      alert("failure!!!")
    )
)