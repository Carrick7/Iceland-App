class CreateLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :locations do |t|
      t.string :title
      t.text :body
      t.string :image

      t.timestamps
    end
  end
end
