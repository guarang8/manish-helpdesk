class Ticket < ActiveRecord::Base
  attr_accessible :body, :end_user_id, :title, :comment, :assignable_id
  has_many :comments
  belongs_to :assignable, polymorphic: true
  accepts_nested_attributes_for :comments, allow_destroy: true
end
