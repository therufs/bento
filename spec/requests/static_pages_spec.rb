require 'spec_helper'

describe "StaticPages" do

subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_content 'Bento' }
    it { should have_selector 'title',
               :text => "Bento App" }
    it { should_not have_selector 'title', :text => '| Home' }
  end


  describe "Help page" do
    before { visit help_path }
    it { should have_content 'HALP' }
    it { should have_selector 'title',
               :text => "Help" }
  end

  describe "About page" do 
    before {  visit about_path }
    it { should have_content 'About Bento' }
    it { should have_selector 'title',
               :text => "Bento App | About" }
  end

  describe "Contact page" do
    before {  visit contact_path }
    it { should have_selector 'h1', text: 'Contact' }
    it { should have_selector 'title',
                    text: "Contact" }
  end
end
