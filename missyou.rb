def greeting(&block)
  puts "Hello"
  block.call("Goodbye")
end

greeting do |text|
  puts text
end

