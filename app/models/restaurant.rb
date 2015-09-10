class Restaurant < ActiveRecord::Base
  validates :name, :capacity, presence: true

end
