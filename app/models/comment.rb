class Comment < ActiveRecord::Base
  attr_accessible :body
  belongs_to :ticket
  validates_presence_of :body
end
