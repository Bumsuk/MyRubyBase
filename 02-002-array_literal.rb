a = 1
b = "str"
# 配列リテラル
c = [a, b, 3, "文字列"]   #=> [1, "str", 3, "文字列"]
# ネストもできる
d = [a, c, [1, 2, 3]]    #=> [1, [1, "str", 3, "文字列"], [1, 2, 3]]
puts "d : #{d}"