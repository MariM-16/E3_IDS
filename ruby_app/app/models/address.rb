class Address < ApplicationRecord
    belongs_to :user
    validates :commune, presence: true
    validates :street, presence: true
    validates :number_address, presence: true
    validates :extra_information, presence: true

end
