class User < ActiveRecord::Base
  validates :name, :presence => true
  validates :email, :presence => true
  has_many :questions
  has_many :answers
end
