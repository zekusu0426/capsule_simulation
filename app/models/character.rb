class Character < ApplicationRecord
	belongs_to :band
	has_many :characters
end
