require 'spec_helper'

describe "Static pages" do
  describe "Home page" do
    it "should have the content 'home'" do
      visit '/static_pages/home'
      expect(page).to have_content('home')
    end
    it "should have the title 'Tutorial | Home'" do
    	visit '/static_pages/home'
    	expect(page).to have_title('Tutorial | Home')
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
  		expect(page).to have_content('aboutus')
  	end
  end
  describe "contact" do
  	it "should have the content 'contact'" do
  		visit '/static_pages/contact'
  		expect(page).to have_content('contact')
  	end
  end
end
describe "User Pages" do
  subject {page}
  describe "Signup page" do
    before {visit signup_path }
    it { should have_content('signup page')}
    it { should have_title(full_title('signup')) }
  end
  describe "Profile page" do
    before { visit user_path(user) }
    it { should have_content(user.name) }
    it { should have_title(user.name) }
  end
  visit signup_path
    fill_in "Name",         with: "Example User"
    fill_in "Email",        with: "user@example.com"
    fill_in "Password",     with: "foobar"
    fill_in "Confirmation", with: "foobar"
    click_button "Create my account"
   describe "with valid information" do
    before do
      fill_in "Name",         with: "Example User"
      fill_in "Email",        with: "user@example.com"
      fill_in "Password",     with: "foobar"
      fill_in "Confirmation", with: "foobar"
    end

    it "should create a user" do
      expect { click_button submit }.to change(User, :count).by(1)
    end
  end
end 
