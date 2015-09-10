class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.datetime :date_time
      t.integer :party_size

      t.timestamps null: false
    end
  end
end
