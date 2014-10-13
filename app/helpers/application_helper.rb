module ApplicationHelper

#this is for a boolean in javascript for deciding where the dog goes
def btn_boolean(current_button, correct_array) 
 	if current_button == 8 and correct_array[7] - correct_array[6] == 1 # going right or left
 		if correct_array[2] - correct_array[1] == 6
 			return 'translateX: "525"'  #right
 		else
 			return 	'translateX: -"525"' #left
 		end
	else
		return 'translateY: "400"' #down
 	end
end

	
def hello_dare(current_button, correct_array)
	return '525%'
end	

def please_work(array)
	if array[7] - array[6] == 1
	return true
	else
	false
	end
end

	
	
	
	
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
