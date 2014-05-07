header = 'Table of Contents'
chapters = [[1, 'Getting Started', 1],[2, 'Numbers', 9],[3, 'Letters', 13]]

puts header.center(50)
puts

chapters.each do |list|
	chap_num = list[0]
	title = list[1]
	page = list[2]

	chap_list = 'Chapter ' + chap_num.to_s + ': ' + title
	page_list = 'Page ' + page.to_s

	puts chap_list.ljust(30) + page_list.rjust(20)
end
