class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
      t.string :state
      t.integer :user_id
      t.string :postal_code
      t.string :address
      t.integer :tel

      t.timestamps
    end
  end
end
