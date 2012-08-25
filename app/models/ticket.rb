class Ticket < ActiveRecord::Base
  attr_accessible :body, :end_user_id, :title
  belongs_to :assigned_to, polymorphic: true
end
