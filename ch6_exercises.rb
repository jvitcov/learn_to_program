puts 'Get ready, here comes your angry boss!'
puts '...'
puts 'Angry Boss: "What do you want?"'
request = gets.chomp
puts 'Angry Boss: "You\'ve got some nerve asking for '+request.upcase+'. YOU\'RE FIRED!"'
puts '...'
puts 'At your new job, you\'re a writer. Here\'s the table of contents for your first book:'
line_width = 45
puts 'Table of contents'.center(line_width)
puts 'Chapter 1: Getting Started'.ljust(line_width)+'Page 1'.rjust(line_width)
puts 'Chapter 2: Numbers'.ljust(line_width)+'Page 9'.rjust(line_width)
puts 'Chapter 3: Letters'.ljust(line_width)+'Page 13'.rjust(line_width+1)
