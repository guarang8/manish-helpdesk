class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name
  has_many :tickets, as: :assignable
  has_many :comments, through: :tickets
end
