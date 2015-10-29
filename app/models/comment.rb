class Comment < ActiveRecord::Base
  belongs_to :picture
  belongs_to :user
  validates :body, presence: true
end
