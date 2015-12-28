n = gets.chomp.to_i
x = 1
for i in 1..n
  x *= i
  while x % 10 == 0 do # 10で割ってあまり0なら末尾を消す
    x /= 10
  end
  xLength = x.to_s.length

  if xLength >= 10 then
    sliceLength = xLength - 9
    x = x.to_s.slice(xLength - 9..xLength - 1).to_i
  end
  # puts "#{i} : #{x}"
end
puts x
