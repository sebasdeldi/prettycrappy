# == Schema Information
#
# Table name: votes
#
#  id         :integer          not null, primary key
#  post_id    :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Vote < ActiveRecord::Base
  after_save :call_rank

  belongs_to :post, counter_cache: true
  belongs_to :user, counter_cache: true

  def call_rank
  	if user != nil
  		user.rank
  		user.update(rank:user.rank)
  	end
  end
end



