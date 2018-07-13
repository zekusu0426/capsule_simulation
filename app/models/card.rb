class Card < ApplicationRecord
	belongs_to :character
	belongs_to :element
end
