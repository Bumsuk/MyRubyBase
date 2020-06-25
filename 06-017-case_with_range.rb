value = 3
case value
when 0       then puts '0'
when 1..9    then puts '1けた'
when 10..99  then puts '2けた'
end

# 중요! .. 는 범위를 다 포함하고, ... 는 마지막 인자값을 포함하지 않는다! swift 와 반대!

puts "= end! ="