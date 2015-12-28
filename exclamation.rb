n = gets.chomp.to_i
for i in 0..n do
  if i != n then
    puts "#{n-i}"
  else
    print "#{n-i}!!"
  end
end
