require 'rails_helper'

user = FactoryGirl.create(:user)

describe "log in user" do
  it "logs is a user" do
    visit "/"
    click_on "Log in"
    fill_in "Email", :with => user.email
    click_on "Log in"
    expect(page).to have_content "logged"
  end

  it "gives an error if email is missing" do
    visit "/"
    click_on "Log in"
    click_on "Log in"
    expect(page).to have_content "problem logging"
  end
end
