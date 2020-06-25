# -*- coding: UTF-8 -*-
class Reporter
  def method_missing(method_name, *arguments)
    puts "メソッド#{method_name}が次の引数で呼ばれました"
    arguments.each{|arg| puts arg }
  end
end
reporter = Reporter.new
reporter.report           #=> メソッドreportが次の引数で呼ばれました
reporter.emergency 1,2    #=> メソッドemergencyが次の引数で呼ばれました
                          #   1
                          #   2
