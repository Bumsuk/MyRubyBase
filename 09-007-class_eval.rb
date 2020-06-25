class CybernatedAndroid
  def initialize(name) @name = name end
end
dicey = CybernatedAndroid.new("dicey2")

CybernatedAndroid.class_eval do
  def save; puts "saved" end
end
dicey.save              #=> saved:   class_evalにより定義されたメソッド
