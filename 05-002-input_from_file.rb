File.open("05-002-datafile"){|f| # ファイルを開く
  contents = f.read              # ファイルの中身を全て読み込む
  print contents
}                                # ファイルを閉じる
# 직접 안해도, 블록을 나올때 자동으로 파일을 닫아줌.