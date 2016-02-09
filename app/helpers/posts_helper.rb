# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  body       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#  category   :string
#

module PostsHelper
	def form_title
		@post.new_record? ? "Post!" : "Edit Post!"
	end
end
