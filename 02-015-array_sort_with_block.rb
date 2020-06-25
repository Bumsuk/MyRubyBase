array = ["73", "2", "5", "1999", "53"]
# デフォルトの文字列ソート(辞書式)
puts "#1 - #{array.sort}"                            #=> ["1999", "2", "5", "53", "73"]
# 数値に変換してから比較してソート
puts  "#2 - #{array.sort{|x, y| x.to_i <=> y.to_i}}"  #=> ["2", "5", "53", "73", "1999"]
