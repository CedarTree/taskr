title = 'Table of Contents'
chapters =[['Getting Started', 1],
           ['Numbers',         9],
           ['Letters',        13]]

puts title.center(50)
puts

chap_num = 1

chapters.each do |chap|
  tag = chap[0]
  num = chap[1]
  
  first = 'Chapter ' + chap_num.to_s + ':  ' + tag
  second = 'page ' + num.to_s
  
  puts first.ljust(30) + second.rjust(20)
  chap_num = chap_num + 1
end 