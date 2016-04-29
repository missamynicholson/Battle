require 'spec_helper.rb'

feature 'Submitting the form with names: ' do
	scenario 'One player mode' do
		one_player_mode
		expect(page).to have_content 'Dave vs. Computer'
		expect(page).to have_content ('Dave: 60HP')
		expect(page).to have_content ('Computer: 60HP')
	end

	scenario 'Two players mode' do
		two_players_mode
		expect(page).to have_content 'Dave vs. Mittens'
		expect(page).to have_content ('Dave: 60HP')
		expect(page).to have_content ('Mittens: 60HP')
	end
end
