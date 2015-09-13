class CreateCusines < ActiveRecord::Migration
  def change
    create_table :cusines do |t|
      t.string :type

      t.timestamps null: false
    end
  end
end
