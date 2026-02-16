## ブロックについて

ages = [20,56,32]

ages.each do |age|
 puts age
end

→do~endまでをブロックと呼び、|age|のageはブロック変数と呼ぶ

# ブロックの2種類の書き方

ex1:do..endの形
ages = [20,56,32]

ages.each do |age|
 puts age
end

ex2:{}の形
# 改行無し
ages.each {|age| puts age}

# 改行有り
ages.each {|age|
  puts age
}

# メソッドでのブロックの使い方

def greeting
 puts "Hello"
yield
end

greeting do
 puts "Goodbye"
end

→greetingメソッドに渡したブロックを実行するには上記のように、
メソッドの定義内にyield(取って代わられる)を記述する必要がある。

# 具体的なyieldの使い方

def greeting
 puts "Hello"
 yield("Good afternoon")
end

greeting do |text|
 puts text
end
→ブロック部分に変数を指定し、メソッド内のyieldに引数を与え
その引数とブロック変数がリンクするようにする

# ブロックをメソッドの引数に指定する方法

def greeting(&block)
 puts "Hello"
 block.call("Goodbye")
end

greeting do |text|
 puts text
end
→メソッドの引数としてブロックを受け取る場合は、引数の前に&をつけ、
受け取ったブロックはcallメソッドで実行する。
callメソッドに引数を渡し。ブロック変数とリンクさせる




