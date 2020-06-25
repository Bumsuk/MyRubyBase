# ユーザーの入力が1ならBarから、そうでなければBazから派生する
class Foo < (user_input == "1" ? Bar : Baz)
  # ......
end
