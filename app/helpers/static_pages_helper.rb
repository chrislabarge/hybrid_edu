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
	 	
	 	while letter == search_letter do #this only runs when the letter is the same, and it just causes it to pick a new letter..pretty friggen cool
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
 	
  search_buttons.times do array.push(search_letter)
	end		
 		
 	return array.shuffle
 
 end

#THIS IS a function for the new game

	def letter_maze(button_array,search_letter,dog,house)
		numbers = [6,12]
		
		

					
		for x in numbers do
			button_array.delete_at((dog + x))
			button_array.insert((dog + x), search_letter)
			
			button_array.delete_at((house - x))
			button_array.insert((house - x), search_letter)
		end	
		
		
		 button_array.delete_at(dog)
			button_array.insert(dog, search_letter)
			
		#	button_array.delete_at((dog + 6))
		#	button_array.insert((dog + 6), search_letter)
			
		#	button_array.delete_at((dog + 12))
		#	button_array.insert((dog + 12), search_letter)
			
		#	button_array.delete_at((house - 6))
		#	button_array.insert((house - 6), search_letter)
			
		#	button_array.delete_at((house - 12))
		#	button_array.insert((house - 12), search_letter)

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

#THIS WAS TO SEE IF I COULD GET AN ARRAY OF THE INDEXES OF THE SEARCH LETTERS....and it works
def doggy(array, search_letter)
	search_letter_array= array.each_index.select{|i| array[i] == search_letter}
	return search_letter_array 
end



def correct_btn_id(correct_array, correct_id)
	if correct_id == 1 
		return 1
	elsif correct_id == 2
		return 2
	elsif correct_id == 3 and (correct_array[2]) - (correct_array[1]) == 6	#BUttons that go to the right
		return 3
	elsif correct_id == 4 and (correct_array[2]) - (correct_array[1]) == 6	
		return 4
	elsif correct_id == 5 and (correct_array[2]) - (correct_array[1]) == 6
		return 5
	elsif correct_id == 6 and (correct_array[2]) - (correct_array[1]) == 6 
		return 6
	elsif correct_id == 7 and (correct_array[2]) - (correct_array[1]) == 6 
		return 7			
	elsif correct_id == 8 and (correct_array[2]) - (correct_array[1]) == 6 
		return 8
	elsif correct_id == 9 
		return 9
	elsif correct_id == 10 
		return 10																	
	

	
	

	#this is for any buttons that go to the LEFT of the alignment
	#this is the algaryrhm to figure out what number the button is	
	elsif correct_id == 3 and (correct_array[2]) - (correct_array[1]) < 6 
	 return (((correct_array[1] + 6) - (correct_array[2])) + 3)     
	elsif correct_id == 4 and (correct_array[3]) - (correct_array[2]) < 6 
	 return (((correct_array[1] + 6) - (correct_array[3])) + 3) 
	elsif correct_id == 5 and (correct_array[4]) - (correct_array[2]) < 6 
	 return (((correct_array[1] + 6) - (correct_array[4])) + 3) 
	elsif correct_id == 6 and (correct_array[5]) - (correct_array[2]) < 6 
	 return (((correct_array[1] + 6) - (correct_array[5])) + 3) 
	elsif correct_id == 7 and (correct_array[6]) - (correct_array[2]) < 6 
	 return (((correct_array[1] + 6) - (correct_array[6])) + 3) 
	elsif correct_id == 8 and (correct_array[7]) - (correct_array[2]) < 6 
	 return (((correct_array[1] + 6) - (correct_array[7])) + 3) 

	#these are for the last two buttons going left

	elsif correct_id == 5 and (correct_array[4]) - (correct_array[2]) >= 6
		return correct_id
	elsif correct_id == 6 and (correct_array[5]) - (correct_array[2]) >= 6
		return correct_id
	elsif correct_id == 7 and (correct_array[6]) - (correct_array[2]) >= 6
		return correct_id	
		elsif correct_id == 8 and (correct_array[7]) - (correct_array[2]) >= 6
		return correct_id		

	
	else 
		return 0
	end 

	
end




def button_id(correct_array, array_index)
	if array_index == correct_array[0]
		return 1
	elsif array_index == correct_array[1]
		return 2
	elsif (correct_array[1] + 6 == array_index)
		return 3		
	elsif (array_index == correct_array[2] && (array_index	- correct_array[1]) < 6)
		return (correct_array[1]	+ 6) - (correct_array[2]) + 3
	elsif (array_index == correct_array[] && (array_index	- correct_array[1]) < 6)	
		return (correct_array[1]	+ 6) - (correct_array[2]) + 3
	end
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
