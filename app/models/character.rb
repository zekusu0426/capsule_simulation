class Character < ApplicationRecord
	belongs_to :band
	has_many :character
end
