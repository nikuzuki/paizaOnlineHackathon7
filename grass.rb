n = gets.chomp.to_i # input image
arrN = Array.new(n){ Array.new(n) } #arrN[Y][X]
for i in 0..(n - 1) do
  arrN[i] = gets.split(" ")
end

m = gets.chomp.to_i # check image
arrM = Array.new(m){ Array.new(m) }
for i in 0..(m - 1) do
  arrM[i] = gets.split(" ")
end

flagNum = m * m
checkNum = 0
breakFlag = 0

for i in 0..(n - 1) do # 縦方向
  for j in 0..(n - 1) do # 横方向

    if arrN[i][j] == arrM[0][0] then

      for k in 0..(m - 1) do
        for l in 0..(m - 1) do

          if arrN[i + k][j + l] == arrM[k][l] then
            checkNum += 1
          end

        end
      end

      if flagNum == checkNum then
        ansY = i
        ansX = j
        breakFlag += 1
        break
      else
        checkNum = 0
      end

    end

  end
  if breakFlag == 1 then
    break
  end
end

puts "#{ansY} #{ansX}"
