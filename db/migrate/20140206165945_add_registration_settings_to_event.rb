class AddRegistrationSettingsToEvent < ActiveRecord::Migration
  def change
    add_column :events, :number_of_seats, :integer
    add_column :events, :registration_opens, :datetime
  end
end
