class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
	private
	def current_user_login
		session[:current_user]
	end
	def current_user_id
		(User.find_by login: session[:current_user]).id
	end
	
end
