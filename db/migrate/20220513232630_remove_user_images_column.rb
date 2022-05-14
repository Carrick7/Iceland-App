class RemoveUserImagesColumn < ActiveRecord::Migration[7.0]
  def change
    remove_column :locations, :user_images, :string
  end
end
