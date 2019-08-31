class Post < ApplicationRecord
  belongs_to :user
  # validation
  validates_presence_of :image, :content, :user_id
end
