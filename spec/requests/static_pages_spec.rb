require 'spec_helper'

describe "Static pages" do

	describe "Home page" do
	
		it "should have the content 'Hybrid Education'" do
			visit '/static_pages/home'
			expect(page).to have_content('Hybrid Education')
		end
		
		it "should not have a custom page title 'Home'" do
			visit '/static_pages/home'
			expect(page).to have_title("Hybrid Edu")
		end
		
		it "should not have a custom page title 'Home'" do
			visit '/static_pages/home'
			expect(page).not_to have_title("| Home")
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

	describe 'Contact page' do
		
		it "should have content 'Contact'" do
			visit '/static_pages/contact'
			expect(page).to have_content('Contact')
		end
	
		it "should have the title 'Contact'" do
			visit '/static_pages/contact'
			expect(page).to have_title("Hybrid Edu | Contact")
		end
	end
end