book_to_author = {
  "Ruby in Nutshell" => "Flanagan",
  "Programming Ruby" => "Thomas",
  "AWDwR" => "Thomas"
}
p book_to_author.map{|book,author|
  "#{book} by #{author}"
}
#=> ["Ruby in Nutshell by Flanagan", "Programming Ruby by Thomas", ....

