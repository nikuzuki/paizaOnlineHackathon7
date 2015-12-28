n = gets.chomp.to_i # 色の幅
m = gets.chomp.to_i  # 全体の長さ
flag = 0
count = 0
for i in 1..m do
  if count == n then
    if flag == 0 then
      flag += 1
    else
      flag -= 1
    end
    count = 0
  end

  if flag == 0 then
    print "R"
  else
    print "W"
  end
  count += 1
end
