require "rails_helper"

user = FactoryGirl.create(:user)

RSpec.describe UserMailer, type: :mailer do
  describe "signup_confirmation" do
    let(:mail) { UserMailer.signup_confirmation }

    # it "renders the headers" do
      # expect(mail.subject).to eq("Sign Up Confirmation")

      # expect(mail.to).to eq([user.email])
      # expect(mail.from).to eq(["student@epicodus.com"])
    # end

    # it "renders the body" do
    #   expect(mail.body.encoded).to match(user.name)
    # end
  end

end
