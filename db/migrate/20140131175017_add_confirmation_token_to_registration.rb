class AddConfirmationTokenToRegistration < ActiveRecord::Migration
  def change
    add_column :registrations, :confirmation_token, :string
    add_index  :registrations, :confirmation_token, unique: true
  end
end
