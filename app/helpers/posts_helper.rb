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

module PostsHelper
	def form_title
		@post.new_record? ? "Post!" : "Edit Post!"
	end


	def category_name(p)
		if p.category_id == 1
		    "Friendship"
		elsif p.category_id == 2
		    "Love"
		end
	end
end
