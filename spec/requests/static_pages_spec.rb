require 'spec_helper'

describe "Static pages" do
	
	let(:base_title) { "Ruby on Rails Tutorial Sample App" }

	describe "Home page" do

		it "should have the content 'Sample App'" do
			visit '/static_pages/home'
			page.should have_content('Sample App')
		end
		it "should have title 'Home'" do
			visit '/static_pages/home'
			page.should have_selector('title',
				:text => "#{base_title}")
		end
		it "should not have a custom page title" do
			visit '/static_pages/home'
			page.should_not have_selector('title', :text => '| Home')
		end
	end
	
	describe "Help page" do

		it "should have the content 'Help'" do
		    visit '/static_pages/help'
		    page.should have_content('Help')
		end
	  	it "should have title 'Help'" do
			visit '/static_pages/help'
			page.should have_selector('title',
				:text => "#{base_title} | Help")
		end
	end

	describe "About page" do

		it "should have the content 'About Us'" do
		    visit '/static_pages/about'
		    page.should have_content('About Us')
		end
	  	it "should have title 'About Us'" do
			visit '/static_pages/about'
			page.should have_selector('title',
				:text => "#{base_title} | About Us")
		end
	end

	describe "Contacts page" do

		it "should have the content 'Contacts'" do
			visit '/static_pages/contacts'
			page.should have_content('Contacts')
		end
	  	it "should have title 'Contacts'" do
			visit '/static_pages/contacts'
			page.should have_selector('title',
				:text => "#{base_title} | Contacts")
		end	  
	end

end