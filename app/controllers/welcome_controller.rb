class WelcomeController < ApplicationController
    def index
        @current_user_login = current_user_login
    end
end
