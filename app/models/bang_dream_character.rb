class BangDreamCharacter < ApplicationRecord
	belongs_to :band, optional: true
end
