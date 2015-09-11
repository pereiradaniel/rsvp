class User < ActiveRecord::Base
  validates :name, :email, presence: true
  has_many :reservations
  has_many :restaurants, through: :reservations
end
