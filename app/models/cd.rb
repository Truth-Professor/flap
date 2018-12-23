class Cd < ApplicationRecord
attachment :jacket_image
    belongs_to :genre
    belongs_to :artist
    belongs_to :label

end
