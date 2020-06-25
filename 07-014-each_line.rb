verse = "桃之夭夭 灼灼其華\n之子于帰 宜其室家\n"
count = 0
verse.each_line do |line|
  print line
  count += 1
end

puts "count : #{count}"