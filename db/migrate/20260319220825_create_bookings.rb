class CreateBookings < ActiveRecord::Migration[8.1]
  def change
    create_table :bookings do |t|
      t.references :slot, null: false, foreign_key: true
      t.string :name
      t.string :phone

      t.timestamps
    end
  end
end
