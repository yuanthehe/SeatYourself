class Review < ApplicationRecord
#  attr_accessor :user_id, :restaurant_id, :id, :content
  validates :content, presence: true

  belongs_to :user
  belongs_to :restaurant

end
