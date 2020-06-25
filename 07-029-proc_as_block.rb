proc = Proc.new { puts "Proc was called" }
3.times(&proc)
 #=> Proc was Called
 #   Proc was Called
 #   Proc was Called
