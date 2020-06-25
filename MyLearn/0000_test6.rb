#!/usr/bin/ruby

def surround
  puts "{"
  yield
  puts "}"
end

# surround { puts 'hello world' }
# surround { puts '가나다라마바사' }

def introduce(count)
  puts "count : #{count}"
end

# introduce 7272 { puts "시작이 반이야!" }
introduce 7272

puts "----"

# some_block = { puts "some_block : 클로저 개념은 다 있다!" }
surround { puts "some_block : 클로저 개념은 다 있다!" }

puts "check!!"
