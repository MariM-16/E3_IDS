class Vehicle < ApplicationRecord
    belongs_to :dispatcher, class_name: "User"
end
