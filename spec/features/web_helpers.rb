# def sign_in_and_play
#   visit('/')
#   fill_in :player_1_name, with: 'Dave'
#   fill_in :player_2_name, with: 'Mittens'
#   click_button 'Submit'
# end

def attack_and_confirm
  click_button 'Attack'
  click_button 'OK'
end

def one_player_mode
	visit('/')
	choose('one')
	click_button 'Submit'
	fill_in :player_1_name, with: 'Dave'
	click_button 'Submit'
end

def two_players_mode
	visit('/')
	choose('two')
	click_button 'Submit'
	fill_in :player_1_name, with: 'Dave'
	fill_in :player_2_name, with: 'Mittens'
  	click_button 'Submit'
end