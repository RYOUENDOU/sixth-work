class Order < ApplicationRecord
	has_many :order_products
	has_one :account
end
