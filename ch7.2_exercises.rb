puts 'HEY THERE SONNY! I HAVEN\'T SEEN YOU SINCE...'
while true
	said = gets.chomp
	if said == 'BYE' || said == 'BYE GRANDMA'
		puts 'BYE SWEETIE!'
		break
	end

	if said != said.upcase
		puts 'HUH?! DID YOU SAY SOMETHING?'
	else
		 random_year = 1930 + rand(21)
		 puts 'NO, NOT SINCE ' + random_year.to_s + '!'
	end
end