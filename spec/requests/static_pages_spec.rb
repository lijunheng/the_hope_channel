require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
  	it "should have the content 'The Hope Channel'" do
  		visit '/static_pages/home'
  		expect(page).to have_content('The Hope Channel')
  	end
    it "should have the title 'The Hope Channel'" do
      visit '/static_pages/home'
      expect(page).to have_title('The Hope Channel | Home')
    end
  end
  describe "About page" do
  	it "should have the content 'About'" do
  		visit '/static_pages/about'
  		expect(page).to have_content('About')
  	end
    it "should have the title 'About'" do
      visit '/static_pages/about'
      expect(page).to have_title("The Hope Channel | About")
    end
  end
  describe "Contact page" do
    it "should have the content 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact')
    end
    it "should have the title 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_title("The Hope Channel | Contact")
    end
  end
end
