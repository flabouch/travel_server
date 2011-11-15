require 'spec_helper'

describe "Transportations" do
  describe "GET /transportations" do
    it 'display some transportation modes' do
      visit transportations_path
      page.should have_content("bus")
      page.should have_content("plane")
      page.should have_content("car")
      page.should have_content("bike")
      page.should have_content("boat")
      page.should have_content("train")
      
    end
  end
end
