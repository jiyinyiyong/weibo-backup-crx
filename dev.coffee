
require('calabash').do 'dev',
  'pkill -f doodle'
  'coffee -o lib/ -wbcm coffee/'
  'jade -o ./ -wP layout/'
  'stylus -o build/ -w layout/'
  'doodle index.html build/ lib/ log:yes'