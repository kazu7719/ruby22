def calculate_points(amount, is_birthday)
  if amount <= 999 && is_birthday
    puts "ポイントは#{(amount * 0.03 * 5).floor}点です"
elsif amount >= 1000 && is_birthday
    puts "ポイントは#{(amount * 0.05 * 5).floor}点です"
elsif amount <= 999 && ! is_birthday
   puts "ポイントは#{(amount * 0.03).floor}点です"
else
   puts "ポイントは#{(amount * 0.05).floor}点です"
 end
end

calculate_points(500, false)
calculate_points(2000, false)
calculate_points(3000, true)