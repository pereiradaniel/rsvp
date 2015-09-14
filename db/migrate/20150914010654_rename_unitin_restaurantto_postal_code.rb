class RenameUnitinRestauranttoPostalCode < ActiveRecord::Migration
  def change
    rename_column :restaurants, :unit, :postal_code
  end
end
