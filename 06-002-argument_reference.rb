# frozen_string_literal: true
def describe(name)
  puts "This is a #{name}."  #=> This is a yahoo.
  name[2] = 'p' # ?p 보다 'p' 방식이 낫다.
  puts "This is a #{name}."  #=> This is a yapoo.
end

CATTLE = "yahoo"
describe(CATTLE)
p CATTLE                     #=> "yapoo"
