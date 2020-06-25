class Yapoo
  # デフォルトではメソッドはpublicになる
  def public_method; end

  private                # 以降に定義するメソッドは自動的にprivateになる
  def internal_use; end  #  内部的な処理
  def public_api
    return internal_use  # inernal_useを使って何かを実装
  end
  public :public_api     # public_apiをpublicに設定する
end

yapoo = Yapoo.new
yapoo.public_api           # OK
yapoo.internal_use         # 権限エラー †
  

