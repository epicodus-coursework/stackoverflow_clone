class User < ActiveRecord::Base
  validates :name, :presence => true
  validates :email, :presence => true
  has_many :questions
  has_many :answers

  def self.authenticate(email)
    user = User.where(email: email).first
    if user
      user
    else
      nil
    end
  end

end
