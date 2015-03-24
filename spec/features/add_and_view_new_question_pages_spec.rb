require 'rails_helper'

user = FactoryGirl.create(:user)
question = FactoryGirl.create(:question)

describe "add a new question" do
  it "adds a new question" do
    visit "/"
    click_on "Log in"
    fill_in "Email", :with => user.email
    click_on "Log in"
    click_on "Add a new question"
    fill_in "Title", :with => question.title
    fill_in "Body", :with => question.body
    click_on "Create Question"
    expect(page).to have_content "successfully added!"
  end
end

describe "view a question" do
  it "views a question" do
    visit "/"
    click_on "question 1"
    expect(page).to have_content "body of question 1"
  end
end
