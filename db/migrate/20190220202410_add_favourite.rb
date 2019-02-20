class AddFavourite < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurants, :user_favourite, :boolean
  end
end
