class RemoveDogsArrayFromUser < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :dogs
  end
end
