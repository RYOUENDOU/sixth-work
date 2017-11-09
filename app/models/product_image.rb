class ProductImage < ApplicationRecord
	belongs_to  :product
	mount_uploader :image_id, ProductImageUploader
	# validates :image_id, presence: true
end
