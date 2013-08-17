require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "should have the content 'Bento'" do
      visit '/static_pages/home'
      page.should have_content('Bento')
    end
  
    it "should have the right title" do
      visit '/static_pages/home'
      page.should have_selector('title',
               :text => "Bento App | Home")
    end
  end


  describe "Help page" do
    it "should have the content 'HALP'"do
      visit '/static_pages/help'
      page.should have_content('HALP')
    end
  
    it "should have the right title" do
      visit '/static_pages/help'
      page.should have_selector('title',
               :text => "Help")
    end
  end

  describe "About page" do 
    it "should have the content 'About Bento'" do
      visit '/static_pages/about'
      page.should have_content('About Bento')
    end
  

    it "should have the right title" do
      visit '/static_pages/about'
      page.should have_selector('title',
               :text => "Bento App | About")
    end
  end
end
