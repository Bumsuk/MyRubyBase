require 'enumerator'
book_to_author = {
  "Ruby in Nutshell" => "Matz",
  "Programming Ruby" => "Dave",
  "AWDwR" => "Dave"
}
book_to_author["Ruby in Nutshell"] = ["Matz", "David"]
book_to_author["The Ruby Way"] = "Hal"
enumerator = book_to_author.enum_for(:each_value)
enumerator.each_with_index do |author, index|
  p [author, index]
end
