set_trace_func proc { |event, file, line, id, binding, classname|
  printf "%8s %s:%-2d %10s %8s\n", event, file, line, id, classname
}
1 + 1
#=> line 09-009-set_trace_func.rb:4                   false
#   c-call 09-009-set_trace_func.rb:4             +   Fixnum
#   c-return 09-009-set_trace_func.rb:4           +   Fixnum
