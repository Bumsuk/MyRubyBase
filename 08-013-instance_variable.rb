class Duration
  def initialize(since, till)
    @since = since
    @until = till
  end
  attr_accessor :since, :until   # 属性へのgetterとsetterを定義する
end

class Duration  # 例7-6の定義を再オープン
  def print_since; p @since end
end

duration1 = Duration.new(Time.now-7, Time.now)
duration2 = Duration.new(Time.now+7, Time.now+14)
duration1.print_since   #=> Fri Feb 01 18:57:30 +0900 2008
duration2.print_since   #=> Fri Feb 01 18:57:43 +0900 2008



