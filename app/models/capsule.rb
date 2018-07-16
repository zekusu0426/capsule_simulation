# == Schema Information
#
# Table name: capsules
#
#  id         :integer          not null, primary key
#  name       :string
#  start_time :date
#  end_time   :date
#  remarks    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Capsule < ApplicationRecord
  has_many :characters
end
