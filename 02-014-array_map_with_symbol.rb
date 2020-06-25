acids = ["Adenin", "Thymine", "Guanine", "Cytosine"]
# 単純なmap
puts "#1 - #{acids.map{|a| a.downcase}}"   #=> ["adenine", "thymine", "guanine", "cytosine"]

# 省略バージョン # 뭐여 이건?? 문법 헷갈리...
puts "#2 - #{acids.map(&:downcase)}"       #=> ["adenine", "thymine", "guanine", "cytosine"]

# acids.map(&:downcase)