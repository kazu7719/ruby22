ride_count = 0
friends = []

3. times do
friend = {}
puts "お友達の名前は？"
friend[:name] = gets.chomp
puts "お友達の身長は？"
friend[:height] = gets.to_i
friends << friend
end

friends.each do |friend|
if friend[:height] >= 130
  puts "#{friend[:name]}くんは乗車できます"
  ride_count += 1
else
  puts "#{friend[:name]}くんは乗車できません!"
 end
end

puts "乗車するのは#{ride_count}人です"