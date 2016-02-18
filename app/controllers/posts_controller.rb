# == Schema Information
#
# Table name: posts
#
#  id          :integer          not null, primary key
#  body        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#  alias       :string           default("Anonymous")
#  sex         :string           default("Other")
#  category_id :integer
#

class PostsController < ApplicationController

	before_action :private_access, only: [:edit, :destroy, :delete]

	def index
		@posts = Post.all.reverse_order.paginate(:page => params[:page], :per_page => 10)
	end

	def friendship
		@friendship_posts = Post.where(category_id: 1)
	end

	def love
		@love_posts = Post.where(category_id: 2)
	end

	def money
		@money_posts = Post.where(category_id: 3)
	end

	def school
		@school_posts = Post.where(category_id: 4)
	end

	def hot
		@hot_posts = Post.where(category_id: 5)
	end

	def health
		@health_posts = Post.where(category_id: 6)
	end

	def family
		@ffamily_posts = Post.where(category_id: 7)
	end

	def work
		@work_posts = Post.where(category_id: 8)
	end

	def others
		@others_posts = Post.where(category_id: 9)
	end

	def new
		@post = Post.new
	end

	def show
		@post = Post.find(params[:id])
	end

	def create
		@post = Post.new(post_params)
		@post.user = current_user
		if @post.save
			redirect_to root_path
		else
			render :new
		end
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
		@post = Post.find(params[:id])
		if @post.update(post_params)
			redirect_to root_path
		else
			render :edit
		end
	end

	def destroy
		@post = Post.find(params[:id])
		@post.destroy
		redirect_to root_path
	end

	private
		def post_params

		
			params.require(:post).permit(:body,:category_id,:alias,:sex)

			
		end
end
