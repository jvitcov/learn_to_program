def old_roman_num num
	roman_num = ''
	roman_num = roman_num + 'M' * (num/1000)
	roman_num = roman_num + 'D' * (num%1000/500)
	roman_num = roman_num + 'C' * (num%500/100)
	roman_num = roman_num +	'L' * (num%100/50)
	roman_num = roman_num + 'X' * (num%50/10)
	roman_num = roman_num + 'V' * (num%10/5)
	roman_num = roman_num + 'I' * (num%5)
	roman_num
end

def new_roman_num num
	thousands = num/1000
	hundreds = (num%1000/100)
	tens = (num%100/10)
	ones = num%10

	roman = 'M' * thousands

	if hundreds == 9
		roman = roman + 'CM'
	elsif hundreds == 4
		roman = roman + 'CD'
	else
		roman = roman + 'D' * (num%1000/500)
		roman = roman + 'C' * (num%500/100)
	end

	if tens == 9
		roman = roman + 'XC'
	elsif tens == 4
		roman = roman + 'XL'
	else
		roman = roman + 'L' * (num%100/50)
		roman = roman + 'X' * (num%50/10)
	end
	
	if ones == 9
		roman = roman + 'IX'
	elsif ones == 4
		roman = roman + 'IV'
	else
		roman = roman + 'V' * (num%10/5)
		roman = roman + 'I' * (num%5)
	end

	roman			
end

puts 'Give me a year and I\'ll give you the year in old roman numerals:'
year = gets.chomp.to_i
puts old_roman_num year
puts 'So that was the "old" style of roman numerals...'
puts 'Now give me a year (the same year or any other year),'
puts 'and I\'ll give you the "modern" style of roman numeral:'
year = gets.chomp.to_i
puts new_roman_num year
