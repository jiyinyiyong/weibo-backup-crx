
link = (x) -> "<a href='#{x}'>#{x}</a>"

markup = (item) ->
  "<div class='line'>
    <div class='title'>
      #{item.html}
    </div>
    <div class='links'>
      #{item.links.map(link).join('<br>')}
    </div>
    <div class='time'>
      #{item.time}
    </div>
  </div>"

$.getJSON './analyse/unique-data.json', (list) ->
  $('#entry').html list.map(markup).join('')