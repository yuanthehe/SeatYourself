class Reservation < ApplicationRecord
#  attr_accessor :user_id, :restaurant_id, :size, :when

  belongs_to :user
  belongs_to :restaurant

end
