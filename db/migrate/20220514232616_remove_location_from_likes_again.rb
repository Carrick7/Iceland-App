class RemoveLocationFromLikesAgain < ActiveRecord::Migration[7.0]
  def change
    remove_column :likes, :locations, :text
  end
end
