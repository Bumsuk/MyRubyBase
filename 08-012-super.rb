class Duration
  def initialize(since, till)
    @since = since
    @until = till
  end
  attr_accessor :since, :until   # 属性へのgetterとsetterを定義する # 게터/세터 생성됨!!! 다 비슷해 비슷해!
end

duration = Duration.new(Time.now, Time.now + 3600)
p duration.until               #=> Fri Feb 01 18:56:19 +0900 2008
p duration.since = Time.now    #=> 属性の設定

class Duration   # 定義の追加
  def display(target=$>)
    # super는 메소드 호출과 비슷하기도 하지만 조금은 다르다.
    # super 라고만 기술하면 현재 메소드의 매개변수를 그대로 념겨받아서 부모 클래스의 구현을 호출하는 것이다.
    super                      # super(target)과 같은 의미다!
    target.write "(#{self.since}-#{self.until})"
  end
end

duration.display
#=> #<Duration:0x28be0>(Thu Feb 21 16:40:53 +0900 2008-Thu Feb 21 17:40:53 +0900 2008)
