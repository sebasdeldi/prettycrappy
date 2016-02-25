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

module UsersHelper
	def sex_icon
		if current_user.sex == 'male' 
		  'fa fa-mars'
		elsif current_user.sex == 'female'
		  'fa fa-venus'
		elsif current_user.sex == 'other'
		  'fa fa-transgender-alt'
		end
	end
end
