class User < ApplicationRecord
#  attr_accessor :id, :name, :email, :phone

  has_secure_password

  has_many :reviews
  has_many :reservations
  has_many :restaurants, through: :reservations

end
