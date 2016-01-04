require 'rails_helper'

feature 'Renders pages' do
	scenario "can correctly render pages title" do
    visit '/'
    expect(page).to have_title "Khana - Meal Planner"
   end
end