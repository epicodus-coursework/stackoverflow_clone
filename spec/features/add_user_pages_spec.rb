require 'rails_helper'

user = FactoryGirl.create(:user)

describe "add a new user" do
  it "adds a new user" do
    visit "/"
    click_on "Register"
    fill_in "Name", :with => user.name
    fill_in "Email", :with => user.email
    click_on "Sign Up"
    expect(page).to have_content "Welcome"
  end

  it "gives an error when no name is entered" do
    visit "/"
    click_on "Register"
    fill_in "Email", :with => user.email
    click_on "Sign Up"
    expect(page).to have_content "problem"
  end
end

describe "log in user" do
  it "logs is a user" do
    visit "/"
    click_on "Log in"
    fill_in "Email", :with => user.email
    click_on "Log in"
    expect(page).to have_content "logged"
  end
end
