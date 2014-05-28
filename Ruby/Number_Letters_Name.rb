puts 'What is your first name?'
f_name = gets.chomp
puts 'What is your middle name?'
m_name = gets.chomp
puts 'What is your last name?'
l_name = gets.chomp
puts "Did you know there are #{f_name.length + m_name.length + l_name.length} characters 
in your name, #{f_name} #{m_name} #{l_name}?"
