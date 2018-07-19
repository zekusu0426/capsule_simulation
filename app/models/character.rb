# == Schema Information
#
# Table name: characters
#
#  id              :integer          not null, primary key
#  first_name      :string
#  first_name_kana :string
#  last_name       :string
#  last_name_kana  :string
#  band_id         :integer
#  introduction    :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Character < ApplicationRecord
	belongs_to :band
	has_many :cards
end
