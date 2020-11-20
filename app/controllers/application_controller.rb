class ApplicationController < ActionController::Base
    private
   
    def require_login
      unless user_signed_in?
        flash[:error] = "You must be logged in to access this section"
        redirect_to new_post_path # halts request cycle
      end
    end
end
