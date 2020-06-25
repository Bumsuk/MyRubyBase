class Foo
  def each
    # ...何らかの実装
  end
  def map
    result = []
    self.each {|item| result << yield(item)}
  end
end
