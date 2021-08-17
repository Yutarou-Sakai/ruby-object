# 冷蔵庫 モデルA クラス
class ReizoukoA
  # 設定温度を受け取ってインスタンス変数に保持する
  def initialize( num )
    @set_temperature = num.to_i
    @temperature = 25
    @foodstuff = []
    power(:on)
    puts "設定温度を #{@set_temperature} 度に設定しました"
    puts "現在の温度は #{@temperature} 度です"
    puts "#{@foodstuff.size} 個の食材があります"
    puts ''
  end

  # 冷やす機能:1回の実行で-1℃ 冷える
  def cool_down
    @temperature -= 1 if @set_temperature < @temperature
    puts "内部を冷やして #{@temperature} 度になりました"
    puts ''
  end

  # ドアが開く機能
  # 内部温度が上昇する。 食材を一覧表示する
  def open_door
    puts 'ドアを開けました'
    @temperature += 3
    puts "内部温度が上昇して #{@temperature} 度になりました"
    puts "#{@foodstuff.size} 個の食材があります"
    @foodstuff.each do |v|
      puts v
    end
    puts ''
  end

  # 冷蔵庫に食材を入れる
  def put_in( str )
    @foodstuff << str
    puts "#{str}を冷蔵庫に入れました"
    puts ''
  end

  
end



# 実行制御
# このスクリプトが直接実行された時だけこの処理を実行
if __FILE__ == $0 then
  modelA = ReizoukoA.new(15)
  modelA.cool_down
  modelA.cool_down
  modelA.cool_down
  modelA.put_in("りんご")
  modelA.put_in("だいこん")
  modelA.put_in("納豆")
  modelA.open_door
  modelA.power(:off)
end