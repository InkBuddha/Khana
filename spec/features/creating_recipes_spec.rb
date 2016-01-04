require 'rails_helper'

feature 'Creating recipes' do
	scenario 'can create a simple recipe' do
		visit recipes_path
		click_link 'New Recipe'
		fill_in 'Title', with: 'Banana Cheesecake'
		fill_in 'Description', with: 'Nom nom nom nom'
		click_button 'Create recipe'
		expect(page).to have_content('recipe successfully created')	
	end
end