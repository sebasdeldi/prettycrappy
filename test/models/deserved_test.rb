# == Schema Information
#
# Table name: deserveds
#
#  id         :integer          not null, primary key
#  post_id    :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class DeservedTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
