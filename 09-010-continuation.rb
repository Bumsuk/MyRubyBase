require 'continuation' if RUBY_VERSION >= '1.9'
1.upto(10) do |i|
  if i == 3
    $cont = callcc{|continuation| # (1)
        continuation
      }                           # (2)
  end
  print i, ' '
end
$cont.call(nil) if $cont          # (3)

#=> 1 2 3 4 5 6 7 8 9 10 3 4 5 6 7 8 9 10
