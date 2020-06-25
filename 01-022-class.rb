# 이제는 Fixnum은 Integer를 사용해야 함!
# This warnings appear because you are using ruby 2.4.0.
# This version introduced this change: Unify Fixnum and Bignum into Integer
# See here for the announcement: https://www.ruby-lang.org/en/news/2016/12/25/ruby-2-4-0-released/

p Fixnum.class             #=> Class   クラスは、Classクラスのインスタンス
p Fixnum.object_id         #=> 108610  勿論、一意な番号を持つ
# 祖先クラスを問い合わせる
p Fixnum.ancestors         #=> [Fixnum, Integer, Precision, Numeric, ....
# インスタンスメソッドの一覧
p Fixnum.instance_methods  #=> [:to_s, :id2name, ....
# インスタンスのクラスへの所属判定
p 1.kind_of? Fixnum        #=> true
p "str".kind_of? Fixnum    #=> false
p Fixnum.kind_of? Class    #=> true
p Fixnum.kind_of? Object   #=> true
