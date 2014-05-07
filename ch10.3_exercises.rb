def dictionary_sort some_array
	recursive_dictionary_sort some_array, []
end

def recursive_dictionary_sort unsorted_array, sorted_array
	if unsorted_array.length <= 0
		return sorted_array
	end

	smallest = unsorted_array.pop
	still_unsorted = []

	unsorted_array.each do |test_item|
		if test_item.downcase < smallest.downcase
			still_unsorted.push smallest
			smallest = test_item
		else
			still_unsorted.push test_item
		end
	end

	sorted_array.push smallest

	recursive_dictionary_sort still_unsorted, sorted_array
end

puts 'List some words for me to sort:'
words = []
while true
	word = gets.chomp
	if word == ''
		break
	end

	words.push word
end

puts 'Here is the sorted list of words you entered:'
puts dictionary_sort words