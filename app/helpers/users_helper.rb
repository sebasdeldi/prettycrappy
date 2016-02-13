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
