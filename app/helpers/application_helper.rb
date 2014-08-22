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
		
		if current_page?('/printables')
			if section =='current_page'
			  return true
			end
			
			if section =='class'
				return "green"
			end
			
			if section =='image'
				return 'printables.png'
			end		
			
			if section == 'heading'
				return "Printable Material"
			end
		end
	
	
		if current_page?('/games')
			if section =='current_page'
			  return true
			end
			
			if section =='class'
				return "blue"
			end
			
			if section =='image'
				return 'games.png'
			end		
			
			if section == 'heading'
				return "Learning Games"
			end
		end
		
		if current_page?('/lessons')
			if section =='current_page'
			  return true
			end
			
			if section =='class'
				return "purple"
			end
			
			if section =='image'
				return 'idea.png'
			end		
			
			if section == 'heading'
				return "Creative Lessons"
			end
		end
	
		if current_page?('/common_core')
			if section =='current_page'
			  return true
			end
			
			if section =='class'
				return "red"
			end
			
			if section =='image'
				return 'apple.png'
			end		
			
			if section == 'heading'
				return "Common Core Resources"
			end
		end
	
		if current_page?('/account')
			if section =='current_page'
			  return true
			end
			
			if section =='class'
				return "orange"
			end
			
			if section =='image'
				return 'user.png'
			end		
			
			if section == 'heading'
				return "My Account"
			end
		end
	
		
	
	end
	
	
	
end
