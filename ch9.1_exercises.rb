def ask question
	while true
		puts question
		reply = gets.chomp.downcase
		if reply == 'yes'
			return true
		end
		if reply == 'no'
			return false
		end
		puts 'Please answer "yes" or "no".'
	end
end

ask 'Do you like tacos?'
ask 'Do you like burritos?'
wets_bed = ask 'Do you wet the bed?'
ask 'Do you like tamales?'
puts 'Survey results:'
puts wets_bed