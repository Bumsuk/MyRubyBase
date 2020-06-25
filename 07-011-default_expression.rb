def print_time(time = Time.now)
  p time
end
print_time   #=> Sat Feb 16 15:42:40 +0900 2008
sleep 1      # 1秒待機
print_time   #=> Sat Feb 16 15:42:41 +0900 2008
