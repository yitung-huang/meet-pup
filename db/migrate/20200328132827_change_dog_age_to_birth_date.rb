class ChangeDogAgeToBirthDate < ActiveRecord::Migration[6.0]
  def up
    rename_column :dogs, :age, :birth_date
    change_column :dogs, :birth_date, :date
  end

  def down
    change_column :dogs, :birth_date, :string
    rename_column :dogs, :birth_date, :age
  end
end
