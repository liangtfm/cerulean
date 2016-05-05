class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
      render 'layouts/index'
  end

  def map
      if current_user
          @users = User.all
          render 'layouts/map'
      else
          redirect_to new_user_session_url
      end      
  end
end
