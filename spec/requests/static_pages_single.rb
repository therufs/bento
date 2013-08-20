require 'spec_helper'

describe "StaticPages" do
  describe "Help page" do
    it "should have the content 'HALP'" do
      visit 'help_path'
      page.should have_content('HALP')
    end
  end
end
