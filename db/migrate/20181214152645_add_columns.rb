class AddColumns < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :phone_number, :integer
    add_column :reservations, :name, :string
  end
end
