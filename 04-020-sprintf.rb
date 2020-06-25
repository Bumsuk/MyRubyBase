sprintf("%04d", 3)                #=> "0003"    数値を0埋めで4桁に。
sprintf("%08.4f", Math::PI*10)     #=> "031.4159"
sprintf("hex=%X, oct=%o", 10, 10) #=> "hex=A, oct=12"  16進、8進表記
