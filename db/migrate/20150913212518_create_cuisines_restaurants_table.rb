class CreateCuisinesRestaurantsTable < ActiveRecord::Migration
  def change
    create_table :cuisines_restaurants_tables do |t|
      t.belongs_to :restaurant, index: true
      t.belongs_to :cuisine, index: true
    end
  end
end
