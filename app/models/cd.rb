class Cd < ApplicationRecord
attachment :profile_image
    belongs_to :genre
    belongs_to :artist
    belongs_to :label

end
