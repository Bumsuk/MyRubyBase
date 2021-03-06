class Duration
  def initialize(since, till)
    @since = since
    @until = till
  end
  attr_accessor :since, :until   # 属性へのgetterとsetterを定義する
end

class Duration  # 再オープン
  def self.a_week_from(from)
    return self.new(from, from+7*24*60*60)
  end
end
p Duration.a_week_from(Time.now)
