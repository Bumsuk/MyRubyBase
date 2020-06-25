array = ["Bear", "Benford", "Egan"]  # 配列リテラル
# 要素ごとの変換(map)
p array.map{|name| "🤡G. #{name}" }    #=> ["G. Bear", "G. Benford", "G. Egan"]

# ハッシュリテラル
hash = {  
  "Baxter" => "Stephen", "Stross" => "Charles", "Reynolds" => "Alastair"
}
# 項目ごとの繰り返し
hash.each do |key, value|
  puts "#{value} #{key}"
end

puts "=== 같은 폴더에 있는 텍스트 파일 읽어들여 출력 ==="
File.open('./hangle.txt') do |f|
  print f.read
end

