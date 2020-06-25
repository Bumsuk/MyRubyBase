# -*- coding: utf-8 -*-
utf = "日本"
p utf.encoding                  #=> #<Encoding:UTF-8>
p utf

sjis = utf.encode("Shift_JIS")
p sjis.encoding                 #=> #<Encoding:Shift_JIS>
p sjis