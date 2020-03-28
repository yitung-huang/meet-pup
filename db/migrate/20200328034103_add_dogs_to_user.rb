class AddDogsToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :dogs, :dogs, array: true
  end
end
