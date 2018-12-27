class Order < ApplicationRecord
		has_many :histories, dependent: :destroy

	belongs_to :cart
end
