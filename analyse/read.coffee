
unique = (links) ->
  if links?
    if links[0]?
      if links[0] in links[1..]
        unique links[1..]
      else
        [links[0]].concat (unique links[1..])
    else
      links
  else
    []

removeLink = (text) ->
  text.trim()
    .replace(/\s*<a.+>.+<\/a>\s*/g, ' ')
    .replace(/\s*<img.+>\s*/)

read = (item) ->
  match = item.html.match /(http(s)?:\/\/[\d\w\/\.\%\&\?\=\-\#\:\+]+)/g

  html: removeLink item.html
  links: (unique match)
  date: item.date
  time: item.time


data = require '../data.json'

unique_items = []
timestamps = []

data.map (post) ->
  unless post.html in timestamps
    timestamps.push post.html
    unique_items.push (read post)

fs = require 'fs'
fs.writeFile 'unique-data.json', JSON.stringify(unique_items, null, 2)
