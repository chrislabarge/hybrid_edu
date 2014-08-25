module ApplicationHelper

	#returns the full title on a per-page basis
	def full_title(page_title)
		base_title = "Hybrid Edu"
		if page_title.empty?
			base_title
		else
			"#{base_title} | #{page_title}"
		end
	end

	def heading_select(section)

green = ["green","printables.png","Printable Material"]
blue  = ["blue", "games.png", "Learning Games"]
purple = ["purple", "idea.png", "Creative Lessons"]
red = ["red", "apple.png", "Common Core Resources"]
orange = ["orange", 'user.png', 'My Account']

switch = false

if current_page?('/printables')
	array = green
	switch = true
elsif current_page?('/games')
	array = blue
	switch = true
elsif current_page?('/lessons')
	array = purple
	switch = true
elsif current_page?('/common_core')
	array = red
	switch = true
elsif current_page?('/account')
	array = orange
	switch = true
else
	nil
end

if switch == false
	return false
elsif section == 'current_page' 
	return true
	else
		nil
end

if section == 'class'
	return array[0]
end

if section == 'image'
	return array[1]
end

if section == 'heading'
	return array[2]
end


end
	
	
	
end
