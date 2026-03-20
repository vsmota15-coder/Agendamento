class CreateSlots < ActiveRecord::Migration[8.1]
  def change
    create_table :slots do |t|
      t.date :date
      t.time :start_time
      t.boolean :available

      t.timestamps
    end
  end
end
