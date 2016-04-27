require 'spec_helper'

feature 'Enter names' do
	scenario "Players submit their names" do
		visit('/')
		fill_in('name1', with:"Ben")
		fill_in('name2', with:"Chris")
		click_button('Submit')
		expect(page).to have_text("Hey Ben, hey Chris! Welcome to the Battle...")
	end
end