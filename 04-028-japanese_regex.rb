regexp = /(.)/s      # SJISモードの正規表現オブジェクト
str = "\202\240"     # Shift_JISの「あ」 
regexp =~ str
p $1  #=> "\202\240" # [_up_]†[_/up_]

regexp = /(.)/n      # バイト列モードの正規表現オブジェクト
regexp =~ str
p $1  #=> "\202"
