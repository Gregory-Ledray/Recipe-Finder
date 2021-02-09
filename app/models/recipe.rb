class Recipe < ApplicationRecord
    has_many :ingredient_list_items
    has_one :user # Recipe owner
    
    validates :name, presence: true, length: {minimum: 3}
    validates :short_description, presence: true, length: {minimum: 3}
    validates :instructions, presence: true
    validates :license_status, acceptance: { message: "must be accepted" }
end
