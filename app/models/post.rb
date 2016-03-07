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

class Post < ActiveRecord::Base

	include Humanizer
	require_human_on :create
	

	validates :body, presence: true
	validates :category_id, presence: true
	validates :alias, presence: true
	validates :sex, presence: true
	belongs_to :user, counter_cache: true
	belongs_to :category
	has_many :comments
	has_many :votes
	has_many :deserveds

	after_save :call_rank
	
	def call_rank
		if user != nil
			user.rank
			user.update(rank:user.rank)
		end
	end

	def voted_by?(user)
	  votes.exists?(user: user)
	end

	def deserved_by?(user)
	  deserveds.exists?(user: user)
	end

	def self.best
	    order('votes_count DESC')
	end

	def self.deserved
	    order('deserveds_count DESC')
	end

end
