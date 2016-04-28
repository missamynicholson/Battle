require 'spec_helper.rb'

feature 'Submitting the form with names: ' do
	scenario 'Players information is displayed' do
		sign_in_and_play
		expect(page).to have_content 'Dave vs. Mittens'
		expect(page).to have_content ('Dave: 60HP')
		expect(page).to have_content ('Mittens: 60HP')
	end
end
