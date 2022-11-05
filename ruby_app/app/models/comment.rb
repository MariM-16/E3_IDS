class Comment < ApplicationRecord
    belongs_to :order
    belongs_to :buyer, class_name: "User"
    
end
