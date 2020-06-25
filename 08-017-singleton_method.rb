message = "Hello"                      # 文字列オブジェクト
def message.build_greeting(target)
  puts "🤡#{self}, #{target}."
end

message.build_greeting("world")        #=> Hello, world.
message2 = "Hello"                     # 値は同じだが異なるオブジェクト
# message2.build_greeting("world")       #=> NoMethodError
