class Laputa
  def hover
    vibrate             # (1) レシーバ省略
  end
  def vibrate
    p "vibrated"
    # 何かの処理
  end
end
takalamakhan = Laputa.new  # Laputaクラスのインスタンスを作成
takalamakhan.hover         # 内部でtakalamakhan.vibrateが呼ばれる
