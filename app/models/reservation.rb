class Reservation < ActiveRecord::Base
  validates :date_time, :party_size, presence: true
  validate :capacity_exists
  belongs_to :user
  belongs_to :restaurant

  def capacity_exists
  	# binding.pry
    existing_reservations = Reservation.where("restaurant_id = ? and date_time > ? and date_time < ?", self.restaurant_id, self.date_time.at_beginning_of_hour, self.date_time.at_end_of_hour)
    total_people = existing_reservations.sum(:party_size)
    restaurant_capacity = self.restaurant.capacity
    if (self.party_size + total_people) > restaurant_capacity
      #errors.add(:party_size, "Capacity exceeded")
      errors[:base] << "Capacity exceeded"
    end
  end

end
