class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.string :name
      t.string :email
      t.integer :event_id
      t.boolean :confirmed, default: false

      t.timestamps
    end

    add_index :registrations, :event_id
  end
end
