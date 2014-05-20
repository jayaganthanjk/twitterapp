require 'spec_helper'

describe "Static pages" do
  describe "Home page" do
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end
    it "should have the title 'Tutorial | Home'" do
    	visit '/static_pages/home'
    	expect(page).to have_content('Tutorial | Home')
    end
  end
  describe "Help page" do
  	it "should have the content 'Help Page'" do
  		visit '/static_pages/help'
  		expect(page).to have_content('app')
  	end
  end
  describe "About us" do
  	it "should have the content 'About us'" do
  		visit '/static_pages/about'
  		expect(page).to have_content('about us')
  	end
  end
end
