class User < ActiveRecord::Base
	has_many :microposts
	def users_params
		params.permit(:email, :name)
	end
end
