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

class DeservedsController < ApplicationController
	def create
	  post = Post.find(params[:post_id])
	  post.deserveds.create(user: current_user)

	  redirect_to :back
	end

	def destroy
	  post = Post.find(params[:post_id])
	  post.deserveds.where(user: current_user).take.try(:destroy)

	  redirect_to :back
	end
end
