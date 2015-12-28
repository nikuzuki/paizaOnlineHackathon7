n = gets.chomp.to_i # input image
arrN = Array.new(n){ Array.new(n) }
for i in 0..(n - 1) do
  arrN[i] = gets.split(" ")
end

m = gets.chomp.to_i # check image
arrM = Array.new(m){ Array.new(m) }
for i in 0..(m - 1) do
  arrM[i] = gets.split(" ")
end

for i in 0..(n - 1) do
  if arrN[i].join.include?(arrM[0].join) then
    for j in 1..(m - 1) do
      if arrN[i + j].join.include?(arrM[j].join) then
        if j == (m - 1) then
          ansY = i
          ansX = arrN[i].join.index(arrM[0].join)
        end
      end
    end
  end
end

print "#{ansY} #{ansX}"
