# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  body       :text
#  post_id    :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :user, counter_cache: true

  after_save :call_rank
  
  def call_rank
  	if user != nil
  		user.rank
  		user.update(rank:user.rank)
  	end
  end
  
end
