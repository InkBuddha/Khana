class MealsController < ApplicationController
	before_action :set_time_zone, if: :logged_in?
	before_action :get_meal, only: [:show, :edit, :update, :destroy]

	def index
		@meals = Meal.all
		@recipes = Recipe.all

		def month_calendar
			respond_to do |format|
				format.js
			end
		end
	end

	

	private

		def set_time_zone
			Time.zone = current_user.time_zone
		end

		  private

		  def get_meal
		  	@meal = Meal.find(params[:id])
		  end
end
