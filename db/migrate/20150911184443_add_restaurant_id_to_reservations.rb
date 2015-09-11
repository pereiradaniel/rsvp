class AddRestaurantIdToReservations < ActiveRecord::Migration
  def change
    add_column :reservations, :restaurant_id, :integer
    add_index :reservations, :restaurant_id
    add_index :reservations, :user_id
  end
end
