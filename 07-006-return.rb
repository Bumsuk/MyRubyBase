def fact(n)
  return 1 if n == 0   # 0の場合は打ち切って1を返す。
  #if n == 0;  return 1;  end # 이렇게 해도 똑같다.
  #
  product = 1
  (1 .. n).each do |i|
    product *= i
  end
  return product
end

# 사용예
puts fact(0)
