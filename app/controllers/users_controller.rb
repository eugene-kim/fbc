class UsersController < ApplicationController
	def index
		# user is already logged in
		if current_user
			user = User.find(session[:user_id])
			@listings = user.listings
			render action: 'home_page'
			
		# user is not logged in redirect to login page
		else
			render action: 'login'
		end
	end
end
