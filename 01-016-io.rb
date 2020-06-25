name = gets                      # 標準入力から1行入力
print "Hello, #{name}\n"         # 文字列中の式展開
printf "Hello, %s\n", name       # C言語風の文字列フォーマット出力
message =  "Hello, %s" % name    # 文字列フォーマットの別の書き方
puts message                     # putsメソッドは最後に改行を出力する
$stderr.puts message             # 標準エラー出力へ
$stdout.puts message             # 標準出力を明示しても良い
$stdout.class  #=> IO            これらはIOクラスのインスタンス
7777