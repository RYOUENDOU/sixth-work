class AddColumnToOrder < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :name, :string
    add_column :orders, :user_id, :integer
    add_column :orders, :postal_code, :string
    add_column :orders, :address, :string
    add_column :orders, :tel, :string
  end
end
