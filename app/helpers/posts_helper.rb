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
		    return "Friends"
		elsif p.category_id == 2
		    return "Love"
		elsif p.category_id == 3
			return "Money"
		elsif p.category_id == 4
			return "School"
		elsif p.category_id == 5
			return "Hot"
		elsif p.category_id == 6
			return "Health"
		elsif p.category_id == 7
			return "Family"
		elsif p.category_id == 8
			return "Work"
		elsif p.category_id == 9
			return "Others"
		end
	end
end
