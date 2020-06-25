(2..100).each do |candidate|                                  # (1)
  sqrt = Math.sqrt(candidate)                                 # (2)
  factor_found  =  (2..sqrt).any? {|i| candidate % i == 0}    # (3)
  
  if factor_found then                                        # (4)
    print "#{candidate}は合成数\n"
  else
    print "#{candidate}は素数\n"
  end
end
