class Duration
  attribute_names = %w[ days hours minutes seconds ]
  p attribute_names  #=> ["days", "hours", "minutes", "seconds"]
  attribute_names.each do |name|
    attr_accessor name
  end
end
p attribute_names    #=> NameError
