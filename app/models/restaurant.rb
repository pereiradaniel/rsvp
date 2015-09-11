class Restaurant < ActiveRecord::Base
  validates :name, :capacity, presence: true
  has_many :reservations
  has_many :users, through: :reservations

end
