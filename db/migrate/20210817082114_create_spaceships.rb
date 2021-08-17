class CreateSpaceships < ActiveRecord::Migration[6.0]
  def change
    create_table :spaceships do |t|
      t.string :name
      t.string :address
      t.text :description
      t.integer :capacity
      t.string :price
      t.integer :standing
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
