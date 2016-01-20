class SessionsController < ApplicationController
	def login
		User.all.each do |user|
			if user.password == password and user.login = current_user_login
				session[:current_user] = current_user_login
			end
		end
		redirect_to(:back)
	end

	def logout
		session[:current_user] = nil
		redirect_to(:back)
	end

	private
	def current_user_login
		params[:login]
	end
	def password
		params[:password]
	end
end