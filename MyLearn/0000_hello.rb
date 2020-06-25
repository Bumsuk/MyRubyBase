#!/usr/bin/ruby

puts "안녕!"

array = ["펭수", "길동", "펭수"]
puts array.length # puts나 p 나 같은 명령
p array.length

p array
p array.uniq   # 중복 제거한 배열 반환
p array.uniq1! # 끝에 !를 붙히면 중복제거 후 객체 자체가 변경됨.
p array

