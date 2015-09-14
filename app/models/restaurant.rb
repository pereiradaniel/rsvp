class Restaurant < ActiveRecord::Base
  validates :name, :capacity, :province, :city, :street, :postal_code, :phone_number, presence: true
  has_many :reservations
  has_many :users, through: :reservations
  belongs_to :owner, class_name: "User"
  has_and_belongs_to_many :cuisines
end
