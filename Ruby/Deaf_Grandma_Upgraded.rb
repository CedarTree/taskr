puts 'HELLO MY LOVELY GRANDCHILD!'
bye_count = 0
while true
  input = gets.chomp
  if input == 'BYE'
    bye_count = bye_count + 1
  else
    bye_count = 0
  end
  if bye_count >= 3
    puts 'BYE MY LOVE!'
    break
  end
  if input != input.upcase
    puts 'HUH! SPEAK UP, SONNY!'
  else
    random_year = 1930 + rand(21)
    puts 'NO, NOT SINCE ' + random_year.to_s + '!'
  end
end

