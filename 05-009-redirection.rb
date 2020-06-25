# 표준 출력을 파일로 바꿔서 문자열 텍스트 파일을 저장한다.
File.open("05-009-redirection-result", 'w'){|f|
  $stdout = f                     # 標準出力を変更
  puts "Welcome to Glubbdubdrib"  # ファイルに出力される
  $stdout = STDOUT                # $stdoutの初期値
}
