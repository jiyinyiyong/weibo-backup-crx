
collection = []

chrome.extension.onMessage.addListener (message, sender, sendResponse) ->
  collection.push message.list...

  console.log collection.length
  sendResponse {say: 'got it'}