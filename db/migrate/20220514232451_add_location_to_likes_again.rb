class AddLocationToLikesAgain < ActiveRecord::Migration[7.0]
  def change
    add_column :likes, :locations, :text
  end
end
