class Duration
  %w[ days hours minutes seconds ].each do |name|
    attr_accessor name
  end
end

d = Duration.new    # Durationオブジェクトを構築
d.days = 3          # 属性daysを設定
d.hours = 5         # 属性hoursを設定
p d.days       #=> 3  属性daysを出力
