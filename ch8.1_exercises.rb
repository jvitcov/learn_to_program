puts 'List some words for me to sort:'
words = []
while true
	word = gets.chomp
	if word == ''
		break
	end

	words.push word
end

puts 'Here\'s a list of the words you gave me:'
puts words.sort