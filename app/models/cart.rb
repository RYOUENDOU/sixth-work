class Cart < ApplicationRecord
	has_many :cart_items, dependent: :destroy 
	# belongs_to :user, optional: true	

	# validates :state, presence: true
    #validates :postal_code, format: { with: /^\d{7}$/, :multiline => true }

end
