count = database_connector.get_int(<<"EOS" % author.id)
  SELECT COUNT(*)
  FROM   book
  WHERE  book.author_id = %d
EOS


puts "====="

def check?
  return true
end

if check?
  puts "참값이 맞네"
else
  puts "거짓값이야!"
end