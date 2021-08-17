class ChangeColumnCapacityToSpaceship < ActiveRecord::Migration[6.0]
  def change
    change_column :spaceships, :capacity, :string
  end
end
