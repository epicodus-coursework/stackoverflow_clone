require 'rails_helper'

describe User do
  it { should validate_presence_of :name }
  it { should validate_presence_of :email }
  it { should have_many :questions }
  it { should have_many :answers }

  it "sends an email when the user is created" do
    user = FactoryGirl.create(:user)
    ActionMailer::Base.deliveries.last.to.should eq [user.email]
  end
end
