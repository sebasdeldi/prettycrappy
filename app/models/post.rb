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
#  alias      :string
#  sex        :string
#

class Post < ActiveRecord::Base
	validates :body, presence: true
	validates :category, presence: true
	# if !signed_in?
	# 	validates :alias, presence: true
	# 	validates :sex, presence: true
	# end
	belongs_to :user
	has_many :comments

end
