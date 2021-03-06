
name: 'weibo-backup'
version: '0.0.1'
manifest_version: 2
background:
  scripts: [
    'lib/collector.js'
  ]
content_scripts: [
  matches: [
    'http://weibo.com/*'
    'https://weibo.com/*'
  ]
  js: [
    'bower_components/zepto/zepto.js'
    'lib/walker.js'
  ]
  run_at: 'document_end'
]
permissions: [
  'http://weibo.com/*'
  'https://weibo.com/*'
]
web_accessible_resources: [
  'lib/*'
  'coffee/*'
]