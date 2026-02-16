## 継承とは
・・・Rubyにおいて既存のクラスの情報を元に新しいクラスを作ること
クラスの継承を使うと、共通する部分をまとめることができ効率的

# 継承の書き方

class PoliceCar < Car

end

# 継承されるもの
・親のインスタンス変数
・親のインスタンスメソッド

class Car
 def initialize(car_type, capacity)
   @name = car_type
   @capacity = capacity
end

def info
   puts "車種:#{@name} 乗車定員:#{@capacity}人"
end

end

class PoliceCar < Car

end

police_car = PoliceCar.new("パトカー", 5)

police_car.info

→PoliceCarクラスの中には何も記述をしてませんが、継承元のCarクラスのインスタンス変数およびインスタンスメソッドを使われている


# 子クラスにインスタンスメソッドを追加する方法

class Car
 def initialize(car_type, capacity)
   @name = car_type
   @capacity = capacity
end

def info
   puts "車種:#{@name} 乗車定員:#{@capacity}人"
end

end

class PoliceCar < Car

 def siren
   puts "ウ〜"
end

end

police_car = PoliceCar.new("パトカー", 5)

police_car.info
police_car.siren

→PoliceCarクラス内にsirenメソッドを新たに追加し実行。
子クラスにインスタンスメソッドを追加することで、そのクラス固有のメソッドを定義

# メソッドの上書き方法
→親クラスにあるメソッドと同じな目のメソッドを子クラスで定義するとメソッドを上書きできる。これをメソッドのオーバーライドと呼ぶ

class Car
 def initialize(car_type, capacity)
   @name = car_type
   @capacity = capacity
 end

 def info
   puts "車種：#{@name}　乗車定員：#{@capacity}人"
 end

end

class PoliceCar < Car

 def info
   puts "車種：#{@name}　乗車定員：#{@capacity}人　パトロール時間：24時間"
 end

 def siren
   puts "ウゥ〜ウゥ〜"
 end

end

police_car = PoliceCar.new("パトカー", 5)

police_car.info