class Foo
  @@class_variable = "foo"      # (1) クラス変数初期化
  def print
    p @@class_variable          # (2) クラス変数参照
  end
end
class Bar < Foo
  p @@class_variable            #=> "foo"   (3) クラス変数参照
  @@class_variable = "bar"      # (4) クラス変数更新
  def print
    p @@class_variable          # (5) クラス変数参照
  end
end

# まったく関係ない、継承階層を異にするクラス
class Hoge
  p @@class_variable       #=> NameError(uninitialized class variable) †
end
# クラス外部
p @@class_variable         #=> NameError(uninitialized class variable) †
