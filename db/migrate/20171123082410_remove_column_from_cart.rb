class RemoveColumnFromCart < ActiveRecord::Migration[5.1]
  def change
    remove_column :carts, :state, :string
    remove_column :carts, :user_id, :integer
    remove_column :carts, :postal_code, :string
    remove_column :carts, :address, :string
    remove_column :carts, :tel, :integer
    remove_column :carts, :completed_at, :datetime
    remove_column :carts, :guest_token, :string
  end
end
