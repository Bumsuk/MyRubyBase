def some_method(a, b)
  p [a, b]
end
params = [1, 2]
x, y = params       # 多重代入の場合。xが1に、yが2に設定される。
some_method(params) #=> wrong number of arguments (1 for 2) (ArgumentError) †
