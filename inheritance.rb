# 冷蔵庫モデルB クラス
# モデルAを継承する
require "./object.rb"

class ReizoukoB < ReizoukoA
  # 既存の機能を上書きする
  # 同名のメソッドがあればオーバーライドされる
  def cool_down
    @temperature -= 3
    puts "冷やす機能がパワーアップしました"
    puts "現在の温度は #{@temperature} です"
  end
end

# 実行制御
if __FILE__ == $0 then
  modelB = ReizoukoB.new(15)
  modelB.cool_down
  modelB.cool_down
  modelB.cool_down
  modelB.put_in("りんご")
  modelB.put_in("だいこん")
  modelB.put_in("納豆")
  modelB.open_door
  modelB.power(:off)
end