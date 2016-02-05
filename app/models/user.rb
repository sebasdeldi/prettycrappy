# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  email      :string
#  username   :string
#  password   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base
	has_secure_password validations: false
	validates :email, uniqueness: true, format: /@/
	validates :password, presence: true, on: :create
	validates :password, length: { in: 6..20 }, allow_nil: true
	# validates :name, presence: true
	# has_many :posts
	# has_many :comments
	# has_many :votes
end
