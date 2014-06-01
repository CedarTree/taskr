def e_number number
  
  if number < 0 
    return 'Please enter a number that isn\'t negative.'
  end 
  if number == 0
    return 'zero'
  end
  
  num_string = ''
  ones_place  = ['one',        'two',      'three',
                 'four',       'five',     'six',
                 'seven',      'eight',    'nine']
  tens_place  = ['ten',        'twenty',   'thirty',
                 'forty',      'fifty',    'sixty', 
                 'seventy',    'eighty',   'ninety']
  teenagers   = ['eleven',     'twelve',    'thirteen',
                 'fourteen',   'fifteen',  'sixteen',
                 'seventeen',  'eighteen', 'nineteen']
                 
  l_num       = [['hundred',     2], 
                 ['thousand',    3],
                 ['million',     6],
                 ['billion',     9],
                 ['trillion',   12]]           
                   
  left = number
  
  while l_num.length != 0#stops l_num.pop from eliminating everything in the Array
    ln_pair = l_num.pop #Removes the last object from the array and tells you what it was. In this case, [trillion, 12] 
                        #In this case, ln_name = trillion, ln_base = 10^12
    ln_name = ln_pair[0]
    ln_base = 10 ** ln_pair[1] #i.e) 10 ^ 2 = 100, 10 ^ 3 = 1,000 ... 10^12 = trillion
    
    write   = left/ln_base # Divide by specific large number. If the number doesn't go up to trillion for above case, nothing                          # happens. Moves on to billion till hundred.  
    left    = left - write*ln_base 
    
    if write > 0 #recursion
      prefix = e_number write # to create something like five hundred and twenty (prefix) + trillion (ln_name) if write = 225
      num_string = num_string + prefix + ' ' + ln_name
      
    if left > 0 # to avoid 'two billionfifty-one'
      num_string = num_string + ' '
    end
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
  
  puts e_number(32110)
  puts e_number( 9)
  puts e_number(10)
  puts e_number(11)
  puts e_number(17)
  puts e_number(32)
  puts e_number(88) 
  puts e_number(99)
  puts e_number(100)
  puts e_number(100)
  puts e_number(101)
  puts e_number(234)
  puts e_number(3211)
  puts e_number(999999)
  puts e_number(1000000000000)
  puts e_number(300000)
  puts e_number(18)
  puts e_number(12)
  puts e_number(-10)