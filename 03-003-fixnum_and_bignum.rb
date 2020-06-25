p 0x3FFFFFFF.class               #=> Fixnum
p (0x3FFFFFFF+0x3FFFFFFF).class  #=> Bignum
p 0x40000000.class               #=> Bignum
p (0x40000000-1).class           #=> Fixnum
