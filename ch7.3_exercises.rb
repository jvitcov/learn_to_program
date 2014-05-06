puts 'Enter a year, any year:'
first_year = gets.chomp.to_i
puts 'Enter another that came after the first year you entered:'
second_year = gets.chomp.to_i
puts 'Here are the leap years that fall between the two years you entered:'
year = first_year
while year <= second_year
	if year%4 == 0
		if year%100 != 0 || year%400 == 0
			puts year
		end
	end
	year = year + 1
end