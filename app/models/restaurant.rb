class Restaurant < ActiveRecord::Base
  validates :name, :capacity, presence: true
  has_many :reservations
end
