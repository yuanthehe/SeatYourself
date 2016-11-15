class Restaurant < ApplicationRecord
#  attr_accessor :id, :name, :owner_id, :capacity, :location, :phone, :food_type, :description

  has_many :reservations
  has_many :users, through: :reservations
  has_many :reviews
  has_many :users, through: :reviews

  belongs_to :owner

  def self.search(search)
    where("name ILIKE ?", "%#{search}%") || where("food_type ILIKE ?", "%#{search}%" )
  end

end
