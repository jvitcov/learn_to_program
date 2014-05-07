def shuffle some_array
	array = []
	while some_array.length > 0
		random_array_item = rand(some_array.length)

		current_item = 0
		shuffled_array = []

		some_array.each do |item|
			if current_item == random_array_item
				array.push item
			else
				shuffled_array.push item
			end

			current_item = current_item + 1
		end

		some_array = shuffled_array
	end

	array
end

puts 'List some words for me to shuffle:'
words = []
while true
	word = gets.chomp
	if word == ''
		break
	end

	words.push word
end
puts 'I shuffled them! Here are the words you gave me:'
puts shuffle words