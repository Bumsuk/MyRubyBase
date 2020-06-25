# -*- coding: utf-8 -*-
sjis = "ラグナグ".encode("Shift_JIS")
utf = "voyage to ".force_encoding("UTF-8")   # UTF-8文字列
puts utf + sjis                                   #=> "voyage to ラグナグ"
