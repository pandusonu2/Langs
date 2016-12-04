class Micropost < ActiveRecord::Base
	validates :content, :length => { :maximum => 140 }
	belongs_to :user
	def microposts_params
		params.permit(:content, :user_id)
	end
end
