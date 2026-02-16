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

  def info
    puts "車種：#{@name}　乗車定員：#{@capacity}人　パトロール時間：24時間"
  end

  def siren
    puts "ウゥ〜ウゥ〜"
  end

end


police_car = PoliceCar.new("パトカー", 5)

police_car.info
police_car.siren

