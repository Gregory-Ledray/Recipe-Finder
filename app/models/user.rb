class User < ApplicationRecord
    has_many :bookmarks
    has_many :shopping_lists
end
