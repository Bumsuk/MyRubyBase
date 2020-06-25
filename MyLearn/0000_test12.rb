#!/usr/bin/ruby

# desc1 = :"bumsuk is good man"
# desc2 = :"bumsuk is good man"
# desc3 = :"WTF"
#
# puts "#1 - #{desc1}, #{desc1.object_id}"
# puts "#2 - #{desc2}, #{desc2.object_id}"
# puts "#3 - #{desc3}, #{desc3.object_id}"

def lane(inputParam)
  puts "input : #{inputParam}"
  yield "12345"
end

:fuck = "퍽퍽퍽!"

lane :fuck do |value|
  puts "value : #{value}"
end

puts "- end! -"