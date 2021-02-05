class Bookmark < ApplicationRecord
    has_one :recipe
    has_one :user
end
