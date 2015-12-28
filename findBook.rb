n = gets.chomp.to_i   # 全部で何巻あるのか

myBooksNum = gets.chomp.to_i  # 自分が持ってる本の総数
myBooksArr = Array.new(myBooksNum)  # 本の巻数を入れる配列
myBooksArr = gets.split.map(&:to_i)
myRollArr = Array.new(n + 1){0}

shopBooksNum = gets.chomp.to_i  # 店にある本の数
shopBooksArr = Array.new(shopBooksNum) # 店にある巻数を入れる配列
shopBooksArr = gets.split.map(&:to_i) # 店にある巻
shopRollArr = Array.new(n + 1){0}

for i in 0..(myBooksNum - 1) do
  myRollArr[myBooksArr[i]] = 1
end

for i in 0..(shopBooksNum - 1) do
  shopRollArr[shopBooksArr[i]] = 1
end

flag = 0

for i in 1..n do
  if myRollArr[i] == 0 && shopRollArr[i] == 1 then
    flag += 1
    if flag == 1 then
      print "#{i}"
    else
      print " #{i}"
    end
  end
end

if flag == 0 then
  print "None"
end
