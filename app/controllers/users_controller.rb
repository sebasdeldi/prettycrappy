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

class UsersController < ApplicationController



	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to root_path
		else
			render :new
		end
	end


	private
		def user_params
			params.require(:user).permit(:username, :password, :email, :sex ,:humanizer_answer,:humanizer_question_id)
		end
end
