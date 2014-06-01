def roman_numeral num
  thousands = (num / 1000)
  hundos = (num % 1000 / 100)
  tens = (num % 100 / 10)
  ones = (num % 10)
  
  roman = 'M' * thousands

#900
  if hundos == 9 
    roman = roman + 'CM'
#400  
  elsif hundos == 4
    roman = roman + 'CD'
  else
#500s
    roman = roman + 'D' * (num % 1000 / 500)
#100s    
    roman = roman + 'C' * (num % 500 / 100)
  end

#90  
  if tens == 9 
    roman = roman + 'XC'
#40
  elsif tens == 4 
    roman = roman + 'XL' 
  else
#50s
    roman = roman + 'L' * (num % 100 / 50)
#10s
    roman = roman + 'X' * (num % 50 / 10)
  end
#9  
  if ones == 9
    roman = roman + 'IX'
#4  
  elsif
    ones == 4
    roman = roman + 'IV'  
  else
#5s    
    roman = roman + 'V' * (num % 10 / 5)
#1s    
    roman = roman + 'I' * (num % 5 / 1)
  end
  
end

puts (roman_numeral(1989))
    