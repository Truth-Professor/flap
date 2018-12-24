class Cd < ApplicationRecord
attachment :jacket_image
	has_many :cart_item
    belongs_to :genre
    belongs_to :artist
    belongs_to :label
    	has_many :songs, dependent: :destroy
    	accepts_nested_attributes_for :songs, allow_destroy: true # この行を追記



end
