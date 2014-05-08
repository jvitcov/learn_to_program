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

def bottles_song bottles
	num_at_start = bottles
	num_now = num_at_start

	while num_now > 2
		puts english_number(num_now).capitalize + ' bottles of beer on the wall, ' + english_number(num_now) + ' bottles of beer!'
		num_now = num_now - 1
		puts 'Take one down, pass it around, ' + english_number(num_now) + ' bottles of beer on the wall!'
	end

	puts 'Two bottles of beer on the beer on the wall, two bottles of beer!'
	puts 'Take one down, pass it around, 1 bottle of beer on the wall!'
	puts 'One bottle of beer on the beer on the wall, one bottles of beer!'
	puts 'Take one down, pass it around, no more bottles of beer on the wall!'
end

puts 'I can print the lyrics to  the song "One hundred bottles of beer on the wall"!'
puts 'But I\'m only going to print the number of lines you want.'
puts 'How many bottles should my wall have to start? Give me a number:'
bottle_count = gets.chomp.to_i
if bottle_count == 1
	puts 'One bottle of beer on the beer on the wall, one bottles of beer!'
	puts 'Take one down, pass it around, no more bottles of beer on the wall!'
else
	puts bottles_song bottle_count
end