require 'spec_helper'

describe "Static pages" do

	describe "Home page" do
	
		it "should have the content 'Hybrid Education'" do
			visit '/static_pages/home'
			expect(page).to have_content('Hybrid Education')
		end
		
		it "should have the title 'Home'" do
			visit '/static_pages/home'
			expect(page).to have_title("Hybrid Edu | Home")
		end
	end
	
 describe "Game page" do
	
		it "should have the content 'Games'" do
			visit '/static_pages/games'
			expect(page).to have_content('Games')
		end
	
		it "should have the title 'Games'" do
			visit '/static_pages/games'
			expect(page).to have_title("Hybrid Edu | Games")
		end
	end

	describe 'About page' do
		
		it "should have content 'About'" do
			visit '/static_pages/about'
			expect(page).to have_content('About')
		end
	
		it "should have the title 'About'" do
			visit '/static_pages/about'
			expect(page).to have_title("Hybrid Edu | About")
		end
	end
end