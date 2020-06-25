def black_box_process(x, y)
  # 外部は知る必要のない何らかの処理....
  @c = a + b  # この値を外部が知るのは本意でない。
  nil         # 余分なnilを書いて返り値とする
end
