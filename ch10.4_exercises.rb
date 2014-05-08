def english_number number
	if number < 0
		return 'Please enter a positive number.'
	end
	if number == 0
		return 'Zero'
	end

	num_string = ''

	ones =['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
	tens =['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
	teens =['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
	big_numbers =[['hundred', 2],['thousand', 3],['million', 6],['billion', 9],['trillion', 12]]

	left = number

	while big_numbers.length > 0
		big_pair = big_numbers.pop
		big_name = big_pair[0]
		big_base = 10**big_pair[1]
		write = left/big_base
		left = left - write*big_base

		if write > 0
			prefix = english_number write
			num_string = num_string + prefix + ' ' + big_name
			if left > 0
				num_string = num_string + ' '
			end
		end
	end
	# write = left/100
	# left = left - write*100

	# if write > 0
	# 	hundreds = english_number write
	# 	num_string = num_string + hundreds + ' hundred'	
	# 	if left > 0
	# 		num_string = num_string + ' '
	# 	end
	# end

	write = left/10
	left = left - write*10

	if write > 0
		if ((write == 1) and (left > 0))
			num_string = num_string + teens[left-1]
		left = 0
		else
			num_string = num_string + tens[write-1]
		end

		if left > 0
			num_string = num_string + '-'
		end
	end

	write = left
	left = 0

	if write > 0
		num_string = num_string + ones[write-1]
	end

	num_string
end

puts 'Type any number, no commas, less than a quadrillion:'
num = gets.chomp.to_i
puts 'Here\'s your number writen out in English:'
puts english_number num