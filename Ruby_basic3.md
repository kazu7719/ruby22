## case文
・・・条件分岐の文法。
複数の条件を指定する時、ifのelsifを重ねるよりもシンプルにコードを書くことが可能

case 対象のオブジェクトや式
when 値1
(値1に一致する場合に実行する処理)
when 値2
(値2に一致する場合に実行する処理)
when 値3
(値3に一致する場合に実行する処理)
else
(どれにも一致しない場合に実行する処理)
end

## while文
・・・繰り返し処理を行うための構文。指定した条件が真である間、処理を繰り返し

while 条件式 do
(条件が真である時に繰り返す処理)
end


# 無限ループについて
・・・処理が永遠に繰り返されること

例1:
number = 0

while number <= 10
puts number
end

→永遠に0を繰り返す

例2:
number = 0

while true 
 puts number
 number += 1

 →while文ではwhileの右の式を判定し、最終的に真偽値に変換して繰り返すか決める。
 上記コードはこの特性を活かし、条件の部分に初めからtrueと書くことで意図的に無限ループを繰り返す

# break
・・・eachメソッドやwhile文などのループから脱出するために使われる

ex:
number = 0

while number <= 10
 if number == 5
  break
end
puts number
number += 1
end

→出力結果は4でとまる

