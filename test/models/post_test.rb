# == Schema Information
#
# Table name: posts
#
#  id              :integer          not null, primary key
#  body            :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  user_id         :integer
#  alias           :string           default("Anonymous")
#  sex             :string           default("Other")
#  category_id     :integer
#  votes_count     :integer          default(0)
#  deserveds_count :integer          default(0)
#

require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
