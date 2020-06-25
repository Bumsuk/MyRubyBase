book_to_author = {
  "Ruby in Nutshell" => "Flanagan",
  "Programming Ruby" => "Thomas",
  "AWDwR" => "Thomas"
}
p book_to_author["Programming Ruby"]         #=> "Thomas"
# 存在しないキーの場合
p book_to_author["Programming Perl"]         #=> nil
# 既存のキーの更新
book_to_author["Ruby in Nutshell"] = ["Flanagan", "Matz"]
# 新しいキーの登録
book_to_author["The Ruby Way"] = "Fulton"

p book_to_author["The Ruby Way"]

puts "🕯 끗!"