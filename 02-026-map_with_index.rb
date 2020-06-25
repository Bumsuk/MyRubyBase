require 'enumerator'

book_to_author = {
  "Ruby in Nutshell" => "Flanagan",
  "Programming Ruby" => "Thomas",
  "AWDwR" => "Thomas"
}

result = book_to_author.enum_for(:each_with_index).map{|(book, author), index|
  "#{index+1}. #{book}"
}
#=>  ["1. Ruby in Nutshell", "2. Programming Ruby", ....

puts "[결과] #{result}"