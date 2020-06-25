# -*- coding: utf-8 -*-
sjis = "ラグナグ".encode("Shift_JIS")
euc = "への旅".encode("EUC-JP")
puts sjis + euc     #=> ArgumentError(character encodings differ)
