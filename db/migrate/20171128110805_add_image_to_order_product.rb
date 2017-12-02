class AddImageToOrderProduct < ActiveRecord::Migration[5.1]
  def change
    add_column :order_products, :image, :string
  end
end
