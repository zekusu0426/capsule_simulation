# == Schema Information
#
# Table name: cards
#
#  id           :integer          not null, primary key
#  reality      :integer
#  name         :string
#  name_kana    :string
#  character_id :integer
#  capsule_id   :integer
#  element_id   :integer
#  performance  :integer
#  technic      :integer
#  visual       :integer
#  introduction :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class CardTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
