class AddUserImagesToLocations < ActiveRecord::Migration[7.0]
  def change
    add_column :locations, :user_images, :string
  end
end
