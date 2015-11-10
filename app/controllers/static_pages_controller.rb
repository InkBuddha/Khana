class StaticPagesController < ApplicationController
  
  def index
  	if logged_in?
  		redirect_to current_user
  	else
  		@home_page = true
  	end
  end

  def about
  end
end
