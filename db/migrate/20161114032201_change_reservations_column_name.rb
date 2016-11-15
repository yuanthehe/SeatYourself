class ChangeReservationsColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :reservations, :restaurarant_id, :restaurant_id
  end
end
