class AddColumnToCart < ActiveRecord::Migration[5.1]
  def change
    add_column :carts, :state, :string
    add_column :carts, :user_id, :integer
    add_column :carts, :postal_code, :string
    add_column :carts, :address, :string
    add_column :carts, :tel, :integer
    add_column :carts, :completed_at, :datetime
    add_column :carts, :guest_token, :string
  end
end
