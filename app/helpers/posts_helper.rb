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

module PostsHelper
	def form_title
		@post.new_record? ? "Post!" : "Edit Post!"
	end


	def category_name
		if category_id = 1
			"Friendship"
		elsif category_id = 2
			""
		elsif category_id = 3
			""
		elsif category_id = 4
			""
		elsif category_id = 5
			""
		elsif category_id = 6
			""
		elsif category_id = 7
			""
		elsif category_id = 8
			""
		elsif category_id = 9
			""
	
		end	
	end
end
