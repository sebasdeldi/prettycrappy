# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string
#  username        :string
#  password_digest :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  sex             :string
#  rank            :integer          default(0)
#  comments_count  :integer          default(0)
#  posts_count     :integer          default(0)
#  votes_count     :integer          default(0)
#  deserveds_count :integer          default(0)
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
