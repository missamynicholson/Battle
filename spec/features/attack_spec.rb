require 'spec_helper.rb'

feature 'attacking a player' do

  scenario 'player 1 attacks player 2' do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content "Sergio attacked cat"
  end

  scenario 'player 2\'s HP is reduced' do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content "cat HP: 90"
  end

end