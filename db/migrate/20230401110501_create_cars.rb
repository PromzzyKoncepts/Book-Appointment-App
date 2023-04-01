class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :name
      t.string :model
      t.boolean :reserved
      t.integer :price
      t.string :image_url
      t.text :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
