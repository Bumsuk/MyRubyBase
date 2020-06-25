Fixnum.freeze
class Fixnum
  def +(rhs); return 5 end  #=> TypeError(can't modify frozen class) †
end
