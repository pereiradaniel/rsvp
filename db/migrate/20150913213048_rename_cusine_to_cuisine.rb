class RenameCusineToCuisine < ActiveRecord::Migration
  def change
    rename_table :cusines, :cuisines
  end
end
