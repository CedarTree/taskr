puts 'Please, pick a starting year : '
starty = gets.chomp.to_i

puts 'Please, pick an ending year : '
endy = gets.chomp.to_i

puts 'These years are leap years : '
year = starty

while year <=endy
  if year%4 == 0
    if year%100 !=0 || year%400 == 0
      puts year
    end
  end
  
  year = year + 1
  
end

  