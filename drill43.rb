class Book
  attr_reader :title, :price

  def initialize(title, price)
    @title = title
    @price = price
  end
end

book = Book.new("嫌われる勇気", "1,180")
puts book.title
puts  "#{book.price}円"