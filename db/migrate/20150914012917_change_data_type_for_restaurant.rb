class ChangeDataTypeForRestaurant < ActiveRecord::Migration
  def change
    change_column(:restaurants, :postal_code, :string)
  end
end
