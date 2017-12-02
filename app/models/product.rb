class Product < ApplicationRecord
  has_many :cart_items, dependent: :destroy
  has_many :order_products, dependent: :destroy
  belongs_to :category
  belongs_to :user
  has_many :product_images, dependent: :destroy
  mount_uploader :image, ImageUploader
  accepts_nested_attributes_for :product_images
end
