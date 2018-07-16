# == Schema Information
#
# Table name: elements
#
#  id         :integer          not null, primary key
#  name       :string
#  name_kana  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Element < ApplicationRecord
	has_many :cards
end
