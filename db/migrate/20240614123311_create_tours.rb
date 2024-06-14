class CreateTours < ActiveRecord::Migration[7.1]
  def change
    create_table :tours do |t|
      t.integer :guide_id
      t.string :title
      t.text :description
      t.string :location
      t.string :duration
      t.decimal :price
      t.integer :max_participants
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
    add_foreign_key :tours, :users, column: :guide_id
  end
end
