class Product < ApplicationRecord
    has_one_attached :image_product
    has_many :order_products
end
