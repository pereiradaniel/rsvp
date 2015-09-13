class RenameCuisinesRestaurantsTablesToCuisinesRestaurants < ActiveRecord::Migration
  def change
  	rename_table :cuisines_restaurants_tables, :cuisines_restaurants
  end
end
