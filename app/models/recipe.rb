class Recipe < ApplicationRecord
    validates :name, presence: true, length: {minimum: 3}
    validates :short_description, presence: true, length: {minimum: 3}
    validates :ingredient, presence: true
    validates :instructions, presence: true
    validates :license_status, acceptance: true
end
