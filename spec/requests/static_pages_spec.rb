require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "should have the content 'Bento'" do
      visit '/root_path'
      page.should have_content('Bento')
    end
  
    it "should have the right title" do
      visit '/root_path'
      page.should have_selector('title',
               :text => "Bento App")
    end

    it "should not have a custom page title" do
      visit '/root_path'
      page.should_not have_selector('title', :text => '| Home')
    end
  end


  describe "Help page" do
    it "should have the content 'HALP'" do
      visit 'help_path'
      page.should have_content('HALP')
    end
  
    it "should have the right title" do
      visit 'help_path'
      page.should have_selector('title',
               :text => "Help")
    end
  end

  describe "About page" do 
    it "should have the content 'About Bento'" do
      visit 'about_path'
      page.should have_content('About Bento')
    end
  

    it "should have the right title" do
      visit 'about_path'
      page.should have_selector('title',
               :text => "Bento App | About")
    end
  end

  describe "Contact page" do 

    it "should have the h1 'Contact'" do
      visit 'contact_path'
      page.should have_selector('h1', text: 'Contact')
    end

    it "should have the title 'Contact'" do
      visit 'contact_path'
      page.should have_selector('title', text: 'Contact')
    end
  end
end
