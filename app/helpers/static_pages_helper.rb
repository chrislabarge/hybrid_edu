module StaticPagesHelper

################################################################	
	
#selects the letter variable to decide which one the kid will be selecting	
	
	def alphabet()
		letter= ('a'..'z').to_a.sample.upcase
		
		letter
	end

#to pick a new letter for the button array, excluding the letter variable
	
	def new_letter(search_letter)
	 	letter= alphabet
	 	
	 	while letter == search_letter do
	 		letter= alphabet
	 	end
	 	
	 	return letter
	end

#this is for making the buttons array	 	

 def gay_array(number_of_buttons, search_letter, search_buttons) 
 	array = [ ] 
	
	while array.length <= number_of_buttons - (1 + search_buttons) do
 		array.push(new_letter(search_letter))
 	end
 	
  3.times do array.push(search_letter)
	end		
 		
 	return array.shuffle
 
 end

#THIS IS a function for the new game

	def letter_maze(button_array,search_letter,dog,house)
			
			button_array.delete_at(dog)
			button_array.insert(dog, search_letter)
			
			button_array.delete_at((dog + 6))
			button_array.insert((dog + 6), search_letter)
			
			button_array.delete_at((dog + 12))
			button_array.insert((dog + 12), search_letter)
			
			button_array.delete_at((house - 6))
			button_array.insert((house - 6), search_letter)
			
			button_array.delete_at((house - 12))
			button_array.insert((house - 12), search_letter)

			button_array.delete_at(house)
			button_array.insert(house, search_letter)
			
			if (dog + 12) < (house - 12)
				range = (dog + 12)...(house - 12)
			else
				range = (house - 12)...(dog + 12)
			end
			
			for x in range do
				button_array.delete_at(x)
				button_array.insert( x, search_letter)
				
			
			end
			
			return button_array			
							
	end


################################################################
  #this is to determine id for the star animation
  
  


  def model_id(trigger1,trigger2)
  	if trigger1 == false and letter_trigger2 == false
  		@lt1 = true
  		return "smileModal"
  	elsif letter_trigger1 == true and letter_trigger2 == false
  		@lt2 = true
  		return "smileModal"
		elsif letter_trigger1 == true and letter_trigger2 == true
			return "smileModal"
		end
  end

def level
	
	
	if @level == 1 
		return 'game_letter_search_2'
	elsif @level == 2 #this tells me that this is the first button, then sets the variable as such
		return 'game_letter_search_3' 	
	else 
		nil
  end


end


def starz

	if @lt1 ==  false
		@lt1 = true
		return '#star1'
	elsif @lt2 == false
		@lt2 = true
		return '#star2'
	elsif @lt1 == true and @lt2 == true
		return '#star3'
	else
		nil
	end
	
end


################################################################

# this is to determine which button gets the modal to pop down


end
