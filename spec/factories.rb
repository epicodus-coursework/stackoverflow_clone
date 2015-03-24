FactoryGirl.define do
  factory :user do
    name "Jane"
    email "jane@doe.com"
  end

  factory :question do
    title "question 1"
    body "body of question 1"
  end
end
