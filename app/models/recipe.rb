class Recipe < ApplicationRecord
    has_and_belongs_to_many :ingredient_lists
    
    validates :name, presence: true, length: {minimum: 3}
    validates :short_description, presence: true, length: {minimum: 3}
    validates :instructions, presence: true
    validates :license_status, acceptance: { message: "must be accepted" }
end
