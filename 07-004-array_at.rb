def [](*args)
  case args.length
  when 1
    case args.class
    when Integer
      # .... 番号による添字の処理
    when Range
      # .... 範囲添字の処理
    ....
    end
  when 2
    # .... 長さ付き添字の処理
  ....
  end
end
