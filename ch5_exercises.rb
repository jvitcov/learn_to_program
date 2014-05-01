puts 'Hello! What is your first name?'
first_name = gets.chomp
puts 'And your middle name?'
middle_name = gets.chomp
puts 'Ok, one more question, what\'s your last name?'
last_name = gets.chomp
puts 'Thank you! Nice to meet you '+first_name +' '+ middle_name +' '+ last_name+'!'
puts 'Now lets talk numbers... what\'s your favorite?'
fav_number = gets.chomp.to_i
puts 'That\'s interesting, my favorie number is '+(fav_number+1).to_s+' which is only one more than '+fav_number.to_s+'! I wonder if that\'s just a coincidence...'