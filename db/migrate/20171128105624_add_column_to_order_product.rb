class AddColumnToOrderProduct < ActiveRecord::Migration[5.1]
  def change
    add_column :order_products, :title, :string
  end
end
