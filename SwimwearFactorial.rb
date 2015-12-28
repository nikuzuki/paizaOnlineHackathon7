n = gets.chomp.to_i
x = 1
for i in 1..n
  x *= i
  while x % 10 == 0 do # 末尾から0を消す処理
    x /= 10
  end
  # 余りを取って9桁維持, ある程度上位桁の
  x %= 10 ** (9 + 4)
end
puts x % (10 ** 9)
