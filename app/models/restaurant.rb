class Restaurant < ActiveRecord::Base
  validates :name, :capacity, :province, :city, :street, :unit, :phone_number, presence: true
  has_many :reservations
  has_many :users, through: :reservations

end
