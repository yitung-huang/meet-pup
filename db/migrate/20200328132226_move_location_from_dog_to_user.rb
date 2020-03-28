class MoveLocationFromDogToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :location, :geocode
    remove_column :dogs, :location
  end
end
