class Product < ApplicationRecord
  has_many_attached :images
  has_many :order_products
end
