# Ruby 1.8
# 文字リテラルは整数値を生成する
puts ?1      #=> 49
puts ?a      #=> 97
puts ?\t     #=> 9
puts ?\x5c   #=> 92
puts ?\C-d   #=> 4

puts "🤡🤡🤡🤡🤡"

# Ruby 1.9
# 文字リテラルは1文字だけを含む文字列を生成する
puts ?1       #=> "1"
puts ?a       #=> "a"
puts ?\t      #=> "\t"
puts ?\M-\C-d #=> "\x84"
puts ?\u2318  #=> "⌘"
puts ?あ      #=> "あ"