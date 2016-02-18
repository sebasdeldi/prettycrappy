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

class Post < ActiveRecord::Base
	validates :body, presence: true
	validates :category_id, presence: true
	validates :alias, presence: true
	validates :sex, presence: true
	belongs_to :user
	belongs_to :category
	has_many :comments

end
