class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.string :start_date
      t.string :end_date
      t.decimal :average_rating
      t.string :status
      t.references :user, null: false, foreign_key: true
      t.references :spaceship, null: false, foreign_key: true

      t.timestamps
    end
  end
end
