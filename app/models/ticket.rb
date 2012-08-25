class Ticket < ActiveRecord::Base
  attr_accessible :body, :end_user_id, :title
  has_many :comments
  belongs_to :assignable, polymorphic: true
end
