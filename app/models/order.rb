class Order < ApplicationRecord
		has_many :historys, dependent: :destroy

	belongs_to :cart
end
