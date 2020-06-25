class CybernatedAndroid
  def initialize(name) @name = name end
end
proc = Proc.new {
  p self
  p @name
}

proc.call
  #=> main:  procの本来のself
  #   nil:   インスタンス変数

dicey = CybernatedAndroid.new("dicey1")
dicey.instance_eval(&proc)
  #=> #<CybernatedAndroid:0x29108 ...>:  selfをすり替えてブロックを評価
  #   "dicey1"                           インスタンス変数にもアクセスできる

