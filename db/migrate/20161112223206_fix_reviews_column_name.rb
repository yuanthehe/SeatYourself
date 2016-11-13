class FixReviewsColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :reviews, :restaurant_idid, :restaurant_id
  end
end
