a, b = "str", "str"
def a.greet
  puts "I am the object #{self.object_id}"
end

# このオブジェクトでだけ使えるメソッド
a.greet  #=> I am the object 84650
# クラスや値は同じでも、オブジェクトとして別なら未定義
b.greet  #=> NoMethodError  
