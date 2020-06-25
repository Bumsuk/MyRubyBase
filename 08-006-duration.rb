class Duration
  def initialize(since, till)
    @since = since
    @until = till
  end
  attr_accessor :since, :until   # 属性へのgetterとsetterを定義する # 그러니까 결국 속성의 getter/setter 를 만들어준다.
end
duration = Duration.new(Time.now, Time.now + 3600)
p duration.until               #=> Fri Feb 01 18:56:19 +0900 2008
p duration.since = Time.now    #=> 属性の設定
