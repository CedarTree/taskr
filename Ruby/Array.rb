puts 'Type words, and I will sort them: '
words = []
while true
  word = gets.chomp
  if word == ''
    break
  end
  
  words << word
end

puts 'Here is the sorted version: '
puts words.sort

