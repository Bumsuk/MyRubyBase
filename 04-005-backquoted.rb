p `date`  #=> "Sat Mar 29 19:29:00 JST 2008\n"
p `pwd`   #=> "/Users/yugui/Documents/learning-ruby/doc\n"

puts "====="

myID = `whoami`
puts "myID : #{myID}"