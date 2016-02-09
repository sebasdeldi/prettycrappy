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

class Post < ActiveRecord::Base
	validates :body, presence: true
	belongs_to :user
	has_many :comments

end
