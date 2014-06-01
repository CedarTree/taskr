def e_number number
  
  if number < 0 
    return 'Please enter a number that isn\'t negative.'
  end 
  if number == 0
    return 'zero'
  end
  if number >= 9999999
    return 'Please choose a number less than 1 billion.'
  end
  
  
  num_string = ''
  
  ones_place  = ['one',            'two',            'three',
                'four',            'five',           'six',
                'seven',           'eight',          'nine']
  tens_place  = ['ten',            'twenty',         'thirty',
                 'forty',          'fifty',          'sixty', 
                 'seventy',        'eighty',         'ninety']
  teenagers   = ['eleven',         'twelve',         'thirteen',
                 'fourteen',       'fifteen',        'sixteen',
                 'seventeen',      'eighteen',       'nineteen']
  
  
  left = number
  # millions 
  write = left/1000000
  left = left - write*1000000
  
  if write > 0 
    millions = e_number write
    num_string = num_string + millions + ' million'
    if left > 0 
      num_string = num_string + ' '
    end 
  end
  
  # thousands
  write = left/1000
  left = left - write*1000
  if write > 0
    thousands = e_number write
    num_string = num_string + thousands + ' thousand'
    if left > 0
      num_string = num_string + ' '
    end
  end
  
  #hundreds
  write = left/100
  left = left - write*100
               
  if write > 0
    hundreds = e_number write
    num_string = num_string + hundreds + ' hundred'
    if left > 0
      num_string = num_string + ' '
    end
  end
  
  #11-19 and 10 20 30 40 50 60 70 80 90
  write = left/10
  left = left - write*10
  
  if write > 0
    if ((write == 1) and (left > 0))
      num_string = num_string + teenagers[left-1]
      
      left = 0 #No more single digits left from 11 to 19
      
    else 
      num_string = num_string + tens_place[write-1]
    end
    
    if left > 0 
      num_string = num_string + '-' #for tens-ones
    end
  end
    #1=9
    
    write = left 
    left = 0
    
    if write > 0
      num_string = num_string + ones_place[write-1]
    end
    
    num_string
  end
  
  num_at_start = 99999
  num_now = num_at_start
  while num_now > 2
    puts e_number(num_now).capitalize + ' bottles of beer on the wall, ' + e_number(num_now) + ' bottles of beer on the wall!'
    num_now = num_now - 1
    puts 'Take one down, pass it around, ' + e_number(num_now) + ' bottles of beer on the wall!'
  end

  puts "Two bottles of beer on the wall, two bottles of beer!"
  puts "Take one down, pass it around, one bottle of beer on the wall!"
  puts "One bottle of beer on the wall, one bottle of beer!"
  puts "Take one down, pass it around, no more bottles of beer on the wall!"