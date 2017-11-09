class RenameImageIdColumnToProduct < ActiveRecord::Migration[5.1]
  def change
  	  	rename_column :products, :image_id, :image
  end
end
