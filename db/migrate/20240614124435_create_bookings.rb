class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.integer :tour_id
      t.integer :tourist_id
      t.date :booking_date
      t.string :status

      t.timestamps
    end
    add_foreign_key :bookings, :tours
    add_foreign_key :bookings, :users, column: :tourist_id
  end
end
