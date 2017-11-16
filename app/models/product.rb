class Product < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :product_images, dependent: :destroy
  mount_uploader :image, ImageUploader
  accepts_nested_attributes_for :product_images
  # has_many :cart_items,dependent: :destroy
end
