require 'spec_helper'
require 'capybara/rspec'

describe "User Signup" do
  context 'GET /signup' do
    it 'displays the sign up page' do
      visit signup_path
    end
  end
      
  let(:submit) { "Submit" }
  
  it "allows user to signup" do
    user = create(:user)
    visit signup_path
    fill_in :name,     with:  "John Smith"
    fill_in :email,    with:  "user@example.com"
    fill_in :password, with:  "newpassword"
    click_button "Submit"
  end 
end

