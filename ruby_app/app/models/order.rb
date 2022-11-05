class Order < ApplicationRecord
    belongs_to :provider, class_name: "User"
    belongs_to :buyer, class_name: "User"
    belongs_to :dispatcher, class_name: "User"
    has_many :order_products
    has_many :comments
end
