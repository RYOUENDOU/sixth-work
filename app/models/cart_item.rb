class CartItem < ApplicationRecord
  # belongs_to :product,dependent: :destroy
  belongs_to :cart 
end
