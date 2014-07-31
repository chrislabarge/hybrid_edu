require 'spec_helper'

describe "Static pages" do
	
	subject { page }
	
	describe "Home page" do
		before { visit root_path }
		
		it { should have_content('Hybrid Education') }
		it { should have_title(full_title('')) }
		it { should_not have_title('| Home')}
	end
		
	
	
 	describe "Game page" do
		before { visit games_path }
		
		it { should have_content('Games') }
		it { should have_title(full_title('Games')) } 
	end
	

	
	

	describe 'About page' do
		before { visit about_path}	
		
		it { should have_content('About') }
		it { should have_title('About Us') }
	end
	


	describe 'Contact page' do
		before {visit contact_path}
		
		it { should have_content('Contact') }
		it { should have_title('Contact') }
	end
end
