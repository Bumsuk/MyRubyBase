# UTF-8で「日本語」というバイト列
str = "\xe6\x97\xa5\xe6\x9c\xac\xe8\xaa\x9e"

$KCODE = 'UTF8'
puts str.inspect #=> "日本語"
$KCODE = 'SJIS'
puts str.inspect #=> "�\245�\254�\236"
