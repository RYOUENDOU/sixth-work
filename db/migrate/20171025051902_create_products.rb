class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :title
      t.integer :price
      t.text :description
      t.string :image
      t.boolean :is_available

      t.timestamps
    end
  end
end
