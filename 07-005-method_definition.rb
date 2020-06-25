def sum(x, y)
  x + y
end
def diff x, y                # 括弧を省略するスタイル
  x - y
end
def prod(x, y) x * y end     # 1行にまとめるスタイル
def quo x, y; x / y end      # 括弧を省略して1行にまとめるスタイル

puts sum(1, 2)    #=>  3
puts diff(1, 2)   #=> -1
puts prod(1, 2)   #=>  2
puts quo(1, 2)    #=>  0
