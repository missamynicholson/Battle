require 'spec_helper.rb'

feature 'Attacking a player:' do

  scenario 'Player 1 attacks player 2' do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content "Sergio attacked cat"
  end

  scenario 'Player 2\'s HP is reduced' do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content "cat HP: 90"
  end

end