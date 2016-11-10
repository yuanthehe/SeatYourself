class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.integer :capacity
      t.string :location
      t.string :phone
      t.string :food_type
      t.text :description
      t.integer :owner_id

      t.timestamps
    end
  end
end
