class Comment < ActiveRecord::Base
	belongs_to :user
	belongs_to :post
	# validates :title, presence: true
	# validates :commenter, presence: true
end
