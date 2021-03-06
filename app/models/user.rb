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

class User < ActiveRecord::Base

	include Humanizer
	require_human_on :create

	
	has_secure_password validations: false
	validates :sex, presence: true
	validates :email, uniqueness: true, format: /@/, presence: true
	validates :password, presence: true, on: :create
	validates :username, presence: true, uniqueness: true, length: { in: 1..20 }
	validates :password, length: { in: 6..20 }, allow_nil: true
	has_many :posts
	has_many :comments
	has_many :votes
	has_many :deserveds

	def rank
		rank = (comments_count + (posts_count * 2) + votes_count + deserveds_count)
	end
end


