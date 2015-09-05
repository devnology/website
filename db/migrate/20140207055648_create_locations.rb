class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :website
      t.text :directions
      t.integer :event_id

      t.timestamps null: false
    end
  end
end
