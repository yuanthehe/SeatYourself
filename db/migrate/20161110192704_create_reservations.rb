class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.integer :user_id
      t.integer :restaurarant_id
      t.integer :size
      t.datetime :when

      t.timestamps
    end
  end
end
