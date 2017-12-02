class CartItem < ApplicationRecord
  belongs_to :product, optional: true
  validates :product_id, presence: true
  validates :quantity, presence: true, numericality: { greater_than_or_equal_to: 1 }



	def self.total_price
		sum{ |cart_item,quantity|cart_item.product.price * cart_item.quantity
		}
	end
end
