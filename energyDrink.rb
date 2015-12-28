drink1 = gets.split.map(&:to_f)
drink2 = gets.split.map(&:to_f)
if (drink1[0] / drink1[1]) > (drink2[0] / drink2[1])
  print 1
else
  print 2
end
