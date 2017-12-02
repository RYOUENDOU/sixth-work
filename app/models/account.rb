class Account < ApplicationRecord
	belongs_to :user, optional: true
	validates :name, presence: true #, length: {minumum: 7, maximum: 7}
	validates :postal_code, presence: true
	validates :address, presence: true
	validates :tel, presence: true, numericality: { greater_than_or_equal_to: 0 }
end	
