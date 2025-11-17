def count_evens(str)
  number = 0
  str.each do |num|
    if num.even?
      number += 1
    end
  end
  puts number 
end



count_evens([2, 1, 2, 3, 4])