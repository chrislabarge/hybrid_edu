require 'spec_helper'

describe "Static pages" do
	
	subject { page }
	
	shared_examples_for "all static pages" do
		it { should have_selector('h1', text: heading) }
		it { should have_title(full_title(page_title)) }
	end
	
	
	
	describe "Home page" do
		before { visit root_path }
		
		let(:heading)    {'Hybrid Education'}
		let(:page_title) { '' }
		
	
		it_should_behave_like "all static pages"
		it { should_not have_title('| Home')}
	end
		
	
	
 	describe "Game page" do
		before { visit games_path }
		
		let(:heading)    { 'Games' }
		let(:page_title) { 'Games' }
		
		it_should_behave_like "all static pages" 
	end
	

	
	

	describe 'About page' do
		before { visit about_path}	
		
		let(:heading)    { 'About' }
		let(:page_title) { 'About Us' }
		
		it_should_behave_like "all static pages"
	end
	


	describe 'Contact page' do
		before {visit contact_path}
		
		let(:heading)    { 'Contact' }
		let(:page_title) { 'Contact' }
		
		it_should_behave_like "all static pages"	
	end
	
	describe 'Printables page' do
		before {visit printables_path }
		
		let(:heading) 	 {'Printable Material'}
		let(:page_title) {'Printable Material'}
		
		it_should_behave_like "all static pages"
	end
	
	describe 'Lessons page' do
		before {visit lessons_path }
		
		let(:heading) 	 {'Creative Lessons'}
		let(:page_title) {'Creative Lessons'}
		
		it_should_behave_like "all static pages"
	end
	
	describe 'Common Core page' do
		before {visit common_core_path }
		
		let(:heading) 	 {'Common Core Resources'}
		let(:page_title) {'Common Core'}
		
		it_should_behave_like "all static pages"
	end
	
	describe 'Account page' do
		before {visit account_path }
		
		let(:heading) 	 {'My Account'}
		let(:page_title) {'My Account'}
		
		it_should_behave_like "all static pages"
	end
	
	
	
	describe 'Printable Letter Trace Worsheet' do
		before {visit lettertrace_path }
		
		let(:heading) 		{'Letter Search Worksheets'}
		let(:page_title)	{'Printable Worksheets'}
		
		it_should_behave_like "all static pages"
	end

	describe 'Printable Letters in Words Worksheets' do
		before {visit letters_in_words_path}
		
		let(:heading) {'Letters in Words Worksheets'} 
		let(:page_title) {'Printable Worksheets'}
		
		it_should_behave_like "all static pages"
	end	
	
	
	



	describe 'First page of the Letter Search Game' do
		before {visit game_letter_search_path}
		
		let(:heading) {' '}
		let(:page_title)	{'Letter Search Game'}
		
		it_should_behave_like "all static pages"
	end

	describe 'Second Page of the Letter Search Game' do
		before {visit game_letter_search_2_path}
		
		let(:heading) {' '}
		let(:page_title) {'Letter Search Game'}
		
		it_should_behave_like "all static pages"
	end
	
	describe 'Third Page of the Letter Search Game' do
		before {visit game_letter_search_3_path}
		
		let (:heading) {' '}
		let (:page_title) {'Letter Search Game'}		
  
  	it_should_behave_like "all static pages"
  end


	describe 'Fourth Page of the Letter Search Game' do
		before {visit game_letter_search_4_path}
		
		let (:heading) {'4'}
		let (:page_title) {'Letter Search Game'}		
  
  	it_should_behave_like "all static pages"
  end
 	
	
	it "should have the right links on the layout" do
		visit root_path
		click_link "About"
		expect(page).to have_title(full_title('About Us'))
		click_link "Games"
		expect(page).to have_title(full_title('Games'))
		click_link "Contact"
		expect(page).to have_title(full_title('Contact'))
		click_link "Hybrid Edu"
		expect(page).to have_title(full_title(''))
	end
end
