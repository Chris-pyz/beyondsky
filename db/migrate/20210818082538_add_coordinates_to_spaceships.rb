class AddCoordinatesToSpaceships < ActiveRecord::Migration[6.0]
  def change
    add_column :spaceships, :latitude, :float
    add_column :spaceships, :longitude, :float
  end
end
