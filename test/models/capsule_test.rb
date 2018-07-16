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

require 'test_helper'

class CapsuleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
