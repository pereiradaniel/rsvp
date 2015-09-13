class AddDetailsToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :province, :string
    add_column :restaurants, :city, :string
    add_column :restaurants, :street, :string
    add_column :restaurants, :unit, :integer
    add_column :restaurants, :phone_number, :integer
  end
end
