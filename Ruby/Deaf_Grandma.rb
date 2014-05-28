puts 'Hello my lovely grandchild!'
while true
  input = gets.chomp
  if input == 'BYE'
    puts 'BYE SWEETIE!'
    break
  end
  if input != input.upcase
    puts 'HUH! SPEAK UP, SONNY!'
  else
    random_year = 1930 + rand(21)
    puts 'NO, NOT SINCE ' + random_year.to_s + '!'
end
end

