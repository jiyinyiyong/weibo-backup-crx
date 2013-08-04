
delay = (t, f) -> setTimeout f, t

do watch = ->
  console.log 'watching'
  window.scrollBy 0, 100000
  items = $('div.WB_detail')
  delay 1000, ->
    if items.length < 45
      watch()
    else
      read items

read = (items) ->
  list = []
  for item in items
    it = $ item
    data =
      html: it.find('.WB_text').html()
      date: it.find('.WB_from [date]').attr('date')
      time: it.find('.WB_from [date]').attr('title')
    list.push data
  chrome.extension.sendMessage {list}, ->
    # console.log 'sent', list
    console.clear()
    button = $('.W_pages>a').get(1)
    if button?
      button.click()
    else
      $('.W_pages>a').click()
    do again = ->
      delay 1000, ->
        try
          watch()
        catch error
          again()