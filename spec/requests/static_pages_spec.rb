require 'spec_helper'

describe "Home page" do
	it "should have the content 'Sample App'" do
		visit '/static_pages/home'
		page.should have_content('Sample App')
	end
end

describe "Help page" do
	it "should have the content 'Help'" do
		visit '/static_pages/help'
		page.should have_content('Help')
	end
end

describe "About page" do
	it "should have the content 'About Us'" do
		visit '/static_pages/about_us'
		page.should have_content('About Us')
		page.should have_selector('title', :text => 'RailsTutorial | About Us')
	end
end