class Owner < ApplicationRecord
#  attr_accessor :id, :email, :name, :phone

  has_secure_password

  has_many :restaurants

end
