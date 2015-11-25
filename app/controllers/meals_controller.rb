class MealsController < ApplicationController
	before_action :set_time_zone, if: :logged_in?
	# before_action :init_nav

	def index
		@meals = Meal.all
	end

	private

		def set_time_zone
			Time.zone = current_user.time_zone
		end

		  private 

  	 # def init_nav
  	 # 	@subnav  = ['This Month', 'This week']
  	 # end
end
