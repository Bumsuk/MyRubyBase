sjis = "\xc2\xa1".force_encoding("Shift_JIS")  # Shift_JISの文字列
euc  = "\xc2\xa1".force_encoding("EUC-JP")     # EUC-JPの文字列
sjis.bytes.to_a                                #=> [194, 161]
euc.bytes.to_a                                 #=> [194, 161]
puts sjis == euc                                    #=> false
