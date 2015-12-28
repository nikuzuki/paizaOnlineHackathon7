voteArr = Array.new(5)
for i in 0..4 do
  voteArr[i] = gets.chomp
end
y = 0
n = 0
for i in 0..4 do
  if voteArr[i] == "yes"
    y += 1
  else
    n += 1
  end
end

if y >= 3 then
  print "yes"
else
  print "no"
end
